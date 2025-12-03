@interface HAPAccessoryServerHAP2Adapter
- (BOOL)_hap2CharacteristicTuplesForHAPCharacteristics:(id)characteristics tuples:(id *)tuples error:(id *)error;
- (BOOL)_isActiveServer:(id)server;
- (BOOL)hasAdvertisement;
- (BOOL)isReachable;
- (BOOL)isSecuritySessionOpen;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (BOOL)shouldDiscoverAccessoriesOncePaired;
- (BOOL)shouldSkipUserConsent;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error;
- (HAP2Cancelable)pairingSessionCancelable;
- (HAPAccessoryServerHAP2Adapter)initWithOperationQueue:(id)queue accessoryServer:(id)server;
- (HAPAccessoryServerHAP2Adapter)initWithPairedServer:(id)server;
- (HAPAccessoryServerHAP2Adapter)initWithUnpairedServer:(id)server;
- (NSString)description;
- (id)_accessoryFromHAP2Accessory:(id)accessory;
- (id)_hapIdentifierForAccessory:(id)accessory;
- (id)accessories;
- (id)activeServer;
- (id)authValidationCompletion;
- (id)authenticateUUIDCompletion;
- (id)category;
- (id)clientQueue;
- (id)primaryAccessory;
- (id)productData;
- (id)reachabilityChangedReason;
- (id)setupCodeCompletion;
- (id)setupHash;
- (id)softwareAuthFinishedCompletion;
- (id)userConsentCompletion;
- (id)version;
- (unint64_t)configNumber;
- (unint64_t)sessionCheckInterval;
- (void)_continuePairingAfterAuthPromptWithError:(id)error;
- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)_firedConnectionIdleTimer:(id)timer;
- (void)_handleConnectionIdleTimeout;
- (void)_handleIncorrectStartPairingCall;
- (void)_informDelegateOfUpdatedAccessories:(id)accessories error:(id)error;
- (void)_kickConnectionIdleTimer;
- (void)_notifyDelegatePairingStoppedWithError:(id)error;
- (void)_printMissingValues:(id)values;
- (void)_readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)_resetPairingState;
- (void)_startConnectionIdleTimer;
- (void)_suspendConnectionIdleTimer;
- (void)_writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)accessory:(id)accessory didNotifyForUpdatedValuesOnCharacteristic:(id)characteristic;
- (void)accessoryServer:(id)server authenticateSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion;
- (void)accessoryServer:(id)server confirmSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion;
- (void)accessoryServer:(id)server didCompleteWithError:(id)error;
- (void)accessoryServer:(id)server didFailToUpdateAccessoriesWithError:(id)error;
- (void)accessoryServer:(id)server didFinishAuthWithError:(id)error;
- (void)accessoryServer:(id)server didRejectSetupCodeWithBackoffInterval:(double)interval completion:(id)completion;
- (void)accessoryServer:(id)server doesRequirePermission:(unint64_t)permission completion:(id)completion;
- (void)accessoryServer:(id)server doesRequireSetupCodeWithCompletion:(id)completion;
- (void)accessoryServer:(id)server validatePairingCert:(id)cert model:(id)model completion:(id)completion;
- (void)accessoryServer:(id)server validateSoftwareAuthUUID:(id)d token:(id)token model:(id)model completion:(id)completion;
- (void)accessoryServerConnectedWithSecureSession;
- (void)accessoryServerConnectionFailureReportWithError:(id)error;
- (void)accessoryServerDidBecomeUnpaired:(id)unpaired;
- (void)accessoryServerDidUpdateAccessories:(id)accessories;
- (void)accessoryServerDidUpdateCategory:(id)category;
- (void)accessoryServerDidUpdateConnectionState:(id)state;
- (void)accessoryServerDidUpdateHasPairings:(id)pairings;
- (void)accessoryServerDidUpdateName:(id)name;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)authenticateAccessory;
- (void)closeSessions;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disconnectOnIdleUpdated;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)setAccessories:(id)accessories;
- (void)setAuthValidationCompletion:(id)completion;
- (void)setAuthenticateUUIDCompletion:(id)completion;
- (void)setDiscoverAccessoriesOncePaired:(BOOL)paired;
- (void)setPairedServer:(id)server;
- (void)setPairingSessionCancelable:(id)cancelable;
- (void)setPrimaryAccessory:(id)accessory;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)setSetupCodeCompletion:(id)completion;
- (void)setShouldBePaired:(BOOL)paired;
- (void)setSoftwareAuthFinishedCompletion:(id)completion;
- (void)setUnpairedServer:(id)server;
- (void)setUserConsentCompletion:(id)completion;
- (void)startPairingWithRequest:(id)request;
- (void)startPing;
- (void)stopPing;
- (void)updateActiveDisconnectOnIdleTimeout:(double)timeout;
- (void)validatePairingAuthMethod:(id)method;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessoryServerHAP2Adapter

- (void)_firedConnectionIdleTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HAPAccessoryServerHAP2Adapter__firedConnectionIdleTimer___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = timerCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__HAPAccessoryServerHAP2Adapter__firedConnectionIdleTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained connectionIdleTimer];

    if (v4 == v5)
    {
      [v3 _handleConnectionIdleTimeout];
      [v3 setConnectionIdleTimer:0];
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "Accessory server died", v7, 2u);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HAPAccessoryServerHAP2Adapter;
  v4 = [(HMFObject *)&v9 description];
  name = [(HAPAccessoryServer *)self name];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ [%@/%@]", v4, name, identifier];

  return v7;
}

- (void)accessoryServer:(id)server validateSoftwareAuthUUID:(id)d token:(id)token model:(id)model completion:(id)completion
{
  serverCopy = server;
  dCopy = d;
  tokenCopy = token;
  modelCopy = model;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__HAPAccessoryServerHAP2Adapter_accessoryServer_validateSoftwareAuthUUID_token_model_completion___block_invoke;
  v22[3] = &unk_2786D6C30;
  objc_copyWeak(&v27, &location);
  v18 = completionCopy;
  v26 = v18;
  v19 = dCopy;
  v23 = v19;
  v20 = tokenCopy;
  v24 = v20;
  v21 = modelCopy;
  v25 = v21;
  [operationQueue addBlock:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __97__HAPAccessoryServerHAP2Adapter_accessoryServer_validateSoftwareAuthUUID_token_model_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 56);
  if (v3)
  {
    [WeakRetained setAuthValidationCompletion:*(a1 + 56)];
    v5 = [WeakRetained delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HAPAccessoryServerHAP2Adapter_accessoryServer_validateSoftwareAuthUUID_token_model_completion___block_invoke_2;
    block[3] = &unk_2786D49A0;
    v8 = v3;
    v9 = WeakRetained;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)accessoryServer:(id)server validatePairingCert:(id)cert model:(id)model completion:(id)completion
{
  serverCopy = server;
  certCopy = cert;
  modelCopy = model;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HAPAccessoryServerHAP2Adapter_accessoryServer_validatePairingCert_model_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = completionCopy;
  v21 = v15;
  v16 = certCopy;
  v19 = v16;
  v17 = modelCopy;
  v20 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __86__HAPAccessoryServerHAP2Adapter_accessoryServer_validatePairingCert_model_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 48);
  if (v3)
  {
    [WeakRetained setAuthValidationCompletion:*(a1 + 48)];
    v5 = [WeakRetained delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HAPAccessoryServerHAP2Adapter_accessoryServer_validatePairingCert_model_completion___block_invoke_2;
    v7[3] = &unk_2786D6A08;
    v8 = v3;
    v9 = WeakRetained;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)accessoryServer:(id)server didFinishAuthWithError:(id)error
{
  serverCopy = server;
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HAPAccessoryServerHAP2Adapter_accessoryServer_didFinishAuthWithError___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = errorCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__HAPAccessoryServerHAP2Adapter_accessoryServer_didFinishAuthWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pairingActivity];
  [*(a1 + 32) domain];

  [*(a1 + 32) code];
  v4 = [WeakRetained delegate];
  v5 = [WeakRetained delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HAPAccessoryServerHAP2Adapter_accessoryServer_didFinishAuthWithError___block_invoke_2;
  block[3] = &unk_2786D7078;
  v8 = v4;
  v9 = WeakRetained;
  v10 = *(a1 + 32);
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)accessoryServer:(id)server confirmSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion
{
  serverCopy = server;
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HAPAccessoryServerHAP2Adapter_accessoryServer_confirmSoftwareAuthUUID_token_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = completionCopy;
  v21 = v15;
  v16 = dCopy;
  v19 = v16;
  v17 = tokenCopy;
  v20 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __90__HAPAccessoryServerHAP2Adapter_accessoryServer_confirmSoftwareAuthUUID_token_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 48);
  if (v3)
  {
    [WeakRetained setSoftwareAuthFinishedCompletion:*(a1 + 48)];
    v5 = [WeakRetained delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __90__HAPAccessoryServerHAP2Adapter_accessoryServer_confirmSoftwareAuthUUID_token_completion___block_invoke_2;
    v7[3] = &unk_2786D6A08;
    v8 = v3;
    v9 = WeakRetained;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)accessoryServer:(id)server authenticateSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion
{
  serverCopy = server;
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__HAPAccessoryServerHAP2Adapter_accessoryServer_authenticateSoftwareAuthUUID_token_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = completionCopy;
  v21 = v15;
  v16 = dCopy;
  v19 = v16;
  v17 = tokenCopy;
  v20 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __95__HAPAccessoryServerHAP2Adapter_accessoryServer_authenticateSoftwareAuthUUID_token_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  if (v3)
  {
    [WeakRetained setAuthenticateUUIDCompletion:*(a1 + 48)];
    v4 = [WeakRetained delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__HAPAccessoryServerHAP2Adapter_accessoryServer_authenticateSoftwareAuthUUID_token_completion___block_invoke_2;
    v6[3] = &unk_2786D6A08;
    v7 = v3;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    dispatch_async(v4, v6);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    [WeakRetained _notifyDelegatePairingStoppedWithError:v5];
  }
}

- (void)accessoryServer:(id)server doesRequireSetupCodeWithCompletion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequireSetupCodeWithCompletion___block_invoke;
  v10[3] = &unk_2786D6FA0;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __84__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequireSetupCodeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 32);
  if (v3)
  {
    [WeakRetained setSetupCodeCompletion:v4];
    v5 = [WeakRetained delegateQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequireSetupCodeWithCompletion___block_invoke_2;
    v7[3] = &unk_2786D7050;
    v8 = v3;
    v9 = WeakRetained;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 16))(v4, 0, v6);
  }
}

- (void)accessoryServer:(id)server didRejectSetupCodeWithBackoffInterval:(double)interval completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HAPAccessoryServerHAP2Adapter_accessoryServer_didRejectSetupCodeWithBackoffInterval_completion___block_invoke;
  v12[3] = &unk_2786D6BB8;
  objc_copyWeak(v14, &location);
  v11 = completionCopy;
  v13 = v11;
  v14[1] = *&interval;
  [operationQueue addBlock:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __98__HAPAccessoryServerHAP2Adapter_accessoryServer_didRejectSetupCodeWithBackoffInterval_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = *(a1 + 32);
  if (v3)
  {
    [WeakRetained setSetupCodeCompletion:*(a1 + 32)];
    v5 = [WeakRetained delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HAPAccessoryServerHAP2Adapter_accessoryServer_didRejectSetupCodeWithBackoffInterval_completion___block_invoke_2;
    block[3] = &unk_2786D4978;
    v8 = v3;
    v9 = WeakRetained;
    v10 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 16))(v4, 0, v6);
  }
}

- (void)accessoryServer:(id)server doesRequirePermission:(unint64_t)permission completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequirePermission_completion___block_invoke;
  v12[3] = &unk_2786D6BB8;
  objc_copyWeak(v14, &location);
  v11 = completionCopy;
  v13 = v11;
  v14[1] = permission;
  [operationQueue addBlock:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __82__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequirePermission_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained unpairedServer];
  if (!v3)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = WeakRetained;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Accessory server is paired (expected unpaired)", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
    (*(v9 + 16))(v9, v5);
    goto LABEL_28;
  }

  if ((*(a1 + 48) - 1) > 1 || ![WeakRetained shouldSkipUserConsent])
  {
    v5 = [WeakRetained delegate];
    if (v5)
    {
      [WeakRetained setUserConsentCompletion:*(a1 + 32)];
      v6 = *(a1 + 48);
      if ((v6 - 3) >= 2)
      {
        if (v6 == 1)
        {
          v7 = 0;
          goto LABEL_27;
        }

        if (v6 == 2)
        {
          v7 = 3;
LABEL_27:
          [WeakRetained setUserConsentCompletion:*(a1 + 32)];
          v15 = [WeakRetained delegateQueue];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __82__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequirePermission_completion___block_invoke_262;
          v17[3] = &unk_2786D6E88;
          v18 = v3;
          v19 = v5;
          v20 = WeakRetained;
          v21 = v7;
          dispatch_async(v15, v17);

          goto LABEL_28;
        }
      }

      v11 = *(a1 + 32);
      v12 = MEMORY[0x277CCA9B8];
      v13 = 9;
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = WeakRetained;
        _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ Delegate doesn't support auth prompts", buf, 0xCu);
      }

      v11 = *(a1 + 32);
      v12 = MEMORY[0x277CCA9B8];
      v13 = 2;
    }

    v14 = [v12 hapErrorWithCode:v13];
    (*(v11 + 16))(v11, v14);

LABEL_28:
    goto LABEL_29;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = WeakRetained;
    _os_log_debug_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%@ Skipping user consent as requested", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_29:

  v16 = *MEMORY[0x277D85DE8];
}

void __82__HAPAccessoryServerHAP2Adapter_accessoryServer_doesRequirePermission_completion___block_invoke_262(uint64_t a1)
{
  v2 = [HAPAccessoryInfo alloc];
  v3 = [*(a1 + 32) name];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "category")}];
  v5 = [(HAPAccessoryInfo *)v2 initWithName:v3 manufacturer:0 modelName:0 category:v4 certificationStatus:0 denylisted:0 ppid:0];

  [*(a1 + 40) accessoryServer:*(a1 + 48) requestUserPermission:*(a1 + 56) accessoryInfo:v5 error:0];
}

- (void)accessoryServer:(id)server didCompleteWithError:(id)error
{
  serverCopy = server;
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HAPAccessoryServerHAP2Adapter_accessoryServer_didCompleteWithError___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = errorCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__HAPAccessoryServerHAP2Adapter_accessoryServer_didCompleteWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resetPairingState];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:79 reason:0 underlyingError:?];
  }

  else
  {
    v2 = 0;
  }

  [WeakRetained _notifyDelegatePairingStoppedWithError:v2];
}

- (id)_accessoryFromHAP2Accessory:(id)accessory
{
  accessoryCopy = accessory;
  instanceID = [accessoryCopy instanceID];
  v6 = [HAPAccessory alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:instanceID];
  services = [accessoryCopy services];
  v9 = [services copy];
  v10 = [(HAPAccessory *)v6 initWithServer:self instanceID:v7 parsedServices:v9];

  if (v10)
  {
    identifier = [(HAPAccessoryServer *)self identifier];
    [(HAPAccessory *)v10 setIdentifier:identifier];

    identifier2 = [(HAPAccessoryServer *)self identifier];
    [(HAPAccessory *)v10 setServerIdentifier:identifier2];

    -[HAPAccessory setPrimary:](v10, "setPrimary:", [accessoryCopy isPrimary]);
    v13 = MEMORY[0x277CCABB0];
    [accessoryCopy sleepInterval];
    v15 = [v13 numberWithUnsignedInteger:(v14 * 1000.0)];
    [(HAPAccessory *)v10 setSleepInterval:v15];

    name = [accessoryCopy name];
    [(HAPAccessory *)v10 setName:name];

    services2 = [(HAPAccessory *)v10 services];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__HAPAccessoryServerHAP2Adapter__accessoryFromHAP2Accessory___block_invoke;
    v21[3] = &unk_2786D5B58;
    v18 = v10;
    v22 = v18;
    [services2 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

    v19 = v18;
  }

  return v10;
}

- (void)accessoryServer:(id)server didFailToUpdateAccessoriesWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:server])
  {
    [(HAPAccessoryServerHAP2Adapter *)self _informDelegateOfUpdatedAccessories:0 error:errorCopy];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Accessory server is no longer active.  Ignoring accessory update failure propagation.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerDidUpdateAccessories:(id)accessories
{
  v27 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v5 = [(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:accessoriesCopy];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (v5)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@ Accessory server has updated accessories", buf, 0xCu);
    }

    accessories = [accessoriesCopy accessories];
    accessories2 = [(HAPAccessoryServerHAP2Adapter *)self accessories];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v26 = 0;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(accessories, "count")}];
    v10 = objc_autoreleasePoolPush();
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__HAPAccessoryServerHAP2Adapter_accessoryServerDidUpdateAccessories___block_invoke;
    v20 = &unk_2786D4950;
    selfCopy = self;
    v24 = buf;
    v11 = accessories2;
    v22 = v11;
    v12 = v9;
    v23 = v12;
    [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];

    objc_autoreleasePoolPop(v10);
    v13 = [v12 copy];
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_accessories, v13);
    os_unfair_lock_unlock(&self->super._lock);
    [(HAPAccessoryServerHAP2Adapter *)self _informDelegateOfUpdatedAccessories:v13 error:0];

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v15 = v6;
    activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = accessoriesCopy;
    *&buf[22] = 2112;
    v26 = activeServer;
    _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Incoming accessory server (%@) isn't the active one (%@)", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__HAPAccessoryServerHAP2Adapter_accessoryServerDidUpdateAccessories___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _accessoryFromHAP2Accessory:v3];
  if (v4)
  {
    [v3 setDelegate:*(a1 + 32)];
    while (1)
    {
      v5 = *(*(*(a1 + 56) + 8) + 24);
      if (v5 >= [*(a1 + 40) count])
      {
        break;
      }

      v6 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v7 = [v6 instanceID];
      v8 = [v4 instanceID];
      v9 = [v7 isEqualToNumber:v8];

      if (v9)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        if (v6)
        {
          v16 = MEMORY[0x277CBEB18];
          v17 = [v4 services];
          v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

          v19 = [v6 services];
          v20 = [v4 services];
          [HAPService hap2_mergeServices:v19 discoveredServices:v20 mergedServices:v18];

          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __69__HAPAccessoryServerHAP2Adapter_accessoryServerDidUpdateAccessories___block_invoke_2;
          v24[3] = &unk_2786D5B58;
          v25 = v6;
          v21 = v6;
          [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
          v22 = [v18 copy];
          [v21 setServices:v22];

          [*(a1 + 48) addObject:v21];
          goto LABEL_15;
        }

        break;
      }

      v10 = [v6 instanceID];
      v11 = [v10 unsignedIntValue];
      v12 = [v4 instanceID];
      v13 = [v12 unsignedIntValue];

      if (v11 > v13)
      {

        break;
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

    [*(a1 + 48) addObject:v4];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138412546;
      v27 = v15;
      v28 = 2112;
      v29 = v3;
      _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ Failed to validate HAP2Accessory: %@", buf, 0x16u);
    }
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerDidBecomeUnpaired:(id)unpaired
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:unpaired])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%@ Accessory server has become unpaired", &v7, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self stopPing];
    os_unfair_lock_lock_with_options();
    accessories = self->_accessories;
    self->_accessories = MEMORY[0x277CBEBF8];

    os_unfair_lock_unlock(&self->super._lock);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerDidUpdateHasPairings:(id)pairings
{
  v10 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Accessory server updated hasPairings", &v8, 0xCu);
  }

  hasPairings = [pairingsCopy hasPairings];

  [(HAPAccessoryServer *)self setHasPairings:hasPairings];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_hapIdentifierForAccessory:(id)accessory
{
  accessoryServer = [accessory accessoryServer];
  deviceID = [accessoryServer deviceID];
  deviceIDString = [deviceID deviceIDString];

  return deviceIDString;
}

- (void)_informDelegateOfUpdatedAccessories:(id)accessories error:(id)error
{
  accessoriesCopy = accessories;
  errorCopy = error;
  delegate = [(HAPAccessoryServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __75__HAPAccessoryServerHAP2Adapter__informDelegateOfUpdatedAccessories_error___block_invoke;
      v10[3] = &unk_2786D6A08;
      v11 = delegate;
      selfCopy = self;
      v13 = accessoriesCopy;
      v14 = errorCopy;
      dispatch_async(delegateQueue, v10);
    }
  }
}

- (BOOL)_isActiveServer:(id)server
{
  serverCopy = server;
  if ([serverCopy conformsToProtocol:&unk_283EB5A30])
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  v8 = [v6 isEqual:activeServer];

  return v8;
}

- (void)discoverAccessories
{
  v13 = *MEMORY[0x277D85DE8];
  pairingActivity = [(HAPAccessoryServer *)self pairingActivity];
  [pairingActivity begin];
  pairingActivity2 = [(HAPAccessoryServer *)self pairingActivity];

  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];

  if (pairedServer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%@ Accessory server requested to discover accessories", buf, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self setDiscoverAccessoriesOncePaired:0];
    pairedServer2 = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];
    v7 = [pairedServer2 updateAccessoriesWithReason:@"requested"];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%@ Accessory server requested to discover accessories, queued until paired", buf, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self setDiscoverAccessoriesOncePaired:1];
  }

  __HMFActivityScopeLeave();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  delegate = [(HAPAccessoryServer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HAPAccessoryServerHAP2Adapter_handleUpdatesForCharacteristics_stateNumber___block_invoke;
    v10[3] = &unk_2786D6A08;
    v11 = delegate;
    selfCopy = self;
    v13 = characteristicsCopy;
    v14 = numberCopy;
    dispatch_async(delegateQueue, v10);
  }
}

void __77__HAPAccessoryServerHAP2Adapter_handleUpdatesForCharacteristics_stateNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) copy];
  [v2 accessoryServer:v3 didUpdateValuesForCharacteristics:v4 stateNumber:*(a1 + 56) broadcast:0];
}

- (void)accessory:(id)accessory didNotifyForUpdatedValuesOnCharacteristic:(id)characteristic
{
  v55 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accessoryCopy, "instanceID")}];
  instanceID = [service instanceID];
  instanceID2 = [characteristicCopy instanceID];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__11021;
  v50 = __Block_byref_object_dispose__11022;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__11021;
  v44 = __Block_byref_object_dispose__11022;
  v45 = 0;
  accessories = [(HAPAccessoryServerHAP2Adapter *)self accessories];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke;
  v34 = &unk_2786D4928;
  v13 = v9;
  v35 = v13;
  v14 = instanceID;
  v36 = v14;
  v15 = instanceID2;
  v37 = v15;
  v38 = &v46;
  v39 = &v40;
  [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:&v31];

  if (v41[5])
  {
    value = [characteristicCopy value];
    v17 = value;
    if (value)
    {
      v18 = [value conformsToProtocol:&unk_283EACBD0];
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      if (v18)
      {
        v21 = [v17 copyWithZone:0];
      }

      else
      {
        v21 = [v17 copy];
      }

      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    notificationContext = [characteristicCopy notificationContext];
    v25 = [notificationContext copy];
    [v41[5] setNotificationContext:v25];

    v26 = [v41[5] copy];
    [v26 setValue:v23];
    service2 = [v41[5] service];
    [v26 setService:service2];

    server = [v47[5] server];
    v52 = v26;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [server handleUpdatesForCharacteristics:v29 stateNumber:0];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v22 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ Didn't match characteristic for event", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 instanceID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    v9 = [v6 services];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke_2;
    v14[3] = &unk_2786D4900;
    v15 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v16 = v10;
    v18 = v11;
    v12 = v6;
    v13 = *(a1 + 64);
    v17 = v12;
    v19 = v13;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

void __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 instanceID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    v9 = [v6 characteristics];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke_3;
    v12[3] = &unk_2786D6288;
    v13 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = v11;
    v14 = v11;
    v15 = *(a1 + 64);
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

void __85__HAPAccessoryServerHAP2Adapter_accessory_didNotifyForUpdatedValuesOnCharacteristic___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 instanceID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)accessoryServerDidUpdateCategory:(id)category
{
  categoryCopy = category;
  if ([(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:?])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(categoryCopy, "category")}];
    [(HAPAccessoryServer *)self setCategory:v4];
  }
}

- (void)accessoryServerDidUpdateName:(id)name
{
  nameCopy = name;
  if ([(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:?])
  {
    name = [nameCopy name];
    [(HAPAccessoryServer *)self setName:name];
  }
}

- (void)accessoryServerConnectedWithSecureSession
{
  delegate = [(HAPAccessoryServer *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HAPAccessoryServer *)self delegate];
    sessionInfo = [(HAPAccessoryServerHAP2Adapter *)self sessionInfo];
    [delegate2 accessoryServer:self didUpdateConnectionState:1 sessionInfo:sessionInfo linkLayerType:4 withError:0];
  }
}

- (void)accessoryServerConnectionFailureReportWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accessories = [(HAPAccessoryServerHAP2Adapter *)self accessories];
  v6 = [accessories countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v15 + 1) + 8 * v9++) invalidateWithError:errorCopy];
      }

      while (v7 != v9);
      v7 = [accessories countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  delegate = [(HAPAccessoryServer *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(HAPAccessoryServer *)self delegate];
    sessionInfo = [(HAPAccessoryServerHAP2Adapter *)self sessionInfo];
    [delegate2 accessoryServer:self didUpdateConnectionState:0 sessionInfo:sessionInfo linkLayerType:4 withError:errorCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerDidUpdateConnectionState:(id)state
{
  if ([(HAPAccessoryServerHAP2Adapter *)self _isActiveServer:state])
  {
    isReachable = [(HAPAccessoryServerHAP2Adapter *)self isReachable];

    [(HAPAccessoryServer *)self setReachable:isReachable];
  }
}

- (BOOL)_hap2CharacteristicTuplesForHAPCharacteristics:(id)characteristics tuples:(id *)tuples error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];

  if (!pairedServer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ Cannot get characteristics while unpaired", &buf, 0xCu);
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot get characteristics while unpaired" reason:@"HAPAccessoryServerHAP2Adapter.pairedServer is nil during _hap2CharacteristicTuplesForHAPCharacteristics" suggestion:0 underlyingError:0 marker:201];
      *error = v13 = 0;
      goto LABEL_12;
    }

    v13 = 0;
    goto LABEL_12;
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11021;
  v23 = __Block_byref_object_dispose__11022;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke;
  v17[3] = &unk_2786D48D8;
  v17[4] = self;
  p_buf = &buf;
  v11 = v10;
  v18 = v11;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  v12 = *(*(&buf + 1) + 40);
  v13 = v12 == 0;
  if (v12)
  {
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    *tuples = [v11 copy];
  }

  _Block_object_dispose(&buf, 8);
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 characteristic];

    v8 = v12;
  }

  v13 = [v8 service];
  v14 = [v13 accessory];
  v15 = v14;
  if (v14)
  {
    v16 = *(a1 + 40);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke_2;
    v42[3] = &unk_2786D4888;
    v17 = v14;
    v43 = v17;
    v18 = [v16 indexOfObjectPassingTest:v42];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = a4;
      v19 = [*(a1 + 32) pairedServer];
      v20 = [v19 accessories];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke_3;
      v40[3] = &unk_2786D48B0;
      v41 = v17;
      v21 = [v20 indexOfObjectPassingTest:v40];

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = *(a1 + 32);
        v44 = v6;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        [v22 _printMissingValues:v23];

        v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        *v39 = 1;
        v27 = v41;
LABEL_17:

        goto LABEL_18;
      }

      v33 = [HAP2CharacteristicTuple alloc];
      v34 = [*(a1 + 32) pairedServer];
      v35 = [v34 accessories];
      v36 = [v35 objectAtIndexedSubscript:v21];
      v27 = [(HAP2CharacteristicTuple *)v33 initWithAccessory:v36];

      [*(a1 + 40) addObject:v27];
    }

    else
    {
      v27 = [*(a1 + 40) objectAtIndexedSubscript:v18];
    }

    v37 = [(HAP2CharacteristicTuple *)v27 values];
    [v37 addObject:v6];

    goto LABEL_17;
  }

  v28 = *(a1 + 32);
  v45[0] = v6;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  [v28 _printMissingValues:v29];

  v30 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
  v31 = *(*(a1 + 48) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = v30;

  *a4 = 1;
LABEL_18:

  v38 = *MEMORY[0x277D85DE8];
}

BOOL __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 instanceID];
  v5 = [*(a1 + 32) instanceID];
  v6 = v4 == [v5 unsignedIntValue];

  return v6;
}

BOOL __93__HAPAccessoryServerHAP2Adapter__hap2CharacteristicTuplesForHAPCharacteristics_tuples_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 instanceID];
  v5 = [v4 unsignedIntValue];
  v6 = [v3 instanceID];

  return v6 == v5;
}

- (void)_printMissingValues:(id)values
{
  valuesCopy = values;
  v5 = [valuesCopy mutableCopy];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];
  accessories = [pairedServer accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_2;
  v11[3] = &unk_2786D4838;
  v8 = v5;
  v12 = v8;
  selfCopy = self;
  v14 = &__block_literal_global_226;
  v15 = v16;
  [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  if ([v8 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_238;
    v9[3] = &unk_2786D4860;
    v9[4] = self;
    v10 = &__block_literal_global_226;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  }

  _Block_object_dispose(v16, 8);
}

void __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 services];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_3;
  v12[3] = &unk_2786D4810;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v15 = v6;
  v16 = v10;
  v17 = *(a1 + 56);
  v11 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  *a4 = *(*(*(a1 + 56) + 8) + 24);
}

void __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_238(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 characteristic];

    v5 = v9;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v12 + 16);
    v15 = v10;
    v16 = v14(v12, v5);
    v17 = 138412802;
    v18 = v13;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v5;
    _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Couldn't find characteristic (%@): %@", &v17, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 characteristics];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_4;
  v11[3] = &unk_2786D47E8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v16 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v6;
  v17 = *(a1 + 64);
  v10 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  *a4 = *(*(*(a1 + 64) + 8) + 24);
}

void __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11021;
  v23 = __Block_byref_object_dispose__11022;
  v24 = 0;
  v7 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_230;
  v14[3] = &unk_2786D47C0;
  v8 = v6;
  v15 = v8;
  v18 = &v19;
  v13 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  *&v12 = v13;
  *(&v12 + 1) = v10;
  v16 = v12;
  v17 = v11;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
  if (v20[5])
  {
    [*(a1 + 32) removeObjectsAtIndexes:?];
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) count] == 0;
    *a4 = *(*(*(a1 + 72) + 8) + 24);
  }

  _Block_object_dispose(&v19, 8);
}

void __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke_230(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 characteristic];

    v7 = v11;
  }

  v12 = [v7 type];
  v13 = [*(a1 + 32) type];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = *(*(*(a1 + 72) + 8) + 40);
    if (v15)
    {
      [v15 addIndex:a3];
    }

    else
    {
      v16 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v19 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 40);
      v22 = *(a1 + 64);
      v23 = *(v22 + 16);
      v24 = v19;
      v25 = v23(v22, v7);
      *buf = 138412546;
      v34 = v32;
      v35 = 2112;
      *v36 = v25;
      _os_log_error_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%@ Found missing characteristic %@", buf, 0x16u);

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }
    }

    v20 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v26 = *(a1 + 48);
      v28 = v20;
      LODWORD(v26) = [v26 instanceID];
      v29 = [*(a1 + 56) instanceID];
      v30 = [*(a1 + 32) instanceID];
      v31 = *(a1 + 32);
      *buf = 138413314;
      v34 = v27;
      v35 = 1024;
      *v36 = v26;
      *&v36[4] = 2112;
      *&v36[6] = v29;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = v31;
      _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%@ (%d.%@.%@): %@", buf, 0x30u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __53__HAPAccessoryServerHAP2Adapter__printMissingValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 instanceID];
  v7 = [v3 service];
  v8 = [v7 instanceID];
  v9 = [v3 instanceID];

  v10 = [v2 stringWithFormat:@"%@.%@.%@", v6, v8, v9];

  return v10;
}

- (void)_writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  handlerCopy = handler;
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([valuesCopy count])
  {
    v26 = 0;
    v27 = 0;
    v12 = [(HAPAccessoryServerHAP2Adapter *)self _hap2CharacteristicTuplesForHAPCharacteristics:valuesCopy tuples:&v27 error:&v26];
    v13 = v27;
    v14 = v26;
    if (v12)
    {
      if ([v13 count] < 2)
      {
        firstObject = [v13 firstObject];
        [(HAPAccessoryServerHAP2Adapter *)self _kickConnectionIdleTimer];
        accessory = [firstObject accessory];
        values = [firstObject values];
        v20 = [values copy];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __102__HAPAccessoryServerHAP2Adapter__writeCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke;
        v23[3] = &unk_2786D6060;
        v24 = valuesCopy;
        v25 = handlerCopy;
        v21 = [accessory writeValuesForCharacteristics:v20 timeout:v23 completion:timeout];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v15 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ More than one accessory not supported at the moment", buf, 0xCu);
        }

        v16 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
        (*(handlerCopy + 2))(handlerCopy, 0, v16);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __102__HAPAccessoryServerHAP2Adapter__writeCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __102__HAPAccessoryServerHAP2Adapter__writeCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke_2;
    v10[3] = &unk_2786D5900;
    v11 = v7;
    v9 = v7;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_223];
  }

  (*(*(a1 + 40) + 16))();
}

void __102__HAPAccessoryServerHAP2Adapter__writeCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  [v2 addObject:v3];
}

void __102__HAPAccessoryServerHAP2Adapter__writeCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristic];
  [v3 instanceID];

  v4 = [v2 characteristic];
  [v4 type];

  v5 = [v2 error];
  [v5 domain];

  v6 = [v2 error];

  [v6 code];
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
  1306 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAP2/HAPAdapter/HAPAccessoryServerHAP2Adapter.m", 1306];
  v21 = [v17 initWithName:1306];

  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__HAPAccessoryServerHAP2Adapter_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v27[3] = &unk_2786D4778;
  objc_copyWeak(v32, &location);
  v23 = handlerCopy;
  v31 = v23;
  v24 = v21;
  v28 = v24;
  v25 = valuesCopy;
  v29 = v25;
  v32[1] = *&timeout;
  v26 = queueCopy;
  v30 = v26;
  [operationQueue addBlock:v27];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

void __108__HAPAccessoryServerHAP2Adapter_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) begin];
    v5 = *(a1 + 32);
    [WeakRetained _writeCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) completionQueue:*(a1 + 56) completionHandler:*(a1 + 72)];
    __HMFActivityScopeLeave();
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)_readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  handlerCopy = handler;
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([valuesCopy count])
  {
    v25 = 0;
    v26 = 0;
    v12 = [(HAPAccessoryServerHAP2Adapter *)self _hap2CharacteristicTuplesForHAPCharacteristics:valuesCopy tuples:&v26 error:&v25];
    v13 = v26;
    v14 = v25;
    if (v12)
    {
      if ([v13 count] < 2)
      {
        firstObject = [v13 firstObject];
        [(HAPAccessoryServerHAP2Adapter *)self _kickConnectionIdleTimer];
        accessory = [firstObject accessory];
        values = [firstObject values];
        v20 = [values copy];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __101__HAPAccessoryServerHAP2Adapter__readCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke;
        v23[3] = &unk_2786D5998;
        v24 = handlerCopy;
        v21 = [accessory readValuesForCharacteristics:v20 timeout:v23 completion:timeout];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v15 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ More than one accessory not supported at the moment", buf, 0xCu);
        }

        v16 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
        (*(handlerCopy + 2))(handlerCopy, 0, v16);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __101__HAPAccessoryServerHAP2Adapter__readCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_219];
  }

  (*(*(a1 + 32) + 16))();
}

void __101__HAPAccessoryServerHAP2Adapter__readCharacteristicValues_timeout_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristic];
  [v3 instanceID];

  v4 = [v2 characteristic];
  [v4 type];

  v5 = [v2 error];
  [v5 domain];

  v6 = [v2 error];

  [v6 code];
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
  1228 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAP2/HAPAdapter/HAPAccessoryServerHAP2Adapter.m", 1228];
  v21 = [v17 initWithName:1228];

  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __107__HAPAccessoryServerHAP2Adapter_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
  v27[3] = &unk_2786D4778;
  objc_copyWeak(v32, &location);
  v23 = handlerCopy;
  v31 = v23;
  v24 = v21;
  v28 = v24;
  v25 = valuesCopy;
  v29 = v25;
  v32[1] = *&timeout;
  v26 = queueCopy;
  v30 = v26;
  [operationQueue addBlock:v27];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

void __107__HAPAccessoryServerHAP2Adapter_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) begin];
    v5 = *(a1 + 32);
    [WeakRetained _readCharacteristicValues:*(a1 + 40) timeout:*(a1 + 48) completionQueue:*(a1 + 56) completionHandler:*(a1 + 72)];
    __HMFActivityScopeLeave();
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HAPAccessoryServerHAP2Adapter_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  v12[3] = &unk_2786D69E0;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = queueCopy;
  v8 = handlerCopy;
  v9 = queueCopy;
  v10 = MEMORY[0x231885210](v12);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue addBlock:v10];
}

void __83__HAPAccessoryServerHAP2Adapter_listPairingsWithCompletionQueue_completionHandler___block_invoke(id *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HAPAccessoryServerHAP2Adapter_listPairingsWithCompletionQueue_completionHandler___block_invoke_2;
  v8[3] = &unk_2786D6060;
  v9 = a1[4];
  v10 = a1[6];
  v2 = MEMORY[0x231885210](v8);
  v3 = [a1[5] pairedServer];

  if (v3)
  {
    v4 = [a1[5] pairedServer];
    v5 = [v4 getPairingsWithCompletion:v2];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Cannot list pairings if not paired", v7, 2u);
    }

    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:17];
    (v2)[2](v2, 0, v4);
  }
}

void __83__HAPAccessoryServerHAP2Adapter_listPairingsWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HAPAccessoryServerHAP2Adapter_listPairingsWithCompletionQueue_completionHandler___block_invoke_3;
  block[3] = &unk_2786D69E0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke;
  v13[3] = &unk_2786D69E0;
  v14 = queueCopy;
  v15 = completionCopy;
  v13[4] = self;
  v8 = queueCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x231885210](v13);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue addBlock:v10];

  return 1;
}

void __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke(id *a1)
{
  v2 = [a1[4] pairedServer];

  v3 = a1[4];
  if (v2)
  {
    v4 = [v3 pairedServer];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke_3;
    v13[3] = &unk_2786D6790;
    v5 = &v15;
    v15 = a1[6];
    v14 = a1[5];
    v6 = [v4 unpairWithCompletion:v13];

    goto LABEL_10;
  }

  v7 = [v3 authValidationCompletion];
  v8 = a1[4];
  if (v7)
  {
    [v8 setAuthValidationCompletion:0];
LABEL_7:
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (v7)[2](v7, v10);

    goto LABEL_8;
  }

  v9 = [v8 softwareAuthFinishedCompletion];
  if (v9)
  {
    v7 = v9;
    [a1[4] setSoftwareAuthFinishedCompletion:0];
    goto LABEL_7;
  }

LABEL_8:
  v11 = a1[6];
  if (!v11)
  {
    return;
  }

  v12 = a1[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke_2;
  block[3] = &unk_2786D6490;
  v5 = &v17;
  v17 = v11;
  dispatch_async(v12, block);
LABEL_10:
}

void __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:17];
  (*(v1 + 16))(v1, v2);
}

void __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HAPAccessoryServerHAP2Adapter_removePairingForCurrentControllerOnQueue_completion___block_invoke_4;
    block[3] = &unk_2786D6490;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __81__HAPAccessoryServerHAP2Adapter_removePairing_completionQueue_completionHandler___block_invoke;
  v19 = &unk_2786D66C8;
  v20 = queueCopy;
  selfCopy = self;
  v22 = pairingCopy;
  v23 = handlerCopy;
  v11 = pairingCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x231885210](&v16);
  v15 = [(HAPAccessoryServerHAP2Adapter *)self operationQueue:v16];
  [v15 addBlock:v14];
}

void __81__HAPAccessoryServerHAP2Adapter_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __81__HAPAccessoryServerHAP2Adapter_removePairing_completionQueue_completionHandler___block_invoke_2;
  v9 = &unk_2786D6790;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v2 = MEMORY[0x231885210](&v6);
  v3 = [*(a1 + 40) pairedServer];

  if (v3)
  {
    v4 = [*(a1 + 40) pairedServer];
    v5 = [v4 removePairing:*(a1 + 48) completion:v2];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:17];
    (v2)[2](v2, v4);
  }
}

void __81__HAPAccessoryServerHAP2Adapter_removePairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAPAccessoryServerHAP2Adapter_removePairing_completionQueue_completionHandler___block_invoke_3;
  v7[3] = &unk_2786D65D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __78__HAPAccessoryServerHAP2Adapter_addPairing_completionQueue_completionHandler___block_invoke;
  v19 = &unk_2786D66C8;
  v20 = queueCopy;
  selfCopy = self;
  v22 = pairingCopy;
  v23 = handlerCopy;
  v11 = pairingCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = MEMORY[0x231885210](&v16);
  v15 = [(HAPAccessoryServerHAP2Adapter *)self operationQueue:v16];
  [v15 addBlock:v14];
}

void __78__HAPAccessoryServerHAP2Adapter_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __78__HAPAccessoryServerHAP2Adapter_addPairing_completionQueue_completionHandler___block_invoke_2;
  v9 = &unk_2786D6790;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v2 = MEMORY[0x231885210](&v6);
  v3 = [*(a1 + 40) pairedServer];

  if (v3)
  {
    v4 = [*(a1 + 40) pairedServer];
    v5 = [v4 addPairing:*(a1 + 48) completion:v2];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:17];
    (v2)[2](v2, v4);
  }
}

void __78__HAPAccessoryServerHAP2Adapter_addPairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HAPAccessoryServerHAP2Adapter_addPairing_completionQueue_completionHandler___block_invoke_3;
  v7[3] = &unk_2786D65D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (BOOL)stopPairingWithError:(id *)error
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HAPAccessoryServerHAP2Adapter_stopPairingWithError___block_invoke;
  v6[3] = &unk_2786D6FC8;
  objc_copyWeak(&v7, &location);
  [operationQueue addBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return 1;
}

void __54__HAPAccessoryServerHAP2Adapter_stopPairingWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  v2 = [WeakRetained setupCodeCompletion];
  if (v2)
  {
    [WeakRetained setSetupCodeCompletion:0];
    (v2)[2](v2, 0, v1);
  }

  else
  {
    v3 = [WeakRetained userConsentCompletion];
    if (v3)
    {
      [WeakRetained setUserConsentCompletion:0];
      (v3)[2](v3, v1);
    }

    else
    {
      v4 = [WeakRetained pairingSessionCancelable];
      v5 = v4;
      if (v4)
      {
        [v4 cancelWithError:v1];
      }
    }
  }
}

- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error
{
  passwordCopy = password;
  stringCopy = string;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HAPAccessoryServerHAP2Adapter_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
  v12[3] = &unk_2786D6EB0;
  objc_copyWeak(&v14, &location);
  v10 = passwordCopy;
  v13 = v10;
  [operationQueue addBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

void __87__HAPAccessoryServerHAP2Adapter_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained setupCodeCompletion];
  if (v3)
  {
    [WeakRetained setSetupCodeCompletion:0];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
      v4 = *(a1 + 32);
    }

    (v3)[2](v3, v4, v5);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = WeakRetained;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%@ Pairing password provided, but wasn't expected", &v8, 0xCu);
    }

    [WeakRetained _handleIncorrectStartPairingCall];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startPairingWithRequest:(id)request
{
  requestCopy = request;
  v6 = objc_alloc(MEMORY[0x277D0F770]);
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x231884350](self, a2);
  v9 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAP2/HAPAdapter/HAPAccessoryServerHAP2Adapter.m", 998];
  v10 = [v6 initWithName:v9];

  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HAPAccessoryServerHAP2Adapter_startPairingWithRequest___block_invoke;
  v14[3] = &unk_2786D6F50;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v15 = v12;
  v13 = requestCopy;
  v16 = v13;
  [operationQueue addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __57__HAPAccessoryServerHAP2Adapter_startPairingWithRequest___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setPairingActivity:a1[4]];
  [WeakRetained setPairingRequest:a1[5]];
  v3 = [WeakRetained softwareAuthFinishedCompletion];
  if (v3)
  {
    [WeakRetained setSoftwareAuthFinishedCompletion:0];
    v3[2](v3, 0);
  }

  else
  {
    v4 = [WeakRetained pairingSessionCancelable];

    if (v4)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v5 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *v22 = 138412290;
        *&v22[4] = WeakRetained;
        _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%@ Request to pair when we're already pairing, canceling", v22, 0xCu);
      }

      v6 = [WeakRetained pairingSessionCancelable];
      v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4];
      [v6 cancelWithError:v7];
    }

    else
    {
      v8 = [WeakRetained unpairedServer];
      if (v8)
      {
        v9 = a1 + 5;
        [WeakRetained setSkipUserConsent:{objc_msgSend(a1[5], "requiresUserConsent") ^ 1}];
        v11 = a1[4];
        v10 = a1 + 4;
        v12 = v11;
        v13 = HMFBooleanToString();
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "connectionState")}];
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "category")}];
        [*v9 requiresUserConsent];

        v16 = HMFBooleanToString();
        v17 = [v8 protocolVersion];
        [v17 versionString];

        [*v10 begin];
        *v22 = *v10;
        v18 = [v8 pairWithDelegate:WeakRetained pairingRequest:*v9];
        [WeakRetained setPairingSessionCancelable:v18];

        __HMFActivityScopeLeave();
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v19 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *v22 = 138412290;
          *&v22[4] = WeakRetained;
          _os_log_error_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%@ Ignoring request to pair an already paired accessory", v22, 0xCu);
        }

        v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
        [WeakRetained _notifyDelegatePairingStoppedWithError:v20];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)continuePairingUsingWAC
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)_continuePairingAfterAuthPromptWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  userConsentCompletion = [(HAPAccessoryServerHAP2Adapter *)self userConsentCompletion];
  if (userConsentCompletion)
  {
    [(HAPAccessoryServerHAP2Adapter *)self setUserConsentCompletion:0];
    (userConsentCompletion)[2](userConsentCompletion, errorCopy);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Someone thinks we just prompted for auth but we didn't", &v9, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self _handleIncorrectStartPairingCall];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)continuePairingAfterAuthPrompt
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HAPAccessoryServerHAP2Adapter_continuePairingAfterAuthPrompt__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [operationQueue addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__HAPAccessoryServerHAP2Adapter_continuePairingAfterAuthPrompt__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continuePairingAfterAuthPromptWithError:0];
}

- (void)_resetPairingState
{
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  os_unfair_lock_lock_with_options();
  pairingSessionCancelable = self->_pairingSessionCancelable;
  self->_pairingSessionCancelable = 0;

  setupCodeCompletion = self->_setupCodeCompletion;
  self->_setupCodeCompletion = 0;

  userConsentCompletion = self->_userConsentCompletion;
  self->_userConsentCompletion = 0;

  authValidationCompletion = self->_authValidationCompletion;
  self->_authValidationCompletion = 0;

  softwareAuthFinishedCompletion = self->_softwareAuthFinishedCompletion;
  self->_softwareAuthFinishedCompletion = 0;

  authenticateUUIDCompletion = self->_authenticateUUIDCompletion;
  self->_authenticateUUIDCompletion = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)_notifyDelegatePairingStoppedWithError:(id)error
{
  errorCopy = error;
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HAPAccessoryServerHAP2Adapter__notifyDelegatePairingStoppedWithError___block_invoke;
    block[3] = &unk_2786D7078;
    v9 = delegate;
    selfCopy = self;
    v11 = errorCopy;
    dispatch_async(delegateQueue, block);
  }

  [(HAPAccessoryServerHAP2Adapter *)self setPairingSessionCancelable:0];
  [(HAPAccessoryServer *)self setPairingRequest:0];
}

- (void)_handleIncorrectStartPairingCall
{
  pairingSessionCancelable = [(HAPAccessoryServerHAP2Adapter *)self pairingSessionCancelable];

  if (pairingSessionCancelable)
  {
    pairingSessionCancelable2 = [(HAPAccessoryServerHAP2Adapter *)self pairingSessionCancelable];
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    [pairingSessionCancelable2 cancelWithError:v4];
  }

  else
  {
    pairingSessionCancelable2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    [(HAPAccessoryServerHAP2Adapter *)self _notifyDelegatePairingStoppedWithError:?];
  }
}

- (void)validatePairingAuthMethod:(id)method
{
  methodCopy = method;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HAPAccessoryServerHAP2Adapter_validatePairingAuthMethod___block_invoke;
  v7[3] = &unk_2786D6FA0;
  objc_copyWeak(&v9, &location);
  v6 = methodCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__HAPAccessoryServerHAP2Adapter_validatePairingAuthMethod___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%{public}@Accessory server died", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"validatePairingAuthMethod not supported on HAPAccessoryServerHAP2Adapter" reason:0 suggestion:0 underlyingError:0 marker:206];
  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)provisionToken:(id)token
{
  tokenCopy = token;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HAPAccessoryServerHAP2Adapter_provisionToken___block_invoke;
  v8[3] = &unk_2786D4750;
  objc_copyWeak(v10, &location);
  v10[1] = a2;
  v7 = tokenCopy;
  v9 = v7;
  [operationQueue addBlock:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __48__HAPAccessoryServerHAP2Adapter_provisionToken___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained authenticateUUIDCompletion];
  if (v3)
  {
    [WeakRetained setAuthenticateUUIDCompletion:0];
    v3[2](v3, *(a1 + 32));
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7 = v4;
      v8 = NSStringFromSelector(v6);
      v9 = 138412546;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Incorrect call to %@", &v9, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HAPAccessoryServerHAP2Adapter_continueAuthAfterValidation___block_invoke;
  v6[3] = &unk_2786D60D8;
  objc_copyWeak(&v7, &location);
  validationCopy = validation;
  [operationQueue addBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__HAPAccessoryServerHAP2Adapter_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained authValidationCompletion];
  if (v2)
  {
    [WeakRetained setAuthValidationCompletion:0];
    v3 = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    }

    (v2)[2](v2, v3);
  }

  else
  {
    if (*(a1 + 40))
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    }

    [WeakRetained _continuePairingAfterAuthPromptWithError:v3];
  }
}

- (void)authenticateAccessory
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (unint64_t)sessionCheckInterval
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  [activeServer sessionCheckInterval];
  v4 = v3;

  return v4;
}

- (void)stopPing
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__HAPAccessoryServerHAP2Adapter_stopPing__block_invoke;
  v5[3] = &unk_2786D6FF0;
  objc_copyWeak(v6, &location);
  v6[1] = a2;
  [operationQueue addBlock:v5];

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __41__HAPAccessoryServerHAP2Adapter_stopPing__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReachabilityPingEnabled:0];
  v3 = [WeakRetained pairedServer];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  v5 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = v4;
      v10 = NSStringFromSelector(v8);
      v14 = 138412546;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v10;
      _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ %@", &v14, 0x16u);
    }

    v6 = [WeakRetained pairedServer];
    [v6 stopConfirming];
  }

  else if (v5)
  {
    v11 = *(a1 + 40);
    v12 = v4;
    v13 = NSStringFromSelector(v11);
    v14 = 138412546;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%@ %@: server not paired", &v14, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startPing
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HAPAccessoryServerHAP2Adapter_startPing__block_invoke;
  v5[3] = &unk_2786D6FF0;
  objc_copyWeak(v6, &location);
  v6[1] = a2;
  [operationQueue addBlock:v5];

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __42__HAPAccessoryServerHAP2Adapter_startPing__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pairedServer];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  v5 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = v4;
      v10 = NSStringFromSelector(v8);
      v14 = 138412546;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v10;
      _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ %@", &v14, 0x16u);
    }

    [WeakRetained setReachabilityPingEnabled:1];
    v6 = [WeakRetained pairedServer];
    [v6 startConfirming];
  }

  else if (v5)
  {
    v11 = *(a1 + 40);
    v12 = v4;
    v13 = NSStringFromSelector(v11);
    v14 = 138412546;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%@ %@: server not paired", &v14, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)closeSessions
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HAPAccessoryServerHAP2Adapter_closeSessions__block_invoke;
  v5[3] = &unk_2786D6FF0;
  objc_copyWeak(v6, &location);
  v6[1] = a2;
  [operationQueue addBlock:v5];

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __46__HAPAccessoryServerHAP2Adapter_closeSessions__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pairedServer];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  v5 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v11 = *(a1 + 40);
      v12 = v4;
      v13 = NSStringFromSelector(v11);
      v17 = 138412546;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v13;
      _os_log_debug_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%@ %@", &v17, 0x16u);
    }

    v6 = [WeakRetained pairedServer];
    [v6 closeSession];

    v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [v7 preferenceForKey:@"HAPDefaultHAP2DisconnectOnIdleTimeoutSeconds"];
    v9 = [v8 numberValue];
    [v9 doubleValue];
    [WeakRetained setDisconnectOnIdleTimeout:?];
  }

  else if (v5)
  {
    v14 = *(a1 + 40);
    v15 = v4;
    v16 = NSStringFromSelector(v14);
    v17 = 138412546;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%@ %@: server not paired", &v17, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  unpairedServer = [(HAPAccessoryServerHAP2Adapter *)self unpairedServer];
  if (!unpairedServer)
  {
    clientQueue = [(HAPAccessoryServerHAP2Adapter *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HAPAccessoryServerHAP2Adapter_identifyWithCompletion___block_invoke;
    block[3] = &unk_2786D6490;
    v9 = completionCopy;
    dispatch_async(clientQueue, block);
  }

  v7 = [unpairedServer identifyWithCompletion:completionCopy];
}

void __56__HAPAccessoryServerHAP2Adapter_identifyWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
  (*(v1 + 16))(v1, v2);
}

- (void)_enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v47 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];

  if (pairedServer)
  {
    v42 = 0;
    v41 = 0;
    v15 = [(HAPAccessoryServerHAP2Adapter *)self _hap2CharacteristicTuplesForHAPCharacteristics:characteristicsCopy tuples:&v42 error:&v41];
    v16 = v42;
    v17 = v41;
    if (v15)
    {
      if ([v16 count] < 2)
      {
        firstObject = [v16 firstObject];
        values = [firstObject values];
        v22 = [values count];

        if (v22)
        {
          values2 = [firstObject values];
          v24 = [values2 copy];

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_3;
          v31[3] = &unk_2786D6060;
          v32 = queueCopy;
          v33 = handlerCopy;
          v25 = MEMORY[0x231885210](v31);
          accessory = [firstObject accessory];
          v27 = accessory;
          if (eventsCopy)
          {
            v28 = [accessory enableNotificationsForCharacteristics:v24 completion:v25];
          }

          else
          {
            v29 = [accessory disableNotificationsForCharacteristics:v24 completion:v25];
          }
        }

        else
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2_198;
          v34[3] = &unk_2786D6490;
          v35 = handlerCopy;
          dispatch_async(queueCopy, v34);
          v24 = v35;
        }
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v18 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_error_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%@ More than one accessory not supported at the moment", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_197;
        block[3] = &unk_2786D6490;
        v37 = handlerCopy;
        dispatch_async(queueCopy, block);
        firstObject = v37;
      }
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2;
      v38[3] = &unk_2786D65D8;
      v40 = handlerCopy;
      v39 = v17;
      dispatch_async(queueCopy, v38);

      firstObject = v40;
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v20 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%@ Cannot update notification configuration while unpaired", buf, 0xCu);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    v43[3] = &unk_2786D6490;
    v44 = handlerCopy;
    dispatch_async(queueCopy, v43);
    v16 = v44;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot update notification configuration while unpaired" reason:@"HAPAccessoryServerHAP2Adapter has nil pairedServer during _enableEvents:forCharacteristics" suggestion:0 underlyingError:0 marker:200];
  (*(*(a1 + 32) + 16))();
}

void __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_197(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
  (*(v1 + 16))(v1, 0, v2);
}

void __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_4;
  block[3] = &unk_2786D69E0;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_11083];
    v3 = a1[4];
  }

  v4 = a1[5];
  v5 = *(a1[6] + 16);

  return v5();
}

void __94__HAPAccessoryServerHAP2Adapter__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristic];
  [v3 instanceID];

  v4 = [v2 characteristic];
  [v4 type];

  v5 = [v2 error];
  [v5 domain];

  v6 = [v2 error];

  [v6 code];
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__HAPAccessoryServerHAP2Adapter_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  v17[3] = &unk_2786D6D18;
  objc_copyWeak(&v21, &location);
  v14 = queueCopy;
  v18 = v14;
  v15 = handlerCopy;
  v20 = v15;
  eventsCopy = events;
  v16 = characteristicsCopy;
  v19 = v16;
  [operationQueue addBlock:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __93__HAPAccessoryServerHAP2Adapter_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _enableEvents:*(a1 + 64) forCharacteristics:*(a1 + 40) withCompletionHandler:*(a1 + 48) queue:*(a1 + 32)];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "Accessory server died", buf, 2u);
    }

    v5 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HAPAccessoryServerHAP2Adapter_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_189;
    block[3] = &unk_2786D6490;
    v7 = *(a1 + 48);
    dispatch_async(v5, block);
  }
}

void __93__HAPAccessoryServerHAP2Adapter_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_189(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)productData
{
  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];
  productData = [pairedServer productData];

  return productData;
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
  pairedServer = [(HAPAccessoryServerHAP2Adapter *)self pairedServer];
  v3 = [pairedServer connectionState] == 3;

  return v3;
}

- (void)setPrimaryAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)primaryAccessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryAccessory;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAPAccessoryServerHAP2Adapter_setAccessories___block_invoke;
  v7[3] = &unk_2786D4728;
  v7[4] = &v8;
  [accessoriesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  if ((v9[3] & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    v5 = [accessoriesCopy copy];
    accessories = self->_accessories;
    self->_accessories = v5;

    os_unfair_lock_unlock(&self->super._lock);
  }

  _Block_object_dispose(&v8, 8);
}

void __48__HAPAccessoryServerHAP2Adapter_setAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (id)accessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_accessories copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)reachabilityChangedReason
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  reachabilityChangedReason = [activeServer reachabilityChangedReason];

  return reachabilityChangedReason;
}

- (BOOL)hasAdvertisement
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  hasDiscoveryAdvertisement = [activeServer hasDiscoveryAdvertisement];

  return hasDiscoveryAdvertisement;
}

- (unint64_t)configNumber
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  configNumber = [activeServer configNumber];

  return configNumber;
}

- (id)setupHash
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  setupHash = [activeServer setupHash];

  return setupHash;
}

- (id)version
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  protocolVersion = [activeServer protocolVersion];

  return protocolVersion;
}

- (id)category
{
  v2 = MEMORY[0x277CCABB0];
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(activeServer, "category")}];

  return v4;
}

- (BOOL)isReachable
{
  activeServer = [(HAPAccessoryServerHAP2Adapter *)self activeServer];
  connectionState = [activeServer connectionState];

  return (connectionState - 1) < 4;
}

- (void)disconnectOnIdleUpdated
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HAPAccessoryServerHAP2Adapter_disconnectOnIdleUpdated__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [operationQueue addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__HAPAccessoryServerHAP2Adapter_disconnectOnIdleUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained onDemandConnectionsAreEnabled])
    {
      [v2 _startConnectionIdleTimer];
    }

    else
    {
      [v2 _suspendConnectionIdleTimer];
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "Accessory server died", v4, 2u);
    }
  }
}

- (void)_kickConnectionIdleTimer
{
  v10 = *MEMORY[0x277D85DE8];
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  connectionIdleTimer = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];

  if (connectionIdleTimer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Kicking connection idle timer", &v8, 0xCu);
    }

    connectionIdleTimer2 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
    [connectionIdleTimer2 resume];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_suspendConnectionIdleTimer
{
  v15 = *MEMORY[0x277D85DE8];
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  connectionIdleTimer = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];

  if (connectionIdleTimer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      connectionIdleTimer2 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
      [connectionIdleTimer2 timeInterval];
      v11 = 138412546;
      selfCopy = self;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ Canceling connection idle timer of: %fs", &v11, 0x16u);
    }

    connectionIdleTimer3 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
    [connectionIdleTimer3 cancel];

    [(HAPAccessoryServerHAP2Adapter *)self setConnectionIdleTimer:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startConnectionIdleTimer
{
  v19 = *MEMORY[0x277D85DE8];
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([(HAPAccessoryServerHAP2Adapter *)self onDemandConnectionsAreEnabled])
  {
    connectionIdleTimer = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];

    if (!connectionIdleTimer)
    {
      v5 = objc_alloc(MEMORY[0x277D0F920]);
      [(HAPAccessoryServerHAP2Adapter *)self disconnectOnIdleTimeout];
      v6 = [v5 initWithTimeInterval:0 options:?];
      [(HAPAccessoryServerHAP2Adapter *)self setConnectionIdleTimer:v6];

      connectionIdleTimer2 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
      [connectionIdleTimer2 setDelegate:self];
    }
  }

  connectionIdleTimer3 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];

  if (connectionIdleTimer3)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      connectionIdleTimer4 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
      [connectionIdleTimer4 timeInterval];
      v15 = 138412546;
      selfCopy = self;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%@ Starting connection idle timer of: %fs", &v15, 0x16u);
    }

    connectionIdleTimer5 = [(HAPAccessoryServerHAP2Adapter *)self connectionIdleTimer];
    [connectionIdleTimer5 resume];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionIdleTimeout
{
  v8 = *MEMORY[0x277D85DE8];
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if ([(HAPAccessoryServerHAP2Adapter *)self onDemandConnectionsAreEnabled])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEFAULT, "%@ The connection idle timer fired, disconnecting...", &v6, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self closeSessions];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveDisconnectOnIdleTimeout:(double)timeout
{
  objc_initWeak(&location, self);
  operationQueue = [(HAPAccessoryServerHAP2Adapter *)self operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HAPAccessoryServerHAP2Adapter_updateActiveDisconnectOnIdleTimeout___block_invoke;
  v6[3] = &unk_2786D6FF0;
  objc_copyWeak(v7, &location);
  v7[1] = *&timeout;
  [operationQueue addBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __69__HAPAccessoryServerHAP2Adapter_updateActiveDisconnectOnIdleTimeout___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained onDemandConnectionsAreEnabled])
    {
      [v3 setDisconnectOnIdleTimeout:*(a1 + 40)];
      v4 = [v3 connectionIdleTimer];
      if (v4)
      {
        v5 = v4;
        v6 = [v3 connectionIdleTimer];
        [v6 timeInterval];
        v8 = v7;
        [v3 disconnectOnIdleTimeout];
        v10 = v9;

        if (v8 != v10)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v11 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            [v3 disconnectOnIdleTimeout];
            v16 = 138412546;
            v17 = v3;
            v18 = 2048;
            v19 = v13;
            _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%@ Updating active connection idle timer timeout to: %fs", &v16, 0x16u);
          }

          [v3 _suspendConnectionIdleTimer];
          [v3 _startConnectionIdleTimer];
        }
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEFAULT, "Accessory server died", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDiscoverAccessoriesOncePaired:(BOOL)paired
{
  os_unfair_lock_lock_with_options();
  self->_discoverAccessoriesOncePaired = paired;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)shouldDiscoverAccessoriesOncePaired
{
  os_unfair_lock_lock_with_options();
  discoverAccessoriesOncePaired = self->_discoverAccessoriesOncePaired;
  os_unfair_lock_unlock(&self->super._lock);
  return discoverAccessoriesOncePaired;
}

- (void)setAuthenticateUUIDCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x231885210](completionCopy);

  authenticateUUIDCompletion = self->_authenticateUUIDCompletion;
  self->_authenticateUUIDCompletion = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)authenticateUUIDCompletion
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x231885210](self->_authenticateUUIDCompletion);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSoftwareAuthFinishedCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x231885210](completionCopy);

  softwareAuthFinishedCompletion = self->_softwareAuthFinishedCompletion;
  self->_softwareAuthFinishedCompletion = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)softwareAuthFinishedCompletion
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x231885210](self->_softwareAuthFinishedCompletion);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setAuthValidationCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x231885210](completionCopy);

  authValidationCompletion = self->_authValidationCompletion;
  self->_authValidationCompletion = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)authValidationCompletion
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x231885210](self->_authValidationCompletion);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (BOOL)shouldSkipUserConsent
{
  os_unfair_lock_lock_with_options();
  skipUserConsent = self->_skipUserConsent;
  os_unfair_lock_unlock(&self->super._lock);
  return skipUserConsent;
}

- (void)setUserConsentCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x231885210](completionCopy);

  userConsentCompletion = self->_userConsentCompletion;
  self->_userConsentCompletion = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)userConsentCompletion
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x231885210](self->_userConsentCompletion);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSetupCodeCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x231885210](completionCopy);

  setupCodeCompletion = self->_setupCodeCompletion;
  self->_setupCodeCompletion = v5;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)setupCodeCompletion
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x231885210](self->_setupCodeCompletion);
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setPairingSessionCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  os_unfair_lock_lock_with_options();
  pairingSessionCancelable = self->_pairingSessionCancelable;
  self->_pairingSessionCancelable = cancelableCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HAP2Cancelable)pairingSessionCancelable
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pairingSessionCancelable;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)clientQueue
{
  v4.receiver = self;
  v4.super_class = HAPAccessoryServerHAP2Adapter;
  clientQueue = [(HAPAccessoryServer *)&v4 clientQueue];

  return clientQueue;
}

- (id)activeServer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pairedServer;
  unpairedServer = v3;
  if (!v3)
  {
    unpairedServer = self->_unpairedServer;
  }

  v5 = unpairedServer;

  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (void)setShouldBePaired:(BOOL)paired
{
  os_unfair_lock_lock_with_options();
  self->_internallyPaired = paired;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setPairedServer:(id)server
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    selfCopy2 = self;
    v14 = 2112;
    v15 = serverCopy;
    _os_log_debug_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%@ Received a paired server: %@", &v12, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  v7 = self->_unpairedServer;
  v8 = self->_pairedServer;
  objc_storeStrong(&self->_pairedServer, server);
  unpairedServer = self->_unpairedServer;
  self->_unpairedServer = 0;

  self->_internallyPaired = 1;
  os_unfair_lock_unlock(&self->super._lock);
  if (v7)
  {
    [(HAP2UnpairedAccessoryServer *)v7 setDelegate:0];
  }

  if (v8 && ([(HAP2PairedAccessoryServer *)v8 isEqual:serverCopy]& 1) == 0)
  {
    [(HAP2PairedAccessoryServer *)v8 setDelegate:0];
  }

  [serverCopy setDelegate:self];
  -[HAPAccessoryServer setHasPairings:](self, "setHasPairings:", [serverCopy hasPairings]);
  if ([(HAPAccessoryServerHAP2Adapter *)self shouldDiscoverAccessoriesOncePaired])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%@ Discovering accessories now that we're paired", &v12, 0xCu);
    }

    [(HAPAccessoryServerHAP2Adapter *)self setDiscoverAccessoriesOncePaired:0];
    [(HAPAccessoryServerHAP2Adapter *)self discoverAccessories];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setUnpairedServer:(id)server
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = serverCopy;
    _os_log_debug_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%@ Received an unpaired server: %@", &v11, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  v7 = self->_unpairedServer;
  v8 = self->_pairedServer;
  objc_storeStrong(&self->_unpairedServer, server);
  pairedServer = self->_pairedServer;
  self->_pairedServer = 0;

  self->_internallyPaired = 0;
  os_unfair_lock_unlock(&self->super._lock);
  if (v7 && ([(HAP2UnpairedAccessoryServer *)v7 isEqual:serverCopy]& 1) == 0)
  {
    [(HAP2UnpairedAccessoryServer *)v7 setDelegate:0];
  }

  if (v8)
  {
    [(HAP2PairedAccessoryServer *)v8 setDelegate:0];
  }

  [serverCopy setDelegate:self];
  -[HAPAccessoryServer setHasPairings:](self, "setHasPairings:", [serverCopy hasPairings]);

  v10 = *MEMORY[0x277D85DE8];
}

- (HAPAccessoryServerHAP2Adapter)initWithPairedServer:(id)server
{
  serverCopy = server;
  if ([serverCopy conformsToProtocol:&unk_283EB63D0])
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  operationQueue = [v6 operationQueue];
  v8 = [(HAPAccessoryServerHAP2Adapter *)self initWithOperationQueue:operationQueue accessoryServer:serverCopy];

  if (v8)
  {
    v8->_internallyPaired = 1;
    objc_storeStrong(&v8->_pairedServer, v5);
    [v6 setDelegate:v8];
    v9 = v8;
  }

  return v8;
}

- (HAPAccessoryServerHAP2Adapter)initWithUnpairedServer:(id)server
{
  serverCopy = server;
  if ([serverCopy conformsToProtocol:&unk_283EB5C18])
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  operationQueue = [v6 operationQueue];
  v8 = [(HAPAccessoryServerHAP2Adapter *)self initWithOperationQueue:operationQueue accessoryServer:serverCopy];

  if (v8)
  {
    v8->_internallyPaired = 0;
    objc_storeStrong(&v8->_unpairedServer, v5);
    [v6 setDelegate:v8];
    v9 = v8;
  }

  return v8;
}

- (HAPAccessoryServerHAP2Adapter)initWithOperationQueue:(id)queue accessoryServer:(id)server
{
  v28[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  serverCopy = server;
  v9 = +[HAPSystemKeychainStore systemStore];
  v27.receiver = self;
  v27.super_class = HAPAccessoryServerHAP2Adapter;
  v10 = [(HAPAccessoryServer *)&v27 initWithKeystore:v9];

  if (v10)
  {
    name = [serverCopy name];
    deviceID = [serverCopy deviceID];
    deviceIDString = [deviceID deviceIDString];

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v15 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPDefaultHAP2DisconnectOnIdleTimeoutSeconds"];

    objc_storeStrong(&v10->super._name, name);
    objc_storeStrong(&v10->super._identifier, deviceIDString);
    objc_storeStrong(&v10->_operationQueue, queue);
    v16 = [HAPAccessory alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v18 = [(HAPAccessory *)v16 initWithServer:v10 instanceID:v17];

    [(HAPAccessory *)v18 setName:name];
    [(HAPAccessory *)v18 setIdentifier:deviceIDString];
    [(HAPAccessory *)v18 setServerIdentifier:deviceIDString];
    [(HAPAccessory *)v18 setPrimary:1];
    objc_storeStrong(&v10->_primaryAccessory, v18);
    v28[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    accessories = v10->_accessories;
    v10->_accessories = v19;

    -[HAPAccessoryServer setHasPairings:](v10, "setHasPairings:", [serverCopy hasPairings]);
    [(HAPAccessoryServer *)v10 setSupportsUnreachablePing:1];
    if (v15)
    {
      numberValue = [v15 numberValue];
      [numberValue doubleValue];
      v10->_disconnectOnIdleTimeout = v22;
    }

    else
    {
      v10->_disconnectOnIdleTimeout = 30.0;
    }

    sessionInfo = v10->_sessionInfo;
    v10->_sessionInfo = 0;

    v24 = v10;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

@end
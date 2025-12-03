@interface HAP2AccessoryServerController
+ (HAP2AccessoryServerController)new;
- (BOOL)mergeWithNewController:(id)controller;
- (HAP2AccessoryServerController)init;
- (HAP2AccessoryServerController)initWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue;
- (HAP2AccessoryServerController)initWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue accessoryFactory:(id)factory;
- (HAP2AccessoryServerControllerOperation)_notificationOperationForRequest:(void *)request operationDescription:(uint64_t)description options:;
- (HAP2AccessoryServerPrivate)accessoryServer;
- (HAPPairingIdentity)currentLocalPairingIdentity;
- (NSString)description;
- (id)_createOperationsToReadCharacteristics:(uint64_t)characteristics timeout:(void *)timeout options:(double)options error:;
- (id)_getPairingsCharacteristicForServer:(void *)server error:;
- (id)_maybeBeginCharacteristicOperations:(void *)operations error:(void *)error completion:;
- (id)addPairing:(id)pairing completion:(id)completion;
- (id)disableNotificationsForCharacteristics:(id)characteristics options:(unint64_t)options completion:(id)completion;
- (id)enableNotificationsForCharacteristics:(id)characteristics options:(unint64_t)options completion:(id)completion;
- (id)keyBag;
- (id)listPairingsWithCompletion:(id)completion;
- (id)readAttributeDatabaseWithCompletion:(id)completion;
- (id)readValuesForCharacteristics:(id)characteristics timeout:(double)timeout options:(unint64_t)options completion:(id)completion;
- (id)removePairing:(id)pairing cleanupLocalData:(BOOL)data completion:(id)completion;
- (id)unpairedIdentifyWithCompletion:(id)completion;
- (id)writeValuesForCharacteristics:(id)characteristics timeout:(double)timeout options:(unint64_t)options completion:(id)completion;
- (uint64_t)currentAccessoryIPTryCount;
- (uint64_t)isSessionExpired;
- (uint64_t)sessionNumber;
- (uint64_t)setCurrentAccessoryIPTryCount:(uint64_t)result;
- (uint64_t)setFlagNotificationEnableConsistencyWarning:(uint64_t)result;
- (uint64_t)setReadingAttributeDatabase:(uint64_t)result;
- (uint64_t)setSessionStartTime:(uint64_t)result;
- (void)_callCharacteristicCompletion:(void *)completion operations:(void *)operations error:;
- (void)_handleUpdatedValuesFromResponse:(void *)response;
- (void)_updateMaxRequestTimeout:(id *)timeout;
- (void)closeSession;
- (void)dealloc;
- (void)handleUpdatedMetadataWithOldMetadata:(id)metadata;
- (void)openTransportWithResume:(void *)resume completion:;
- (void)saveAccessoryCache;
- (void)secureTransport:(id)transport didChangeState:(unint64_t)state error:(id)error;
- (void)secureTransport:(id)transport didReceiveEvent:(id)event;
- (void)secureTransport:(id)transport needsLocalPairingIdentityWithCompletion:(id)completion;
- (void)secureTransport:(id)transport needsRemotePairingIdentityForDeviceID:(id)d completion:(id)completion;
- (void)setAccessoryCache:(uint64_t)cache;
- (void)updateMaxRequestTimeout:(double)timeout;
@end

@implementation HAP2AccessoryServerController

- (HAP2AccessoryServerPrivate)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (NSString)description
{
  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HAP2AccessoryServerController;
  v5 = [(HAP2LoggingObject *)&v10 description];
  name = [accessoryServer name];
  deviceID = [accessoryServer deviceID];
  v8 = [v4 stringWithFormat:@"%@ [%@/%@]", v5, name, deviceID];

  return v8;
}

- (void)secureTransport:(id)transport needsRemotePairingIdentityForDeviceID:(id)d completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  v10 = accessoryServer;
  if (!accessoryServer)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%@ No accessory server", buf, 0xCu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 2;
    goto LABEL_15;
  }

  deviceID = [accessoryServer deviceID];
  v12 = [deviceID isEqualToDeviceID:dCopy];

  if ((v12 & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v20 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v23 = v20;
      deviceID2 = [v10 deviceID];
      *buf = 138412802;
      selfCopy3 = self;
      v30 = 2112;
      v31 = deviceID2;
      v32 = 2112;
      v33 = dCopy;
      _os_log_error_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%@ Accessory device ID doesn't match %@ -> %@", buf, 0x20u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 9;
LABEL_15:
    storage = [v18 hapErrorWithCode:v19];
    completionCopy[2](completionCopy, 0, storage);
    goto LABEL_22;
  }

  browser = [v10 browser];
  storage = [browser storage];

  if (storage)
  {
    v15 = [MEMORY[0x277CBEB98] setWithObject:dCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __98__HAP2AccessoryServerController_secureTransport_needsRemotePairingIdentityForDeviceID_completion___block_invoke;
    v25[3] = &unk_2786D5D48;
    v26 = dCopy;
    v27 = completionCopy;
    [storage fetchKeysForIdentifiers:v15 completion:v25];

    v16 = v26;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v21 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%@ No storage server", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    completionCopy[2](completionCopy, 0, v16);
  }

LABEL_22:
  v22 = *MEMORY[0x277D85DE8];
}

void __98__HAP2AccessoryServerController_secureTransport_needsRemotePairingIdentityForDeviceID_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v10)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v10];
    if (v3)
    {
      v4 = [HAPPairingIdentity alloc];
      v5 = [*(a1 + 32) deviceIDString];
      v6 = [(HAPPairingIdentity *)v4 initWithIdentifier:v5 publicKey:v3 privateKey:0 permissions:0];

      v7 = *(*(a1 + 40) + 16);
    }

    else
    {
      v9 = *(a1 + 40);
      v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      v7 = *(v9 + 16);
    }

    v7();
  }

  else
  {
    v8 = *(a1 + 40);
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v8 + 16))(v8, 0, v3);
  }
}

- (void)secureTransport:(id)transport needsLocalPairingIdentityWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  browser = [accessoryServer browser];
  storage = [browser storage];

  if (!storage)
  {
    accessoryServer2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    completionCopy[2](completionCopy, 0, accessoryServer2);
    goto LABEL_13;
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1 || (-[HAP2AccessoryServerController keyBag](&self->super.super.isa), v9 = objc_claimAutoreleasedReturnValue(), [v9 currentIdentity], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];
    deviceID = [accessoryServer2 deviceID];
    [storage fetchControllerKeyForDeviceId:deviceID completion:completionCopy];

LABEL_13:
    goto LABEL_14;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "Using Pairing Identity: %@", &v15, 0xCu);
  }

  (completionCopy)[2](completionCopy, v10, 0);

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)keyBag
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__18468;
    v9 = __Block_byref_object_dispose__18469;
    v10 = 0;
    v2 = self[10];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__HAP2AccessoryServerController_keyBag__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)secureTransport:(id)transport didReceiveEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  encoding = [(HAP2AccessoryServerController *)self encoding];
  v19 = 0;
  v7 = [encoding eventsForData:eventCopy error:&v19];

  v8 = v19;
  if (v7)
  {
    accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
    if ([accessoryServer conformsToProtocol:&unk_283EB63D0])
    {
      accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

      if (accessoryServer2 && ([accessoryServer2 isPaired] & 1) != 0)
      {
        if ([(HAP2AccessoryServerController *)self isSessionExpired])
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v11 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = self;
            _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%@ Received event on session that lasted too long, restarting session", buf, 0xCu);
          }

          if (self)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v22 = __Block_byref_object_copy__18468;
            v23 = __Block_byref_object_dispose__18469;
            v24 = 0;
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke;
            v20[3] = &unk_2786D6E60;
            v20[4] = self;
            v20[5] = buf;
            v12 = MEMORY[0x231885210](v20);
            v13 = [[HAP2AsynchronousBlockOperation alloc] initWithName:@"Restart security session" block:v12];
            v14 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v13;

            v15 = self->_operationQueue;
            [(HAP2SerializedOperationQueue *)v15 addOperation:*(*&buf[8] + 40)];

            _Block_object_dispose(buf, 8);
          }
        }

        [accessoryServer2 handleEvents:v7];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {

      accessoryServer2 = 0;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%@ Ignoring event when no longer paired", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v16 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_error_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to parse event data: %@", buf, 0x16u);
  }

LABEL_23:

  v18 = *MEMORY[0x277D85DE8];
}

- (uint64_t)isSessionExpired
{
  if (result)
  {
    v1 = result;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v2 = *(result + 80);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__HAP2AccessoryServerController_sessionStartTime__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    v3 = v6[3];
    _Block_object_dispose(&v5, 8);
    if (v3)
    {
      if (v3 == 1)
      {
        return 1;
      }

      else
      {
        mach_absolute_time();
        return (UpTicksToMilliseconds() - v3) > 0x240C83FF;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (([(HAP2AccessoryServerController *)*(a1 + 32) isSessionExpired]& 1) != 0)
  {
    v2 = [*(a1 + 32) transport];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke_362;
    v6[3] = &unk_2786D5A90;
    v7 = *(a1 + 32);
    [v2 closeWithError:0 completion:v6];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%@ Aborting restart operation", buf, 0xCu);
    }

    [*(*(*(a1 + 40) + 8) + 40) finish];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke_362(uint64_t a1)
{
  v2 = [*(a1 + 32) transport];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke_2;
  v3[3] = &unk_2786D5A90;
  v4 = *(a1 + 32);
  [v2 openWithCompletion:v3];
}

uint64_t __56__HAP2AccessoryServerController__scheduleRestartSession__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Done restarting session", &v6, 0xCu);
  }

  result = [*(*(*(a1 + 40) + 8) + 40) finish];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)secureTransport:(id)transport didChangeState:(unint64_t)state error:(id)error
{
  transportCopy = transport;
  errorCopy = error;
  if (!state || state == 3)
  {
    [(HAP2AccessoryServerController *)self setSessionStartTime:?];
    accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
    if ([accessoryServer conformsToProtocol:&unk_283EB63D0])
    {
      accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

      if (accessoryServer2 && [accessoryServer2 isPaired])
      {
        accessories = [accessoryServer2 accessories];
        [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_379];
      }
    }

    else
    {

      accessoryServer2 = 0;
    }
  }

  else if (state == 1 && self)
  {
    propertyLock = self->_propertyLock;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__HAP2AccessoryServerController_bumpSessionNumber__block_invoke;
    v14[3] = &unk_2786D6CA0;
    v14[4] = self;
    [(HAP2PropertyLock *)propertyLock performWritingBlock:v14];
  }
}

- (uint64_t)setSessionStartTime:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 80);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __53__HAP2AccessoryServerController_setSessionStartTime___block_invoke;
    v3[3] = &unk_2786D63C8;
    v3[4] = result;
    v3[5] = a2;
    return [v2 performWritingBlock:v3];
  }

  return result;
}

void __70__HAP2AccessoryServerController_secureTransport_didChangeState_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_381];
}

void __70__HAP2AccessoryServerController_secureTransport_didChangeState_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristics];
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_383];
}

- (void)updateMaxRequestTimeout:(double)timeout
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HAP2AccessoryServerController_updateMaxRequestTimeout___block_invoke;
  v8[3] = &unk_2786D6FF0;
  objc_copyWeak(v9, &location);
  v9[1] = *&timeout;
  v5 = MEMORY[0x231885210](v8);
  if (self)
  {
    operationQueue = self->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  v7 = operationQueue;
  [(HAP2SerializedOperationQueue *)v7 addBlock:v5];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __57__HAP2AccessoryServerController_updateMaxRequestTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(HAP2AccessoryServerController *)WeakRetained _updateMaxRequestTimeout:?];
    WeakRetained = v3;
  }
}

- (void)_updateMaxRequestTimeout:(id *)timeout
{
  v21 = *MEMORY[0x277D85DE8];
  if (timeout)
  {
    [timeout[11] assertCurrentQueue];
    accessoryServer = [timeout accessoryServer];
    if ([accessoryServer conformsToProtocol:&unk_283EB60F0])
    {
      accessoryServer2 = [timeout accessoryServer];
    }

    else
    {
      accessoryServer2 = 0;
    }

    isPaired = [accessoryServer2 isPaired];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (isPaired)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        timeoutCopy3 = timeout;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Setting max request timeout to %f seconds", &v17, 0x16u);
      }

      transport = [timeout transport];
      [transport updateMaxRequestTimeout:a2];

      if (fabs(a2) >= 2.22044605e-16)
      {
        v9 = timeout[9];
        if (v9)
        {
          v10 = v9;
          sleepInterval = [timeout[9] sleepInterval];
          v12 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
          v13 = [sleepInterval isEqualToNumber:v12];

          if ((v13 & 1) == 0)
          {
            v14 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v15 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
            {
              v17 = 138412546;
              timeoutCopy3 = timeout;
              v19 = 2112;
              v20 = *&v14;
              _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%@ Updating cached sleep interval to: %@", &v17, 0x16u);
            }

            [timeout[9] setSleepInterval:v14];
            [(HAP2AccessoryServerController *)timeout saveAccessoryCache];
          }
        }
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      timeoutCopy3 = timeout;
      _os_log_debug_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%@ Ignoring max request timeout update for unpaired accessory", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)saveAccessoryCache
{
  v23 = *MEMORY[0x277D85DE8];
  [*(self + 88) assertCurrentQueue];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Request to save the accessory cache", buf, 0xCu);
  }

  if (*(self + 72))
  {
    accessoryServer = [self accessoryServer];
    browser = [accessoryServer browser];
    storage = [browser storage];

    if (storage)
    {
      controllerIdentifier = [objc_opt_class() controllerIdentifier];
      v7 = cacheFileIdentifierForAccessoryServer(controllerIdentifier, accessoryServer);

      v8 = MEMORY[0x277CCAAB0];
      v9 = *(self + 72);
      v18 = 0;
      v10 = v9;
      v11 = [v8 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v18];
      v12 = v18;

      if (v11)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __51__HAP2AccessoryServerController_saveAccessoryCache__block_invoke;
        v17[3] = &unk_2786D6CF0;
        v17[4] = self;
        [storage saveCacheForIdentifier:v7 data:v11 completion:v17];
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
          *buf = 138412546;
          selfCopy4 = self;
          v21 = 2112;
          v22 = v12;
          _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Unable to serialize accessory cache: %@", buf, 0x16u);
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
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%@ Unable to get to the storage to save accessory cache", buf, 0xCu);
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%@ No cache to save", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __51__HAP2AccessoryServerController_saveAccessoryCache__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%@ Unable to save cache to disk: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)closeSession
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18468;
  v18 = __Block_byref_object_dispose__18469;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HAP2AccessoryServerController_closeSession__block_invoke;
  v13[3] = &unk_2786D6E60;
  v13[4] = self;
  v13[5] = &v14;
  v3 = MEMORY[0x231885210](v13, a2);
  v4 = [[HAP2AsynchronousBlockOperation alloc] initWithName:@"Close session" block:v3];
  v5 = v15[5];
  v15[5] = v4;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HAP2AccessoryServerController_closeSession__block_invoke_290;
  v12[3] = &unk_2786D6E60;
  v12[4] = self;
  v12[5] = &v14;
  v6 = MEMORY[0x231885210](v12);
  v7 = v6;
  if (self)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__18468;
    v27 = __Block_byref_object_dispose__18469;
    v28 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke;
    v20[3] = &unk_2786D61A0;
    v20[4] = self;
    v22 = &v23;
    v21 = v6;
    v8 = MEMORY[0x231885210](v20);
    v9 = [[HAP2AsynchronousBlockOperation alloc] initWithName:@"Disable-all-notifications" block:v8];
    v10 = v24[5];
    v24[5] = v9;

    v11 = self->_operationQueue;
    [(HAP2SerializedOperationQueue *)v11 addOperation:v24[5]];

    _Block_object_dispose(&v23, 8);
  }

  _Block_object_dispose(&v14, 8);
}

void __45__HAP2AccessoryServerController_closeSession__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [(HAP2AccessoryServerController *)*(a1 + 32) setFlagNotificationEnableConsistencyWarning:?];
  if (([(HAP2AccessoryServerController *)*(a1 + 32) isSessionExpired]& 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v2 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Closing active session", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) transport];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HAP2AccessoryServerController_closeSession__block_invoke_286;
  v6[3] = &unk_2786D5A90;
  v7 = *(a1 + 32);
  [v4 closeWithError:0 completion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __45__HAP2AccessoryServerController_closeSession__block_invoke_290(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 addOperation:*(*(*(a1 + 40) + 8) + 40)];
}

void __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryServer];
  if (([v2 conformsToProtocol:&unk_283EB63D0] & 1) == 0)
  {

    v3 = 0;
LABEL_11:
    [*(*(*(a1 + 48) + 8) + 40) finish];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v3 = [*(a1 + 32) accessoryServer];

  if (!v3 || ([v3 isPaired] & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_2;
  v24[3] = &unk_2786D5B30;
  v24[4] = *(a1 + 32);
  v5 = MEMORY[0x231885210](v24);
  [(HAP2AccessoryServerController *)*(a1 + 32) setFlagNotificationEnableConsistencyWarning:?];
  v6 = [v3 accessories];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_331;
  v22 = &unk_2786D6150;
  v7 = v4;
  v23 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v19];

  v8 = [v7 count];
  if (hap2LogInitialize_onceToken != -1)
  {
    v18 = v8;
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    v8 = v18;
  }

  v9 = hap2Log_accessory;
  if (v8)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v7 count];
      *buf = 138412546;
      v26 = v10;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%@ Disabling all %lu accessory characteristic notification(s)", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = [v7 copy];
    v15 = [v13 disableNotificationsForCharacteristics:v14 options:2 completion:v5];
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    *buf = 138412290;
    v26 = v17;
    _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ Accessory has no characteristic notification enabled", buf, 0xCu);
  }

  [*(*(*(a1 + 48) + 8) + 40) finish];
  (*(*(a1 + 40) + 16))();

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

void __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = @"success";
    if (v4)
    {
      v7 = v4;
    }

    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Disabled all notifications (%@)", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setFlagNotificationEnableConsistencyWarning:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 80);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __77__HAP2AccessoryServerController_setFlagNotificationEnableConsistencyWarning___block_invoke;
    v3[3] = &unk_2786D6768;
    v3[4] = result;
    v4 = a2;
    return [v2 performWritingBlock:v3];
  }

  return result;
}

void __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_331(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_2_332;
  v4[3] = &unk_2786D5B58;
  v5 = *(a1 + 32);
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

void __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_2_332(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_3;
  v4[3] = &unk_2786D60B0;
  v5 = *(a1 + 32);
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

void __72__HAP2AccessoryServerController__disableAllCharacteristicsNotification___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 eventNotificationsEnabled])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __45__HAP2AccessoryServerController_closeSession__block_invoke_286(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Done closing session", &v6, 0xCu);
  }

  result = [*(*(*(a1 + 40) + 8) + 40) finish];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)mergeWithNewController:(id)controller
{
  controllerCopy = controller;
  transport = [(HAP2AccessoryServerController *)self transport];
  transport2 = [controllerCopy transport];

  LOBYTE(controllerCopy) = [transport mergeWithNewTransport:transport2];
  return controllerCopy;
}

- (void)handleUpdatedMetadataWithOldMetadata:(id)metadata
{
  v22 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  if ([accessoryServer conformsToProtocol:&unk_283EB63D0])
  {
    accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

    if (accessoryServer2 && [accessoryServer2 isPaired])
    {
      configNumber = [metadataCopy configNumber];
      if (configNumber == [accessoryServer2 configNumber])
      {
        stateNumber = [metadataCopy stateNumber];
        if (stateNumber != [accessoryServer2 stateNumber])
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v9 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
          {
            v10 = v9;
            v16 = 138412802;
            selfCopy2 = self;
            v18 = 1024;
            stateNumber2 = [metadataCopy stateNumber];
            v20 = 1024;
            stateNumber3 = [accessoryServer2 stateNumber];
            _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%@ Actively pinging accessory due to updated s#: %u -> %u", &v16, 0x18u);
          }

          [accessoryServer2 verifyConnection];
        }
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v12 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v13 = v12;
          v16 = 138412802;
          selfCopy2 = self;
          v18 = 1024;
          stateNumber2 = [metadataCopy configNumber];
          v20 = 1024;
          stateNumber3 = [accessoryServer2 configNumber];
          _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%@ Re-reading attribute database due updated c#: %u -> %u", &v16, 0x18u);
        }

        if (self)
        {
          accessoryCache = self->_accessoryCache;
        }

        else
        {
          accessoryCache = 0;
        }

        [(HAP2AccessoryServerAccessoryCache *)accessoryCache invalidateAccessoryCache];
        [accessoryServer2 clearAccessories];
        v15 = [accessoryServer2 updateAccessoriesWithReason:@"bonjourUpdate.configNumberChanged"];
      }
    }
  }

  else
  {

    accessoryServer2 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)unpairedIdentifyWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Performing unpaired identify", buf, 0xCu);
  }

  encoding = [(HAP2AccessoryServerController *)self encoding];
  v31 = 0;
  v7 = [encoding unpairedIdentifyRequestWithError:&v31];
  v8 = v31;

  transport = [(HAP2AccessoryServerController *)self transport];
  v10 = [transport wellKnownEndpoint:1];

  transport2 = [(HAP2AccessoryServerController *)self transport];
  v12 = [transport2 mimeTypeForWellKnownEndpoint:1];

  v13 = [HAP2AccessoryServerControllerOperation alloc];
  encoding2 = [(HAP2AccessoryServerController *)self encoding];
  transport3 = [(HAP2AccessoryServerController *)self transport];
  v16 = [(HAP2AccessoryServerControllerOperation *)v13 initWithName:@"Unpaired identify" controller:self encoding:encoding2 transport:transport3 request:v7 endpoint:v10 mimeType:0.0 timeout:v12 options:0 dscpPriority:0];

  v17 = MEMORY[0x277CCA8C8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__HAP2AccessoryServerController_unpairedIdentifyWithCompletion___block_invoke;
  v27[3] = &unk_2786D69E0;
  v18 = v16;
  v28 = v18;
  selfCopy2 = self;
  v19 = completionCopy;
  v30 = v19;
  v20 = [v17 blockOperationWithBlock:v27];
  [v20 addDependency:v18];
  if (self)
  {
    operationQueue = self->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addOperation:v20];
  objc_initWeak(buf, v18);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__HAP2AccessoryServerController_unpairedIdentifyWithCompletion___block_invoke_282;
  v25[3] = &unk_2786D6D90;
  objc_copyWeak(&v26, buf);
  v22 = [HAP2Cancelable cancelableWithBlock:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __64__HAP2AccessoryServerController_unpairedIdentifyWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[46];
  }

  v3 = v2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (v3)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ Identify completed successfully", &v13, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v4;
      v12 = [v9 error];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Unpaired identify failed with error: %@", &v13, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__HAP2AccessoryServerController_unpairedIdentifyWithCompletion___block_invoke_282(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelWithError:v3];
}

- (id)listPairingsWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Asking accessory to list pairings", buf, 0xCu);
  }

  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  if ([accessoryServer conformsToProtocol:&unk_283EB60F0])
  {
    accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

    if (accessoryServer2 && ([accessoryServer2 isPaired] & 1) != 0)
    {
      v36 = 0;
      v8 = [(HAP2AccessoryServerController *)self _getPairingsCharacteristicForServer:accessoryServer2 error:&v36];
      v9 = v36;
      if (v8)
      {
        encoding = [(HAP2AccessoryServerController *)self encoding];
        v35 = v9;
        v11 = [encoding requestToListPairingsWithCharacteristic:v8 error:&v35];
        v12 = v35;

        if (v11)
        {
          transport = [(HAP2AccessoryServerController *)self transport];
          v29 = [transport endpointForCharacteristic:v8];

          transport2 = [(HAP2AccessoryServerController *)self transport];
          mimeTypeForCharacteristicRequests = [transport2 mimeTypeForCharacteristicRequests];

          v16 = [HAP2AccessoryServerControllerOperation alloc];
          encoding2 = [(HAP2AccessoryServerController *)self encoding];
          transport3 = [(HAP2AccessoryServerController *)self transport];
          v19 = [(HAP2AccessoryServerControllerOperation *)v16 initWithName:@"List pairings" controller:self encoding:encoding2 transport:transport3 request:v11 endpoint:v29 mimeType:0.0 timeout:mimeTypeForCharacteristicRequests options:0 dscpPriority:0];

          v20 = MEMORY[0x277CCA8C8];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __60__HAP2AccessoryServerController_listPairingsWithCompletion___block_invoke;
          v32[3] = &unk_2786D69E0;
          v32[4] = self;
          v21 = v19;
          v33 = v21;
          v34 = completionCopy;
          v22 = [v20 blockOperationWithBlock:v32];
          [v22 addDependency:v21];
          if (self)
          {
            operationQueue = self->_operationQueue;
          }

          else
          {
            operationQueue = 0;
          }

          [(HAP2SerializedOperationQueue *)operationQueue addOperation:v22];
          objc_initWeak(buf, v21);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __60__HAP2AccessoryServerController_listPairingsWithCompletion___block_invoke_2;
          v30[3] = &unk_2786D6D90;
          objc_copyWeak(&v31, buf);
          v24 = [HAP2Cancelable cancelableWithBlock:v30];
          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, 0, v12);
          v24 = +[HAP2Cancelable ignore];
        }

        v9 = v12;
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, v9);
        v24 = +[HAP2Cancelable ignore];
      }

      goto LABEL_19;
    }
  }

  else
  {

    accessoryServer2 = 0;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v25 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%@ Cannot call remove pairing on an unpaired accessory", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CCA9B8] hapErrorWithCode:16];
  (*(completionCopy + 2))(completionCopy, 0, v26);

  v24 = +[HAP2Cancelable ignore];
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_getPairingsCharacteristicForServer:(void *)server error:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    primaryAccessory = [v5 primaryAccessory];
    v8 = primaryAccessory;
    if (primaryAccessory)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__18468;
      v26 = __Block_byref_object_dispose__18469;
      v27 = 0;
      services = [primaryAccessory services];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __75__HAP2AccessoryServerController__getPairingsCharacteristicForServer_error___block_invoke;
      v17[3] = &unk_2786D63F0;
      v17[4] = &buf;
      [services hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

      v10 = *(*(&buf + 1) + 40);
      if (v10)
      {
        *&v18 = 0;
        *(&v18 + 1) = &v18;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy__18468;
        v21 = __Block_byref_object_dispose__18469;
        v22 = 0;
        characteristics = [v10 characteristics];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __75__HAP2AccessoryServerController__getPairingsCharacteristicForServer_error___block_invoke_262;
        v16[3] = &unk_2786D6208;
        v16[4] = &v18;
        [characteristics hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

        self = *(*(&v18 + 1) + 40);
        _Block_object_dispose(&v18, 8);

LABEL_19:
        _Block_object_dispose(&buf, 8);

        goto LABEL_20;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v13 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18) = 138412290;
        *(&v18 + 4) = self;
        _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%@ Cannot find pairing service", &v18, 0xCu);
        if (server)
        {
          goto LABEL_14;
        }
      }

      else if (server)
      {
LABEL_14:
        [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
        *server = self = 0;
        goto LABEL_19;
      }

      self = 0;
      goto LABEL_19;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Cannot call remove pairing before reading the attribute database", &buf, 0xCu);
      if (server)
      {
        goto LABEL_9;
      }
    }

    else if (server)
    {
LABEL_9:
      [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      *server = self = 0;
LABEL_20:

      goto LABEL_21;
    }

    self = 0;
    goto LABEL_20;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];

  return self;
}

void __60__HAP2AccessoryServerController_listPairingsWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    [*(v1 + 88) assertCurrentQueue];
    if (v3 && (v5 = v3[46]) != 0)
    {
      v6 = v5;
      if ([v5 conformsToProtocol:&unk_283EC8578])
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = [v7 pairings];
      v4[2](v4, v8, 0);
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v12 = v9;
        v13 = [v3 error];
        v14 = 138412546;
        v15 = v1;
        v16 = 2112;
        v17 = v13;
        _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ List pairings failed with error: %@", &v14, 0x16u);
      }

      v10 = [v3 error];
      (v4)[2](v4, 0, v10);

      v6 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HAP2AccessoryServerController_listPairingsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelWithError:v3];
}

void __75__HAP2AccessoryServerController__getPairingsCharacteristicForServer_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = [v7 isEqualToString:@"00000055-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __75__HAP2AccessoryServerController__getPairingsCharacteristicForServer_error___block_invoke_262(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = [v7 isEqualToString:@"00000050-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)addPairing:(id)pairing completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    identifier = [pairingCopy identifier];
    *buf = 138412546;
    selfCopy3 = self;
    v45 = 2112;
    v46 = identifier;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%@ Asking accessory to add pairing with identifier: %@", buf, 0x16u);
  }

  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  if ([accessoryServer conformsToProtocol:&unk_283EB60F0])
  {
    accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

    if (accessoryServer2 && ([accessoryServer2 isPaired] & 1) != 0)
    {
      v42 = 0;
      v13 = [(HAP2AccessoryServerController *)self _getPairingsCharacteristicForServer:accessoryServer2 error:&v42];
      v14 = v42;
      if (v13)
      {
        encoding = [(HAP2AccessoryServerController *)self encoding];
        v41 = v14;
        v16 = [encoding requestToAddPairing:pairingCopy characteristic:v13 error:&v41];
        v34 = v41;

        if (v16)
        {
          transport = [(HAP2AccessoryServerController *)self transport];
          v33 = [transport endpointForCharacteristic:v13];

          transport2 = [(HAP2AccessoryServerController *)self transport];
          mimeTypeForCharacteristicRequests = [transport2 mimeTypeForCharacteristicRequests];

          v20 = [HAP2AccessoryServerControllerOperation alloc];
          encoding2 = [(HAP2AccessoryServerController *)self encoding];
          transport3 = [(HAP2AccessoryServerController *)self transport];
          v23 = [(HAP2AccessoryServerControllerOperation *)v20 initWithName:@"Add pairing" controller:self encoding:encoding2 transport:transport3 request:v16 endpoint:v33 mimeType:0.0 timeout:mimeTypeForCharacteristicRequests options:0 dscpPriority:0];

          v24 = MEMORY[0x277CCA8C8];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __55__HAP2AccessoryServerController_addPairing_completion___block_invoke;
          v37[3] = &unk_2786D69E0;
          v25 = v23;
          v38 = v25;
          selfCopy2 = self;
          v40 = completionCopy;
          v26 = [v24 blockOperationWithBlock:v37];
          [v26 addDependency:v25];
          if (self)
          {
            operationQueue = self->_operationQueue;
          }

          else
          {
            operationQueue = 0;
          }

          [(HAP2SerializedOperationQueue *)operationQueue addOperation:v26];
          objc_initWeak(buf, v25);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __55__HAP2AccessoryServerController_addPairing_completion___block_invoke_272;
          v35[3] = &unk_2786D6D90;
          objc_copyWeak(&v36, buf);
          v28 = [HAP2Cancelable cancelableWithBlock:v35];
          objc_destroyWeak(&v36);
          objc_destroyWeak(buf);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, v34);
          v28 = +[HAP2Cancelable ignore];
        }

        v14 = v34;
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, v14);
        v28 = +[HAP2Cancelable ignore];
      }

      goto LABEL_19;
    }
  }

  else
  {

    accessoryServer2 = 0;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v29 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_error_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%@ Cannot call remove pairing on an unpaired accessory", buf, 0xCu);
  }

  v30 = [MEMORY[0x277CCA9B8] hapErrorWithCode:16];
  (*(completionCopy + 2))(completionCopy, v30);

  v28 = +[HAP2Cancelable ignore];
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

void __55__HAP2AccessoryServerController_addPairing_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 368)) != 0)
  {
    v4 = v3;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v5;
      v12 = [v9 error];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Add pairing failed with error: %@", &v13, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, v7);

    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55__HAP2AccessoryServerController_addPairing_completion___block_invoke_272(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelWithError:v3];
}

- (id)removePairing:(id)pairing cleanupLocalData:(BOOL)data completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    identifier = [pairingCopy identifier];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%@ Asking accessory to remove pairing with identifier: %@", buf, 0x16u);
  }

  accessoryServer = [(HAP2AccessoryServerController *)self accessoryServer];
  if ([accessoryServer conformsToProtocol:&unk_283EB60F0])
  {
    accessoryServer2 = [(HAP2AccessoryServerController *)self accessoryServer];

    if (accessoryServer2 && ([accessoryServer2 isPaired] & 1) != 0)
    {
      v49 = 0;
      v15 = [(HAP2AccessoryServerController *)self _getPairingsCharacteristicForServer:accessoryServer2 error:&v49];
      v16 = v49;
      if (v15)
      {
        encoding = [(HAP2AccessoryServerController *)self encoding];
        v48 = v16;
        v18 = [encoding requestToRemovePairing:pairingCopy characteristic:v15 error:&v48];
        v38 = v48;

        if (v18)
        {
          transport = [(HAP2AccessoryServerController *)self transport];
          v37 = [transport endpointForCharacteristic:v15];

          transport2 = [(HAP2AccessoryServerController *)self transport];
          mimeTypeForCharacteristicRequests = [transport2 mimeTypeForCharacteristicRequests];

          v21 = [HAP2AccessoryServerControllerOperation alloc];
          encoding2 = [(HAP2AccessoryServerController *)self encoding];
          transport3 = [(HAP2AccessoryServerController *)self transport];
          v24 = [(HAP2AccessoryServerControllerOperation *)v21 initWithName:@"Remove pairing" controller:self encoding:encoding2 transport:transport3 request:v18 endpoint:v37 mimeType:0.0 timeout:mimeTypeForCharacteristicRequests options:0 dscpPriority:0];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v51 = __Block_byref_object_copy__18468;
          v52 = __Block_byref_object_dispose__18469;
          v53 = 0;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke;
          v42[3] = &unk_2786D5A68;
          v42[4] = self;
          v43 = pairingCopy;
          dataCopy = data;
          v25 = v24;
          v44 = v25;
          v46 = buf;
          v45 = completionCopy;
          v26 = MEMORY[0x231885210](v42);
          v27 = [[HAP2AsynchronousBlockOperation alloc] initWithBlock:v26];
          v28 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v27;

          [*(*&buf[8] + 40) addDependency:v25];
          if (self)
          {
            operationQueue = self->_operationQueue;
          }

          else
          {
            operationQueue = 0;
          }

          v30 = operationQueue;
          [(HAP2SerializedOperationQueue *)v30 addOperation:*(*&buf[8] + 40)];

          objc_initWeak(&location, v25);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke_3;
          v39[3] = &unk_2786D6D90;
          objc_copyWeak(&v40, &location);
          v31 = [HAP2Cancelable cancelableWithBlock:v39];
          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, v38);
          v31 = +[HAP2Cancelable ignore];
        }

        v16 = v38;
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, v16);
        v31 = +[HAP2Cancelable ignore];
      }

      goto LABEL_19;
    }
  }

  else
  {

    accessoryServer2 = 0;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v32 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_error_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%@ Cannot call remove pairing on an unpaired accessory", buf, 0xCu);
  }

  v33 = [MEMORY[0x277CCA9B8] hapErrorWithCode:16];
  (*(completionCopy + 2))(completionCopy, v33);

  v31 = +[HAP2Cancelable ignore];
LABEL_19:

  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

void __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke_2;
  v17[3] = &unk_2786D5A40;
  v16 = *(a1 + 56);
  v4 = v16;
  v18 = v16;
  v5 = v3;
  v6 = v17;
  if (v1)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke;
    v19[3] = &unk_2786D69E0;
    v20 = v5;
    v21 = v1;
    v22 = v6;
    v7 = MEMORY[0x231885210](v19);
    if (v2)
    {
      v8 = [v1 accessoryServer];
      v9 = [v8 browser];
      if (v9)
      {
        v10 = v9;
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v11 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v1;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%@ Removing accessory database cache", &buf, 0xCu);
        }

        v12 = [objc_opt_class() controllerIdentifier];
        v13 = cacheFileIdentifierForAccessoryServer(v12, v8);

        v14 = [v10 storage];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v24 = __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke_268;
        v25 = &unk_2786D6790;
        v26 = v1;
        v27 = v7;
        [v14 removeCacheForIdentifier:v13 completion:&buf];

        goto LABEL_11;
      }
    }

    v7[2](v7);
LABEL_11:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelWithError:v3];
}

void __75__HAP2AccessoryServerController_removePairing_cleanupLocalData_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  [v3 finish];
  (*(*(a1 + 32) + 16))();
}

void __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 368)) != 0)
  {
    v4 = v3;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v5;
      v12 = [v9 error];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Remove pairing failed with error: %@", &v13, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, v7);

    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke_268(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke_2;
  v8[3] = &unk_2786D69E0;
  v8[4] = *(a1 + 32);
  v4 = v3;
  v9 = v4;
  v10 = *(a1 + 40);
  v5 = MEMORY[0x231885210](v8);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0;
  }

  [v7 addConcurrentBlock:v5];
}

uint64_t __108__HAP2AccessoryServerController__removePairingCompletionWithIdentity_cleanupLocalData_operation_completion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Cache removal finished with error: %@", &v7, 0x16u);
  }

  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)disableNotificationsForCharacteristics:(id)characteristics options:(unint64_t)options completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v10 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [characteristicsCopy count];
    v13 = [characteristicsCopy count];
    v14 = "s";
    *buf = 138412802;
    *&buf[4] = self;
    if (v13 == 1)
    {
      v14 = "";
    }

    *&buf[12] = 2048;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    v34 = v14;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%@ Disabling notifications for %lu characteristic%s", buf, 0x20u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke;
  v32[3] = &unk_2786D60B0;
  v32[4] = self;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__18468;
  v35 = __Block_byref_object_dispose__18469;
  v36 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_250;
  v31[3] = &unk_2786D5950;
  v31[4] = self;
  v31[5] = buf;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v31];
  v15 = *(*&buf[8] + 40);
  if (v15)
  {
    v16 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v15 error:completionCopy completion:?];
  }

  else
  {
    encoding = [(HAP2AccessoryServerController *)self encoding];
    v18 = *&buf[8];
    obj = *(*&buf[8] + 40);
    v19 = [encoding notificationRequestsForCharacteristics:characteristicsCopy type:1 error:&obj];
    objc_storeStrong((v18 + 40), obj);

    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v21 = v20;
    if (!*(*&buf[8] + 40))
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_255;
      v27[3] = &unk_2786D59C0;
      v27[4] = self;
      optionsCopy = options;
      v28 = v20;
      [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_2;
    v25[3] = &unk_2786D5998;
    v26 = completionCopy;
    v22 = MEMORY[0x231885210](v25);
    v16 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v21 error:*(*&buf[8] + 40) completion:v22];
  }

  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

void __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = characteristicDescriptionFromCharacteristic(v3);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@  - %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_250(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 properties])
  {
    [v6 instanceID];

    [v6 type];
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
      v14 = *(a1 + 32);
      *buf = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Unable to change notification configuration characteristic: %@", buf, 0x16u);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update notification configuration for characteristic %@.", v6];
    v10 = [v8 hapErrorWithCode:3 description:v9 reason:@"Characteristic does not support notifications." suggestion:0 underlyingError:0 marker:212];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_maybeBeginCharacteristicOperations:(void *)operations error:(void *)error completion:
{
  v7 = a2;
  operationsCopy = operations;
  errorCopy = error;
  v10 = errorCopy;
  if (self)
  {
    if (operationsCopy)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke;
      v33[3] = &unk_2786D69E0;
      v33[4] = self;
      v11 = &v35;
      v35 = errorCopy;
      v34 = operationsCopy;
      v12 = MEMORY[0x231885210](v33);
      [self[11] addBlock:v12];
      self = +[HAP2Cancelable ignore];

      v13 = v34;
    }

    else if ([v7 count])
    {
      v14 = MEMORY[0x277CCA8C8];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_3;
      v28[3] = &unk_2786D69E0;
      v28[4] = self;
      v30 = v10;
      v15 = v7;
      v29 = v15;
      v16 = [v14 blockOperationWithBlock:v28];
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__18468;
      v26[4] = __Block_byref_object_dispose__18469;
      v27 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_4;
      v23[3] = &unk_2786D5AB8;
      v25 = v26;
      v17 = v16;
      v24 = v17;
      [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
      v18 = self[11];
      [v18 addOperation:v17];

      objc_initWeak(&location, v15);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_5;
      v20[3] = &unk_2786D6D90;
      objc_copyWeak(&v21, &location);
      self = [HAP2Cancelable cancelableWithBlock:v20];
      v11 = &v30;
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);

      _Block_object_dispose(v26, 8);
      v13 = v29;
    }

    else
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_2;
      v31[3] = &unk_2786D65D8;
      v31[4] = self;
      v11 = &v32;
      v32 = v10;
      v13 = MEMORY[0x231885210](v31);
      [self[11] addBlock:v13];
      self = +[HAP2Cancelable ignore];
    }
  }

  return self;
}

void __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_255(uint64_t a1, void *a2)
{
  v3 = [(HAP2AccessoryServerController *)*(a1 + 32) _notificationOperationForRequest:a2 operationDescription:@"Disable-Notify" options:*(a1 + 48)];
  [*(a1 + 40) addObject:v3];
}

void __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_260];
  }

  (*(*(a1 + 32) + 16))();
}

void __91__HAP2AccessoryServerController_disableNotificationsForCharacteristics_options_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 error];

  if (!v2)
  {
    v3 = [v4 characteristic];
    [v3 setEventNotificationsEnabled:0];
  }
}

- (HAP2AccessoryServerControllerOperation)_notificationOperationForRequest:(void *)request operationDescription:(uint64_t)description options:
{
  selfCopy = self;
  if (self)
  {
    v6 = MEMORY[0x277CCACA8];
    requestCopy = request;
    v8 = a2;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    characteristics = [v8 characteristics];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristics, "count")}];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __characteristicDescriptionsFromRequest_block_invoke;
    v32[3] = &unk_2786D5900;
    v33 = v12;
    v13 = v12;
    [characteristics hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
    v14 = [v13 componentsJoinedByString:{@", "}];

    v15 = [v6 stringWithFormat:@"%@ %@: %@", v10, requestCopy, v14];

    v16 = MEMORY[0x277CBEB18];
    characteristics2 = [v8 characteristics];
    v18 = [v16 arrayWithCapacity:{objc_msgSend(characteristics2, "count")}];

    characteristics3 = [v8 characteristics];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __95__HAP2AccessoryServerController__notificationOperationForRequest_operationDescription_options___block_invoke;
    v30[3] = &unk_2786D5900;
    v31 = v18;
    v20 = v18;
    [characteristics3 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

    transport = [(HAP2AccessoryServerControllerOperation *)selfCopy transport];
    v22 = [transport endpointForCharacteristics:v20];

    transport2 = [(HAP2AccessoryServerControllerOperation *)selfCopy transport];
    mimeTypeForCharacteristicRequests = [transport2 mimeTypeForCharacteristicRequests];

    v25 = [HAP2AccessoryServerControllerOperation alloc];
    encoding = [(HAP2AccessoryServerControllerOperation *)selfCopy encoding];
    transport3 = [(HAP2AccessoryServerControllerOperation *)selfCopy transport];
    selfCopy = [(HAP2AccessoryServerControllerOperation *)v25 initWithName:v15 controller:selfCopy encoding:encoding transport:transport3 request:v8 endpoint:v22 mimeType:0.0 timeout:mimeTypeForCharacteristicRequests options:description dscpPriority:0];
  }

  return selfCopy;
}

void __95__HAP2AccessoryServerController__notificationOperationForRequest_operationDescription_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  [v2 addObject:v3];
}

void __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 40))
  {
    [v3 addDependency:?];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 40) = v4;
  v7 = v4;

  [*(a1 + 32) addDependency:v7];
}

void __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__HAP2AccessoryServerController__maybeBeginCharacteristicOperations_error_completion___block_invoke_6;
  v6[3] = &unk_2786D5AE0;
  v7 = v3;
  v5 = v3;
  [WeakRetained hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
}

- (void)_callCharacteristicCompletion:(void *)completion operations:(void *)operations error:
{
  v7 = a2;
  completionCopy = completion;
  operationsCopy = operations;
  v10 = operationsCopy;
  if (self)
  {
    if (operationsCopy)
    {
      v7[2](v7, 0, operationsCopy);
    }

    else if ([completionCopy count])
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__18468;
      v33 = __Block_byref_object_dispose__18469;
      v34 = 0;
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(completionCopy, "count")}];
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__18468;
      v27 = __Block_byref_object_dispose__18469;
      v28 = 0;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke;
      v18 = &unk_2786D5C20;
      selfCopy = self;
      v21 = &v23;
      v12 = v11;
      v20 = v12;
      v22 = &v29;
      [completionCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
      v13 = v30[5];
      if (v13)
      {
        [(HAP2AccessoryServerController *)self _handleUpdatedValuesFromResponse:v13];
      }

      if (v24[5])
      {
        (v7[2])(v7, 0);
      }

      else
      {
        v14 = [v12 copy];
        (v7)[2](v7, v14, 0);
      }

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v29, 8);
    }

    else
    {
      v7[2](v7, MEMORY[0x277CBEBF8], 0);
    }
  }
}

void __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 isCancelled];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (!v7)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v44 = v12;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ Operation completed successfully: %@", buf, 0x16u);
    }

    if (v6)
    {
      v13 = v6[45];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if ([v14 conformsToProtocol:&unk_283EB1B70])
    {
      if (v6)
      {
        v15 = v6[45];
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v6)
    {
      v17 = v6[46];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    if ([v18 conformsToProtocol:&unk_283EB4298])
    {
      if (v6)
      {
        v19 = v6[46];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        v21 = *(a1 + 40);
        v22 = [v20 characteristics];
        [v21 addObjectsFromArray:v22];

        if ([v20 conformsToProtocol:&unk_283EB4310])
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        v25 = [v24 updatedValues];

        if (v25)
        {
          if (!*(*(*(a1 + 56) + 8) + 40))
          {
            v26 = MEMORY[0x277CBEB18];
            v27 = [v24 updatedValues];
            v28 = [v26 arrayWithCapacity:{objc_msgSend(v27, "count")}];
            v29 = *(*(a1 + 56) + 8);
            v30 = *(v29 + 40);
            *(v29 + 40) = v28;
          }

          v31 = [v24 updatedValues];
          v32 = v31;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_358;
          v42[3] = &unk_2786D5BA8;
          v33 = *(a1 + 56);
          v42[4] = *(a1 + 32);
          v42[5] = v33;
          v34 = v42;
        }

        else
        {
          v31 = [v20 characteristics];
          v32 = v31;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_360;
          v41[3] = &unk_2786D5BD0;
          v41[4] = *(a1 + 32);
          v34 = v41;
        }

        [v31 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

        goto LABEL_33;
      }
    }

    else
    {
    }

    v35 = [v16 characteristics];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_361;
    v38[3] = &unk_2786D5BF8;
    v38[4] = *(a1 + 32);
    v39 = v6;
    v40 = *(a1 + 40);
    [v35 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];

LABEL_33:
    goto LABEL_34;
  }

  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    *buf = 138412546;
    v44 = v37;
    v45 = 2112;
    v46 = v6;
    _os_log_debug_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%@ Operation was canceled: %@", buf, 0x16u);
  }

  v9 = [v6 error];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a4 = 1;
LABEL_34:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedValuesFromResponse:(void *)response
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (response)
  {
    accessoryServer = [response accessoryServer];
    if ([accessoryServer conformsToProtocol:&unk_283EB63D0])
    {
      accessoryServer2 = [response accessoryServer];

      if (accessoryServer2 && ([accessoryServer2 isPaired] & 1) != 0)
      {
        v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v11 = MEMORY[0x277D85DD0];
        v12 = 3221225472;
        v13 = __66__HAP2AccessoryServerController__handleUpdatedValuesFromResponse___block_invoke;
        v14 = &unk_2786D5B80;
        v7 = v6;
        v15 = v7;
        responseCopy = response;
        [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];
        if ([v7 count])
        {
          v8 = [v7 copy];
          [accessoryServer2 handleUpdatedCharacteristicValues:v8];
        }

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {

      accessoryServer2 = 0;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      responseCopy2 = response;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Accessory server has become nil or unpaired", buf, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

void __66__HAP2AccessoryServerController__handleUpdatedValuesFromResponse___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v3 characteristic];
      v9 = [v3 error];
      v13 = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Ignoring failed read for characteristic %@: %@", &v13, 0x20u);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v3 characteristic];
    [v10 addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_358(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  v6 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v3 characteristic];
      v10 = characteristicDescriptionFromCharacteristic(v9);
      v11 = [v3 error];
      *v15 = 138412802;
      *&v15[4] = v7;
      *&v15[12] = 2112;
      *&v15[14] = v10;
      *&v15[22] = 2112;
      v16 = v11;
      v12 = "%@  - %@ (%@)";
LABEL_8:
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, v12, v15, 0x20u);
    }
  }

  else if (v6)
  {
    v13 = *(a1 + 32);
    v8 = v5;
    v9 = [v3 characteristic];
    v10 = characteristicDescriptionFromCharacteristic(v9);
    v11 = [v3 value];
    *v15 = 138412803;
    *&v15[4] = v13;
    *&v15[12] = 2112;
    *&v15[14] = v10;
    *&v15[22] = 2113;
    v16 = v11;
    v12 = "%@  - %@ -> %{private}@";
    goto LABEL_8;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:{v3, *v15, *&v15[16], v16}];

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_360(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  v6 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v3 characteristic];
      v10 = characteristicDescriptionFromCharacteristic(v9);
      v11 = [v3 error];
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v12 = "%@  - %@ (%@)";
LABEL_8:
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, v12, &v15, 0x20u);
    }
  }

  else if (v6)
  {
    v13 = *(a1 + 32);
    v8 = v5;
    v9 = [v3 characteristic];
    v10 = characteristicDescriptionFromCharacteristic(v9);
    v11 = [v3 value];
    v15 = 138412803;
    v16 = v13;
    v17 = 2112;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    v12 = "%@  - %@ -> %{private}@";
    goto LABEL_8;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HAP2AccessoryServerController__callCharacteristicCompletion_operations_error___block_invoke_361(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 characteristic];
    v8 = characteristicDescriptionFromCharacteristic(v7);
    v9 = [*(a1 + 40) error];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@  - %@ (%@)", &v14, 0x20u);
  }

  v10 = [v3 characteristic];
  v11 = [*(a1 + 40) error];
  v12 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v10 error:v11];

  [*(a1 + 48) addObject:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)enableNotificationsForCharacteristics:(id)characteristics options:(unint64_t)options completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  v9 = 0x277CBE000;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [characteristicsCopy count];
    v14 = [characteristicsCopy count];
    v15 = "s";
    *buf = 138412802;
    *&buf[4] = self;
    if (v14 == 1)
    {
      v15 = "";
    }

    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v15;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%@ Enabling notifications for %lu characteristic%s", buf, 0x20u);
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke;
  v81[3] = &unk_2786D5928;
  v81[4] = self;
  v16 = v10;
  v82 = v16;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v81];
  v17 = [v16 count];
  if (v17 == [characteristicsCopy count])
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_226;
    v78[3] = &unk_2786D6010;
    v78[4] = self;
    v80 = completionCopy;
    v79 = v16;
    v9 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:0 error:v78 completion:?];

    goto LABEL_35;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__18468;
  v76 = __Block_byref_object_dispose__18469;
  v77 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_228;
  v71[3] = &unk_2786D5950;
  v71[4] = self;
  v71[5] = &v72;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v71];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_239;
  v69[3] = &unk_2786D5998;
  v18 = completionCopy;
  v70 = v18;
  v19 = MEMORY[0x231885210](v69);
  v20 = v73[5];
  if (!v20)
  {
    if (self)
    {
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      LOBYTE(v61) = 0;
      v21 = self->_propertyLock;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __75__HAP2AccessoryServerController_isFlagNotificationEnableConsistencyWarning__block_invoke;
      *&buf[24] = &unk_2786D6E60;
      selfCopy = self;
      v85 = &v58;
      [(HAP2PropertyLock *)v21 performReadingBlock:buf];

      LODWORD(v21) = *(v59 + 24);
      _Block_object_dispose(&v58, 8);
      if (v21 == 1)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v22 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = self;
          _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ Enabling notification while all notifications disable request has been issued; some notifications will remain enabled", buf, 0xCu);
        }
      }
    }

    encoding = [(HAP2AccessoryServerController *)self encoding];
    v24 = (v73 + 5);
    obj = v73[5];
    v47 = [encoding notificationRequestsForCharacteristics:characteristicsCopy type:0 error:&obj];
    objc_storeStrong(v24, obj);

    v25 = v73[5];
    if (v25)
    {
      v49 = 0;
      v26 = 0;
      v27 = MEMORY[0x277CBEBF8];
      goto LABEL_29;
    }

    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v47, "count")}];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_243;
    v65[3] = &unk_2786D59C0;
    v65[4] = self;
    optionsCopy = options;
    v46 = v28;
    v66 = v46;
    [v47 hmf_enumerateWithAutoreleasePoolUsingBlock:v65];
    encoding2 = [(HAP2AccessoryServerController *)self encoding];
    encodingFeatures = [encoding2 encodingFeatures];

    if ((encodingFeatures & 0x10) != 0)
    {
      v31 = (v73 + 5);
      v64 = v73[5];
      v49 = [(HAP2AccessoryServerController *)self _createOperationsToReadCharacteristics:characteristicsCopy timeout:options options:&v64 error:0.0];
      objc_storeStrong(v31, v64);
      if (!v49)
      {
        v9 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v73[5] error:v18 completion:?];
        v49 = 0;
        v27 = 0;
        v26 = 0;
        v36 = 0;
        goto LABEL_27;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v32 = hap2Log_accessory;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v43 = [v49 count];
        v44 = [v49 count];
        v45 = "";
        *buf = 138412802;
        *&buf[4] = self;
        if (v44 > 1)
        {
          v45 = "s";
        }

        *&buf[12] = 1024;
        *&buf[14] = v43;
        *&buf[18] = 2080;
        *&buf[20] = v45;
        _os_log_debug_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEBUG, "%@ Adding %d read operation%s after enabling notify", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__18468;
      selfCopy = __Block_byref_object_dispose__18469;
      v85 = 0;
      v58 = 0;
      v59 = &v58;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__18468;
      v62 = __Block_byref_object_dispose__18469;
      v63 = 0;
      v33 = MEMORY[0x231885210](v19);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_248;
      v57[3] = &unk_2786D59E8;
      v57[4] = buf;
      v57[5] = &v58;
      v34 = MEMORY[0x231885210](v57);

      v9 = v53;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_2_249;
      v53[3] = &unk_2786D5A10;
      v53[4] = self;
      v54 = v33;
      v55 = buf;
      v56 = &v58;
      v35 = v33;
      v26 = MEMORY[0x231885210](v53);

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(buf, 8);

      v19 = v34;
    }

    else
    {
      v49 = 0;
      v26 = 0;
    }

    v27 = [v46 copy];
    v36 = 1;
LABEL_27:

    if (!v36)
    {
LABEL_33:

      goto LABEL_34;
    }

    v25 = v73[5];
LABEL_29:
    v37 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v27 error:v25 completion:v19];
    if (v49)
    {
      v38 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v49 error:0 completion:v26];
    }

    else
    {
      v38 = 0;
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_3;
    v50[3] = &unk_2786D6A98;
    v39 = v37;
    v51 = v39;
    v40 = v38;
    v52 = v40;
    v9 = [HAP2Cancelable cancelableWithBlock:v50];

    goto LABEL_33;
  }

  v9 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v20 error:v18 completion:?];
LABEL_34:

  _Block_object_dispose(&v72, 8);
LABEL_35:

  v41 = *MEMORY[0x277D85DE8];

  return v9;
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventNotificationsEnabled];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  v6 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = characteristicDescriptionFromCharacteristic(v3);
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ Detected duplicate enable notify for %@", &v15, 0x16u);
    }

    v10 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v3 error:0];
    [*(a1 + 40) addObject:v10];
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v12 = v5;
    v13 = characteristicDescriptionFromCharacteristic(v3);
    v15 = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%@  - %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_226(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Returning characteristics with notifications already enabled", &v7, 0xCu);
  }

  v4 = a1[5];
  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_228(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 properties])
  {
    [v6 instanceID];

    [v6 type];
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
      v14 = *(a1 + 32);
      *buf = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Unable to change notification configuration characteristic: %@", buf, 0x16u);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update notification configuration for characteristic %@.", v6];
    v10 = [v8 hapErrorWithCode:3 description:v9 reason:@"Characteristic does not support notifications." suggestion:0 underlyingError:0 marker:211];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_239(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_242];
  }

  (*(*(a1 + 32) + 16))();
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = [(HAP2AccessoryServerController *)*(a1 + 32) _notificationOperationForRequest:a2 operationDescription:@"Enable-Notify" options:*(a1 + 48)];
  [*(a1 + 40) addObject:v3];
}

- (id)_createOperationsToReadCharacteristics:(uint64_t)characteristics timeout:(void *)timeout options:(double)options error:
{
  v9 = a2;
  v10 = v9;
  if (self)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__18468;
    v31 = __Block_byref_object_dispose__18469;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __94__HAP2AccessoryServerController__createOperationsToReadCharacteristics_timeout_options_error___block_invoke;
    v26[3] = &unk_2786D58B0;
    *&v26[6] = options;
    v26[4] = self;
    v26[5] = &v27;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
    if (!v28[5])
    {
      encoding = [self encoding];
      v13 = [encoding groupingsForReadRequestsForCharacteristics:v10];

      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __94__HAP2AccessoryServerController__createOperationsToReadCharacteristics_timeout_options_error___block_invoke_219;
      v20 = &unk_2786D58D8;
      optionsCopy = options;
      characteristicsCopy = characteristics;
      selfCopy = self;
      v23 = &v27;
      v22 = v11;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];
    }

    if (timeout)
    {
      v14 = v28[5];
      if (v14)
      {
        *timeout = v14;
      }
    }

    v15 = [v11 copy];
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_248(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_2_249(uint64_t a1, void *a2)
{
  [(HAP2AccessoryServerController *)*(a1 + 32) _handleUpdatedValuesFromResponse:a2];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancelWithError:v4];
  [*(a1 + 40) cancelWithError:v4];
}

void __94__HAP2AccessoryServerController__createOperationsToReadCharacteristics_timeout_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 instanceID];

  [v6 type];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  if (([v6 properties] & 2) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Unable to read characteristic (does not support secured reads): %@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read from characteristic %@.", v6];
    v11 = [v9 hapErrorWithCode:11 description:v10 reason:@"Characteristic does not support secured reads." suggestion:0 underlyingError:0];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __94__HAP2AccessoryServerController__createOperationsToReadCharacteristics_timeout_options_error___block_invoke_219(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  v32 = *(v6 + 40);
  v33 = (v6 + 40);
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = MEMORY[0x277CBEB18];
    v10 = a2;
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __88__HAP2AccessoryServerController__readOperationForCharacteristics_timeout_options_error___block_invoke;
    v35[3] = &unk_2786D60B0;
    v12 = v11;
    v36 = v12;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v35];
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v31 = v12;
    v16 = [v12 componentsJoinedByString:{@", "}];
    v30 = [v13 stringWithFormat:@"%@ Read: %@", v15, v16];

    v17 = [v5 transport];
    v18 = [v17 endpointForCharacteristics:v10];

    v19 = [v5 transport];
    v20 = [v19 mimeTypeForCharacteristicRequests];

    v21 = [[HAP2ControllerReadRequest alloc] initWithCharacteristics:v10];
    v22 = [v5 accessoryServer];
    if ([v22 conformsToProtocol:&unk_283EB63D0])
    {
      v23 = [v5 accessoryServer];
    }

    else
    {
      v23 = 0;
    }

    if ([v23 isConfirming])
    {
      v24 = v8;
    }

    else
    {
      v24 = v8 | 4;
    }

    v25 = [HAP2AccessoryServerControllerReadOperation alloc];
    v26 = [v5 encoding];
    v27 = [v5 transport];
    v34 = [(HAP2AccessoryServerControllerReadOperation *)v25 initWithName:v30 controller:v5 encoding:v26 transport:v27 readRequest:v21 endpoint:v18 mimeType:v7 timeout:v20 options:v24 dscpPriority:0];
  }

  else
  {
    v34 = 0;
  }

  objc_storeStrong(v33, v32);
  v28 = v34;
  if (v34)
  {
    [*(a1 + 40) addObject:v34];
    v28 = v34;
  }

  else
  {
    *a4 = 1;
  }
}

void __88__HAP2AccessoryServerController__readOperationForCharacteristics_timeout_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = characteristicDescriptionFromCharacteristic(a2);
  [v2 addObject:v3];
}

void __90__HAP2AccessoryServerController_enableNotificationsForCharacteristics_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 error];

  if (!v2)
  {
    v3 = [v4 characteristic];
    [v3 setEventNotificationsEnabled:1];
  }
}

- (id)writeValuesForCharacteristics:(id)characteristics timeout:(double)timeout options:(unint64_t)options completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v12 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [characteristicsCopy count];
    v15 = [characteristicsCopy count];
    v16 = "s";
    *buf = 138412802;
    *&buf[4] = self;
    if (v15 == 1)
    {
      v16 = "";
    }

    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2080;
    v31 = v16;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%@ Writing %lu characteristic%s", buf, 0x20u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__HAP2AccessoryServerController_writeValuesForCharacteristics_timeout_options_completion___block_invoke;
  v29[3] = &unk_2786D5900;
  v29[4] = self;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
  encoding = [(HAP2AccessoryServerController *)self encoding];
  v18 = [encoding groupingsForWriteRequestsForCharacteristics:characteristicsCopy];

  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__18468;
  v32 = __Block_byref_object_dispose__18469;
  v33 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __90__HAP2AccessoryServerController_writeValuesForCharacteristics_timeout_options_completion___block_invoke_224;
  v24[3] = &unk_2786D58D8;
  timeoutCopy = timeout;
  optionsCopy = options;
  v24[4] = self;
  v26 = buf;
  v20 = v19;
  v25 = v20;
  [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v21 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v20 error:*(*&buf[8] + 40) completion:completionCopy];

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __90__HAP2AccessoryServerController_writeValuesForCharacteristics_timeout_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 characteristic];
    v8 = characteristicDescriptionFromCharacteristic(v7);
    v9 = [v3 value];
    v11 = 138412803;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    v15 = 2113;
    v16 = v9;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@  - %@ -> %{private}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __90__HAP2AccessoryServerController_writeValuesForCharacteristics_timeout_options_completion___block_invoke_224(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  obj = v10;
  v11 = a2;
  if (v5)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__18468;
    v70 = __Block_byref_object_dispose__18469;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__18468;
    v60[4] = __Block_byref_object_dispose__18469;
    +[HAPMetadata getSharedInstance];
    v61 = v51 = v7;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __94__HAP2AccessoryServerController__writeOperationForCharacteristicTuples_timeout_options_error___block_invoke;
    v54[3] = &unk_2786D5B08;
    v54[4] = v5;
    v57 = &v66;
    v58 = &v62;
    v59 = v60;
    v14 = v12;
    v55 = v14;
    v15 = v13;
    v56 = v15;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v54];
    v16 = v67[5];
    if (v16)
    {
      v5 = 0;
      obj = v16;
    }

    else if (*(v63 + 24) == 1)
    {
      v49 = v11;
      v47 = v15;
      v17 = MEMORY[0x277CCACA8];
      v18 = v14;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 componentsJoinedByString:{@", "}];

      v45 = [v17 stringWithFormat:@"%@ Timed-Write: %@", v20, v21];

      v22 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 encoding];
      v23 = [v22 prepareWriteRequestForCharacteristics:v49 ttl:&obj error:2.5];

      if (v23)
      {
        v24 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 encoding];
        v25 = [v24 executeWriteRequestForCharacteristics:v49 error:&obj];

        if (v25)
        {
          v26 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
          v44 = [v26 endpointForCharacteristics:v47];

          v27 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
          v43 = [v27 mimeTypeForCharacteristicRequests];

          v42 = [HAP2AccessoryServerControllerTimedWriteOperation alloc];
          v28 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 encoding];
          v29 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
          v5 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v42 initWithName:v45 controller:v5 encoding:v28 transport:v29 prepareRequest:v23 executeRequest:v25 endpoint:v6 mimeType:v44 timeout:v43 options:v51 dscpPriority:0];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v14 componentsJoinedByString:{@", "}];
      v34 = [v30 stringWithFormat:@"%@ Write: %@", v32, v33];

      v35 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 encoding];
      v36 = [v35 writeRequestForCharacteristics:v11 shouldEncrypt:1 error:&obj];

      if (v36)
      {
        v37 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
        v50 = [v37 endpointForCharacteristics:v15];
        v48 = v34;

        v38 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
        v46 = [v38 mimeTypeForCharacteristicRequests];

        v39 = [HAP2AccessoryServerControllerOperation alloc];
        v40 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 encoding];
        v41 = [(HAP2AccessoryServerControllerTimedWriteOperation *)v5 transport];
        v5 = [(HAP2AccessoryServerControllerOperation *)v39 initWithName:v48 controller:v5 encoding:v40 transport:v41 request:v36 endpoint:v50 mimeType:v6 timeout:v46 options:v51 dscpPriority:0];

        v34 = v48;
      }

      else
      {
        v5 = 0;
      }
    }

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
  }

  objc_storeStrong(v9, obj);
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    *a4 = 1;
  }
}

void __94__HAP2AccessoryServerController__writeOperationForCharacteristicTuples_timeout_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 characteristic];
  if (([v7 properties] & 4) != 0)
  {
    if (([v7 properties] & 0x20) != 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    v14 = [v7 type];
    if ([v14 isEqualToString:@"00000131-0000-1000-8000-0026BB765291"])
    {
      goto LABEL_18;
    }

    v15 = [v7 type];
    if (![v15 isEqualToString:@"00000138-0000-1000-8000-0026BB765291"])
    {
      v16 = [v7 type];
      if (![v16 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"])
      {
        v17 = [v7 type];
        if (([v17 isEqualToString:@"00000262-0000-1000-8000-0026BB765291"] & 1) == 0)
        {
          v18 = [v7 type];
          if (([v18 isEqualToString:@"00000264-0000-1000-8000-0026BB765291"] & 1) == 0)
          {
            v23 = [v7 type];
            v24 = [v23 isEqualToString:@"00000704-0000-1000-8000-0026BB765291"];

            if (v24)
            {
              goto LABEL_19;
            }

            v25 = *(*(*(a1 + 72) + 8) + 40);
            v26 = [v6 characteristic];
            v27 = [v26 type];
            v28 = [v27 hap_validatedAndNormalizedUUIDString];
            v14 = [v25 getDefaultCharacteristicProperties:v28];

            if (v14 && ([v14 unsignedIntegerValue] & 0x80) == 0)
            {
              [v6 setIncludeResponseValue:0];
            }

LABEL_18:

LABEL_19:
            v19 = *(a1 + 40);
            v20 = characteristicDescriptionFromCharacteristic(v7);
            [v19 addObject:v20];

            [*(a1 + 48) addObject:v7];
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_18;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 138412546;
    v30 = v22;
    v31 = 2112;
    v32 = v7;
    _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Unable to write characteristic (does not support secured writes): %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277CCA9B8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to characteristic %@.", v7];
  v11 = [v9 hapErrorWithCode:10 description:v10 reason:@"Characteristic does not support secured writes." suggestion:0 underlyingError:0];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *a4 = 1;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)readValuesForCharacteristics:(id)characteristics timeout:(double)timeout options:(unint64_t)options completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v12 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [characteristicsCopy count];
    v15 = [characteristicsCopy count];
    v16 = "s";
    *buf = 138412802;
    selfCopy = self;
    if (v15 == 1)
    {
      v16 = "";
    }

    v26 = 2048;
    v27 = v14;
    v28 = 2080;
    v29 = v16;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEFAULT, "%@ Reading %lu characteristic%s", buf, 0x20u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__HAP2AccessoryServerController_readValuesForCharacteristics_timeout_options_completion___block_invoke;
  v23[3] = &unk_2786D60B0;
  v23[4] = self;
  [characteristicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
  v22 = 0;
  v17 = [(HAP2AccessoryServerController *)self _createOperationsToReadCharacteristics:characteristicsCopy timeout:options options:&v22 error:timeout];
  v18 = v22;
  v19 = [(HAP2AccessoryServerController *)&self->super.super.isa _maybeBeginCharacteristicOperations:v17 error:v18 completion:completionCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __89__HAP2AccessoryServerController_readValuesForCharacteristics_timeout_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = characteristicDescriptionFromCharacteristic(v3);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@  - %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)readAttributeDatabaseWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Reading the attribute database", buf, 0xCu);
  }

  encoding = [(HAP2AccessoryServerController *)self encoding];
  v29 = 0;
  v7 = [encoding readRequestForAttributeDatabaseWithEncryption:1 error:&v29];
  v8 = v29;

  if (v7)
  {
    transport = [(HAP2AccessoryServerController *)self transport];
    v10 = [transport wellKnownEndpoint:5];

    transport2 = [(HAP2AccessoryServerController *)self transport];
    v12 = [transport2 mimeTypeForWellKnownEndpoint:5];

    v13 = [HAP2AccessoryServerControllerAttributeRequestOperation alloc];
    encoding2 = [(HAP2AccessoryServerController *)self encoding];
    transport3 = [(HAP2AccessoryServerController *)self transport];
    v16 = [(HAP2AccessoryServerControllerOperation *)v13 initWithName:@"Fetch attribute database" controller:self encoding:encoding2 transport:transport3 request:v7 endpoint:v10 mimeType:0.0 timeout:v12 options:0 dscpPriority:0];

    v17 = MEMORY[0x277CCA8C8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__HAP2AccessoryServerController_readAttributeDatabaseWithCompletion___block_invoke;
    v26[3] = &unk_2786D69E0;
    v26[4] = self;
    v18 = v16;
    v27 = v18;
    v28 = completionCopy;
    v19 = [v17 blockOperationWithBlock:v26];
    [v19 addDependency:v18];
    if (self)
    {
      operationQueue = self->_operationQueue;
    }

    else
    {
      operationQueue = 0;
    }

    [(HAP2SerializedOperationQueue *)operationQueue addOperation:v19];
    objc_initWeak(buf, v18);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__HAP2AccessoryServerController_readAttributeDatabaseWithCompletion___block_invoke_2;
    v24[3] = &unk_2786D6D90;
    objc_copyWeak(&v25, buf);
    v21 = [HAP2Cancelable cancelableWithBlock:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __69__HAP2AccessoryServerController_readAttributeDatabaseWithCompletion___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    if (v3)
    {
      v5 = v3[46];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (v6)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v1;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Received accessory database response", buf, 0xCu);
      }

      *(v1 + 10) = 0;
      v8 = [v1 accessoryServer];
      if ([v8 conformsToProtocol:&unk_283EB63D0])
      {
        v9 = [v1 accessoryServer];

        if (v9)
        {
          if ([v9 isPaired])
          {
            if ([v6 conformsToProtocol:&unk_283EB4D50])
            {
              v10 = v6;
            }

            else
            {
              v10 = 0;
            }

            v51 = v10;
            v52 = [v51 attributeDatabase];
            v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v52, "count")}];
            v54 = 0;
            v55 = &v54;
            v56 = 0x3032000000;
            v57 = __Block_byref_object_copy__18468;
            v58 = __Block_byref_object_dispose__18469;
            v59 = 0;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __77__HAP2AccessoryServerController__handleAttributeDatabaseResponse_completion___block_invoke;
            v67 = &unk_2786D5868;
            v68 = v1;
            v9 = v9;
            v69 = v9;
            v71 = &v54;
            v12 = v11;
            v70 = v12;
            [v52 enumerateKeysAndObjectsUsingBlock:buf];
            [v12 sortUsingComparator:&__block_literal_global_203];
            if (![v12 count] || (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPrimary"), v13, (v14 & 1) == 0))
            {
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v15 = hap2Log_accessory;
              if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
              {
                *v60 = 138412290;
                v61 = v1;
                _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ Didn't find a primary accessory", v60, 0xCu);
              }

              if (!v55[5])
              {
                v16 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
                v17 = v55[5];
                v55[5] = v16;
              }
            }

            if ([v12 count] >= 2)
            {
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v18 = hap2Log_accessory;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v49 = [v12 count];
                *v60 = 138412546;
                v61 = v1;
                v62 = 2048;
                v63 = v49;
                _os_log_error_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%@ Accessory returned %lu accessories, only 1 supported at this time", v60, 0x16u);
              }

              if (!v55[5])
              {
                v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
                v20 = v55[5];
                v55[5] = v19;
              }
            }

            v21 = *(v1 + 72);
            v22 = [v21 accessoryCache];

            if (v55[5])
            {
              if (v22)
              {
                if (hap2LogInitialize_onceToken != -1)
                {
                  dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                }

                v23 = hap2Log_accessory;
                if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
                {
                  *v60 = 138412290;
                  v61 = v1;
                  _os_log_error_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%@ Invalidating accessory cache after error instantiating it and trying again", v60, 0xCu);
                }

                v24 = *(v1 + 72);
                [v24 invalidateAccessoryCache];

                [(HAP2AccessoryServerController *)v1 saveAccessoryCache];
                [v9 clearAccessories];
                v25 = [v1 readAttributeDatabaseWithCompletion:v4];
              }

              else
              {
                v4[2](v4, 0);
              }
            }

            else
            {
              v50 = [v12 copy];
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v37 = hap2Log_accessory;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = [v50 count];
                v39 = [v50 count];
                v40 = "ies";
                *v60 = 138412802;
                v61 = v1;
                if (v39 == 1)
                {
                  v40 = "y";
                }

                v62 = 2048;
                v63 = v38;
                v64 = 2080;
                v65 = v40;
                _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%@ Found %lu accessor%s", v60, 0x20u);
              }

              if (!v22)
              {
                v41 = *(v1 + 72);
                if (v41)
                {
                  v42 = v41;
                  v43 = [v1 accessoryServer];
                  [(HAP2AccessoryServerAccessoryCache *)v42 updateWithMetadata:v43 discoveredAccessories:v50];
                }

                else
                {
                  v47 = [HAP2AccessoryServerAccessoryCache alloc];
                  v48 = [v1 accessoryServer];
                  v42 = [(HAP2AccessoryServerAccessoryCache *)v47 initWithMetadata:v48 discoveredAccessories:v50 sleepInterval:0];

                  [(HAP2AccessoryServerController *)v1 setAccessoryCache:v42];
                }

                [(HAP2AccessoryServerController *)v1 saveAccessoryCache];
              }

              (v4[2])(v4, v50, 0);
            }

            _Block_object_dispose(&v54, 8);
          }

          else
          {
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v33 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v1;
              _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%@ Accessory server is no longer paired", buf, 0xCu);
            }

            v34 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
            (v4[2])(v4, 0, v34);
          }

LABEL_52:

          goto LABEL_53;
        }
      }

      else
      {
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v31 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v1;
        _os_log_error_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%@ Unexpected accessory type", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      (v4[2])(v4, 0, v9);
      goto LABEL_52;
    }

    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v45 = v7;
      v46 = [v3 error];
      *buf = 138412546;
      *&buf[4] = v1;
      *&buf[12] = 2112;
      *&buf[14] = v46;
      _os_log_error_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, "%@ Failed to fetch attribute database: %@", buf, 0x16u);
    }

    if (*(v1 + 10))
    {
LABEL_45:
      *(v1 + 10) = 0;
      v30 = [v3 error];
      (v4[2])(v4, 0, v30);

LABEL_53:
      goto LABEL_54;
    }

    v26 = [v3 error];
    v27 = [v26 domain];
    if ([v27 isEqualToString:@"HAPErrorDomain"])
    {
      v28 = [v3 error];
      if ([v28 code] == 9)
      {
LABEL_44:

        goto LABEL_45;
      }

      v29 = [v3 error];
      if ([v29 code] == 15)
      {

        goto LABEL_44;
      }

      v44 = [v3 error];
      v53 = [v44 code] == 2;

      if (v53)
      {
        goto LABEL_45;
      }
    }

    else
    {
    }

    *(v1 + 10) = 1;
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v35 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v1;
      _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%@ Retrying attribute database read", buf, 0xCu);
    }

    v36 = [v1 readAttributeDatabaseWithCompletion:v4];
    goto LABEL_53;
  }

LABEL_54:

  v32 = *MEMORY[0x277D85DE8];
}

void __69__HAP2AccessoryServerController_readAttributeDatabaseWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelWithError:v3];
}

void __77__HAP2AccessoryServerController__handleAttributeDatabaseResponse_completion___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 unsignedIntegerValue];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 96);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 accessoryWithAccessoryServer:*(a1 + 40) instanceID:v9 discoveredServices:v8];
  if (v12)
  {
    [*(a1 + 48) addObject:v12];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412802;
      v20 = v18;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%@ Failed to validate accessory with instance id %@: %@", &v19, 0x20u);
    }

    v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:7];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryCache:(uint64_t)cache
{
  if (cache)
  {
    objc_storeStrong((cache + 72), a2);
  }
}

uint64_t __77__HAP2AccessoryServerController__handleAttributeDatabaseResponse_completion___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 instanceID];
  v6 = [v4 instanceID];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (HAPPairingIdentity)currentLocalPairingIdentity
{
  keyBag = [(HAP2AccessoryServerController *)&self->super.super.isa keyBag];
  currentIdentity = [keyBag currentIdentity];

  return currentIdentity;
}

- (void)dealloc
{
  transport = self->_transport;
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  [(HAP2AccessoryServerSecureTransport *)transport closeWithError:v4 completion:&__block_literal_global_18653];

  v5.receiver = self;
  v5.super_class = HAP2AccessoryServerController;
  [(HAP2AccessoryServerController *)&v5 dealloc];
}

- (HAP2AccessoryServerController)initWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue accessoryFactory:(id)factory
{
  encodingCopy = encoding;
  transportCopy = transport;
  queueCopy = queue;
  factoryCopy = factory;
  v19.receiver = self;
  v19.super_class = HAP2AccessoryServerController;
  v15 = [(HAP2AccessoryServerController *)&v19 init];
  if (v15)
  {
    v16 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerController.propertyLock"];
    propertyLock = v15->_propertyLock;
    v15->_propertyLock = v16;

    objc_storeStrong(&v15->_encoding, encoding);
    objc_storeStrong(&v15->_transport, transport);
    objc_storeStrong(&v15->_operationQueue, queue);
    objc_storeStrong(&v15->_accessoryFactory, factory);
    [transportCopy setDelegate:v15];
  }

  return v15;
}

- (HAP2AccessoryServerController)initWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue
{
  queueCopy = queue;
  transportCopy = transport;
  encodingCopy = encoding;
  v11 = objc_opt_new();
  v12 = [(HAP2AccessoryServerController *)self initWithEncoding:encodingCopy secureTransport:transportCopy operationQueue:queueCopy accessoryFactory:v11];

  return v12;
}

- (HAP2AccessoryServerController)init
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

+ (HAP2AccessoryServerController)new
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

- (uint64_t)setReadingAttributeDatabase:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 80);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __61__HAP2AccessoryServerController_setReadingAttributeDatabase___block_invoke;
    v3[3] = &unk_2786D6768;
    v3[4] = result;
    v4 = a2;
    return [v2 performWritingBlock:v3];
  }

  return result;
}

- (uint64_t)sessionNumber
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v2 = *(self + 80);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__HAP2AccessoryServerController_sessionNumber__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (uint64_t)currentAccessoryIPTryCount
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v2 = *(self + 80);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__HAP2AccessoryServerController_currentAccessoryIPTryCount__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (uint64_t)setCurrentAccessoryIPTryCount:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 80);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__HAP2AccessoryServerController_setCurrentAccessoryIPTryCount___block_invoke;
    v3[3] = &unk_2786D63C8;
    v3[4] = result;
    v3[5] = a2;
    return [v2 performWritingBlock:v3];
  }

  return result;
}

void __68__HAP2AccessoryServerController_lookupAccessoryCacheWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HAP2AccessoryServerController_lookupAccessoryCacheWithCompletion___block_invoke_2;
  v13[3] = &unk_2786D5C48;
  v7 = v5;
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v18 = *(a1 + 48);
  v17 = *(a1 + 40);
  v10 = MEMORY[0x231885210](v13);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 88);
  }

  else
  {
    v12 = 0;
  }

  [v12 addConcurrentBlock:v10];
}

void __68__HAP2AccessoryServerController_lookupAccessoryCacheWithCompletion___block_invoke_2(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v49 = 0;
    v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v49];
    v6 = v49;
    if (v5)
    {
      [(HAP2AccessoryServerController *)*(a1 + 40) setAccessoryCache:v5];
      v7 = [v5 peripheralInfo];
      v8 = [v7 configNumber];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 56), "configNumber")}];
      v10 = [v8 isEqualToNumber:v9];

      v11 = &selRef_initWithName_activity_block_;
      if ((v10 & 1) == 0)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v12 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 40);
          v14 = v12;
          v15 = [v5 peripheralInfo];
          v16 = [v15 configNumber];
          v17 = [v16 unsignedIntValue];
          v18 = [*(a1 + 56) configNumber];
          *buf = 138412802;
          v51 = v13;
          v11 = &selRef_initWithName_activity_block_;
          v52 = 1024;
          *v53 = v17;
          *&v53[4] = 1024;
          *&v53[6] = v18;
          _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%@ Invalidating stored cache due to updated c# (%u -> %u)", buf, 0x18u);
        }

        [v5 invalidateAccessoryCache];
        v19 = [*(a1 + 40) accessoryServer];
        if ([v19 conformsToProtocol:v11[103]])
        {
          v20 = [*(a1 + 40) accessoryServer];
        }

        else
        {
          v20 = 0;
        }

        [v20 clearAccessories];
      }

      v23 = [v5 peripheralInfo];
      v24 = [v23 advertisedProtocolVersion];

      v25 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:v24 / 0xA minorVersion:v24 % 0xA updateVersion:0];
      v26 = [*(a1 + 56) protocolVersion];
      v27 = [v25 isEqualToVersion:v26];

      if ((v27 & 1) == 0)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v28 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v29 = *(a1 + 40);
          v30 = *(a1 + 56);
          v31 = v28;
          v32 = [v30 protocolVersion];
          *buf = 138412802;
          v51 = v29;
          v52 = 2112;
          *v53 = v25;
          *&v53[8] = 2112;
          v54 = v32;
          _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%@ Invalidating stored cache due to updated protocol version (%@ -> %@)", buf, 0x20u);
        }

        [v5 invalidateAccessoryCache];
        v33 = [*(a1 + 40) accessoryServer];
        if ([v33 conformsToProtocol:v11[103]])
        {
          v34 = [*(a1 + 40) accessoryServer];
        }

        else
        {
          v34 = 0;
        }

        [v34 clearAccessories];
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v35 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v36 = *(a1 + 40);
        *buf = 138412290;
        v51 = v36;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_INFO, "%@ Found valid cache", buf, 0xCu);
      }

      v37 = [v5 sleepInterval];

      if (v37)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v38 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v39 = *(a1 + 40);
          v40 = v38;
          v41 = [v5 sleepInterval];
          *buf = 138412546;
          v51 = v39;
          v52 = 2112;
          *v53 = v41;
          _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%@ Found cached sleep interval: %@", buf, 0x16u);
        }

        v42 = *(a1 + 40);
        v43 = [v5 sleepInterval];
        [v43 doubleValue];
        [(HAP2AccessoryServerController *)v42 _updateMaxRequestTimeout:v44];
      }

      (*(*(a1 + 64) + 16))();
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
        v48 = *(a1 + 40);
        *buf = 138412546;
        v51 = v48;
        v52 = 2112;
        *v53 = v6;
        _os_log_error_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%@ Unable to decode found accessory cache: %@", buf, 0x16u);
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v21 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 40);
      v47 = *(a1 + 48);
      *buf = 138412546;
      v51 = v46;
      v52 = 2112;
      *v53 = v47;
      _os_log_debug_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%@ No saved cache at all: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)openTransportWithResume:(void *)resume completion:
{
  resumeCopy = resume;
  if (self)
  {
    [*(self + 88) assertCurrentQueue];
    if (HAPIsHH2Enabled_onceToken != -1)
    {
      dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
    }

    if (HAPIsHH2Enabled_hh2Enabled == 1)
    {
      [*(self + 88) assertCurrentQueue];
      if (HAPIsHH2Enabled_onceToken != -1)
      {
        dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
      }

      if (HAPIsHH2Enabled_hh2Enabled == 1)
      {
        keyBag = [(HAP2AccessoryServerController *)self keyBag];

        if (!keyBag)
        {
          accessoryServer = [self accessoryServer];
          browser = [accessoryServer browser];
          storage = [browser storage];
          accessoryServer2 = [self accessoryServer];
          deviceID = [accessoryServer2 deviceID];
          deviceIDString = [deviceID deviceIDString];
          v11 = [storage keyBagForIdentifier:deviceIDString];
          v12 = *(self + 80);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __43__HAP2AccessoryServerController_setKeyBag___block_invoke;
          v21[3] = &unk_2786D7050;
          v21[4] = self;
          v13 = v11;
          v22 = v13;
          [v12 performWritingBlock:v21];
        }
      }
    }

    if ((a2 & 1) == 0)
    {
      [(HAP2AccessoryServerController *)self setCurrentAccessoryIPTryCount:?];
    }

    sessionNumber = [(HAP2AccessoryServerController *)self sessionNumber];
    transport = [self transport];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__HAP2AccessoryServerController_openTransportWithResume_completion___block_invoke;
    v18[3] = &unk_2786D5CC0;
    v18[4] = self;
    v20 = sessionNumber;
    v19 = resumeCopy;
    [transport openWithCompletion:v18];
  }
}

void __68__HAP2AccessoryServerController_openTransportWithResume_completion___block_invoke(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __68__HAP2AccessoryServerController_openTransportWithResume_completion___block_invoke_2;
  v20 = &unk_2786D5C98;
  v9 = v7;
  v10 = a1[4];
  v21 = v9;
  v22 = v10;
  v11 = v8;
  v13 = a1[5];
  v12 = a1[6];
  v23 = v11;
  v25 = v12;
  v24 = v13;
  v26 = a2;
  v14 = MEMORY[0x231885210](&v17);
  v15 = a1[4];
  if (v15)
  {
    v16 = *(v15 + 88);
  }

  else
  {
    v16 = 0;
  }

  [v16 addConcurrentBlock:{v14, v17, v18, v19, v20}];
}

void __68__HAP2AccessoryServerController_openTransportWithResume_completion___block_invoke_2(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) accessoryServer];
    v3 = [v2 delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 40) accessoryServer];
      v6 = [v5 delegate];
      v7 = [*(a1 + 32) numIPAddresses];
      v8 = [*(a1 + 32) numIPAddressesTried];
      v9 = [*(a1 + 32) numBonjourNames];
      v10 = [*(a1 + 32) ipAddress];
      v11 = [*(a1 + 32) serviceName];
      [v6 setSessionInfoWithNumIPsResolved:v7 numIPsTried:v8 numBonjourNames:v9 ipAddress:v10 serviceName:v11 resolveAttempted:{objc_msgSend(*(a1 + 32), "resolveAttempted")}];
    }
  }

  if (*(a1 + 48))
  {
    goto LABEL_5;
  }

  v17 = *(a1 + 64);
  if (v17 != [(HAP2AccessoryServerController *)*(a1 + 40) sessionNumber])
  {
    v34 = *(a1 + 32);
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v35 = hap2Log_accessory;
    v36 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v36)
      {
        v37 = *(a1 + 40);
        v38 = v35;
        v39 = [(HAP2AccessoryServerController *)v37 currentAccessoryIPTryCount];
        v40 = [*(a1 + 32) numIPAddresses];
        v41 = [*(a1 + 32) numIPAddressesTried];
        v42 = [*(a1 + 32) numBonjourNames];
        *buf = 138413314;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v59 = v40;
        *v60 = 2048;
        *&v60[2] = v41;
        *&v60[10] = 2048;
        *&v60[12] = v42;
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_INFO, "%@ Open established a new session after trying %lu IP address(es) (total=%lu, tried=%lu with %lu names)", buf, 0x34u);
      }
    }

    else if (v36)
    {
      v43 = *(a1 + 40);
      v44 = v35;
      *buf = 138412546;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = [(HAP2AccessoryServerController *)v43 currentAccessoryIPTryCount];
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_INFO, "%@ Open established a new session after trying %lu IP address(es)", buf, 0x16u);
    }

    v45 = [*(a1 + 40) accessoryServer];
    if ([v45 conformsToProtocol:&unk_283EB63D0])
    {
      v46 = [*(a1 + 40) accessoryServer];
    }

    else
    {
      v46 = 0;
    }

    mach_absolute_time();
    v47 = UpTicksToMilliseconds();
    [(HAP2AccessoryServerController *)*(a1 + 40) setSessionStartTime:v47];
    v48 = *(a1 + 40);
    if (!v48)
    {
      goto LABEL_43;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v49 = *(v48 + 80);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __59__HAP2AccessoryServerController_isReadingAttributeDatabase__block_invoke;
    v59 = &unk_2786D6E60;
    *v60 = v48;
    *&v60[8] = &v54;
    [v49 performReadingBlock:buf];

    LOBYTE(v49) = *(v55 + 24);
    _Block_object_dispose(&v54, 8);
    if (v49)
    {
LABEL_44:
      (*(*(a1 + 56) + 16))();

      v53 = *MEMORY[0x277D85DE8];
      return;
    }

    v50 = *(a1 + 40);
    if (!v50)
    {
LABEL_43:
      [v46 handleReestablishedSession];
      goto LABEL_44;
    }

    [v50[11] assertCurrentQueue];
    v51 = [v50 accessoryServer];
    if ([v51 conformsToProtocol:&unk_283EB63D0])
    {
      v52 = [v50 accessoryServer];

      if (!v52 || ![v52 isPaired])
      {
        goto LABEL_42;
      }

      v51 = [v52 accessories];
      [v51 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_373];
    }

    else
    {
      v52 = 0;
    }

LABEL_42:
    goto LABEL_43;
  }

  if (!*(a1 + 48))
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      [v18[11] assertCurrentQueue];
      if (HAPIsHH2Enabled_onceToken != -1)
      {
        dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
      }

      if (HAPIsHH2Enabled_hh2Enabled == 1)
      {
        v19 = [(HAP2AccessoryServerController *)v18 keyBag];
        v20 = [v19 currentIdentity];
        v21 = [v20 identifier];
        v54 = 0;
        v22 = [v19 associateControllerIdentifier:v21 error:&v54];
        v23 = v54;

        if ((v22 & 1) == 0)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = v18;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v23;
            _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to associate controller key: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }
      }
    }

    goto LABEL_20;
  }

LABEL_5:
  v12 = [(HAP2AccessoryServerController *)*(a1 + 40) keyBag];
  v13 = [v12 shouldRetryPVDueToAuthenticationError:*(a1 + 48)];

  if (v13)
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    v16 = *MEMORY[0x277D85DE8];

    [(HAP2AccessoryServerController *)v14 openTransportWithResume:v15 completion:?];
    return;
  }

LABEL_20:
  v28 = *(a1 + 40);
  v29 = [(HAP2AccessoryServerController *)v28 currentAccessoryIPTryCount];
  [(HAP2AccessoryServerController *)v28 setCurrentAccessoryIPTryCount:?];
  v30 = *(a1 + 72);
  v31 = *(a1 + 48);
  v32 = *(*(a1 + 56) + 16);
  v33 = *MEMORY[0x277D85DE8];

  v32();
}

void __60__HAP2AccessoryServerController__handleReestablishedSession__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_375];
}

void __60__HAP2AccessoryServerController__handleReestablishedSession__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristics];
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_377];
}

@end
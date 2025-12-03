@interface HAPAccessoryServer
- (BOOL)hasAdvertisement;
- (BOOL)hasPairings;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)isSecuritySessionOpen;
- (BOOL)isSessionRestoreActive;
- (BOOL)matchesSetupID:(id)d;
- (BOOL)matchesSetupID:(id)d serverIdentifier:(id)identifier;
- (BOOL)notifyClients:(unint64_t)clients withDictionary:(id)dictionary;
- (BOOL)reachabilityPingEnabled;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (BOOL)requiresTimedWrite:(id)write;
- (BOOL)securitySessionWillCloseWithResponseData:(id)data error:(id *)error;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error;
- (BOOL)stopPairingWithError:(id *)error;
- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error;
- (BOOL)useHH2;
- (HAPAccessoryServer)init;
- (HAPAccessoryServer)initWithKeystore:(id)keystore;
- (HAPAccessoryServerDelegate)delegate;
- (HAPDeviceID)deviceID;
- (HAPKeyStore)keyStore;
- (HMFActivity)pairingActivity;
- (HMFVersion)version;
- (NSArray)accessories;
- (NSData)setupHash;
- (NSDate)connectionStartTime;
- (NSDictionary)pairingMetricDictionary;
- (NSNumber)category;
- (NSString)identifier;
- (NSString)name;
- (NSString)productData;
- (NSString)reachabilityChangedReason;
- (OS_dispatch_queue)delegateQueue;
- (id)getControllerPairingIdentityWithError:(id *)error;
- (id)getControllerUserName;
- (id)shortDescription;
- (unint64_t)authMethod;
- (unint64_t)compatibilityFeatures;
- (unint64_t)configNumber;
- (unint64_t)pairSetupType;
- (unint64_t)pendingRemovePairing;
- (unint64_t)stateNumber;
- (unint64_t)wakeNumber;
- (void)addInternalDelegate:(id)delegate;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)associateAccessoryWithControllerKey:(id)key usingAccessoryPublicKey:(id)publicKey;
- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier;
- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)key;
- (void)authenticateAccessory;
- (void)clearPairingMetrics;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier;
- (void)disconnect;
- (void)disconnectWithError:(id)error;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)enumerateInternalDelegatesUsingBlock:(id)block;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)incrementFailedPing;
- (void)incrementSuccessfulPing;
- (void)initializeKeyBagIfNecessary;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)refreshKeyBag;
- (void)registerForNotifications:(id)notifications;
- (void)removeInternalDelegate:(id)delegate;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairingIdentifier:(id)identifier pairingPublicKey:(id)key completionQueue:(id)queue completionHandler:(id)handler;
- (void)setAccessories:(id)accessories;
- (void)setAuthMethod:(unint64_t)method;
- (void)setCategory:(id)category;
- (void)setCompatibilityFeatures:(unint64_t)features;
- (void)setConfigNumber:(unint64_t)number;
- (void)setConnectionStartTime:(id)time;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setHasAdvertisement:(BOOL)advertisement;
- (void)setHasPairings:(BOOL)pairings;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setPairSetupType:(unint64_t)type;
- (void)setPairingMetricWithKey:(id)key value:(id)value;
- (void)setPendingRemovePairing:(unint64_t)pairing;
- (void)setProductData:(id)data;
- (void)setReachabilityChangedReason:(id)reason;
- (void)setReachabilityPingEnabled:(BOOL)enabled;
- (void)setSecuritySessionOpen:(BOOL)open;
- (void)setSessionRestoreActive:(BOOL)active;
- (void)setSetupHash:(id)hash;
- (void)setShouldDisconnectOnIdle:(BOOL)idle;
- (void)setStateNumber:(unint64_t)number;
- (void)setSuspendedAccessory:(id)accessory;
- (void)setVersion:(id)version;
- (void)setWakeNumber:(unint64_t)number;
- (void)startPairingWithConsentRequired:(BOOL)required config:(id)config ownershipToken:(id)token;
- (void)startPing;
- (void)stopPing;
- (void)submitPairVerifyMetricWithError:(id)error;
- (void)tearDownSessionOnAuthCompletion;
- (void)unregisterForNotifications:(id)notifications;
- (void)updateAccessoryInfoDictionary:(id)dictionary;
- (void)validatePairingAuthMethod:(id)method;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessoryServer

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

- (BOOL)useHH2
{
  if ([(HAPAccessoryServer *)self unitTest_useHH2])
  {
    return 1;
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  return HAPIsHH2Enabled_hh2Enabled;
}

- (BOOL)securitySessionWillCloseWithResponseData:(id)data error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    if ([dataCopy length])
    {
      v8 = *error;
      v9 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960542];
      LOBYTE(v8) = [v8 isEqual:v9];

      if ((v8 & 1) == 0)
      {
        v13 = [HAPTLVParser parserWithData:v7];
        v14 = [v13 parseResponseForNumber:6];
        v15 = [v13 parseResponseForNumber:7];
        v16 = *error;
        v17 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960596];
        if ([v16 isEqual:v17])
        {
          unsignedCharValue = [v14 unsignedCharValue];

          if (unsignedCharValue == 3)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v19 = *error;
        v20 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960569];
        LODWORD(v19) = [v19 isEqual:v20];

        if (!v19)
        {
          goto LABEL_20;
        }

        if (v14)
        {
          v10 = 1;
          if ([v14 unsignedIntValue] != 4 || !v15)
          {
            goto LABEL_21;
          }
        }

        else if (!v15)
        {
LABEL_20:
          v10 = 1;
LABEL_21:

          goto LABEL_5;
        }

        if ([&unk_283EA9BD8 containsObject:v15])
        {
LABEL_17:
          v21 = objc_autoreleasePoolPush();
          selfCopy = self;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier();
            v25 = *error;
            v26 = 138543618;
            v27 = v24;
            v28 = 2112;
            v29 = v25;
            _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Overwriting the security session error code: %@", &v26, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960542];
          *error = v10 = 0;
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }
  }

  v10 = 0;
LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    keyBag = [(HAPAccessoryServer *)self keyBag];
    currentIdentity = [keyBag currentIdentity];
    identifier = [currentIdentity identifier];
    v8 = [(HAPAccessoryServer *)self isAccessoryAssociatedWithControllerKey:identifier];

    if (v8)
    {
      keyStore = [(HAPAccessoryServer *)self keyStore];
      v17 = 0;
      v10 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v17];
      v11 = v17;

      if (!v10 || v11)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v19 = v15;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
      }

      else
      {
        [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:0 usingAccessoryPublicKey:v10];
        [(HAPAccessoryServer *)self refreshKeyBag];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      keyBag = [(HAPAccessoryServer *)selfCopy keyBag];
      currentIdentity = [keyBag currentIdentity];
      identifier = [currentIdentity identifier];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = identifier;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@PV Succeeded using [%{public}@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    keyBag2 = [(HAPAccessoryServer *)selfCopy keyBag];
    currentIdentity2 = [keyBag2 currentIdentity];
    identifier2 = [currentIdentity2 identifier];
    v15 = [(HAPAccessoryServer *)selfCopy isAccessoryAssociatedWithControllerKey:identifier2];

    if (!v15)
    {
      keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
      v24 = 0;
      v17 = [keyStore readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:0 error:&v24];
      v18 = v24;

      if (!v17 || v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v22;
          v27 = 2112;
          v28 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      else
      {
        [(HAPAccessoryServer *)selfCopy associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v17];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)key
{
  keyCopy = key;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    pairingRequest = [(HAPAccessoryServer *)self pairingRequest];
    pairingIdentity = [pairingRequest pairingIdentity];
    if (pairingIdentity)
    {
      currentIdentity = pairingIdentity;
    }

    else
    {
      keyBag = [(HAPAccessoryServer *)self keyBag];
      currentIdentity = [keyBag currentIdentity];

      if (!currentIdentity)
      {
        goto LABEL_6;
      }
    }

    identifier = [currentIdentity identifier];
    [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:identifier usingAccessoryPublicKey:keyCopy];
  }

LABEL_6:
}

- (void)associateAccessoryWithControllerKey:(id)key usingAccessoryPublicKey:(id)publicKey
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  publicKeyCopy = publicKey;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = keyCopy;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Establishing relationship with controller key: [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [HAPPairingIdentity alloc];
    identifier = [(HAPAccessoryServer *)selfCopy identifier];
    v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:publicKeyCopy];
    v15 = [(HAPPairingIdentity *)v12 initWithIdentifier:identifier controllerKeyIdentifier:keyCopy publicKey:v14 privateKey:0 permissions:0];

    keyStore = [(HAPAccessoryServer *)selfCopy keyStore];
    v25 = 0;
    v17 = [keyStore establishRelationshipBetweenAccessoryAndControllerKey:v15 error:&v25];
    v18 = v25;

    if (!v17 || v18)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the accessory public key inside KeyChain: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      pairingRequest = [(HAPAccessoryServer *)selfCopy pairingRequest];

      if (pairingRequest)
      {
        [(HAPAccessoryServer *)selfCopy refreshKeyBag];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)key
{
  keyCopy = key;
  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v11 = 0;
  v7 = [keyStore isAccessoryAssociatedWithControllerKey:identifier controllerID:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [keyCopy isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error
{
  errorCopy = error;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    keyBag = [(HAPAccessoryServer *)self keyBag];
    v6 = [keyBag shouldRetryPVDueToAuthenticationError:errorCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)refreshKeyBag
{
  keyBag = [(HAPAccessoryServer *)self keyBag];
  [keyBag refreshKeys];
}

- (void)initializeKeyBagIfNecessary
{
  os_unfair_lock_lock_with_options();
  if (!self->_keyBag)
  {
    if (!self->_identifier)
    {
      _HMFPreconditionFailure();
      __break(1u);
      return;
    }

    v3 = [HAPKeyBag alloc];
    identifier = self->_identifier;
    WeakRetained = objc_loadWeakRetained(&self->_keyStore);
    v6 = [(HAPKeyBag *)v3 initWithAccessoryIdentifier:identifier keyStore:WeakRetained];
    keyBag = self->_keyBag;
    self->_keyBag = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getControllerPairingIdentityWithError:(id *)error
{
  if (!-[HAPAccessoryServer useHH2](self, "useHH2") || (-[HAPAccessoryServer keyBag](self, "keyBag"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentIdentity], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    keyStore = [(HAPAccessoryServer *)self keyStore];
    identifier = [(HAPAccessoryServer *)self identifier];
    v6 = [keyStore readControllerPairingKeyForAccessory:identifier error:error];
  }

  return v6;
}

- (id)getControllerUserName
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v12];
  v4 = v12;
  identifier = 0;
  if (!v4)
  {
    identifier = [v3 identifier];
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = identifier;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Using default controller username : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return identifier;
}

- (void)disconnect
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)disconnectWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)submitPairVerifyMetricWithError:(id)error
{
  errorCopy = error;
  if ([(HAPAccessoryServer *)self metric_pairVerifyDurationInMS])
  {
    metric_pairVerifyReason = [(HAPAccessoryServer *)self metric_pairVerifyReason];

    if (metric_pairVerifyReason)
    {
      v5 = [HAPMetricsPairVerifyEvent alloc];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPAccessoryServer linkType](self, "linkType")}];
      metric_pairVerifyDurationInMS = [(HAPAccessoryServer *)self metric_pairVerifyDurationInMS];
      metric_pairVerifyReason2 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
      metric_pairVerifyConnectionEstablishedBy = [(HAPAccessoryServer *)self metric_pairVerifyConnectionEstablishedBy];
      v10 = [(HAPMetricsPairVerifyEvent *)v5 initWithAccessory:self forLinkType:v6 durationInMS:metric_pairVerifyDurationInMS reason:metric_pairVerifyReason2 connectionEstablishedUsing:metric_pairVerifyConnectionEstablishedBy pvError:errorCopy];

      v11 = +[HAPMetricsDispatcher sharedInstance];
      [v11 submitLogEvent:v10];
    }
  }

  [(HAPAccessoryServer *)self setMetric_pairVerifyDurationInMS:0];
  [(HAPAccessoryServer *)self setMetric_pairVerifyReason:0];
}

- (void)updateAccessoryInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  if ([(NSArray *)self->_accessories count])
  {
    v4 = [(NSArray *)self->_accessories objectAtIndexedSubscript:0];
    manufacturer = [v4 manufacturer];
    productData = [v4 productData];
    v7 = self->_category;
    firmwareVersion = [v4 firmwareVersion];

    os_unfair_lock_unlock(&self->_lock);
    if (manufacturer)
    {
      [dictionaryCopy setObject:manufacturer forKey:@"manufacturer"];
    }

    v9 = dictionaryCopy;
    if (productData)
    {
      [dictionaryCopy setObject:productData forKey:@"product"];
      v9 = dictionaryCopy;
    }

    if (firmwareVersion)
    {
      [dictionaryCopy setObject:firmwareVersion forKey:@"firmwareVersion"];
      v9 = dictionaryCopy;
    }

    if (v7)
    {
      [v9 setObject:v7 forKey:@"category"];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
    firmwareVersion = 0;
    productData = 0;
    manufacturer = 0;
  }
}

- (void)incrementFailedPing
{
  os_unfair_lock_lock_with_options();
  ++self->_failedPingCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementSuccessfulPing
{
  os_unfair_lock_lock_with_options();
  ++self->_successfulPingCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSuspendedAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  suspendedAccessory = self->_suspendedAccessory;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_suspendedAccessory, accessory);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = accessoryCopy;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the server's suspended accessory to: '%@'", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)notifyClients:(unint64_t)clients withDictionary:(id)dictionary
{
  v47 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    v6 = [(NSHashTable *)notificationClients copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v6 count];
        v11 = [HAPNotification typeToString:clients];
        *buf = 138543874;
        v42 = v9;
        v43 = 2048;
        v44 = v10;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying %ld clients for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if (dictionaryCopy)
      {
        v12 = [dictionaryCopy hmf_numberForKey:@"HAPAccessoryInstanceID"];
      }

      else
      {
        v12 = 0;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v6;
      v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v17)
      {
        v32 = 0;
        v34 = *v37;
        *&v18 = 138543874;
        v29 = v18;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v37 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v36 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              hapInstanceId = [v20 hapInstanceId];
            }

            else
            {
              hapInstanceId = 0;
            }

            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *buf = v29;
              v42 = v25;
              v43 = 2112;
              v44 = v12;
              v45 = 2112;
              v46 = hapInstanceId;
              _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Attempt to notify client dictionary instanceID %@ clientInstanceId %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v22);
            if (hapInstanceId == 0 || v12 == 0 || (v26 = [hapInstanceId intValue], v26 == objc_msgSend(v12, "intValue")))
            {
              [v20 indicateNotificationFromServer:v23 notifyType:clients withDictionary:{dictionaryCopy, v29}];
              v32 = 1;
            }
          }

          v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v17);
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_30;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v16;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Notification client does not exist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v32 = 0;
LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

- (void)unregisterForNotifications:(id)notifications
{
  v15 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients removeObject:notificationsCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = notificationsCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing client from accessory server notification %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotifications:(id)notifications
{
  v15 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients addObject:notificationsCopy];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = notificationsCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering client for accessory server notification %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopPing
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
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop ping called -- NOP", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startPing
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
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Ping called -- NOP", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)enumerateInternalDelegatesUsingBlock:(id)block
{
  blockCopy = block;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HAPAccessoryServer_enumerateInternalDelegatesUsingBlock___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(internalDelegateQueue, v7);
}

void __59__HAPAccessoryServer_enumerateInternalDelegatesUsingBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) internalDelegates];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_initWeak(&location, *(*(&v11 + 1) + 8 * v5));
        if ((v16 & 1) == 0)
        {
          v6 = objc_loadWeakRetained(&location);
          v7 = v6 == 0;

          if (!v7)
          {
            v8 = *(a1 + 40);
            v9 = objc_loadWeakRetained(&location);
            (*(v8 + 16))(v8, v9, &v16);
          }
        }

        objc_destroyWeak(&location);
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeInternalDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HAPAccessoryServer_removeInternalDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(internalDelegateQueue, v7);
}

void __45__HAPAccessoryServer_removeInternalDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addInternalDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalDelegateQueue = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HAPAccessoryServer_addInternalDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(internalDelegateQueue, v7);
}

void __42__HAPAccessoryServer_addInternalDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)requiresTimedWrite:(id)write
{
  v37 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  if ([(HAPAccessoryServer *)self supportsTimedWrite])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = writeCopy;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v24 = writeCopy;
      instanceID = 0;
      characteristic = 0;
      v9 = *v27;
LABEL_4:
      v10 = 0;
      v11 = instanceID;
      v12 = characteristic;
      while (1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v10);
        characteristic = [v13 characteristic];

        service = [characteristic service];
        accessory = [service accessory];
        instanceID = [accessory instanceID];

        if (!characteristic || instanceID == 0)
        {
          break;
        }

        if (([v13 timedWrite] & 1) != 0 || (objc_msgSend(characteristic, "properties") & 0x20) != 0)
        {
          v17 = 1;
LABEL_18:
          writeCopy = v24;
          goto LABEL_23;
        }

        ++v10;
        v11 = instanceID;
        v12 = characteristic;
        if (v6 == v10)
        {
          v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          v17 = 0;
          goto LABEL_18;
        }
      }

      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      writeCopy = v24;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v21;
        v32 = 2112;
        v33 = characteristic;
        v34 = 2112;
        v35 = instanceID;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to check prepare characteristic write requests for characteristic '%@' with an accessory instance ID of '%@'", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v17 = 0;
LABEL_23:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"You must override %@ in a subclass", v15];
  v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = NSStringFromSelector(a2);
  v19 = [v17 stringWithFormat:@"You must override %@ in a subclass", v18];
  v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = NSStringFromSelector(a2);
  v19 = [v17 stringWithFormat:@"You must override %@ in a subclass", v18];
  v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)discoverAccessories
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)removePairingIdentifier:(id)identifier pairingPublicKey:(id)key completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  keyCopy = key;
  identifierCopy = identifier;
  keyBag = [(HAPAccessoryServer *)self keyBag];
  currentIdentity = [keyBag currentIdentity];
  identifier = [currentIdentity identifier];
  v17 = [identifier isEqualToString:identifierCopy];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __97__HAPAccessoryServer_removePairingIdentifier_pairingPublicKey_completionQueue_completionHandler___block_invoke;
  v27 = &unk_2786D5290;
  selfCopy = self;
  v30 = handlerCopy;
  v31 = v17;
  v28 = queueCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = MEMORY[0x231885210](&v24);
  v21 = objc_alloc(MEMORY[0x277D0F8B0]);
  v22 = [v21 initWithPairingKeyData:{keyCopy, v24, v25, v26, v27}];

  v23 = [[HAPPairingIdentity alloc] initWithIdentifier:identifierCopy publicKey:v22 privateKey:0 permissions:0];
  [(HAPAccessoryServer *)self removePairing:v23 completionQueue:v19 completionHandler:v20];
}

void __97__HAPAccessoryServer_removePairingIdentifier_pairingPublicKey_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  v4 = v5;
  if (!v5 && *(a1 + 56) == 1)
  {
    [*(a1 + 40) disconnect];
    [*(a1 + 40) refreshKeyBag];
    v4 = 0;
  }
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  pairingCopy = pairing;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)stopPairingWithError:(id *)error
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)tryPairingPassword:(id)password onboardingSetupPayloadString:(id)string error:(id *)error
{
  passwordCopy = password;
  stringCopy = string;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)startPairingWithConsentRequired:(BOOL)required config:(id)config ownershipToken:(id)token
{
  configCopy = config;
  tokenCopy = token;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)continuePairingUsingWAC
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)continuePairingAfterAuthPrompt
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)matchesSetupID:(id)d serverIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!dCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(HAPAccessoryServer *)self matchesSetupID:dCopy])
  {
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_6:
    identifier = [(HAPAccessoryServer *)self identifier];
    v9 = HMFEqualObjects();

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)matchesSetupID:(id)d
{
  dCopy = d;
  setupHash = [(HAPAccessoryServer *)self setupHash];
  identifier = [(HAPAccessoryServer *)self identifier];
  v7 = HAPValidateSetupHash(setupHash, identifier, dCopy);

  return v7;
}

- (BOOL)isPaired
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)validatePairingAuthMethod:(id)method
{
  v3 = MEMORY[0x277CCA9B8];
  methodCopy = method;
  v6 = [v3 hapErrorWithCode:3 description:@"Base class HAPAccessoryServer does not implement validatePairingAuthMethod" reason:0 suggestion:0 underlyingError:0 marker:209];
  v5 = MEMORY[0x231885210](methodCopy);

  if (v5)
  {
    (v5)[2](v5, v6, 0);
  }
}

- (void)tearDownSessionOnAuthCompletion
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)provisionToken:(id)token
{
  tokenCopy = token;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)authenticateAccessory
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)shortDescription
{
  if (HAPIsInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    identifier = [(HAPAccessoryServer *)self identifier];
    name = [(HAPAccessoryServer *)self name];
    identifier2 = [v3 stringWithFormat:@"%@/%@", identifier, name];
  }

  else
  {
    identifier2 = [(HAPAccessoryServer *)self identifier];
  }

  return identifier2;
}

- (NSDictionary)pairingMetricDictionary
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_localPairingMetricDictionary copy];
  os_unfair_lock_unlock(&self->_metriclock);

  return v3;
}

- (void)clearPairingMetrics
{
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_localPairingMetricDictionary removeAllObjects];

  os_unfair_lock_unlock(&self->_metriclock);
}

- (void)setPairingMetricWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_localPairingMetricDictionary setObject:valueCopy forKeyedSubscript:keyCopy];
  os_unfair_lock_unlock(&self->_metriclock);
}

- (NSDate)connectionStartTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connectionStartTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConnectionStartTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  connectionStartTime = self->_connectionStartTime;
  self->_connectionStartTime = timeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReachabilityChangedReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock_with_options();
  reachabilityChangedReason = self->_reachabilityChangedReason;
  self->_reachabilityChangedReason = reasonCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)reachabilityChangedReason
{
  os_unfair_lock_lock_with_options();
  v3 = self->_reachabilityChangedReason;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHasAdvertisement:(BOOL)advertisement
{
  os_unfair_lock_lock_with_options();
  self->_hasAdvertisement = advertisement;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasAdvertisement
{
  os_unfair_lock_lock_with_options();
  hasAdvertisement = self->_hasAdvertisement;
  os_unfair_lock_unlock(&self->_lock);
  return hasAdvertisement;
}

- (unint64_t)pairSetupType
{
  os_unfair_lock_lock_with_options();
  pairSetupType = self->_pairSetupType;
  os_unfair_lock_unlock(&self->_lock);
  return pairSetupType;
}

- (void)setPairSetupType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_pairSetupType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMFVersion *)self->_version copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  version = self->_version;
  self->_version = versionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)compatibilityFeatures
{
  os_unfair_lock_lock_with_options();
  compatibilityFeatures = self->_compatibilityFeatures;
  os_unfair_lock_unlock(&self->_lock);
  return compatibilityFeatures;
}

- (void)setCompatibilityFeatures:(unint64_t)features
{
  os_unfair_lock_lock_with_options();
  self->_compatibilityFeatures = features;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)stateNumber
{
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);
  return stateNumber;
}

- (void)setStateNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_stateNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)wakeNumber
{
  os_unfair_lock_lock_with_options();
  wakeNumber = self->_wakeNumber;
  os_unfair_lock_unlock(&self->_lock);
  return wakeNumber;
}

- (void)setWakeNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_wakeNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configNumber
{
  os_unfair_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_lock_unlock(&self->_lock);
  return configNumber;
}

- (void)setConfigNumber:(unint64_t)number
{
  os_unfair_lock_lock_with_options();
  self->_configNumber = number;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)productData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProductData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  productData = self->_productData;
  self->_productData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock_with_options();
  v6 = [(NSNumber *)self->_category isEqual:categoryCopy];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_category, category);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ((([(HAPAccessoryServer *)self communicationProtocol]!= 2) & v6) == 0)
  {
    delegate = [(HAPAccessoryServer *)self delegate];
    if (delegate)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

      if (delegateQueue)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__HAPAccessoryServer_setCategory___block_invoke;
        block[3] = &unk_2786D7078;
        v11 = delegate;
        selfCopy = self;
        v13 = categoryCopy;
        dispatch_async(delegateQueue2, block);
      }
    }
  }
}

- (NSNumber)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy copy];
  os_unfair_lock_lock_with_options();
  if ([(NSString *)self->_name isEqualToString:nameCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_name, v5);
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HAPAccessoryServer *)self delegate];
    if (delegate)
    {
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

      if (delegateQueue)
      {
        delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__HAPAccessoryServer_setName___block_invoke;
        block[3] = &unk_2786D7078;
        v10 = delegate;
        selfCopy = self;
        v12 = v5;
        dispatch_async(delegateQueue2, block);
      }
    }
  }
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAuthMethod:(unint64_t)method
{
  os_unfair_lock_lock_with_options();
  self->_authMethod = method;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)authMethod
{
  os_unfair_lock_lock_with_options();
  authMethod = self->_authMethod;
  os_unfair_lock_unlock(&self->_lock);
  return authMethod;
}

- (void)setSetupHash:(id)hash
{
  hashCopy = hash;
  os_unfair_lock_lock_with_options();
  v4 = [hashCopy copy];
  setupHash = self->_setupHash;
  self->_setupHash = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)setupHash
{
  os_unfair_lock_lock_with_options();
  v3 = self->_setupHash;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HAPDeviceID)deviceID
{
  v3 = [HAPDeviceID alloc];
  identifier = [(HAPAccessoryServer *)self identifier];
  v5 = [(HAPDeviceID *)v3 initWithDeviceIDString:identifier];

  return v5;
}

- (void)setHasPairings:(BOOL)pairings
{
  pairingsCopy = pairings;
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  if (hasPairings != pairingsCopy)
  {
    self->_hasPairings = pairingsCopy;
  }

  if (self->_pendingRemovePairing)
  {
    self->_pendingRemovePairing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (hasPairings == pairingsCopy)
    {
      return;
    }
  }

  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__HAPAccessoryServer_setHasPairings___block_invoke;
      block[3] = &unk_2786D5268;
      v10 = delegate;
      selfCopy = self;
      v12 = pairingsCopy;
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (BOOL)hasPairings
{
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  os_unfair_lock_unlock(&self->_lock);
  return hasPairings;
}

- (void)setPendingRemovePairing:(unint64_t)pairing
{
  os_unfair_lock_lock_with_options();
  self->_pendingRemovePairing = pairing;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)pendingRemovePairing
{
  os_unfair_lock_lock_with_options();
  pendingRemovePairing = self->_pendingRemovePairing;
  os_unfair_lock_unlock(&self->_lock);
  return pendingRemovePairing;
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

- (void)setSessionRestoreActive:(BOOL)active
{
  os_unfair_lock_lock_with_options();
  self->_sessionRestoreActive = active;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSessionRestoreActive
{
  os_unfair_lock_lock_with_options();
  sessionRestoreActive = self->_sessionRestoreActive;
  os_unfair_lock_unlock(&self->_lock);
  return sessionRestoreActive;
}

- (void)setReachabilityPingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_reachabilityPingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)reachabilityPingEnabled
{
  os_unfair_lock_lock_with_options();
  reachabilityPingEnabled = self->_reachabilityPingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return reachabilityPingEnabled;
}

- (NSArray)accessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_accessories copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  os_unfair_lock_lock_with_options();
  accessories = self->_accessories;
  self->_accessories = accessoriesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldDisconnectOnIdle
{
  os_unfair_lock_lock_with_options();
  shouldDisconnectOnIdle = self->_shouldDisconnectOnIdle;
  os_unfair_lock_unlock(&self->_lock);
  return shouldDisconnectOnIdle;
}

- (void)setShouldDisconnectOnIdle:(BOOL)idle
{
  idleCopy = idle;
  os_unfair_lock_lock_with_options();
  if (self->_shouldDisconnectOnIdle == idleCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldDisconnectOnIdle = idleCopy;
    os_unfair_lock_unlock(&self->_lock);

    [(HAPAccessoryServer *)self disconnectOnIdleUpdated];
  }
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (OS_dispatch_queue)delegateQueue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_delegateQueue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HAPAccessoryServerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  obj = delegate;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (obj && queueCopy)
  {
    objc_storeWeak(&self->_delegate, obj);
    v7 = queueCopy;
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = v7;
  }

  else
  {
    objc_storeWeak(&self->_delegate, 0);
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPAccessoryServer)initWithKeystore:(id)keystore
{
  keystoreCopy = keystore;
  v24.receiver = self;
  v24.super_class = HAPAccessoryServer;
  v5 = [(HAPAccessoryServer *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v7 = HAPDispatchQueueName(v5, @"clientQueue");
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_get_global_queue(21, 0);
    v10 = dispatch_queue_create_with_target_V2(v7, v8, v9);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v10;

    v12 = HAPDispatchQueueName(v6, @"delegateQueue");
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create_with_target_V2(v12, v13, v9);
    internalDelegateQueue = v6->_internalDelegateQueue;
    v6->_internalDelegateQueue = v14;

    objc_storeWeak(&v6->_keyStore, keystoreCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    internalDelegates = v6->_internalDelegates;
    v6->_internalDelegates = weakObjectsHashTable;

    *&v6->_reachable = 1;
    v6->_authMethod = 5;
    v6->_reachabilityPingEnabled = 0;
    v6->_sessionRestoreActive = 0;
    v18 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    notificationClients = v6->_notificationClients;
    v6->_notificationClients = v18;

    v6->_shouldDisconnectOnIdle = 0;
    v6->_successfulPingCount = 0;
    v6->_failedPingCount = 0;
    v6->_hasAdvertisement = 1;
    reachabilityChangedReason = v6->_reachabilityChangedReason;
    v6->_reachabilityChangedReason = @"Unknown";

    v6->_supportsUnreachablePing = 0;
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localPairingMetricDictionary = v6->_localPairingMetricDictionary;
    v6->_localPairingMetricDictionary = v21;
  }

  return v6;
}

- (HAPAccessoryServer)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end
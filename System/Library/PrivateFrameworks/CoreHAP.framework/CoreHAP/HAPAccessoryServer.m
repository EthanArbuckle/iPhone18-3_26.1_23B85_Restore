@interface HAPAccessoryServer
- (BOOL)hasAdvertisement;
- (BOOL)hasPairings;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)isSecuritySessionOpen;
- (BOOL)isSessionRestoreActive;
- (BOOL)matchesSetupID:(id)a3;
- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4;
- (BOOL)notifyClients:(unint64_t)a3 withDictionary:(id)a4;
- (BOOL)reachabilityPingEnabled;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (BOOL)requiresTimedWrite:(id)a3;
- (BOOL)securitySessionWillCloseWithResponseData:(id)a3 error:(id *)a4;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3;
- (BOOL)stopPairingWithError:(id *)a3;
- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5;
- (BOOL)useHH2;
- (HAPAccessoryServer)init;
- (HAPAccessoryServer)initWithKeystore:(id)a3;
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
- (id)getControllerPairingIdentityWithError:(id *)a3;
- (id)getControllerUserName;
- (id)shortDescription;
- (unint64_t)authMethod;
- (unint64_t)compatibilityFeatures;
- (unint64_t)configNumber;
- (unint64_t)pairSetupType;
- (unint64_t)pendingRemovePairing;
- (unint64_t)stateNumber;
- (unint64_t)wakeNumber;
- (void)addInternalDelegate:(id)a3;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)associateAccessoryWithControllerKey:(id)a3 usingAccessoryPublicKey:(id)a4;
- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3;
- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3;
- (void)authenticateAccessory;
- (void)clearPairingMetrics;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3;
- (void)disconnect;
- (void)disconnectWithError:(id)a3;
- (void)discoverAccessories;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)enumerateInternalDelegatesUsingBlock:(id)a3;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)incrementFailedPing;
- (void)incrementSuccessfulPing;
- (void)initializeKeyBagIfNecessary;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)refreshKeyBag;
- (void)registerForNotifications:(id)a3;
- (void)removeInternalDelegate:(id)a3;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)removePairingIdentifier:(id)a3 pairingPublicKey:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)setAccessories:(id)a3;
- (void)setAuthMethod:(unint64_t)a3;
- (void)setCategory:(id)a3;
- (void)setCompatibilityFeatures:(unint64_t)a3;
- (void)setConfigNumber:(unint64_t)a3;
- (void)setConnectionStartTime:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setHasAdvertisement:(BOOL)a3;
- (void)setHasPairings:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setPairSetupType:(unint64_t)a3;
- (void)setPairingMetricWithKey:(id)a3 value:(id)a4;
- (void)setPendingRemovePairing:(unint64_t)a3;
- (void)setProductData:(id)a3;
- (void)setReachabilityChangedReason:(id)a3;
- (void)setReachabilityPingEnabled:(BOOL)a3;
- (void)setSecuritySessionOpen:(BOOL)a3;
- (void)setSessionRestoreActive:(BOOL)a3;
- (void)setSetupHash:(id)a3;
- (void)setShouldDisconnectOnIdle:(BOOL)a3;
- (void)setStateNumber:(unint64_t)a3;
- (void)setSuspendedAccessory:(id)a3;
- (void)setVersion:(id)a3;
- (void)setWakeNumber:(unint64_t)a3;
- (void)startPairingWithConsentRequired:(BOOL)a3 config:(id)a4 ownershipToken:(id)a5;
- (void)startPing;
- (void)stopPing;
- (void)submitPairVerifyMetricWithError:(id)a3;
- (void)tearDownSessionOnAuthCompletion;
- (void)unregisterForNotifications:(id)a3;
- (void)updateAccessoryInfoDictionary:(id)a3;
- (void)validatePairingAuthMethod:(id)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
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

- (BOOL)securitySessionWillCloseWithResponseData:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if ([v6 length])
    {
      v8 = *a4;
      v9 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960542];
      LOBYTE(v8) = [v8 isEqual:v9];

      if ((v8 & 1) == 0)
      {
        v13 = [HAPTLVParser parserWithData:v7];
        v14 = [v13 parseResponseForNumber:6];
        v15 = [v13 parseResponseForNumber:7];
        v16 = *a4;
        v17 = [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960596];
        if ([v16 isEqual:v17])
        {
          v18 = [v14 unsignedCharValue];

          if (v18 == 3)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        v19 = *a4;
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
          v22 = self;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier();
            v25 = *a4;
            v26 = 138543618;
            v27 = v24;
            v28 = 2112;
            v29 = v25;
            _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Overwriting the security session error code: %@", &v26, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          [MEMORY[0x277CCA9B8] errorWithOSStatus:4294960542];
          *a4 = v10 = 0;
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

- (void)disassociateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v5 = [(HAPAccessoryServer *)self keyBag];
    v6 = [v5 currentIdentity];
    v7 = [v6 identifier];
    v8 = [(HAPAccessoryServer *)self isAccessoryAssociatedWithControllerKey:v7];

    if (v8)
    {
      v9 = [(HAPAccessoryServer *)self keyStore];
      v17 = 0;
      v10 = [v9 readPublicKeyForAccessoryName:v4 registeredWithHomeKit:0 error:&v17];
      v11 = v17;

      if (!v10 || v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
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

- (void)associateAccessoryWithControllerKeyUsingAccessoryIdentifier:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HAPAccessoryServer *)v6 keyBag];
      v10 = [v9 currentIdentity];
      v11 = [v10 identifier];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@PV Succeeded using [%{public}@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [(HAPAccessoryServer *)v6 keyBag];
    v13 = [v12 currentIdentity];
    v14 = [v13 identifier];
    v15 = [(HAPAccessoryServer *)v6 isAccessoryAssociatedWithControllerKey:v14];

    if (!v15)
    {
      v16 = [(HAPAccessoryServer *)v6 keyStore];
      v24 = 0;
      v17 = [v16 readPublicKeyForAccessoryName:v4 registeredWithHomeKit:0 error:&v24];
      v18 = v24;

      if (!v17 || v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v6;
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
        [(HAPAccessoryServer *)v6 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v17];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)associateAccessoryWithControllerKeyUsingAccessoryPublicKey:(id)a3
{
  v9 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v4 = [(HAPAccessoryServer *)self pairingRequest];
    v5 = [v4 pairingIdentity];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [(HAPAccessoryServer *)self keyBag];
      v6 = [v7 currentIdentity];

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = [v6 identifier];
    [(HAPAccessoryServer *)self associateAccessoryWithControllerKey:v8 usingAccessoryPublicKey:v9];
  }

LABEL_6:
}

- (void)associateAccessoryWithControllerKey:(id)a3 usingAccessoryPublicKey:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    [(HAPAccessoryServer *)self initializeKeyBagIfNecessary];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Establishing relationship with controller key: [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [HAPPairingIdentity alloc];
    v13 = [(HAPAccessoryServer *)v9 identifier];
    v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
    v15 = [(HAPPairingIdentity *)v12 initWithIdentifier:v13 controllerKeyIdentifier:v6 publicKey:v14 privateKey:0 permissions:0];

    v16 = [(HAPAccessoryServer *)v9 keyStore];
    v25 = 0;
    v17 = [v16 establishRelationshipBetweenAccessoryAndControllerKey:v15 error:&v25];
    v18 = v25;

    if (!v17 || v18)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v9;
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
      v19 = [(HAPAccessoryServer *)v9 pairingRequest];

      if (v19)
      {
        [(HAPAccessoryServer *)v9 refreshKeyBag];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self keyStore];
  v6 = [(HAPAccessoryServer *)self identifier];
  v11 = 0;
  v7 = [v5 isAccessoryAssociatedWithControllerKey:v6 controllerID:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [v4 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)a3
{
  v4 = a3;
  if ([(HAPAccessoryServer *)self useHH2])
  {
    v5 = [(HAPAccessoryServer *)self keyBag];
    v6 = [v5 shouldRetryPVDueToAuthenticationError:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)refreshKeyBag
{
  v2 = [(HAPAccessoryServer *)self keyBag];
  [v2 refreshKeys];
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

- (id)getControllerPairingIdentityWithError:(id *)a3
{
  if (!-[HAPAccessoryServer useHH2](self, "useHH2") || (-[HAPAccessoryServer keyBag](self, "keyBag"), v5 = objc_claimAutoreleasedReturnValue(), [v5 currentIdentity], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(HAPAccessoryServer *)self keyStore];
    v8 = [(HAPAccessoryServer *)self identifier];
    v6 = [v7 readControllerPairingKeyForAccessory:v8 error:a3];
  }

  return v6;
}

- (id)getControllerUserName
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = [(HAPAccessoryServer *)self getControllerPairingIdentityWithError:&v12];
  v4 = v12;
  v5 = 0;
  if (!v4)
  {
    v5 = [v3 identifier];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Using default controller username : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return v5;
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

- (void)disconnectWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)submitPairVerifyMetricWithError:(id)a3
{
  v12 = a3;
  if ([(HAPAccessoryServer *)self metric_pairVerifyDurationInMS])
  {
    v4 = [(HAPAccessoryServer *)self metric_pairVerifyReason];

    if (v4)
    {
      v5 = [HAPMetricsPairVerifyEvent alloc];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPAccessoryServer linkType](self, "linkType")}];
      v7 = [(HAPAccessoryServer *)self metric_pairVerifyDurationInMS];
      v8 = [(HAPAccessoryServer *)self metric_pairVerifyReason];
      v9 = [(HAPAccessoryServer *)self metric_pairVerifyConnectionEstablishedBy];
      v10 = [(HAPMetricsPairVerifyEvent *)v5 initWithAccessory:self forLinkType:v6 durationInMS:v7 reason:v8 connectionEstablishedUsing:v9 pvError:v12];

      v11 = +[HAPMetricsDispatcher sharedInstance];
      [v11 submitLogEvent:v10];
    }
  }

  [(HAPAccessoryServer *)self setMetric_pairVerifyDurationInMS:0];
  [(HAPAccessoryServer *)self setMetric_pairVerifyReason:0];
}

- (void)updateAccessoryInfoDictionary:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  if ([(NSArray *)self->_accessories count])
  {
    v4 = [(NSArray *)self->_accessories objectAtIndexedSubscript:0];
    v5 = [v4 manufacturer];
    v6 = [v4 productData];
    v7 = self->_category;
    v8 = [v4 firmwareVersion];

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      [v10 setObject:v5 forKey:@"manufacturer"];
    }

    v9 = v10;
    if (v6)
    {
      [v10 setObject:v6 forKey:@"product"];
      v9 = v10;
    }

    if (v8)
    {
      [v10 setObject:v8 forKey:@"firmwareVersion"];
      v9 = v10;
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
    v8 = 0;
    v6 = 0;
    v5 = 0;
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

- (void)setSuspendedAccessory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  suspendedAccessory = self->_suspendedAccessory;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_suspendedAccessory, a3);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the server's suspended accessory to: '%@'", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)notifyClients:(unint64_t)a3 withDictionary:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v33 = a4;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    v6 = [(NSHashTable *)notificationClients copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v35 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v6 count];
        v11 = [HAPNotification typeToString:a3];
        *buf = 138543874;
        v42 = v9;
        v43 = 2048;
        v44 = v10;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying %ld clients for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if (v33)
      {
        v12 = [v33 hmf_numberForKey:@"HAPAccessoryInstanceID"];
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
              v21 = [v20 hapInstanceId];
            }

            else
            {
              v21 = 0;
            }

            v22 = objc_autoreleasePoolPush();
            v23 = v35;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *buf = v29;
              v42 = v25;
              v43 = 2112;
              v44 = v12;
              v45 = 2112;
              v46 = v21;
              _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Attempt to notify client dictionary instanceID %@ clientInstanceId %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v22);
            if (v21 == 0 || v12 == 0 || (v26 = [v21 intValue], v26 == objc_msgSend(v12, "intValue")))
            {
              [v20 indicateNotificationFromServer:v23 notifyType:a3 withDictionary:{v33, v29}];
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
  v14 = self;
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

- (void)unregisterForNotifications:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing client from accessory server notification %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotifications:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationClients = self->_notificationClients;
  if (notificationClients)
  {
    [(NSHashTable *)notificationClients addObject:v4];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
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
  v4 = self;
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
  v4 = self;
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

- (void)enumerateInternalDelegatesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HAPAccessoryServer_enumerateInternalDelegatesUsingBlock___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)removeInternalDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HAPAccessoryServer_removeInternalDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__HAPAccessoryServer_removeInternalDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addInternalDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self internalDelegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HAPAccessoryServer_addInternalDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__HAPAccessoryServer_addInternalDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)requiresTimedWrite:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPAccessoryServer *)self supportsTimedWrite])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v24 = v4;
      v7 = 0;
      v8 = 0;
      v9 = *v27;
LABEL_4:
      v10 = 0;
      v11 = v7;
      v12 = v8;
      while (1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v10);
        v8 = [v13 characteristic];

        v14 = [v8 service];
        v15 = [v14 accessory];
        v7 = [v15 instanceID];

        if (!v8 || v7 == 0)
        {
          break;
        }

        if (([v13 timedWrite] & 1) != 0 || (objc_msgSend(v8, "properties") & 0x20) != 0)
        {
          v17 = 1;
LABEL_18:
          v4 = v24;
          goto LABEL_23;
        }

        ++v10;
        v11 = v7;
        v12 = v8;
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
      v19 = self;
      v20 = HMFGetOSLogHandle();
      v4 = v24;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v21;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v7;
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

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"You must override %@ in a subclass", v15];
  v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = NSStringFromSelector(a2);
  v19 = [v17 stringWithFormat:@"You must override %@ in a subclass", v18];
  v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
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

- (void)removePairingIdentifier:(id)a3 pairingPublicKey:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(HAPAccessoryServer *)self keyBag];
  v15 = [v14 currentIdentity];
  v16 = [v15 identifier];
  v17 = [v16 isEqualToString:v13];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __97__HAPAccessoryServer_removePairingIdentifier_pairingPublicKey_completionQueue_completionHandler___block_invoke;
  v27 = &unk_2786D5290;
  v29 = self;
  v30 = v11;
  v31 = v17;
  v28 = v10;
  v18 = v11;
  v19 = v10;
  v20 = MEMORY[0x231885210](&v24);
  v21 = objc_alloc(MEMORY[0x277D0F8B0]);
  v22 = [v21 initWithPairingKeyData:{v12, v24, v25, v26, v27}];

  v23 = [[HAPPairingIdentity alloc] initWithIdentifier:v13 publicKey:v22 privateKey:0 permissions:0];
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

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)stopPairingWithError:(id *)a3
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

- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(a2);
  v13 = [v11 stringWithFormat:@"You must override %@ in a subclass", v12];
  v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)startPairingWithConsentRequired:(BOOL)a3 config:(id)a4 ownershipToken:(id)a5
{
  v7 = a4;
  v8 = a5;
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

- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(HAPAccessoryServer *)self matchesSetupID:v6])
  {
    goto LABEL_7;
  }

  if (v8)
  {
LABEL_6:
    v10 = [(HAPAccessoryServer *)self identifier];
    v9 = HMFEqualObjects();

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)matchesSetupID:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self setupHash];
  v6 = [(HAPAccessoryServer *)self identifier];
  v7 = HAPValidateSetupHash(v5, v6, v4);

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

- (void)validatePairingAuthMethod:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v6 = [v3 hapErrorWithCode:3 description:@"Base class HAPAccessoryServer does not implement validatePairingAuthMethod" reason:0 suggestion:0 underlyingError:0 marker:209];
  v5 = MEMORY[0x231885210](v4);

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

- (void)provisionToken:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)continueAuthAfterValidation:(BOOL)a3
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
    v4 = [(HAPAccessoryServer *)self identifier];
    v5 = [(HAPAccessoryServer *)self name];
    v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];
  }

  else
  {
    v6 = [(HAPAccessoryServer *)self identifier];
  }

  return v6;
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

- (void)setPairingMetricWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_localPairingMetricDictionary setObject:v6 forKeyedSubscript:v7];
  os_unfair_lock_unlock(&self->_metriclock);
}

- (NSDate)connectionStartTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connectionStartTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConnectionStartTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  connectionStartTime = self->_connectionStartTime;
  self->_connectionStartTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReachabilityChangedReason:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  reachabilityChangedReason = self->_reachabilityChangedReason;
  self->_reachabilityChangedReason = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)reachabilityChangedReason
{
  os_unfair_lock_lock_with_options();
  v3 = self->_reachabilityChangedReason;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHasAdvertisement:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasAdvertisement = a3;

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

- (void)setPairSetupType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_pairSetupType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFVersion)version
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMFVersion *)self->_version copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  version = self->_version;
  self->_version = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)compatibilityFeatures
{
  os_unfair_lock_lock_with_options();
  compatibilityFeatures = self->_compatibilityFeatures;
  os_unfair_lock_unlock(&self->_lock);
  return compatibilityFeatures;
}

- (void)setCompatibilityFeatures:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_compatibilityFeatures = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)stateNumber
{
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);
  return stateNumber;
}

- (void)setStateNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_stateNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)wakeNumber
{
  os_unfair_lock_lock_with_options();
  wakeNumber = self->_wakeNumber;
  os_unfair_lock_unlock(&self->_lock);
  return wakeNumber;
}

- (void)setWakeNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_wakeNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)configNumber
{
  os_unfair_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_lock_unlock(&self->_lock);
  return configNumber;
}

- (void)setConfigNumber:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_configNumber = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)productData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProductData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  productData = self->_productData;
  self->_productData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCategory:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = [(NSNumber *)self->_category isEqual:v5];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_category, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ((([(HAPAccessoryServer *)self communicationProtocol]!= 2) & v6) == 0)
  {
    v7 = [(HAPAccessoryServer *)self delegate];
    if (v7)
    {
      v8 = [(HAPAccessoryServer *)self delegateQueue];

      if (v8)
      {
        v9 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__HAPAccessoryServer_setCategory___block_invoke;
        block[3] = &unk_2786D7078;
        v11 = v7;
        v12 = self;
        v13 = v5;
        dispatch_async(v9, block);
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

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  os_unfair_lock_lock_with_options();
  if ([(NSString *)self->_name isEqualToString:v4])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_name, v5);
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(HAPAccessoryServer *)self delegate];
    if (v6)
    {
      v7 = [(HAPAccessoryServer *)self delegateQueue];

      if (v7)
      {
        v8 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__HAPAccessoryServer_setName___block_invoke;
        block[3] = &unk_2786D7078;
        v10 = v6;
        v11 = self;
        v12 = v5;
        dispatch_async(v8, block);
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

- (void)setAuthMethod:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_authMethod = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)authMethod
{
  os_unfair_lock_lock_with_options();
  authMethod = self->_authMethod;
  os_unfair_lock_unlock(&self->_lock);
  return authMethod;
}

- (void)setSetupHash:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [(HAPDeviceID *)v3 initWithDeviceIDString:v4];

  return v5;
}

- (void)setHasPairings:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  hasPairings = self->_hasPairings;
  if (hasPairings != v3)
  {
    self->_hasPairings = v3;
  }

  if (self->_pendingRemovePairing)
  {
    self->_pendingRemovePairing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (hasPairings == v3)
    {
      return;
    }
  }

  v6 = [(HAPAccessoryServer *)self delegate];
  if (v6)
  {
    v7 = [(HAPAccessoryServer *)self delegateQueue];

    if (v7)
    {
      v8 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__HAPAccessoryServer_setHasPairings___block_invoke;
      block[3] = &unk_2786D5268;
      v10 = v6;
      v11 = self;
      v12 = v3;
      dispatch_async(v8, block);
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

- (void)setPendingRemovePairing:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_pendingRemovePairing = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)pendingRemovePairing
{
  os_unfair_lock_lock_with_options();
  pendingRemovePairing = self->_pendingRemovePairing;
  os_unfair_lock_unlock(&self->_lock);
  return pendingRemovePairing;
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

- (void)setSessionRestoreActive:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_sessionRestoreActive = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSessionRestoreActive
{
  os_unfair_lock_lock_with_options();
  sessionRestoreActive = self->_sessionRestoreActive;
  os_unfair_lock_unlock(&self->_lock);
  return sessionRestoreActive;
}

- (void)setReachabilityPingEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_reachabilityPingEnabled = a3;

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

- (void)setAccessories:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accessories = self->_accessories;
  self->_accessories = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldDisconnectOnIdle
{
  os_unfair_lock_lock_with_options();
  shouldDisconnectOnIdle = self->_shouldDisconnectOnIdle;
  os_unfair_lock_unlock(&self->_lock);
  return shouldDisconnectOnIdle;
}

- (void)setShouldDisconnectOnIdle:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_shouldDisconnectOnIdle == v3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldDisconnectOnIdle = v3;
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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  obj = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if (obj && v6)
  {
    objc_storeWeak(&self->_delegate, obj);
    v7 = v6;
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

- (HAPAccessoryServer)initWithKeystore:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v6->_keyStore, v4);
    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    internalDelegates = v6->_internalDelegates;
    v6->_internalDelegates = v16;

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
@interface HAPAccessoryServerBTLE
+ (id)hapUUIDFromBTLEUUID:(id)a3;
- (BOOL)isCached;
- (BOOL)isPaired;
- (BOOL)updatePeripheralIdentifier:(id *)a3 isPairing:(BOOL)a4;
- (BOOL)updateResumeSessionID:(unint64_t)a3;
- (CBPeripheral)peripheral;
- (HAPAccessoryServerBTLE)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16;
- (HAPAccessoryServerBrowserBTLE)browser;
- (HAPBLEPeripheral)blePeripheral;
- (NSNumber)stateNumber;
- (NSString)shortDescription;
- (id)readAndResetHAPMetrics:(BOOL)a3;
- (unsigned)connectReason;
- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5;
- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4;
- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4;
- (void)incrementHAPBTLEMetricsConnectionCount;
- (void)incrementHAPBTLEMetricsDiscoveryCount;
- (void)setConnectReason:(unsigned __int8)a3;
- (void)setStateNumber:(id)a3;
- (void)updateConnectionIdleTime:(unsigned __int8)a3;
@end

@implementation HAPAccessoryServerBTLE

- (HAPBLEPeripheral)blePeripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_blePeripheral);

  return WeakRetained;
}

- (HAPAccessoryServerBrowserBTLE)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (CBPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HAPAccessoryServerBTLE;
  v4 = [(HAPAccessoryServer *)&v8 shortDescription];
  v5 = [(HAPAccessoryServerBTLE *)self stateNumber];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (BOOL)isCached
{
  v2 = [(HAPAccessoryServerBTLE *)self blePeripheral];
  v3 = [v2 isCached];

  return v3;
}

- (BOOL)isPaired
{
  v3 = [(HAPAccessoryServerBTLE *)self browser];
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [v3 isPaired:v4];

  return v5;
}

- (void)generateBroadcastKey:(unsigned __int8)a3 queue:(id)a4 withCompletionHandler:(id)a5
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

- (void)configureCharacteristics:(id)a3 queue:(id)a4 withCompletionHandler:(id)a5
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

- (void)updateConnectionIdleTime:(unsigned __int8)a3
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

- (BOOL)updatePeripheralIdentifier:(id *)a3 isPairing:(BOOL)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = [(HAPAccessoryServerBTLE *)self browser];
  v8 = [(HAPAccessoryServer *)self identifier];
  v9 = [v7 isPaired:v8];

  if ((v9 & 1) != 0 || a4)
  {
    v36 = 0;
    v37 = 0;
    v11 = [(HAPAccessoryServer *)self keyStore];
    v12 = [(HAPAccessoryServer *)self identifier];
    v35 = 0;
    v13 = [v11 readPeripheralIdentifierForAccessoryIdentifier:v12 protocolVersion:0 resumeSessionID:&v36 error:&v35];
    v14 = v35;

    if (v36)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v18;
        v40 = 2048;
        v41 = v36;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Initializing BLE Server with resumeSessionID: %llu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v16->_resumeSessionID = v36;
    }

    v19 = [(HAPAccessoryServer *)self keyStore];
    v20 = [(HAPAccessoryServerBTLE *)self blePeripheral];
    v21 = [v20 uniqueBTIdentifier];
    v22 = [(HAPAccessoryServer *)self identifier];
    v34 = 0;
    v10 = [v19 updatePeripheralIdentifier:v21 forAccessoryIdentifier:v22 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](self previousVersion:"hapBLEProtocolVersion") resumeSessionID:&v37 error:{-[HAPAccessoryServerBTLE resumeSessionID](self, "resumeSessionID"), &v34}];
    v23 = v34;

    if (v10)
    {
      if (v37 == 1 && [(HAPAccessoryServerBTLE *)self hapBLEProtocolVersion]!= 1)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v27;
          _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Incompatible update BLE 1.0 -> BLE 2.x", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HAPAccessoryServer *)v25 setIncompatibleUpdate:1];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (a3)
      {
        *a3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Failed to update peripheral" reason:@"Failed to store peripheral identifier to the keystore" suggestion:0 underlyingError:v23];
      }
    }
  }

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Failed to update peripheral." reason:@"The accessory is unpaired" suggestion:0 underlyingError:0 marker:214];
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)updateResumeSessionID:(unint64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(HAPAccessoryServerBTLE *)self browser];
  v6 = [(HAPAccessoryServer *)self identifier];
  v7 = [v5 isPaired:v6];

  if (v7)
  {
    self->_resumeSessionID = a3;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating resumeSessionID: %llu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServer *)v9 keyStore];
    v13 = [(HAPAccessoryServerBTLE *)v9 blePeripheral];
    v14 = [v13 uniqueBTIdentifier];
    v15 = [(HAPAccessoryServer *)v9 identifier];
    v24 = 0;
    v16 = [v12 updatePeripheralIdentifier:v14 forAccessoryIdentifier:v15 protocolVersion:-[HAPAccessoryServerBTLE hapBLEProtocolVersion](v9 previousVersion:"hapBLEProtocolVersion") resumeSessionID:0 error:{a3, &v24}];
    v17 = v24;

    if ((v16 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v9;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v21;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the peripheral identifier with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)handleDisconnectionWithError:(id)a3 completionHandler:(id)a4
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

- (void)handleConnectionWithPeripheral:(id)a3 withError:(id)a4
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

- (void)setConnectReason:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  self->_connectReason = v3;
  if (v3)
  {
    ++self->_metricHAPBTLEConnectionPerReasonCount;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (unsigned)connectReason
{
  os_unfair_lock_lock_with_options();
  connectReason = self->_connectReason;
  os_unfair_lock_unlock(&self->super._lock);
  return connectReason;
}

- (void)setStateNumber:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    objc_storeStrong(&self->_stateNumber, a3);
    os_unfair_lock_unlock(&self->super._lock);
    v7 = [(HAPAccessoryServer *)self delegate];
    v8 = [(HAPAccessoryServer *)self delegateQueue];
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(HAPAccessoryServer *)self delegateQueue];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __41__HAPAccessoryServerBTLE_setStateNumber___block_invoke;
        v12[3] = &unk_2786D7050;
        v13 = v7;
        v14 = self;
        dispatch_async(v11, v12);
      }
    }
  }
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HAPAccessoryServerBTLE)initWithPeripheral:(id)a3 name:(id)a4 pairingUsername:(id)a5 statusFlags:(id)a6 stateNumber:(id)a7 stateChanged:(BOOL)a8 connectReason:(unsigned __int8)a9 configNumber:(id)a10 category:(id)a11 setupHash:(id)a12 connectionIdleTime:(unsigned __int8)a13 browser:(id)a14 keyStore:(id)a15 whbStableIdentifier:(id)a16
{
  v20 = a3;
  v39 = a4;
  v40 = a5;
  v21 = a6;
  obj = a7;
  v38 = a7;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a14;
  v26 = a16;
  v41.receiver = self;
  v41.super_class = HAPAccessoryServerBTLE;
  v27 = [(HAPAccessoryServer *)&v41 initWithKeystore:a15];
  v28 = v27;
  if (v27)
  {
    objc_storeWeak(&v27->_blePeripheral, v20);
    v29 = [v20 cbPeripheral];
    objc_storeWeak(&v28->_peripheral, v29);

    v30 = [v39 copy];
    name = v28->super._name;
    v28->super._name = v30;

    v32 = [v40 copy];
    identifier = v28->super._identifier;
    v28->super._identifier = v32;

    objc_storeStrong(&v28->_stateNumber, obj);
    v28->_notifyingCharacteristicUpdated = 0;
    v28->_stateChanged = a8;
    v28->_connectReason = a9;
    v28->_connectionIdleTime = a13;
    objc_storeWeak(&v28->_browser, v25);
    objc_storeStrong(&v28->_whbStableIdentifier, a16);
    [(HAPAccessoryServer *)v28 setSetupHash:v24];
    -[HAPAccessoryServer setHasPairings:](v28, "setHasPairings:", ([v21 unsignedCharValue] & 1) == 0);
    [(HAPAccessoryServer *)v28 setCategory:v23];
    -[HAPAccessoryServer setConfigNumber:](v28, "setConfigNumber:", [v22 unsignedIntegerValue]);
    [(HAPAccessoryServerBTLE *)v28 updatePeripheralIdentifier:0 isPairing:0];
  }

  return v28;
}

+ (id)hapUUIDFromBTLEUUID:(id)a3
{
  v3 = a3;
  v4 = +[HAPMetadata getSharedInstance];
  v5 = [v3 UUIDString];
  v6 = [v4 btleToServiceType:v5];

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithUUIDString:v6];
  }

  else
  {
    v10 = [v3 UUIDString];
    v9 = [v8 initWithUUIDString:v10];
  }

  return v9;
}

- (id)readAndResetHAPMetrics:(BOOL)a3
{
  v3 = a3;
  v12[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v11[0] = &unk_283EA9AA0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEDiscoveryCount];
  v12[0] = v5;
  v11[1] = &unk_283EA9AB8;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEConnectionCount];
  v12[1] = v6;
  v11[2] = &unk_283EA9AD0;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricHAPBTLEConnectionPerReasonCount];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (v3)
  {
    self->_metricHAPBTLEDiscoveryCount = 0;
    self->_metricHAPBTLEConnectionCount = 0;
    self->_metricHAPBTLEConnectionPerReasonCount = 0;
  }

  os_unfair_lock_unlock(&self->super._lock);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)incrementHAPBTLEMetricsDiscoveryCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPBTLEDiscoveryCount;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)incrementHAPBTLEMetricsConnectionCount
{
  os_unfair_lock_lock_with_options();
  ++self->_metricHAPBTLEConnectionCount;

  os_unfair_lock_unlock(&self->super._lock);
}

@end
@interface MIBUNANSubscriber
- (MIBUNANSubscriber)initWithServiceName:(id)name groupAddress:(id)address groupPort:(id)port countryCode:(id)code channelName:(unint64_t)channelName band:(unint64_t)band bandwidth:(unint64_t)bandwidth enableRateAdapter:(BOOL)self0 subscriberDelegate:(id)self1 dataCollector:(id)self2;
- (NSString)description;
- (void)_createDataSessionWithDiscoveryResult:(id)result;
- (void)_getRSSIofNAN:(id)n;
- (void)_handleFailureDueToError:(id)error;
- (void)_sendData:(id)data withCompletion:(id)completion;
- (void)_startSubscriber;
- (void)_stopSubscriberForReason:(id)reason;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session receivedControlDataAddress:(id)address serviceSpecificInfo:(id)info onInterfaceIndex:(unsigned int)index;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)sendData:(id)data withCompletion:(id)completion;
- (void)start;
- (void)stop;
- (void)subscriber:(id)subscriber detectedMulticastError:(int64_t)error fromMulticastSender:(id)sender;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation MIBUNANSubscriber

- (MIBUNANSubscriber)initWithServiceName:(id)name groupAddress:(id)address groupPort:(id)port countryCode:(id)code channelName:(unint64_t)channelName band:(unint64_t)band bandwidth:(unint64_t)bandwidth enableRateAdapter:(BOOL)self0 subscriberDelegate:(id)self1 dataCollector:(id)self2
{
  nameCopy = name;
  addressCopy = address;
  codeCopy = code;
  delegateCopy = delegate;
  collectorCopy = collector;
  v35.receiver = self;
  v35.super_class = MIBUNANSubscriber;
  v22 = [(MIBUNANSubscriber *)&v35 init];
  p_isa = &v22->super.isa;
  if (!v22)
  {
    goto LABEL_16;
  }

  v22->_retryLimit = 5;
  v22->_unfairLock._os_unfair_lock_opaque = 0;
  v22->_subscriberState = 0;
  if (!delegateCopy || ([delegateCopy conformsToProtocol:&unk_286AD2DB0] & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    goto LABEL_21;
  }

  objc_storeStrong(p_isa + 3, delegate);
  objc_storeStrong(p_isa + 8, collector);
  v24 = [objc_alloc(MEMORY[0x277D7BAF8]) initWithServiceName:nameCopy];
  v25 = p_isa[4];
  p_isa[4] = v24;

  v26 = p_isa[4];
  if (!v26)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    goto LABEL_21;
  }

  [v26 setAuthenticationType:0];
  v27 = [objc_alloc(MEMORY[0x277D7BB10]) initWithMulticastIPv6AddressString:addressCopy];
  if (!v27)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    goto LABEL_35;
  }

  [p_isa[4] setMulticastAddress:v27];
  if ([codeCopy length])
  {
    [p_isa[4] setCountryCode:codeCopy];
  }

  adapterCopy2 = adapter;
  if (bandwidth <= 5 && channelName && band - 1 <= 2)
  {
    LOBYTE(v34) = 0;
    v29 = [objc_alloc(MEMORY[0x277D7BB08]) initWithChannelNumber:channelName bandwidth:bandwidth is2_4GHz:band == 1 is5GHz:band == 2 is6GHz:band == 3 isDFS:0 extensionChannelAbove:v34];
    [p_isa[4] setChannelInfo:v29];

    adapterCopy2 = adapter;
  }

  if (!adapterCopy2)
  {
    goto LABEL_15;
  }

  v30 = objc_alloc_init(MEMORY[0x277D7BAA8]);
  if (!v30)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANSubscriber initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:];
    }

LABEL_35:

LABEL_21:
    v32 = 0;
    goto LABEL_22;
  }

  v31 = v30;
  [v30 setDynamicLinkRate:1];
  [p_isa[4] setMulticastConfiguration:v31];

LABEL_15:
LABEL_16:
  v32 = p_isa;
LABEL_22:

  return v32;
}

void __154__MIBUNANSubscriber_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_subscriberDelegate_dataCollector___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __154__MIBUNANSubscriber_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_subscriberDelegate_dataCollector___block_invoke_58()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __154__MIBUNANSubscriber_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_subscriberDelegate_dataCollector___block_invoke_62()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __154__MIBUNANSubscriber_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_subscriberDelegate_dataCollector___block_invoke_67()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)start
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __26__MIBUNANSubscriber_start__block_invoke;
  v3[3] = &unk_2798EB9A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __26__MIBUNANSubscriber_start__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)stop
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __25__MIBUNANSubscriber_stop__block_invoke;
  v3[3] = &unk_2798EB9A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __25__MIBUNANSubscriber_stop__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

uint64_t __25__MIBUNANSubscriber_stop__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopSubscriberForReason:@"Stop Requested"];
  v2 = *(*(a1 + 32) + 24);

  return [v2 nanSubscriberDidStop:? withError:? willRetry:?];
}

- (void)sendData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__MIBUNANSubscriber_sendData_withCompletion___block_invoke;
  v10[3] = &unk_2798EB9D0;
  v10[4] = self;
  v11 = dataCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dataCopy;
  os_unfair_lock_lock(&self->_unfairLock);
  __45__MIBUNANSubscriber_sendData_withCompletion___block_invoke(v10);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  subscriberState = self->_subscriberState;
  if (subscriberState > 3)
  {
    v8 = @"UNKNOWN";
  }

  else
  {
    v8 = off_2798EBCD0[subscriberState];
  }

  v9 = [v3 stringWithFormat:@"<%@: State=%@>", v5, v8];

  return v9;
}

- (void)_startSubscriber
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _startSubscriber];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    nanConfiguration = self->_nanConfiguration;
    v5 = v3;
    serviceName = [(WiFiAwareSubscribeConfiguration *)nanConfiguration serviceName];
    v11 = 138543618;
    selfCopy2 = self;
    v13 = 2114;
    v14 = serviceName;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting NAN subscriber with service name: %{public}@", &v11, 0x16u);
  }

  if (!self->_subscriberState)
  {
    self->_subscriberState = 1;
    v8 = [objc_alloc(MEMORY[0x277D7BB00]) initWithConfiguration:self->_nanConfiguration];
    nanSubscriber = self->_nanSubscriber;
    self->_nanSubscriber = v8;

    [(WiFiAwareSubscriber *)self->_nanSubscriber setDelegate:self];
    [(WiFiAwareSubscriber *)self->_nanSubscriber start];
    goto LABEL_10;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _startSubscriber];
    v7 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    v11 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber already started.", &v11, 0xCu);
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

void __37__MIBUNANSubscriber__startSubscriber__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __37__MIBUNANSubscriber__startSubscriber__block_invoke_79()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_stopSubscriberForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _stopSubscriberForReason:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping NAN subscriber for reason: %{public}@", &v12, 0x16u);
  }

  if (self->_subscriberState == 3)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber _stopSubscriberForReason:];
      v6 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber already stopped.", &v12, 0xCu);
    }
  }

  else
  {
    nanSubscriber = self->_nanSubscriber;
    if (nanSubscriber)
    {
      [(WiFiAwareSubscriber *)nanSubscriber setDelegate:0];
      [(WiFiAwareSubscriber *)self->_nanSubscriber stop];
      v8 = self->_nanSubscriber;
      self->_nanSubscriber = 0;
    }

    dataSession = self->_dataSession;
    if (dataSession)
    {
      [(WiFiAwareDataSession *)dataSession setDelegate:0];
      [(WiFiAwareDataSession *)self->_dataSession stop];
      v10 = self->_dataSession;
      self->_dataSession = 0;
    }

    self->_subscriberState = 3;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

void __46__MIBUNANSubscriber__stopSubscriberForReason___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __46__MIBUNANSubscriber__stopSubscriberForReason___block_invoke_85()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_sendData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (self->_subscriberState == 2)
  {
    nanSubscriber = self->_nanSubscriber;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_93;
    v15[3] = &unk_2798EBC38;
    v15[4] = self;
    v16 = completionCopy;
    [(WiFiAwareSubscriber *)nanSubscriber sendDataBlobForMulticastSession:dataCopy toPeerAddress:0 usingMulticastAddress:1 completionHandler:v15];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANSubscriber _sendData:withCompletion:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANSubscriber _sendData:withCompletion:];
    }

    v14 = safeCreateError(3758096391, 0, @"NAN multicast session not ready", v9, v10, v11, v12, v13, v15[0]);
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_93(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MIBUOnceToken != -1)
    {
      __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_93_cold_1();
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_93_cold_2(a1, v2, v4);
    }

    v2 = safeCreateError(3758096391, 0, @"NAN multicast session data send failed: %ld", v5, v6, v7, v8, v9, v2);
  }

  (*(*(a1 + 40) + 16))();
}

void __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_getRSSIofNAN:(id)n
{
  v16 = *MEMORY[0x277D85DE8];
  rssi = [n rssi];
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _getRSSIofNAN:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2048;
    v15 = rssi;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber got NAN RSSI: %ld", buf, 0x16u);
  }

  dataCollector = self->_dataCollector;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{rssi, @"RSSIofNAN"}];
  v11 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(MIBUDataCollectorProtocol *)dataCollector addKeyEvent:@"SubscriberNanSubscriberDiscoveredResult" additionalData:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __35__MIBUNANSubscriber__getRSSIofNAN___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_createDataSessionWithDiscoveryResult:(id)result
{
  v12 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _createDataSessionWithDiscoveryResult:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating NAN data session!", &v10, 0xCu);
  }

  if (self->_subscriberState != 2)
  {
    v7 = [objc_alloc(MEMORY[0x277D7BA78]) initWithDiscoveryResult:resultCopy serviceType:1 serviceSpecificInfo:0];
    dataSession = self->_dataSession;
    self->_dataSession = v7;

    [(WiFiAwareDataSession *)self->_dataSession setDelegate:self];
    [(WiFiAwareDataSession *)self->_dataSession start];
    goto LABEL_10;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _createDataSessionWithDiscoveryResult:];
    v6 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    v10 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN data session already running.", &v10, 0xCu);
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
}

void __59__MIBUNANSubscriber__createDataSessionWithDiscoveryResult___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __59__MIBUNANSubscriber__createDataSessionWithDiscoveryResult___block_invoke_109()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_handleFailureDueToError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  v5 = self->_retryCount + 1;
  self->_retryCount = v5;
  retryLimit = self->_retryLimit;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber _handleFailureDueToError:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    retryCount = self->_retryCount;
    *buf = 138543874;
    selfCopy2 = self;
    v18 = 2114;
    v19 = errorCopy;
    v20 = 2048;
    v21 = retryCount;
    _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling NAN failure due to error: %{public}@ retry count: %lu", buf, 0x20u);
  }

  [(MIBUNANSubscriber *)self _stopSubscriberForReason:@"Error Occurred"];
  [(MIBUNANSubscriberDelegate *)self->_subscriberDelegate nanSubscriberDidStop:self withError:errorCopy willRetry:v5 <= retryLimit];
  if (v5 <= retryLimit)
  {
    self->_subscriberState = 0;
    v9 = exp2(self->_retryCount);
    if (MIBUOnceToken == -1)
    {
      v10 = v9;
      v11 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        v12 = dispatch_time(0, 1000000000 * v10);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__MIBUNANSubscriber__handleFailureDueToError___block_invoke_121;
        block[3] = &unk_2798EB9A8;
        block[4] = self;
        dispatch_after(v12, MEMORY[0x277D85CD0], block);
        goto LABEL_10;
      }
    }

    else
    {
      v14 = v9;
      [MIBUNANSubscriber _handleFailureDueToError:];
      v10 = v14;
      v11 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 138543618;
    selfCopy2 = self;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Restarting NAN subscriber in %lld secs", buf, 0x16u);
    goto LABEL_9;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

void __46__MIBUNANSubscriber__handleFailureDueToError___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __46__MIBUNANSubscriber__handleFailureDueToError___block_invoke_118()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)subscriberStarted:(id)started
{
  v9 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriberStarted:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber started!", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__MIBUNANSubscriber_subscriberStarted___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  subscriberCopy = subscriber;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:failedToStartWithError:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANSubscriber subscriber:failedToStartWithError:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MIBUNANSubscriber_subscriber_failedToStartWithError___block_invoke_126;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = error;
  os_unfair_lock_lock(&self->_unfairLock);
  (__55__MIBUNANSubscriber_subscriber_failedToStartWithError___block_invoke_126)(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __55__MIBUNANSubscriber_subscriber_failedToStartWithError___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __55__MIBUNANSubscriber_subscriber_failedToStartWithError___block_invoke_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = safeCreateError(3758096386, 0, @"NAN subscriber failed to start: %ld", a4, a5, a6, a7, a8, *(a1 + 40));
  [*(a1 + 32) _handleFailureDueToError:v9];
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:terminatedWithReason:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANSubscriber subscriber:terminatedWithReason:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MIBUNANSubscriber_subscriber_terminatedWithReason___block_invoke_132;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = reason;
  os_unfair_lock_lock(&self->_unfairLock);
  (__53__MIBUNANSubscriber_subscriber_terminatedWithReason___block_invoke_132)(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __53__MIBUNANSubscriber_subscriber_terminatedWithReason___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __53__MIBUNANSubscriber_subscriber_terminatedWithReason___block_invoke_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = safeCreateError(3758096387, 0, @"NAN subscriber terminated: %ld", a4, a5, a6, a7, a8, *(a1 + 40));
  [*(a1 + 32) _handleFailureDueToError:v9];
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  v17 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  addressCopy = address;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:lostDiscoveryResultForPublishID:address:];
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    ipv6AddressString = [addressCopy ipv6AddressString];
    v13 = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = ipv6AddressString;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber lost discovered result: %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __72__MIBUNANSubscriber_subscriber_lostDiscoveryResultForPublishID_address___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  publisherAddress = [resultCopy publisherAddress];
  ipv6AddressString = [publisherAddress ipv6AddressString];

  publisherAddress2 = [resultCopy publisherAddress];
  etherAddressString = [publisherAddress2 etherAddressString];

  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:receivedDiscoveryResult:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v17 = 2114;
    v18 = ipv6AddressString;
    v19 = 2114;
    v20 = etherAddressString;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber discovered result: %{public}@ (MAC: %{public}@)", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__MIBUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke_140;
  v13[3] = &unk_2798EBC88;
  v13[4] = self;
  v14 = resultCopy;
  v11 = resultCopy;
  os_unfair_lock_lock(&self->_unfairLock);
  __56__MIBUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke_140(v13);
  os_unfair_lock_unlock(&self->_unfairLock);

  v12 = *MEMORY[0x277D85DE8];
}

void __56__MIBUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t __56__MIBUNANSubscriber_subscriber_receivedDiscoveryResult___block_invoke_140(uint64_t a1)
{
  [*(a1 + 32) _getRSSIofNAN:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _createDataSessionWithDiscoveryResult:v3];
}

- (void)subscriber:(id)subscriber detectedMulticastError:(int64_t)error fromMulticastSender:(id)sender
{
  subscriberCopy = subscriber;
  senderCopy = sender;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:detectedMulticastError:fromMulticastSender:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANSubscriber subscriber:detectedMulticastError:fromMulticastSender:];
  }

  [(MIBUNANSubscriberDelegate *)self->_subscriberDelegate nanSubscriberDetectedMulticastError:self];
}

void __75__MIBUNANSubscriber_subscriber_detectedMulticastError_fromMulticastSender___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)subscriber:(id)subscriber receivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer
{
  v20 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  sessionCopy = session;
  peerCopy = peer;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber subscriber:receivedDataBlobForMulticastSession:fromPeer:];
  }

  v11 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2112;
    v19 = sessionCopy;
    _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN subscriber received multicast data blob: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__MIBUNANSubscriber_subscriber_receivedDataBlobForMulticastSession_fromPeer___block_invoke_145;
  v14[3] = &unk_2798EBC88;
  v14[4] = self;
  v15 = sessionCopy;
  v12 = sessionCopy;
  os_unfair_lock_lock(&self->_unfairLock);
  __77__MIBUNANSubscriber_subscriber_receivedDataBlobForMulticastSession_fromPeer___block_invoke_145(v14);
  os_unfair_lock_unlock(&self->_unfairLock);

  v13 = *MEMORY[0x277D85DE8];
}

void __77__MIBUNANSubscriber_subscriber_receivedDataBlobForMulticastSession_fromPeer___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t __77__MIBUNANSubscriber_subscriber_receivedDataBlobForMulticastSession_fromPeer___block_invoke_145(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16) == 2)
  {
    v2 = *(result + 40);
    return [*(v1 + 24) nanSubscriber:? didReceiveData:?];
  }

  return result;
}

- (void)dataSessionRequestStarted:(id)started
{
  v9 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber dataSessionRequestStarted:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN data session request started.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNANSubscriber_dataSessionRequestStarted___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  sessionCopy = session;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber dataSession:failedToStartWithError:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANSubscriber dataSession:failedToStartWithError:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MIBUNANSubscriber_dataSession_failedToStartWithError___block_invoke_150;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = error;
  os_unfair_lock_lock(&self->_unfairLock);
  (__56__MIBUNANSubscriber_dataSession_failedToStartWithError___block_invoke_150)(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __56__MIBUNANSubscriber_dataSession_failedToStartWithError___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __56__MIBUNANSubscriber_dataSession_failedToStartWithError___block_invoke_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = safeCreateError(3758096388, 0, @"NAN data session failed to start: %ld", a4, a5, a6, a7, a8, *(a1 + 40));
  [*(a1 + 32) _handleFailureDueToError:v9];
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber dataSession:terminatedWithReason:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANSubscriber dataSession:terminatedWithReason:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke_156;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = reason;
  os_unfair_lock_lock(&self->_unfairLock);
  __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke_156(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke_156(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 24) nanSubscriberDidTerminateDataSession:?];
  if ((*(a1 + 40) - 1) <= 1 && *(*(a1 + 32) + 16) == 2)
  {
    if (MIBUOnceToken != -1)
    {
      __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke_156_cold_1();
    }

    v7 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore NAN data session termination.", buf, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = safeCreateError(3758096390, 0, @"NAN data session terminated: %ld", v2, v3, v4, v5, v6, *(a1 + 40));
    [*(a1 + 32) _handleFailureDueToError:?];
    v10 = *MEMORY[0x277D85DE8];
  }
}

void __54__MIBUNANSubscriber_dataSession_terminatedWithReason___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v8 = NSStringFromIfIndex([session localInterfaceIndex]);
  ipv6AddressString = [addressCopy ipv6AddressString];

  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = ipv6AddressString;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN data session confirmed for peer: %{public}@ using interface: %{public}@", buf, 0x20u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__MIBUNANSubscriber_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke_164;
  v14[3] = &unk_2798EBCB0;
  v14[4] = self;
  v15 = ipv6AddressString;
  v16 = v8;
  v11 = v8;
  v12 = ipv6AddressString;
  os_unfair_lock_lock(&self->_unfairLock);
  __81__MIBUNANSubscriber_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke_164(v14);
  os_unfair_lock_unlock(&self->_unfairLock);

  v13 = *MEMORY[0x277D85DE8];
}

void __81__MIBUNANSubscriber_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

uint64_t __81__MIBUNANSubscriber_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke_164(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 56) != 0;
  *(v1 + 16) = 2;
  v3 = a1[5];
  v4 = a1[6];
  return [*(a1[4] + 24) nanSubscriberDidStart:? withPeerIPAddress:? usingInterface:? forRetry:?];
}

- (void)dataSession:(id)session receivedControlDataAddress:(id)address serviceSpecificInfo:(id)info onInterfaceIndex:(unsigned int)index
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANSubscriber dataSession:receivedControlDataAddress:serviceSpecificInfo:onInterfaceIndex:];
  }

  v11 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    ipv6AddressString = [addressCopy ipv6AddressString];
    v15 = 138543362;
    v16 = ipv6AddressString;
    _os_log_impl(&dword_259B04000, v12, OS_LOG_TYPE_DEFAULT, "NAN data session control connection available for peer: %{public}@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __97__MIBUNANSubscriber_dataSession_receivedControlDataAddress_serviceSpecificInfo_onInterfaceIndex___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_2(&dword_259B04000, v0, v1, "%{public}@: Failed to create WiFiAwareMulticastConfiguration", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: Failed to create WiFiMACAddress from IPv6 group address: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:.cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: Failed to create NAN configuration from service name: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:subscriberDelegate:dataCollector:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_2(&dword_259B04000, v0, v1, "%{public}@: Invalid subscriber delegate specified.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendData:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_2(&dword_259B04000, v0, v1, "%{public}@: NAN multicast session is not ready.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__MIBUNANSubscriber__sendData_withCompletion___block_invoke_93_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2048;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6(&dword_259B04000, a2, a3, "%{public}@: Failed to send data to publisher via NAN: %ld", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:failedToStartWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: NAN subscriber failed to start with error: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:terminatedWithReason:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: NAN subscriber terminated with reason: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)subscriber:detectedMulticastError:fromMulticastSender:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: NAN subscriber detected multicast error: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:failedToStartWithError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: NAN data session failed to start with error: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:terminatedWithReason:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: NAN data session terminated with reason: %ld");
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface MIBUNANPublisher
- (MIBUNANPublisher)initWithServiceName:(id)a3 groupAddress:(id)a4 groupPort:(id)a5 countryCode:(id)a6 channelName:(unint64_t)a7 band:(unint64_t)a8 bandwidth:(unint64_t)a9 enableRateAdapter:(BOOL)a10 publisherDelegate:(id)a11;
- (NSString)description;
- (void)_handleFailureDueToError:(id)a3;
- (void)_handleNANDataSessionExpiredForPeer:(id)a3;
- (void)_multicastData:(id)a3 withCompletion:(id)a4;
- (void)_startPublisher;
- (void)_stopPublisherForReason:(id)a3;
- (void)_terminateDataSessionWithPeer:(id)a3 withCompletion:(id)a4;
- (void)_terminateMulticastSessionWithPeer:(id)a3 withCompletion:(id)a4;
- (void)multicastData:(id)a3 withCompletion:(id)a4;
- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6;
- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5;
- (void)publisher:(id)a3 detectedMulticastError:(int64_t)a4 fromMulticastReceiver:(id)a5;
- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)publisher:(id)a3 receivedDataBlobForMulticastSession:(id)a4 fromPeer:(id)a5;
- (void)publisher:(id)a3 receivedMessage:(id)a4 fromSubscriberID:(unsigned __int8)a5 subscriberAddress:(id)a6;
- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)publisherStarted:(id)a3;
- (void)start;
- (void)stop;
- (void)terminateDataSessionWithPeer:(id)a3 withCompletion:(id)a4;
- (void)terminateMulticastSessionWithPeer:(id)a3 withCompletion:(id)a4;
@end

@implementation MIBUNANPublisher

- (MIBUNANPublisher)initWithServiceName:(id)a3 groupAddress:(id)a4 groupPort:(id)a5 countryCode:(id)a6 channelName:(unint64_t)a7 band:(unint64_t)a8 bandwidth:(unint64_t)a9 enableRateAdapter:(BOOL)a10 publisherDelegate:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a11;
  v38.receiver = self;
  v38.super_class = MIBUNANPublisher;
  v20 = [(MIBUNANPublisher *)&v38 init];
  v21 = v20;
  if (!v20)
  {
LABEL_35:
    v31 = v21;
    goto LABEL_36;
  }

  v20->_retryLimit = 5;
  v20->_unfairLock._os_unfair_lock_opaque = 0;
  v20->_publisherState = 0;
  if (!v19 || ([v19 conformsToProtocol:&unk_286AD34F8] & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
      v31 = 0;
      goto LABEL_36;
    }

LABEL_18:
    v31 = 0;
    goto LABEL_36;
  }

  objc_storeStrong(&v21->_publisherDelegate, a11);
  v22 = [objc_alloc(MEMORY[0x277D7BAC8]) initWithServiceName:v16];
  nanConfiguration = v21->_nanConfiguration;
  v21->_nanConfiguration = v22;

  v24 = v21->_nanConfiguration;
  if (!v24)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
      v31 = 0;
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  [(WiFiAwarePublishConfiguration *)v24 setAuthenticationType:0];
  v25 = [objc_alloc(MEMORY[0x277D7BAD0]) initWithServiceType:1 securityConfiguration:0];
  [(WiFiAwarePublishConfiguration *)v21->_nanConfiguration setDatapathConfiguration:v25];
  v26 = [objc_alloc(MEMORY[0x277D7BB10]) initWithMulticastIPv6AddressString:v17];
  if (v26)
  {
    v27 = v26;
    [(WiFiAwarePublishConfiguration *)v21->_nanConfiguration setMulticastAddress:v26];
    if ([v18 length])
    {
      [(WiFiAwarePublishConfiguration *)v21->_nanConfiguration setCountryCode:v18];
    }

    if (a9 <= 5 && a7 && a8 - 1 <= 2)
    {
      LOBYTE(v37) = 0;
      v28 = [objc_alloc(MEMORY[0x277D7BB08]) initWithChannelNumber:a7 bandwidth:a9 is2_4GHz:a8 == 1 is5GHz:a8 == 2 is6GHz:a8 == 3 isDFS:0 extensionChannelAbove:v37];
      [(WiFiAwarePublishConfiguration *)v21->_nanConfiguration setChannelInfo:v28];
    }

    if (a10)
    {
      v29 = objc_alloc_init(MEMORY[0x277D7BAA8]);
      v30 = v29;
      if (v29)
      {
        [v29 setDynamicLinkRate:1];
        [(WiFiAwarePublishConfiguration *)v21->_nanConfiguration setMulticastConfiguration:v30];
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
        }
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataSessionMapping = v21->_dataSessionMapping;
    v21->_dataSessionMapping = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataSessionTimer = v21->_dataSessionTimer;
    v21->_dataSessionTimer = v34;

    goto LABEL_35;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANPublisher initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:];
  }

  v31 = 0;
LABEL_36:

  return v31;
}

void __138__MIBUNANPublisher_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_publisherDelegate___block_invoke()
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

void __138__MIBUNANPublisher_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_publisherDelegate___block_invoke_58()
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

void __138__MIBUNANPublisher_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_publisherDelegate___block_invoke_63()
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

void __138__MIBUNANPublisher_initWithServiceName_groupAddress_groupPort_countryCode_channelName_band_bandwidth_enableRateAdapter_publisherDelegate___block_invoke_68()
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
  v3[2] = __25__MIBUNANPublisher_start__block_invoke;
  v3[3] = &unk_2798EB9A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __25__MIBUNANPublisher_start__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)stop
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24__MIBUNANPublisher_stop__block_invoke;
  v3[3] = &unk_2798EB9A8;
  v3[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __24__MIBUNANPublisher_stop__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

uint64_t __24__MIBUNANPublisher_stop__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPublisherForReason:@"Stop Requested"];
  v2 = *(*(a1 + 32) + 24);

  return [v2 nanPublisherDidStop:? withError:? willRetry:?];
}

- (void)terminateDataSessionWithPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__MIBUNANPublisher_terminateDataSessionWithPeer_withCompletion___block_invoke;
  v10[3] = &unk_2798EB9D0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  os_unfair_lock_lock(&self->_unfairLock);
  __64__MIBUNANPublisher_terminateDataSessionWithPeer_withCompletion___block_invoke(v10);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)terminateMulticastSessionWithPeer:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__MIBUNANPublisher_terminateMulticastSessionWithPeer_withCompletion___block_invoke;
  v10[3] = &unk_2798EB9D0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  os_unfair_lock_lock(&self->_unfairLock);
  __69__MIBUNANPublisher_terminateMulticastSessionWithPeer_withCompletion___block_invoke(v10);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)multicastData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__MIBUNANPublisher_multicastData_withCompletion___block_invoke;
  v10[3] = &unk_2798EB9D0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  os_unfair_lock_lock(&self->_unfairLock);
  __49__MIBUNANPublisher_multicastData_withCompletion___block_invoke(v10);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  publisherState = self->_publisherState;
  if (publisherState > 3)
  {
    v8 = @"UNKNOWN";
  }

  else
  {
    v8 = off_2798EC1A0[publisherState];
  }

  v9 = [v3 stringWithFormat:@"<%@: State=%@>", v5, v8];

  return v9;
}

- (void)_startPublisher
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _startPublisher];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting NAN publisher!", &v8, 0xCu);
  }

  if (!self->_publisherState)
  {
    self->_publisherState = 1;
    v5 = [objc_alloc(MEMORY[0x277D7BAF0]) initWithConfiguration:self->_nanConfiguration];
    nanPublisher = self->_nanPublisher;
    self->_nanPublisher = v5;

    [(WiFiAwarePublisher *)self->_nanPublisher setDelegate:self];
    [(WiFiAwarePublisher *)self->_nanPublisher start];
    goto LABEL_10;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _startPublisher];
    v4 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher already started.", &v8, 0xCu);
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

void __35__MIBUNANPublisher__startPublisher__block_invoke()
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

void __35__MIBUNANPublisher__startPublisher__block_invoke_79()
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

- (void)_stopPublisherForReason:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _stopPublisherForReason:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping NAN publisher for reason: %{public}@", &v10, 0x16u);
  }

  if (self->_publisherState == 3)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANPublisher _stopPublisherForReason:];
      v6 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher already stopped.", &v10, 0xCu);
    }
  }

  else
  {
    nanPublisher = self->_nanPublisher;
    if (nanPublisher)
    {
      [(WiFiAwarePublisher *)nanPublisher setDelegate:0];
      [(WiFiAwarePublisher *)self->_nanPublisher stop];
      v8 = self->_nanPublisher;
      self->_nanPublisher = 0;
    }

    [(NSMutableDictionary *)self->_dataSessionMapping removeAllObjects];
    self->_publisherState = 3;
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
}

void __44__MIBUNANPublisher__stopPublisherForReason___block_invoke()
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

void __44__MIBUNANPublisher__stopPublisherForReason___block_invoke_85()
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

- (void)_terminateDataSessionWithPeer:(id)a3 withCompletion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _terminateDataSessionWithPeer:withCompletion:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Terminating NAN data session with peer: %{public}@", buf, 0x16u);
  }

  v9 = [v6 rangeOfString:@"%"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 substringToIndex:v9];

    v6 = v10;
  }

  v11 = [(NSMutableDictionary *)self->_dataSessionMapping objectForKey:v6];
  if (!v11)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v18 = safeCreateError(3758096389, 0, @"NAN data session not found", v13, v14, v15, v16, v17, v20);
        v7[2](v7, v18);

        goto LABEL_12;
      }
    }

    else
    {
      [MIBUNANPublisher _terminateDataSessionWithPeer:withCompletion:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    [MIBUNANPublisher _terminateDataSessionWithPeer:withCompletion:];
    goto LABEL_11;
  }

  nanPublisher = self->_nanPublisher;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_99;
  v21[3] = &unk_2798EC158;
  v21[4] = self;
  v22 = v6;
  v23 = v7;
  [(WiFiAwarePublisher *)nanPublisher terminateDataSession:v11 completionHandler:v21];

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
}

void __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke()
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

void __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_93()
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

void __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_99(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MIBUOnceToken != -1)
    {
      __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_99_cold_1();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_99_cold_2(a1);
    }

    v2 = safeCreateError(3758096389, 0, @"NAN data session with %@ failed to stop: %ld", v4, v5, v6, v7, v8, *(a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
}

void __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_2()
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

- (void)_terminateMulticastSessionWithPeer:(id)a3 withCompletion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _terminateMulticastSessionWithPeer:withCompletion:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Terminating NAN multicast session with peer: %{public}@", buf, 0x16u);
  }

  v9 = [v6 rangeOfString:@"%"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 substringToIndex:v9];

    v6 = v10;
  }

  v11 = [objc_alloc(MEMORY[0x277D7BB10]) initWithLinkIPv6AddressString:v6];
  if (!v11)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v18 = safeCreateError(3758096393, 0, @"Invalid NAN peer IPv6 address: %@", v13, v14, v15, v16, v17, v6);
        v7[2](v7, v18);

        goto LABEL_12;
      }
    }

    else
    {
      [MIBUNANPublisher _terminateMulticastSessionWithPeer:withCompletion:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    [MIBUNANPublisher _terminateMulticastSessionWithPeer:withCompletion:];
    goto LABEL_11;
  }

  nanPublisher = self->_nanPublisher;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_114;
  v20[3] = &unk_2798EC158;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  [(WiFiAwarePublisher *)nanPublisher terminateMulticastSession:v11 completionHandler:v20];

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
}

void __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke()
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

void __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_108()
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

void __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_114(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MIBUOnceToken != -1)
    {
      __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_114_cold_1();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_114_cold_2(a1);
    }

    v2 = safeCreateError(3758096393, 0, @"NAN multicast session with %@ failed to stop: %ld", v4, v5, v6, v7, v8, *(a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
}

void __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_2()
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

- (void)_multicastData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if (self->_publisherState == 2)
  {
    nanPublisher = self->_nanPublisher;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_125;
    v15[3] = &unk_2798EBC38;
    v15[4] = self;
    v16 = v7;
    [(WiFiAwarePublisher *)nanPublisher sendDataBlobForMulticastSession:v6 toPeerAddress:0 usingMulticastAddress:1 completionHandler:v15];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNANPublisher _multicastData:withCompletion:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNANPublisher _multicastData:withCompletion:];
    }

    v14 = safeCreateError(3758096391, 0, @"NAN multicast session not ready", v9, v10, v11, v12, v13, v15[0]);
    (*(v7 + 2))(v7, v14);
  }
}

void __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke()
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

void __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (MIBUOnceToken != -1)
    {
      __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_125_cold_1();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_125_cold_2(a1);
    }

    v2 = safeCreateError(3758096391, 0, @"NAN multicast session data send failed: %ld", v4, v5, v6, v7, v8, v2);
  }

  (*(*(a1 + 40) + 16))();
}

void __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_2()
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

- (void)_handleFailureDueToError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_unfairLock);
  retryLimit = self->_retryLimit;
  v6 = self->_retryCount + 1;
  self->_retryCount = v6;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher _handleFailureDueToError:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    retryCount = self->_retryCount;
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v4;
    v20 = 2048;
    v21 = retryCount;
    _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling NAN failure due to error: %{public}@ retry count: %lu", buf, 0x20u);
  }

  [(MIBUNANPublisher *)self _stopPublisherForReason:@"Error Occurred"];
  [(MIBUNANPublisherDelegate *)self->_publisherDelegate nanPublisherDidStop:self withError:v4 willRetry:v6 <= retryLimit];
  if (v6 <= retryLimit)
  {
    self->_publisherState = 0;
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
        block[2] = __45__MIBUNANPublisher__handleFailureDueToError___block_invoke_139;
        block[3] = &unk_2798EB9A8;
        block[4] = self;
        dispatch_after(v12, MEMORY[0x277D85CD0], block);
        goto LABEL_10;
      }
    }

    else
    {
      v14 = v9;
      [MIBUNANPublisher _handleFailureDueToError:];
      v10 = v14;
      v11 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 138543618;
    v17 = self;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Restarting NAN publisher in %lld secs", buf, 0x16u);
    goto LABEL_9;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

void __45__MIBUNANPublisher__handleFailureDueToError___block_invoke()
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

void __45__MIBUNANPublisher__handleFailureDueToError___block_invoke_136()
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

- (void)_handleNANDataSessionExpiredForPeer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke;
  v6[3] = &unk_2798EBC88;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_unfairLock);
  __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke(v6);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_cold_1();
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_259B04000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Timer fired to expunge NAN data session with peer: %{public}@", buf, 0x16u);
  }

  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_142;
  v8[3] = &unk_2798EBD20;
  v8[4] = v6;
  v9 = v5;
  [v6 _terminateDataSessionWithPeer:v9 withCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_2()
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

void __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (MIBUOnceToken != -1)
  {
    __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_142_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_142_cold_2(a1);
  }

  else
  {
LABEL_5:
  }
}

void __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_2_143()
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

- (void)publisherStarted:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisherStarted:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher started!", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MIBUNANPublisher_publisherStarted___block_invoke_149;
  v7[3] = &unk_2798EB9A8;
  v7[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __37__MIBUNANPublisher_publisherStarted___block_invoke_149(v7);
  os_unfair_lock_unlock(&self->_unfairLock);

  v6 = *MEMORY[0x277D85DE8];
}

void __37__MIBUNANPublisher_publisherStarted___block_invoke()
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

- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:failedToStartWithError:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANPublisher publisher:failedToStartWithError:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MIBUNANPublisher_publisher_failedToStartWithError___block_invoke_152;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = a4;
  os_unfair_lock_lock(&self->_unfairLock);
  (__53__MIBUNANPublisher_publisher_failedToStartWithError___block_invoke_152)(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __53__MIBUNANPublisher_publisher_failedToStartWithError___block_invoke()
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

void __53__MIBUNANPublisher_publisher_failedToStartWithError___block_invoke_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = safeCreateError(3758096384, 0, @"NAN publisher failed to start: %ld", a4, a5, a6, a7, a8, *(a1 + 40));
  [*(a1 + 32) _handleFailureDueToError:v9];
}

- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4
{
  v6 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:terminatedWithReason:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANPublisher publisher:terminatedWithReason:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MIBUNANPublisher_publisher_terminatedWithReason___block_invoke_158;
  v7[3] = &unk_2798EBC60;
  v7[4] = self;
  v7[5] = a4;
  os_unfair_lock_lock(&self->_unfairLock);
  (__51__MIBUNANPublisher_publisher_terminatedWithReason___block_invoke_158)(v7);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __51__MIBUNANPublisher_publisher_terminatedWithReason___block_invoke()
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

void __51__MIBUNANPublisher_publisher_terminatedWithReason___block_invoke_158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = safeCreateError(3758096385, 0, @"NAN publisher terminated: %ld", a4, a5, a6, a7, a8, *(a1 + 40));
  [*(a1 + 32) _handleFailureDueToError:v9];
}

- (void)publisher:(id)a3 receivedMessage:(id)a4 fromSubscriberID:(unsigned __int8)a5 subscriberAddress:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:receivedMessage:fromSubscriberID:subscriberAddress:];
  }

  v12 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v11 ipv6AddressString];
    v16 = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher received message: %{public}@ from peer: %{public}@", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __81__MIBUNANPublisher_publisher_receivedMessage_fromSubscriberID_subscriberAddress___block_invoke()
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

- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = NSStringFromIfIndex(a5);
  v10 = [v8 initiatorDataAddress];
  v11 = [v10 ipv6AddressString];

  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:];
  }

  v12 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_259B04000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher confirmed data session for peer: %{public}@ with handle: %{public}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166;
  v17[3] = &unk_2798EBF08;
  v17[4] = self;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  os_unfair_lock_lock(&self->_unfairLock);
  __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166(v17);
  os_unfair_lock_unlock(&self->_unfairLock);

  v16 = *MEMORY[0x277D85DE8];
}

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke()
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

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166(uint64_t *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];

  if (v2)
  {
    if (MIBUOnceToken != -1)
    {
      __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166_cold_1();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166_cold_2(a1 + 4);
    }
  }

  else
  {
    [*(a1[4] + 48) setObject:a1[6] forKey:a1[5]];
    if (MIBUOnceToken != -1)
    {
      __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166_cold_3();
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = *(v4 + 48);
      v6 = v3;
      *buf = 138543618;
      v18 = v4;
      v19 = 2048;
      v20 = [v5 count];
      _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Current data session count after confirmation: %lu", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CBEBB8]);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_174;
    v15[3] = &unk_2798EC180;
    v9 = a1[5];
    v15[4] = a1[4];
    v16 = v9;
    v10 = [v7 initWithFireDate:v8 interval:0 repeats:v15 block:0.0];

    [*(a1[4] + 56) setObject:v10 forKey:a1[5]];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_2_176;
    block[3] = &unk_2798EB9A8;
    v14 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [*(a1[4] + 24) nanPublisher:a1[4] didCreateDataSessionWithPeer:a1[5] usingInterface:a1[7]];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_2()
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

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_169()
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

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_2_176(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v2 addTimer:*(a1 + 32) forMode:*MEMORY[0x277CBE640]];
}

- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 initiatorDataAddress];
  v8 = [v7 ipv6AddressString];

  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:dataTerminatedForHandle:reason:];
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher terminated data session for peer: %{public}@ with handle: %{public}@", buf, 0x20u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180;
  v12[3] = &unk_2798EBC88;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  os_unfair_lock_lock(&self->_unfairLock);
  __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180(v12);
  os_unfair_lock_unlock(&self->_unfairLock);

  v11 = *MEMORY[0x277D85DE8];
}

void __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke()
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

void __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
    if (MIBUOnceToken != -1)
    {
      __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180_cold_1();
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 48);
      v6 = v3;
      *buf = 138543618;
      v13 = v4;
      v14 = 2048;
      v15 = [v5 count];
      _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Current data session count after termination: %lu", buf, 0x16u);
    }

    v7 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
    if (v7)
    {
      [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_186;
      block[3] = &unk_2798EB9A8;
      v11 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [*(*(a1 + 32) + 24) nanPublisher:*(a1 + 32) didDestoryDataSessionWithPeer:*(a1 + 40)];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180_cold_2();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180_cold_3((a1 + 32));
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_2()
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

void __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_183()
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

- (void)publisher:(id)a3 detectedMulticastError:(int64_t)a4 fromMulticastReceiver:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:detectedMulticastError:fromMulticastReceiver:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUNANPublisher publisher:detectedMulticastError:fromMulticastReceiver:];
  }
}

void __75__MIBUNANPublisher_publisher_detectedMulticastError_fromMulticastReceiver___block_invoke()
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

- (void)publisher:(id)a3 receivedDataBlobForMulticastSession:(id)a4 fromPeer:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a5 ipv6AddressString];
  if (MIBUOnceToken != -1)
  {
    [MIBUNANPublisher publisher:receivedDataBlobForMulticastSession:fromPeer:];
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: NAN publisher received multicast data blob: %{public}@ from peer: %{public}@", buf, 0x20u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MIBUNANPublisher_publisher_receivedDataBlobForMulticastSession_fromPeer___block_invoke_191;
  v13[3] = &unk_2798EBCB0;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  os_unfair_lock_lock(&self->_unfairLock);
  __75__MIBUNANPublisher_publisher_receivedDataBlobForMulticastSession_fromPeer___block_invoke_191(v13);
  os_unfair_lock_unlock(&self->_unfairLock);

  v12 = *MEMORY[0x277D85DE8];
}

void __75__MIBUNANPublisher_publisher_receivedDataBlobForMulticastSession_fromPeer___block_invoke()
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

uint64_t __75__MIBUNANPublisher_publisher_receivedDataBlobForMulticastSession_fromPeer___block_invoke_191(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return [*(a1[4] + 24) nanPublisher:? didReceiveData:? fromPeer:?];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithServiceName:groupAddress:groupPort:countryCode:channelName:band:bandwidth:enableRateAdapter:publisherDelegate:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_terminateDataSessionWithPeer:withCompletion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__MIBUNANPublisher__terminateDataSessionWithPeer_withCompletion___block_invoke_99_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_terminateMulticastSessionWithPeer:withCompletion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__MIBUNANPublisher__terminateMulticastSessionWithPeer_withCompletion___block_invoke_114_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_multicastData:withCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__MIBUNANPublisher__multicastData_withCompletion___block_invoke_125_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__MIBUNANPublisher__handleNANDataSessionExpiredForPeer___block_invoke_142_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)publisher:failedToStartWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publisher:terminatedWithReason:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__MIBUNANPublisher_publisher_dataConfirmedForHandle_localInterfaceIndex_serviceSpecificInfo___block_invoke_166_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__MIBUNANPublisher_publisher_dataTerminatedForHandle_reason___block_invoke_180_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)publisher:detectedMulticastError:fromMulticastReceiver:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end
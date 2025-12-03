@interface MIBUNWServerController
- (MIBUNWServerController)initWithPacketProvider:(id)provider hostAddress:(id)address hostPort:(id)port nanPort:(id)nanPort groupAddress:(id)groupAddress groupPort:(id)groupPort interfaceName:(id)name serviceName:(id)self0 countryCode:(id)self1 channelName:(unint64_t)self2 band:(unint64_t)self3 bandwidth:(unint64_t)self4 enableRateAdapter:(BOOL)self5 controllerDelegate:(id)self6;
- (NSString)description;
- (id)_packetDropSummary;
- (void)_adjustBatchSizeWithPacketDroppedInLastInterval:(unint64_t)interval;
- (void)_calculateEffectiveBandwidth;
- (void)_fetchOneBatchOfPacketsFromProvider;
- (void)_handleFetchCompletionWithResult:(BOOL)result atEOF:(BOOL)f packets:(id)packets;
- (void)_sendPackets:(id)packets withCompletion:(id)completion;
- (void)_setupFileSenderLoop;
- (void)_start;
- (void)_startMulticast;
- (void)_startNANService;
- (void)_startTCPListener;
- (void)_stopMulticast;
- (void)_stopWithReason:(id)reason;
- (void)_tearDownFileSenderLoop;
- (void)_updatePacketDropBreakdown:(id)breakdown;
- (void)clientDevice:(id)device didCheckOutWithError:(id)error withSummary:(id)summary;
- (void)clientDevice:(id)device didPingWithPayload:(id)payload;
- (void)clientDeviceDidCheckIn:(id)in;
- (void)clientDeviceDidConnect:(id)connect;
- (void)clientDeviceDidDisconnect:(id)disconnect;
- (void)clientListener:(id)listener didReceiveNewClientDevice:(id)device;
- (void)clientListenerDidStart:(id)start;
- (void)clientListenerDidStop:(id)stop withError:(id)error;
- (void)nanPublisher:(id)publisher didReceiveData:(id)data fromPeer:(id)peer;
- (void)nanPublisherDidStart:(id)start forRetry:(BOOL)retry;
- (void)nanPublisherDidStop:(id)stop withError:(id)error willRetry:(BOOL)retry;
- (void)start;
- (void)stop;
- (void)updateClientStatus:(id)status forDevice:(id)device;
@end

@implementation MIBUNWServerController

- (MIBUNWServerController)initWithPacketProvider:(id)provider hostAddress:(id)address hostPort:(id)port nanPort:(id)nanPort groupAddress:(id)groupAddress groupPort:(id)groupPort interfaceName:(id)name serviceName:(id)self0 countryCode:(id)self1 channelName:(unint64_t)self2 band:(unint64_t)self3 bandwidth:(unint64_t)self4 enableRateAdapter:(BOOL)self5 controllerDelegate:(id)self6
{
  providerCopy = provider;
  addressCopy = address;
  portCopy = port;
  nanPortCopy = nanPort;
  groupAddressCopy = groupAddress;
  groupPortCopy = groupPort;
  nameCopy = name;
  serviceNameCopy = serviceName;
  codeCopy = code;
  delegateCopy = delegate;
  v50.receiver = self;
  v50.super_class = MIBUNWServerController;
  v21 = [(MIBUNWServerController *)&v50 init];
  if (v21)
  {
    v39 = providerCopy;
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.MIBUNWServerController", v22);
    dispatchQueue = v21->_dispatchQueue;
    v21->_dispatchQueue = v23;

    objc_storeStrong(&v21->_packetProvider, provider);
    objc_storeStrong(&v21->_controllerDelegate, delegate);
    objc_storeStrong(&v21->_serviceName, serviceName);
    bandwidthTimer = v21->_bandwidthTimer;
    v21->_bandwidthTimer = 0;

    objc_storeStrong(&v21->_tcpHostAddr, address);
    objc_storeStrong(&v21->_tcpHostPort, port);
    objc_storeStrong(&v21->_nanHostPort, nanPort);
    objc_storeStrong(&v21->_groupAddr, groupAddress);
    objc_storeStrong(&v21->_groupPort, groupPort);
    objc_storeStrong(&v21->_interfaceName, name);
    v21->_enableRA = adapter;
    objc_storeStrong(&v21->_countryCode, code);
    v21->_channelName = channelName;
    v21->_band = band;
    v21->_bandwidth = bandwidth;
    v26 = objc_opt_new();
    nanIPv6AddrMapping = v21->_nanIPv6AddrMapping;
    v21->_nanIPv6AddrMapping = v26;

    v28 = objc_opt_new();
    nanDevices = v21->_nanDevices;
    v21->_nanDevices = v28;

    v30 = objc_opt_new();
    tcpDevices = v21->_tcpDevices;
    v21->_tcpDevices = v30;

    v21->_packetDropped = 0;
    *&v21->_checkedInClients = 0u;
    *&v21->_packetFetched = 0u;
    v32 = objc_opt_new();
    packetDropBreakdown = v21->_packetDropBreakdown;
    v21->_packetDropBreakdown = v32;

    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController initWithPacketProvider:hostAddress:hostPort:nanPort:groupAddress:groupPort:interfaceName:serviceName:countryCode:channelName:band:bandwidth:enableRateAdapter:controllerDelegate:];
    }

    v34 = MIBUConnObj;
    providerCopy = v39;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v34, OS_LOG_TYPE_DEFAULT, "Boostrapping packet provider...", buf, 2u);
    }

    [(MIBUPacketProvidable *)v21->_packetProvider bootstrap];
    [(MIBUNWServerController *)v21 _startTCPListener];
  }

  return v21;
}

void __203__MIBUNWServerController_initWithPacketProvider_hostAddress_hostPort_nanPort_groupAddress_groupPort_interfaceName_serviceName_countryCode_channelName_band_bandwidth_enableRateAdapter_controllerDelegate___block_invoke()
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
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MIBUNWServerController_start__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MIBUNWServerController_stop__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (void)_start
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerController _start];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    batchSize = self->_batchSize;
    v6 = 134217984;
    v7 = batchSize;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Starting server controller with batch size: %lu", &v6, 0xCu);
  }

  self->_originalBatchSize = self->_batchSize;
  [(MIBUNWServerController *)self _startNANService];
  v5 = *MEMORY[0x277D85DE8];
}

void __32__MIBUNWServerController__start__block_invoke()
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

- (void)_stopWithReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerController _stopWithReason:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = reasonCopy;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "Stopping server controller with reason: %{public}@", &v17, 0xCu);
  }

  [(MIBUNWServerController *)self _tearDownFileSenderLoop];
  packetProvider = self->_packetProvider;
  if (packetProvider)
  {
    [(MIBUPacketProvidable *)packetProvider invalidate];
    v7 = self->_packetProvider;
    self->_packetProvider = 0;
  }

  nanPublisher = self->_nanPublisher;
  if (nanPublisher)
  {
    [(MIBUNANPublisher *)nanPublisher stop];
    v9 = self->_nanPublisher;
    self->_nanPublisher = 0;
  }

  nanListener = self->_nanListener;
  if (nanListener)
  {
    [(MIBUNWClientListener *)nanListener stop];
    v11 = self->_nanListener;
    self->_nanListener = 0;
  }

  [(NSMutableSet *)self->_nanDevices removeAllObjects];
  tcpListener = self->_tcpListener;
  if (tcpListener)
  {
    [(MIBUNWClientListener *)tcpListener stop];
    v13 = self->_tcpListener;
    self->_tcpListener = 0;
  }

  [(NSMutableSet *)self->_tcpDevices removeAllObjects];
  multicastSocket = self->_multicastSocket;
  if (multicastSocket)
  {
    [(MIBUMulticastSocket *)multicastSocket stop];
    v15 = self->_multicastSocket;
    self->_multicastSocket = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __42__MIBUNWServerController__stopWithReason___block_invoke()
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

- (void)_startTCPListener
{
  v5 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_33_1);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __43__MIBUNWServerController__startTCPListener__block_invoke()
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

void __43__MIBUNWServerController__startTCPListener__block_invoke_27()
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

void __43__MIBUNWServerController__startTCPListener__block_invoke_31()
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

- (void)_startNANService
{
  v5 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_39_1);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_3_2();
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void __42__MIBUNWServerController__startNANService__block_invoke()
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

void __42__MIBUNWServerController__startNANService__block_invoke_37()
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

- (void)_startMulticast
{
  v5 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_56_0);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __41__MIBUNWServerController__startMulticast__block_invoke()
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

void __41__MIBUNWServerController__startMulticast__block_invoke_51()
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

void __41__MIBUNWServerController__startMulticast__block_invoke_54()
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

void __41__MIBUNWServerController__startMulticast__block_invoke_58()
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

- (void)_stopMulticast
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerController _stopMulticast];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Stopping NAN client listener and multicast socket.", v8, 2u);
  }

  nanListener = self->_nanListener;
  if (nanListener)
  {
    [(MIBUNWClientListener *)nanListener stop];
    v5 = self->_nanListener;
    self->_nanListener = 0;
  }

  multicastSocket = self->_multicastSocket;
  if (multicastSocket)
  {
    [(MIBUMulticastSocket *)multicastSocket stop];
    v7 = self->_multicastSocket;
    self->_multicastSocket = 0;
  }
}

void __40__MIBUNWServerController__stopMulticast__block_invoke()
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

- (void)_setupFileSenderLoop
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bandwidthTimer)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _setupFileSenderLoop];
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Starting file sending loop", buf, 2u);
    }

    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    bandwidthTimer = self->_bandwidthTimer;
    self->_bandwidthTimer = v4;

    dispatch_source_set_timer(self->_bandwidthTimer, 0, 0x12A05F200uLL, 0);
    v6 = self->_bandwidthTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__MIBUNWServerController__setupFileSenderLoop__block_invoke_65;
    handler[3] = &unk_2798EB9A8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_bandwidthTimer);
    [(MIBUNWServerController *)self _fetchOneBatchOfPacketsFromProvider];
  }
}

void __46__MIBUNWServerController__setupFileSenderLoop__block_invoke()
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

- (void)_tearDownFileSenderLoop
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bandwidthTimer)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _tearDownFileSenderLoop];
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Stopping file sending loop", &v8, 2u);
    }

    dispatch_source_cancel(self->_bandwidthTimer);
    bandwidthTimer = self->_bandwidthTimer;
    self->_bandwidthTimer = 0;

    [(MIBUNWServerController *)self _calculateEffectiveBandwidth];
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _tearDownFileSenderLoop];
      v5 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      packetSent = self->_packetSent;
      v8 = 134217984;
      v9 = packetSent;
      _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "Total packet sent: %lu", &v8, 0xCu);
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWServerController__tearDownFileSenderLoop__block_invoke()
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

void __49__MIBUNWServerController__tearDownFileSenderLoop__block_invoke_68()
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

- (void)_calculateEffectiveBandwidth
{
  v36 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _MergedGlobals_0;
  v3 = unk_27F9E4620;
  packetSent = self->_packetSent;
  packetDropped = self->_packetDropped;
  v7 = packetDropped - qword_27F9E4628;
  fetchIssued = self->_fetchIssued;
  packetFetched = self->_packetFetched;
  _MergedGlobals_0 = fetchIssued;
  unk_27F9E4620 = packetSent;
  qword_27F9E4628 = packetDropped;
  [(MIBUNWServerController *)self _adjustBatchSizeWithPacketDroppedInLastInterval:v7];
  packetSize = [(MIBUPacketProvidable *)self->_packetProvider packetSize];
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerController _calculateEffectiveBandwidth];
  }

  v11 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134220032;
    v13 = self->_packetSent;
    v12 = self->_packetDropped;
    v19 = fetchIssued - v4;
    v14 = self->_packetFetched;
    v21 = packetSent - v3;
    v20 = 2048;
    v22 = 2048;
    v23 = v7;
    v24 = 1024;
    v25 = 5;
    v26 = 2048;
    v27 = (8 * (packetSent - v3) * packetSize) / 5000000.0;
    v28 = 2048;
    v29 = v14;
    v30 = 2048;
    v31 = packetFetched - (packetDropped + packetSent);
    v32 = 2048;
    v33 = v12;
    v34 = 2048;
    v35 = v13;
    _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "Fetch issued: %lu, Packets sent: %lu, dropped: %lu in last %ds; Effective bandwidth: %0.5f Mbps, Total packet fetched: %lu, Total packet in flight: %lu, Total packet dropped: %lu, Total packet sent: %lu", &v18, 0x58u);
  }

  _packetDropSummary = [(MIBUNWServerController *)self _packetDropSummary];
  if (_packetDropSummary)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _calculateEffectiveBandwidth];
    }

    v16 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = _packetDropSummary;
      _os_log_impl(&dword_259B04000, v16, OS_LOG_TYPE_DEFAULT, "Dropped packets breakdown: %@", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __54__MIBUNWServerController__calculateEffectiveBandwidth__block_invoke()
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

void __54__MIBUNWServerController__calculateEffectiveBandwidth__block_invoke_73()
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

- (id)_packetDropSummary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_packetDropBreakdown;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_packetDropBreakdown objectForKey:v9];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ with errorno %@", v10, v9, v15];
        [v3 addObject:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v12 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_adjustBatchSizeWithPacketDroppedInLastInterval:(unint64_t)interval
{
  v14 = *MEMORY[0x277D85DE8];
  batchSize = self->_batchSize;
  if (interval)
  {
    v5 = (batchSize * 0.8);
    if (v5 <= 0x100)
    {
      v5 = 256;
    }

    self->_batchSize = v5;
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _adjustBatchSizeWithPacketDroppedInLastInterval:];
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_batchSize;
      v12 = 134217984;
      v13 = v7;
      v8 = "Packet dropped, back off with smaller batch size: %lu";
LABEL_14:
      _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
    }
  }

  else
  {
    originalBatchSize = (batchSize * 1.25);
    if (self->_originalBatchSize < originalBatchSize)
    {
      originalBatchSize = self->_originalBatchSize;
    }

    self->_batchSize = originalBatchSize;
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _adjustBatchSizeWithPacketDroppedInLastInterval:];
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_batchSize;
      v12 = 134217984;
      v13 = v10;
      v8 = "No packet dropped, set larger batch size: %lu";
      goto LABEL_14;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __74__MIBUNWServerController__adjustBatchSizeWithPacketDroppedInLastInterval___block_invoke()
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

void __74__MIBUNWServerController__adjustBatchSizeWithPacketDroppedInLastInterval___block_invoke_85()
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

- (void)_fetchOneBatchOfPacketsFromProvider
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = dispatch_time(0, 10000000);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MIBUNWServerController__fetchOneBatchOfPacketsFromProvider__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_after(v3, dispatchQueue, block);
}

uint64_t __61__MIBUNWServerController__fetchOneBatchOfPacketsFromProvider__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 104);
  v1 = *(a1 + 32);
  v2 = v1[4];
  v3 = v1[34];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__MIBUNWServerController__fetchOneBatchOfPacketsFromProvider__block_invoke_2;
  v5[3] = &unk_2798EBE68;
  v5[4] = v1;
  return [v2 providePacketsOfCount:v3 withCompletion:v5 inQueue:v1[1]];
}

- (void)_handleFetchCompletionWithResult:(BOOL)result atEOF:(BOOL)f packets:(id)packets
{
  fCopy = f;
  packetsCopy = packets;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!result)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _handleFetchCompletionWithResult:atEOF:packets:];
    }

    v11 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "Failed to fetch packet(s) from provider.", buf, 2u);
    }

    v10 = @"Packet Fetch Failed";
    goto LABEL_15;
  }

  if ([packetsCopy count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__MIBUNWServerController__handleFetchCompletionWithResult_atEOF_packets___block_invoke_94;
    v12[3] = &unk_2798EBE90;
    v12[4] = self;
    [(MIBUNWServerController *)self _sendPackets:packetsCopy withCompletion:v12];
  }

  if (fCopy)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController _handleFetchCompletionWithResult:atEOF:packets:];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "Reached EOF of packet provider! We are done!", buf, 2u);
    }

    v10 = @"EOF Reached";
LABEL_15:
    [(MIBUNWServerController *)self _stopWithReason:v10];
  }
}

void __73__MIBUNWServerController__handleFetchCompletionWithResult_atEOF_packets___block_invoke()
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

void __73__MIBUNWServerController__handleFetchCompletionWithResult_atEOF_packets___block_invoke_2()
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

- (void)_updatePacketDropBreakdown:(id)breakdown
{
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(breakdown, "code")}];
  v4 = [(NSMutableDictionary *)self->_packetDropBreakdown objectForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  packetDropBreakdown = self->_packetDropBreakdown;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [(NSMutableDictionary *)packetDropBreakdown setObject:v8 forKey:v9];
}

- (void)_sendPackets:(id)packets withCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  packetsCopy = packets;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__1;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = packetsCopy;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        dispatch_group_enter(v7);
        ++self->_packetFetched;
        multicastSocket = self->_multicastSocket;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __54__MIBUNWServerController__sendPackets_withCompletion___block_invoke;
        v22[3] = &unk_2798EBEB8;
        v24 = v30;
        v25 = v32;
        v22[4] = self;
        v23 = v7;
        [(MIBUMulticastSocket *)multicastSocket sendPacket:v11 withCompletion:v22];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MIBUNWServerController__sendPackets_withCompletion___block_invoke_2;
  block[3] = &unk_2798EBEE0;
  block[4] = self;
  v19 = completionCopy;
  v20 = v32;
  v21 = v30;
  v14 = completionCopy;
  dispatch_group_notify(v7, dispatchQueue, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__MIBUNWServerController__sendPackets_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    ++*(*(a1 + 32) + 128);
    v3 = *(*(*(a1 + 56) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 56) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  else
  {
    ++*(*(a1 + 32) + 120);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __54__MIBUNWServerController__sendPackets_withCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _updatePacketDropBreakdown:{*(*(&v10 + 1) + 8 * v6++), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(*(*(a1 + 56) + 8) + 24);
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateClientStatus:(id)status forDevice:(id)device
{
  statusCopy = status;
  deviceCopy = device;
  controllerDelegate = self->_controllerDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(MIBUNWServerControllerDelegate *)self->_controllerDelegate serverController:self didReceiveClientDeviceStatus:statusCopy forDevice:deviceCopy];
  }
}

- (void)clientListenerDidStart:(id)start
{
  startCopy = start;
  v5 = startCopy;
  if (self->_tcpListener != startCopy)
  {
    if (self->_nanListener == startCopy)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUNWServerController clientListenerDidStart:];
      }

      v6 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v7 = "NAN listener started";
        v8 = &v9;
        goto LABEL_12;
      }
    }

LABEL_3:

    return;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerController clientListenerDidStart:];
  }

  v6 = MIBUConnObj;
  if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_3;
  }

  v10 = 0;
  v7 = "TCP listener started";
  v8 = &v10;
LABEL_12:
  _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
}

void __49__MIBUNWServerController_clientListenerDidStart___block_invoke()
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

void __49__MIBUNWServerController_clientListenerDidStart___block_invoke_107()
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

- (void)clientListenerDidStop:(id)stop withError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  errorCopy = error;
  if (self->_tcpListener == stopCopy)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController clientListenerDidStop:withError:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = errorCopy;
      v9 = "TCP listener stopped with error: %{public}@";
      goto LABEL_11;
    }
  }

  else if (self->_nanListener == stopCopy)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerController clientListenerDidStop:withError:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = errorCopy;
      v9 = "NAN listener stopped with error: %{public}@";
LABEL_11:
      _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__MIBUNWServerController_clientListenerDidStop_withError___block_invoke()
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

void __58__MIBUNWServerController_clientListenerDidStop_withError___block_invoke_112()
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

- (void)clientListener:(id)listener didReceiveNewClientDevice:(id)device
{
  listenerCopy = listener;
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke;
  block[3] = &unk_2798EBCB0;
  v12 = listenerCopy;
  selfCopy = self;
  v14 = deviceCopy;
  v9 = deviceCopy;
  v10 = listenerCopy;
  dispatch_async(dispatchQueue, block);
}

void *__67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke(void *result)
{
  v1 = result;
  v16 = *MEMORY[0x277D85DE8];
  v2 = result[4];
  v3 = result[5];
  if (v2 == *(v3 + 48))
  {
    if (MIBUOnceToken != -1)
    {
      __67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke_cold_2();
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v1[5];
      v10 = v1[6];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received new TCP unicast client device: %{public}@", &v12, 0x16u);
    }

    [*(v1[5] + 88) addObject:v1[6]];
    [v1[6] setDelegate:v1[5]];
    result = [v1[6] bootstrap];
  }

  else if (v2 == *(v3 + 40))
  {
    if (MIBUOnceToken != -1)
    {
      __67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke_cold_1();
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v1[5];
      v6 = v1[6];
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received new NAN unicast client device: %{public}@", &v12, 0x16u);
    }

    [*(v1[5] + 80) addObject:v1[6]];
    [v1[6] setDelegate:v1[5]];
    [v1[6] bootstrap];
    result = *(v1[5] + 24);
    if (result)
    {
      v7 = v1[6];
      result = [result serverController:? didReceiveNewClientDevice:?];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke_2()
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

void __67__MIBUNWServerController_clientListener_didReceiveNewClientDevice___block_invoke_117()
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

- (void)clientDeviceDidConnect:(id)connect
{
  connectCopy = connect;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke;
  v7[3] = &unk_2798EBC88;
  v7[4] = self;
  v8 = connectCopy;
  v6 = connectCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    if (MIBUOnceToken != -1)
    {
      __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke_cold_2();
    }

    v2 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 clientIPv6Address];
      v10 = 138543362;
      v11 = v5;
      v6 = "TCP device connected: %{public}@";
LABEL_11:
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
    }
  }

  else if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    if (MIBUOnceToken != -1)
    {
      __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke_cold_1();
    }

    v7 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v4 = v7;
      v5 = [v8 clientIPv6Address];
      v10 = 138543362;
      v11 = v5;
      v6 = "NAN device connected: %{public}@";
      goto LABEL_11;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke_2()
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

void __49__MIBUNWServerController_clientDeviceDidConnect___block_invoke_122()
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

- (void)clientDeviceDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke;
  v7[3] = &unk_2798EBC88;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  dispatch_async(dispatchQueue, v7);
}

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    if (MIBUOnceToken != -1)
    {
      __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_cold_2();
    }

    v2 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 clientSerialNumber];
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "TCP device disconnected: %{public}@", buf, 0xCu);
    }
  }

  else if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    if (MIBUOnceToken != -1)
    {
      __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_cold_1();
    }

    v6 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 clientSerialNumber];
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "NAN device disconnected: %{public}@", buf, 0xCu);
    }

    v10 = *(*(a1 + 32) + 64);
    v11 = [*(a1 + 40) clientIPv6Address];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_130;
    v13[3] = &unk_2798EBE18;
    v14 = *(a1 + 40);
    [v10 terminateDataSessionWithPeer:v11 withCompletion:v13];

    [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_2()
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

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_127()
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

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (MIBUOnceToken != -1)
  {
    __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_130_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_130_cold_2(a1, v4);
  }

  else
  {
LABEL_5:
  }
}

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_2_131()
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

- (void)clientDeviceDidCheckIn:(id)in
{
  inCopy = in;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke;
  v7[3] = &unk_2798EBC88;
  v7[4] = self;
  v8 = inCopy;
  v6 = inCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    if (MIBUOnceToken != -1)
    {
      __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_cold_3();
    }

    v2 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 clientSerialNumber];
      *buf = 138543362;
      v34 = v5;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "TCP device %{public}@ checked in", buf, 0xCu);
    }

    v6 = *(*(a1 + 32) + 72);
    v7 = [*(a1 + 40) clientSerialNumber];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 72);
      v10 = [*(a1 + 40) clientSerialNumber];
      [v9 removeObjectForKey:v10];

      v11 = *(*(a1 + 32) + 64);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_139;
      v31[3] = &unk_2798EBE18;
      v32 = *(a1 + 40);
      [v11 terminateMulticastSessionWithPeer:v8 withCompletion:v31];

LABEL_26:
      goto LABEL_27;
    }

    if (MIBUOnceToken == -1)
    {
      v29 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }
    }

    else
    {
      __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_cold_4();
      v29 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_259B04000, v29, OS_LOG_TYPE_DEFAULT, "No NAN IPv6 address found for TCP device.", buf, 2u);
    goto LABEL_26;
  }

  if ([*(*(a1 + 32) + 80) containsObject:*(a1 + 40)])
  {
    ++*(*(a1 + 32) + 96);
    if (MIBUOnceToken != -1)
    {
      __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_cold_1();
    }

    v12 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = v12;
      v15 = [v13 clientSerialNumber];
      v16 = *(a1 + 32);
      v17 = *(v16 + 96);
      v18 = *(v16 + 264);
      *buf = 138543874;
      v34 = v15;
      v35 = 2048;
      v36 = v17;
      v37 = 2048;
      v38 = v18;
      _os_log_impl(&dword_259B04000, v14, OS_LOG_TYPE_DEFAULT, "NAN device %{public}@ checked in. Total checked in: %lu v.s. Expected client count: %lu", buf, 0x20u);
    }

    v19 = *(*(a1 + 32) + 72);
    v20 = [*(a1 + 40) clientIPv6Address];
    v21 = [*(a1 + 40) clientSerialNumber];
    [v19 setObject:v20 forKey:v21];

    v22 = *(a1 + 32);
    v23 = v22[33];
    if (!v23 || v23 == v22[12])
    {
      [v22 _setupFileSenderLoop];
    }

    if (*(*(a1 + 32) + 24) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(*(a1 + 32) + 24) serverController:*(a1 + 32) didReceiveClientDeviceCheckIn:*(a1 + 40)];
    }

    if (MIBUOnceToken == -1)
    {
      v24 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:
        [*(a1 + 40) invalidate];
        goto LABEL_27;
      }
    }

    else
    {
      __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_cold_2();
      v24 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    v25 = *(a1 + 40);
    v26 = v24;
    v27 = [v25 clientSerialNumber];
    v28 = [*(a1 + 40) clientIPv6Address];
    *buf = 138543618;
    v34 = v27;
    v35 = 2114;
    v36 = v28;
    _os_log_impl(&dword_259B04000, v26, OS_LOG_TYPE_DEFAULT, "Invalidating NAN unicast connection for device: %{public}@ IPv6 address: %{public}@", buf, 0x16u);

    goto LABEL_22;
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_2()
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

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_136()
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

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_139(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (MIBUOnceToken != -1)
  {
    __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_139_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_139_cold_2(a1, v4);
  }

  else
  {
LABEL_5:
  }
}

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_2_140()
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

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_143()
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

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_148()
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

- (void)clientDevice:(id)device didCheckOutWithError:(id)error withSummary:(id)summary
{
  deviceCopy = device;
  errorCopy = error;
  summaryCopy = summary;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke;
  v15[3] = &unk_2798EBF08;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = errorCopy;
  v18 = summaryCopy;
  v12 = summaryCopy;
  v13 = errorCopy;
  v14 = deviceCopy;
  dispatch_async(dispatchQueue, v15);
}

void __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 88) containsObject:a1[5]])
  {
    if (MIBUOnceToken != -1)
    {
      __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke_cold_2();
    }

    v2 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v4 = v2;
      v5 = [v3 clientSerialNumber];
      v6 = a1[6];
      v15 = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "TCP device %{public}@ checked out with error: %@", &v15, 0x16u);
    }

    v7 = a1[4];
    if (*(v7 + 24))
    {
      v8 = objc_opt_respondsToSelector();
      v7 = a1[4];
      if (v8)
      {
        [*(v7 + 24) serverController:v7 didReceiveClientDeviceCheckOut:a1[5] withError:a1[6] andSummary:a1[7]];
        v7 = a1[4];
      }
    }

    [*(v7 + 88) removeObject:a1[5]];
  }

  else if ([*(a1[4] + 80) containsObject:a1[5]])
  {
    if (MIBUOnceToken != -1)
    {
      __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke_cold_1();
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[5];
      v11 = v9;
      v12 = [v10 clientSerialNumber];
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_259B04000, v11, OS_LOG_TYPE_DEFAULT, "NAN device %{public}@ checkout out", &v15, 0xCu);
    }
  }

  v13 = a1[4];
  if (*(v13 + 264) && ![*(v13 + 88) count])
  {
    [a1[4] _stopWithReason:@"Client Finished"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke_2()
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

void __72__MIBUNWServerController_clientDevice_didCheckOutWithError_withSummary___block_invoke_155()
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

- (void)clientDevice:(id)device didPingWithPayload:(id)payload
{
  deviceCopy = device;
  payloadCopy = payload;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MIBUNWServerController_clientDevice_didPingWithPayload___block_invoke;
  block[3] = &unk_2798EBCB0;
  block[4] = self;
  v12 = deviceCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__MIBUNWServerController_clientDevice_didPingWithPayload___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v10 = [*(a1 + 40) clientSerialNumber];
    [v3 updateClientStatus:v2 forDevice:?];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      __58__MIBUNWServerController_clientDevice_didPingWithPayload___block_invoke_cold_1();
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v6 clientSerialNumber];
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring device %{public}@ ping via other channels", buf, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __58__MIBUNWServerController_clientDevice_didPingWithPayload___block_invoke_2()
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

- (void)nanPublisherDidStart:(id)start forRetry:(BOOL)retry
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MIBUNWServerController_nanPublisherDidStart_forRetry___block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)nanPublisherDidStop:(id)stop withError:(id)error willRetry:(BOOL)retry
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MIBUNWServerController_nanPublisherDidStop_withError_willRetry___block_invoke;
  block[3] = &unk_2798EBF30;
  retryCopy = retry;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__MIBUNWServerController_nanPublisherDidStop_withError_willRetry___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);

    [v2 _stopMulticast];
  }

  else
  {
    v3 = [*(a1 + 40) localizedDescription];
    [v1 _stopWithReason:v3];
  }
}

- (void)nanPublisher:(id)publisher didReceiveData:(id)data fromPeer:(id)peer
{
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__MIBUNWServerController_nanPublisher_didReceiveData_fromPeer___block_invoke;
  v9[3] = &unk_2798EBC88;
  v10 = dataCopy;
  selfCopy = self;
  v8 = dataCopy;
  dispatch_async(dispatchQueue, v9);
}

void __63__MIBUNWServerController_nanPublisher_didReceiveData_fromPeer___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:*(a1 + 32) error:0];
  if (MIBUOnceToken != -1)
  {
    __63__MIBUNWServerController_nanPublisher_didReceiveData_fromPeer___block_invoke_cold_1();
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "NAN publisher received multicast data blob which decodes to: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v2 objectForKey:@"SerialNumber"];
  [v4 updateClientStatus:v2 forDevice:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __63__MIBUNWServerController_nanPublisher_didReceiveData_fromPeer___block_invoke_2()
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

void __52__MIBUNWServerController_clientDeviceDidDisconnect___block_invoke_130_cold_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clientSerialNumber];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_3(&dword_259B04000, v5, v6, "Failed to terminate NAN data session for device: %{public}@ error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWServerController_clientDeviceDidCheckIn___block_invoke_139_cold_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 clientSerialNumber];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_3(&dword_259B04000, v5, v6, "Failed to terminate multicast session for device: %{public}@ error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end
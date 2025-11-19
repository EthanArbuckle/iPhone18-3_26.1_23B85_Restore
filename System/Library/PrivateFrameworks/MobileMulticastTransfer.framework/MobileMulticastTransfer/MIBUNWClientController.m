@interface MIBUNWClientController
- (MIBUNWClientController)initWithPacketConsumer:(id)a3 hostPort:(id)a4 tcpAddress:(id)a5 tcpPort:(id)a6 groupAddress:(id)a7 groupPort:(id)a8 interfaceName:(id)a9 serviceName:(id)a10 countryCode:(id)a11 channelName:(unint64_t)a12 band:(unint64_t)a13 bandwidth:(unint64_t)a14 enableRateAdapter:(BOOL)a15 controllerDelegate:(id)a16 dataCollector:(id)a17;
- (NSString)description;
- (void)_activateReceiveTimer;
- (void)_calculateEffectiveBandwidth;
- (void)_checkOutWithError:(id)a3;
- (void)_createNANTCPConnectionUsingInterface:(id)a3;
- (void)_createTCPConnectionWithAddr:(id)a3 andPort:(id)a4;
- (void)_disableFirewall;
- (void)_handleInboundPackets:(id)a3 arrivalTime:(id)a4;
- (void)_handlePacketConsumerCompletion;
- (void)_handleReceiveTimerTick;
- (void)_invalidateNANTCPConnection;
- (void)_receivedVeryFirstPacketArray;
- (void)_resetReceiveTimerWithInterval:(unint64_t)a3;
- (void)_start;
- (void)_startMulticastReceiverUsingInterface:(id)a3;
- (void)_stop;
- (void)_stopMulticast:(BOOL)a3;
- (void)_stopMulticastReceiver;
- (void)_updateControllerProgress;
- (void)checkOutWithError:(id)a3;
- (void)multicastSocket:(id)a3 didReceivePackets:(id)a4 atTime:(id)a5;
- (void)multicastSocketDidStart:(id)a3;
- (void)multicastSocketDidStop:(id)a3 withError:(id)a4;
- (void)nanSubscriberDidStart:(id)a3 withPeerIPAddress:(id)a4 usingInterface:(id)a5 forRetry:(BOOL)a6;
- (void)nanSubscriberDidStop:(id)a3 withError:(id)a4 willRetry:(BOOL)a5;
- (void)nanSubscriberDidTerminateDataSession:(id)a3;
- (void)pingThroughMulticast:(id)a3;
- (void)serverDeviceDidCheckIn:(id)a3;
- (void)serverDeviceDidCheckOut:(id)a3;
- (void)serverDeviceDidConnect:(id)a3;
- (void)serverDeviceDidDisconnect:(id)a3;
- (void)setPingInterval:(id)a3;
- (void)start;
- (void)stop;
- (void)stopMulticast;
@end

@implementation MIBUNWClientController

- (MIBUNWClientController)initWithPacketConsumer:(id)a3 hostPort:(id)a4 tcpAddress:(id)a5 tcpPort:(id)a6 groupAddress:(id)a7 groupPort:(id)a8 interfaceName:(id)a9 serviceName:(id)a10 countryCode:(id)a11 channelName:(unint64_t)a12 band:(unint64_t)a13 bandwidth:(unint64_t)a14 enableRateAdapter:(BOOL)a15 controllerDelegate:(id)a16 dataCollector:(id)a17
{
  v53 = a3;
  v52 = a4;
  v23 = a5;
  v54 = a6;
  v50 = a7;
  v24 = a7;
  v51 = a8;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  v28 = a16;
  v29 = a17;
  v55.receiver = self;
  v55.super_class = MIBUNWClientController;
  v30 = [(MIBUNWClientController *)&v55 init];
  if (v30)
  {
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = v27;
    v32 = v26;
    v34 = v33 = v23;
    v35 = dispatch_queue_create("com.apple.MIBUNWClientController", v34);
    dispatchQueue = v30->_dispatchQueue;
    v30->_dispatchQueue = v35;

    v37 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v38 = dispatch_queue_create("com.apple.MIBUNWClientControllerTimer", v37);
    timerQueue = v30->_timerQueue;
    v30->_timerQueue = v38;

    v23 = v33;
    v26 = v32;
    v27 = v31;
    objc_storeStrong(&v30->_packetConsumer, a3);
    hostAddress = v30->_hostAddress;
    v30->_packetReceived = 0;
    v30->_hostAddress = 0;

    objc_storeStrong(&v30->_hostPort, a4);
    objc_storeStrong(&v30->_groupAddress, v50);
    objc_storeStrong(&v30->_groupPort, v51);
    LOBYTE(v48) = a15;
    v41 = [[MIBUNANSubscriber alloc] initWithServiceName:v26 groupAddress:v24 groupPort:v25 countryCode:v31 channelName:a12 band:a13 bandwidth:a14 enableRateAdapter:v48 subscriberDelegate:v30 dataCollector:v29];
    nanSubscriber = v30->_nanSubscriber;
    v30->_nanSubscriber = v41;

    objc_storeStrong(&v30->_delegate, a16);
    objc_storeStrong(&v30->_dataCollector, a17);
    progress = v30->_progress;
    v30->_progress = &unk_286AD0D88;

    v30->_state = 0;
    if (v23 && v54)
    {
      [(MIBUNWClientController *)v30 _createTCPConnectionWithAddr:v23 andPort:v54];
    }

    tcpPingInterval = v30->_tcpPingInterval;
    v30->_tcpPingInterval = &unk_286AD0DA0;

    v45 = dispatch_semaphore_create(0);
    checkoutSem = v30->_checkoutSem;
    v30->_checkoutSem = v45;
  }

  return v30;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MIBUNWClientController_start__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MIBUNWClientController_stop__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stopMulticast
{
  v3 = dispatch_semaphore_create(0);
  multicastSocketSem = self->_multicastSocketSem;
  self->_multicastSocketSem = v3;

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MIBUNWClientController_stopMulticast__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  dispatch_semaphore_wait(self->_multicastSocketSem, 0xFFFFFFFFFFFFFFFFLL);
  v6 = self->_multicastSocketSem;
  self->_multicastSocketSem = 0;
}

- (void)checkOutWithError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MIBUNWClientController_checkOutWithError___block_invoke;
  v7[3] = &unk_2798EBC88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setPingInterval:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController setPingInterval:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "Setting client controller ping interval to %{public}@", &v8, 0xCu);
  }

  tcpPingInterval = self->_tcpPingInterval;
  self->_tcpPingInterval = v4;

  v7 = *MEMORY[0x277D85DE8];
}

void __42__MIBUNWClientController_setPingInterval___block_invoke()
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
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _start];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting client controller...", &v5, 0xCu);
  }

  [(MIBUPacketConsumable *)self->_packetConsumer bootstrap];
  [(MIBUNWClientController *)self _disableFirewall];
  [(MIBUNANSubscriber *)self->_nanSubscriber start];
  v4 = *MEMORY[0x277D85DE8];
}

void __32__MIBUNWClientController__start__block_invoke()
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

- (void)_stop
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _stop];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping client controller...", &v5, 0xCu);
  }

  [(MIBUNWDevice *)self->_tcpUnicastDevice invalidate];
  [(MIBUNWClientController *)self _stopMulticast:1];
  [(MIBUPacketConsumable *)self->_packetConsumer invalidate];
  v4 = *MEMORY[0x277D85DE8];
}

void __31__MIBUNWClientController__stop__block_invoke()
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

- (void)_stopMulticast:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _stopMulticast:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping using multicast...", &v9, 0xCu);
  }

  if (v3)
  {
    receiveTimer = self->_receiveTimer;
    if (receiveTimer)
    {
      dispatch_source_cancel(receiveTimer);
      v7 = self->_receiveTimer;
      self->_receiveTimer = 0;
    }
  }

  [(MIBUNANSubscriber *)self->_nanSubscriber stop];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__MIBUNWClientController__stopMulticast___block_invoke()
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

- (void)_checkOutWithError:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  tcpUnicastDevice = self->_tcpUnicastDevice;
  v7 = [(MIBUDataCollectorProtocol *)self->_dataCollector summaryReport];
  [(MIBUNWServerDevice *)tcpUnicastDevice checkOutWithError:v5 withSummary:v7];

  v8 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(self->_checkoutSem, v8))
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWClientController _checkOutWithError:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNWClientController _checkOutWithError:];
    }
  }
}

void __45__MIBUNWClientController__checkOutWithError___block_invoke()
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

- (void)_startMulticastReceiverUsingInterface:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15[0] = @"GroupAddress";
  v15[1] = @"GroupPort";
  groupPort = self->_groupPort;
  v16[0] = self->_groupAddress;
  v16[1] = groupPort;
  v15[2] = @"InterfaceName";
  v16[2] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _startMulticastReceiverUsingInterface:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting multicast receiver with config: %{public}@", &v11, 0x16u);
  }

  v8 = [[MIBUMulticastSocket alloc] initWithConfiguration:v6 delegate:self];
  multicastSocket = self->_multicastSocket;
  self->_multicastSocket = v8;

  if (!self->_multicastSocket)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [MIBUNWClientController _startMulticastReceiverUsingInterface:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    [MIBUNWClientController _startMulticastReceiverUsingInterface:];
    goto LABEL_9;
  }

  [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanMulticastInit"];
  [(MIBUMulticastSocket *)self->_multicastSocket start];
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

void __64__MIBUNWClientController__startMulticastReceiverUsingInterface___block_invoke()
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

void __64__MIBUNWClientController__startMulticastReceiverUsingInterface___block_invoke_52()
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

- (void)_stopMulticastReceiver
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_multicastSocket)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWClientController _stopMulticastReceiver];
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = self;
      _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping multicast receiver...", &v5, 0xCu);
    }

    [(MIBUMulticastSocket *)self->_multicastSocket stop];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __48__MIBUNWClientController__stopMulticastReceiver__block_invoke()
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

- (void)_activateReceiveTimer
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_receiveTimer)
  {
    v3 = [(NSNumber *)self->_tcpPingInterval unsignedLongValue];
    if (MIBUOnceToken != -1)
    {
      [MIBUNWClientController _activateReceiveTimer];
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Activate receive timer with interval: %llu (sec)", &v6, 0x16u);
    }

    [(MIBUNWClientController *)self _resetReceiveTimerWithInterval:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNWClientController__activateReceiveTimer__block_invoke()
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

- (void)_resetReceiveTimerWithInterval:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _resetReceiveTimerWithInterval:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting receive timer with interval: %llu (sec)", buf, 0x16u);
  }

  if (self->_receiveTimer)
  {
    if (MIBUOnceToken == -1)
    {
      v6 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        dispatch_source_cancel(self->_receiveTimer);
        goto LABEL_10;
      }
    }

    else
    {
      [MIBUNWClientController _resetReceiveTimerWithInterval:];
      v6 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 138543362;
    v13 = self;
    _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling ongoing receive timer", buf, 0xCu);
    goto LABEL_9;
  }

LABEL_10:
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timerQueue);
  receiveTimer = self->_receiveTimer;
  self->_receiveTimer = v7;

  dispatch_source_set_timer(self->_receiveTimer, 0, 1000000000 * a3, 0);
  v9 = self->_receiveTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__MIBUNWClientController__resetReceiveTimerWithInterval___block_invoke_64;
  handler[3] = &unk_2798EB9A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_receiveTimer);
  v10 = *MEMORY[0x277D85DE8];
}

void __57__MIBUNWClientController__resetReceiveTimerWithInterval___block_invoke()
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

void __57__MIBUNWClientController__resetReceiveTimerWithInterval___block_invoke_61()
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

- (void)_updateControllerProgress
{
  v38 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_timerQueue);
  state = self->_state;
  switch(state)
  {
    case 2uLL:
      v20 = [(MIBUPacketConsumable *)self->_packetConsumer getAssemblyProgress];
      progress = self->_progress;
      self->_progress = v20;

      if (MIBUOnceToken != -1)
      {
        [MIBUNWClientController _updateControllerProgress];
      }

      v22 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_progress;
        v23 = self->_state;
        v26 = 138543874;
        v27 = self;
        v28 = 2048;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        v7 = "%{public}@: state :%lu; progress = %@";
        v8 = v22;
        v9 = 32;
        goto LABEL_16;
      }

      break;
    case 1uLL:
      [(MIBUNWClientController *)self _calculateEffectiveBandwidth];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:((100 * self->_packetReceived) / self->_packetExpected)];
      v11 = self->_progress;
      self->_progress = v10;

      if (MIBUOnceToken != -1)
      {
        [MIBUNWClientController _updateControllerProgress];
      }

      v12 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_state;
        packetExpected = self->_packetExpected;
        packetReceived = self->_packetReceived;
        packetConsumer = self->_packetConsumer;
        v17 = v12;
        v18 = [(MIBUPacketConsumable *)packetConsumer missingCount];
        v19 = self->_progress;
        v26 = 138544642;
        v27 = self;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = packetReceived;
        v32 = 2048;
        v33 = packetExpected;
        v34 = 2048;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        _os_log_impl(&dword_259B04000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: state: %lu; packets: %lu/%lu (%lu missing), progress = %@", &v26, 0x3Eu);
      }

      break;
    case 0uLL:
      v4 = self->_progress;
      self->_progress = &unk_286AD0D88;

      if (MIBUOnceToken != -1)
      {
        [MIBUNWClientController _updateControllerProgress];
      }

      v5 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_state;
        v26 = 138543618;
        v27 = self;
        v28 = 2048;
        v29 = v6;
        v7 = "%{public}@: state: %lu; controller ready";
        v8 = v5;
        v9 = 22;
LABEL_16:
        _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, v7, &v26, v9);
      }

      break;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __51__MIBUNWClientController__updateControllerProgress__block_invoke()
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

void __51__MIBUNWClientController__updateControllerProgress__block_invoke_68()
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

void __51__MIBUNWClientController__updateControllerProgress__block_invoke_71()
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

- (void)_handleReceiveTimerTick
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_timerQueue);
  [(MIBUNWClientController *)self _updateControllerProgress];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MIBUNWClientControllerDelegate *)self->_delegate devicePingPayload];
    if (self->_state - 1 > 1)
    {
      tcpUnicastDevice = self->_tcpUnicastDevice;
      if (tcpUnicastDevice)
      {
        [(MIBUNWServerDevice *)tcpUnicastDevice pingWithPayload:v4];
      }
    }

    else
    {
      multicastSocket = self->_multicastSocket;
      if (multicastSocket && ![(MIBUMulticastSocket *)multicastSocket isActive])
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUNWClientController _handleReceiveTimerTick];
        }

        v7 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 138543362;
          *&v15[4] = self;
          _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: multicast has been inactive for some time.", v15, 0xCu);
        }

        [(MIBUNWClientController *)self stopMulticast];
        v13 = safeCreateError(3758096392, 0, @"Multicast has been inactive for some time.", v8, v9, v10, v11, v12, *v15);
        [(MIBUNWClientControllerDelegate *)self->_delegate clientControllerDidFailReceiving:self error:v13];
      }

      else
      {
        [(MIBUNWClientController *)self pingThroughMulticast:v4];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWClientController__handleReceiveTimerTick__block_invoke()
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

- (void)pingThroughMulticast:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:0 error:0];
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController pingThroughMulticast:];
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: ping through multicast: %@", buf, 0x16u);
  }

  nanSubscriber = self->_nanSubscriber;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MIBUNWClientController_pingThroughMulticast___block_invoke_84;
  v9[3] = &unk_2798EBE18;
  v9[4] = self;
  [(MIBUNANSubscriber *)nanSubscriber sendData:v5 withCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNWClientController_pingThroughMulticast___block_invoke()
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

void __47__MIBUNWClientController_pingThroughMulticast___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  if (MIBUOnceToken != -1)
  {
    __47__MIBUNWClientController_pingThroughMulticast___block_invoke_84_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __47__MIBUNWClientController_pingThroughMulticast___block_invoke_84_cold_2(a1, v3, v4);
  }

  else
  {
LABEL_5:
  }
}

void __47__MIBUNWClientController_pingThroughMulticast___block_invoke_2()
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
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_timerQueue);
  v3 = [(NSNumber *)self->_tcpPingInterval unsignedLongValue];
  v4 = [(MIBUPacketConsumable *)self->_packetConsumer bytesConsumed];
  packetReceived = self->_packetReceived;
  v7 = _MergedGlobals;
  v6 = unk_27F9E4610;
  v8 = [(MIBUPacketConsumable *)self->_packetConsumer bytesConsumed];
  v9 = self->_packetReceived;
  _MergedGlobals = v8;
  unk_27F9E4610 = v9;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _calculateEffectiveBandwidth];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134219008;
    v13 = v3;
    v14 = 2048;
    v15 = packetReceived - v6;
    v16 = 2048;
    v17 = v3;
    v18 = 2048;
    v19 = v4 - v7;
    v20 = 2048;
    v21 = (8 * (v4 - v7)) / 1000000.0 / v3;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Packets received in the last %llus: %lu; Bytes consumed in last %llus: %lu; Effective bandwidth: %0.5f Mbps", &v12, 0x34u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__MIBUNWClientController__calculateEffectiveBandwidth__block_invoke()
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

- (void)_handleInboundPackets:(id)a3 arrivalTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_state != 2)
  {
    packetConsumer = self->_packetConsumer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__MIBUNWClientController__handleInboundPackets_arrivalTime___block_invoke;
    v9[3] = &unk_2798EBE40;
    v9[4] = self;
    [(MIBUPacketConsumable *)packetConsumer consumePackets:v6 arrivalTime:v7 withCompletion:v9 inQueue:self->_dispatchQueue];
  }
}

void __60__MIBUNWClientController__handleInboundPackets_arrivalTime___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 176) != 2)
    {
      *(v3 + 104) += a2;
      if (*(*(a1 + 32) + 104) == a2)
      {
        v4 = a1;
        v5 = a3;
        [*(a1 + 32) _receivedVeryFirstPacketArray];
        a3 = v5;
        a1 = v4;
      }

      if (a3)
      {
        v6 = *(a1 + 32);
        if (*(v6 + 176) == 2)
        {
          if (MIBUOnceToken != -1)
          {
            __60__MIBUNWClientController__handleInboundPackets_arrivalTime___block_invoke_cold_1();
          }

          v7 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_259B04000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring extra packet reception", v9, 2u);
          }
        }

        else
        {
          *(v6 + 176) = 2;
          v8 = *(a1 + 32);

          [v8 _handlePacketConsumerCompletion];
        }
      }
    }
  }
}

void __60__MIBUNWClientController__handleInboundPackets_arrivalTime___block_invoke_2()
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

- (void)_receivedVeryFirstPacketArray
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _receivedVeryFirstPacketArray];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%@: Received the very first array of packets!", &v8, 0xCu);
  }

  self->_state = 1;
  v4 = [MEMORY[0x277CBEAA8] now];
  startTime = self->_startTime;
  self->_startTime = v4;

  self->_packetExpected = [(MIBUPacketConsumable *)self->_packetConsumer missingCount];
  [(MIBUNWClientController *)self _activateReceiveTimer];
  delegate = self->_delegate;
  if (delegate)
  {
    [(MIBUNWClientControllerDelegate *)delegate clientControllerDidStartReceive:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__MIBUNWClientController__receivedVeryFirstPacketArray__block_invoke()
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

- (void)_handlePacketConsumerCompletion
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_startTime];
  v5 = v4;

  v6 = [(MIBUPacketConsumable *)self->_packetConsumer packetsConsumed];
  v7 = [(MIBUPacketConsumable *)self->_packetConsumer bytesConsumed];
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _handlePacketConsumerCompletion];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v20 = self;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v5;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: All needed packets received! Total packets consumed: %lu (=%lu bytes), Total cycle time: %fs", buf, 0x2Au);
  }

  if (self->_delegate)
  {
    v17[0] = @"PacketsConsumed";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUPacketConsumable packetsConsumed](self->_packetConsumer, "packetsConsumed")}];
    v18[0] = v9;
    v17[1] = @"BytesConsumed";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MIBUPacketConsumable bytesConsumed](self->_packetConsumer, "bytesConsumed")}];
    v18[1] = v10;
    v17[2] = @"LossRate";
    v11 = MEMORY[0x277CCABB0];
    [(MIBUPacketConsumable *)self->_packetConsumer lossRate];
    v12 = [v11 numberWithDouble:?];
    v18[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    [(MIBUNWClientControllerDelegate *)self->_delegate clientControllerDidFinishReceive:self withStats:v13];
  }

  v14 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_107;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(v14, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke()
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

void __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_107(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_107_cold_1();
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_259B04000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Start assembling output file!", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 152);
  if (v4)
  {
    [v4 clientControllerDidStartAssembly:?];
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  [*(*(a1 + 32) + 32) assemble];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  if (MIBUOnceToken != -1)
  {
    __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_107_cold_2();
    v9 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v10 = *(a1 + 32);
    *buf = 138543618;
    v16 = v10;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: File assembly done, total time taken: %fs", buf, 0x16u);
  }

LABEL_10:
  [*(a1 + 32) stopMulticast];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_113;
  block[3] = &unk_2798EB9A8;
  block[4] = v11;
  dispatch_async(v12, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_2()
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

void __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_110()
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

void __57__MIBUNWClientController__handlePacketConsumerCompletion__block_invoke_113(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 176) = 3;
  v1 = *(a1 + 32);
  if (*(v1 + 152))
  {
    v6 = @"PacketsDiscarded";
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v1 + 32), "packetsDiscarded")}];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

    [*(*(a1 + 32) + 152) clientControllerDidFinishAssembly:*(a1 + 32) withStats:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createNANTCPConnectionUsingInterface:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _createNANTCPConnectionUsingInterface:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    hostAddress = self->_hostAddress;
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = hostAddress;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Establishing NAN TCP connection with sender %{public}@", &v10, 0x16u);
  }

  v7 = [[MIBUNWServerDevice alloc] initWithHostAddress:self->_hostAddress hostPort:self->_hostPort interfaceName:v4 connectOnDemand:0 statusDelegate:self];
  nanUnicastDevice = self->_nanUnicastDevice;
  self->_nanUnicastDevice = v7;

  if (!self->_nanUnicastDevice)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      [MIBUNWClientController _createNANTCPConnectionUsingInterface:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    [MIBUNWClientController _createNANTCPConnectionUsingInterface:];
    goto LABEL_9;
  }

  [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanDataPathInit"];
  [(MIBUNWDevice *)self->_nanUnicastDevice bootstrap];
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
}

void __64__MIBUNWClientController__createNANTCPConnectionUsingInterface___block_invoke()
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

void __64__MIBUNWClientController__createNANTCPConnectionUsingInterface___block_invoke_120()
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

- (void)_invalidateNANTCPConnection
{
  v8 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _invalidateNANTCPConnection];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating NAN TCP connection.", &v6, 0xCu);
  }

  nanUnicastDevice = self->_nanUnicastDevice;
  if (nanUnicastDevice)
  {
    [(MIBUNWDevice *)nanUnicastDevice invalidate];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __53__MIBUNWClientController__invalidateNANTCPConnection__block_invoke()
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

- (void)_createTCPConnectionWithAddr:(id)a3 andPort:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController _createTCPConnectionWithAddr:andPort:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: creating TCP connection to address: %{public}@; port: %{public}@", &v12, 0x20u);
  }

  v9 = [[MIBUNWServerDevice alloc] initWithHostAddress:v6 hostPort:v7 interfaceName:0 connectOnDemand:1 statusDelegate:self];
  tcpUnicastDevice = self->_tcpUnicastDevice;
  self->_tcpUnicastDevice = v9;

  if (!self->_tcpUnicastDevice)
  {
    if (MIBUOnceToken == -1)
    {
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      [MIBUNWClientController _createTCPConnectionWithAddr:andPort:];
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    [MIBUNWClientController _createTCPConnectionWithAddr:andPort:];
  }

LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
}

void __63__MIBUNWClientController__createTCPConnectionWithAddr_andPort___block_invoke()
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

void __63__MIBUNWClientController__createTCPConnectionWithAddr_andPort___block_invoke_127()
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

- (void)_disableFirewall
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__MIBUNWClientController__disableFirewall__block_invoke()
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

void __42__MIBUNWClientController__disableFirewall__block_invoke_133()
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

- (void)serverDeviceDidConnect:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController serverDeviceDidConnect:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: device connected: %{public}@", &v7, 0x16u);
  }

  if ([v4 isEqual:self->_nanUnicastDevice])
  {
    [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanDataPathStart"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWClientController_serverDeviceDidConnect___block_invoke()
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

- (void)serverDeviceDidCheckIn:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController serverDeviceDidCheckIn:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: device checked in: %{public}@", &v7, 0x16u);
  }

  [v4 isEqual:self->_nanUnicastDevice];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__MIBUNWClientController_serverDeviceDidCheckIn___block_invoke()
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

- (void)serverDeviceDidDisconnect:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController serverDeviceDidDisconnect:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: device disconnected: %{public}@", &v8, 0x16u);
  }

  if ([v4 isEqual:self->_nanUnicastDevice])
  {
    [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanDataPathEnd"];
    nanUnicastDevice = self->_nanUnicastDevice;
    self->_nanUnicastDevice = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __52__MIBUNWClientController_serverDeviceDidDisconnect___block_invoke()
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

- (void)serverDeviceDidCheckOut:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqual:self->_tcpUnicastDevice])
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWClientController serverDeviceDidCheckOut:];
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: TCP device checked out: %{public}@", &v7, 0x16u);
    }

    dispatch_semaphore_signal(self->_checkoutSem);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__MIBUNWClientController_serverDeviceDidCheckOut___block_invoke()
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

- (void)multicastSocketDidStart:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController multicastSocketDidStart:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Multicast socket started.", &v7, 0xCu);
  }

  [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanMulticastStart"];

  v6 = *MEMORY[0x277D85DE8];
}

void __50__MIBUNWClientController_multicastSocketDidStart___block_invoke()
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

- (void)multicastSocketDidStop:(id)a3 withError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientController multicastSocketDidStop:withError:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Multicast socket stopped with error: %{public}@", &v12, 0x16u);
  }

  multicastSocket = self->_multicastSocket;
  self->_multicastSocket = 0;

  [(MIBUDataCollectorProtocol *)self->_dataCollector addKeyEvent:@"ClientControllerNanMulticastEnd"];
  multicastSocketSem = self->_multicastSocketSem;
  if (multicastSocketSem)
  {
    dispatch_semaphore_signal(multicastSocketSem);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__MIBUNWClientController_multicastSocketDidStop_withError___block_invoke()
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

- (void)multicastSocket:(id)a3 didReceivePackets:(id)a4 atTime:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self->_state != 2)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MIBUNWClientController_multicastSocket_didReceivePackets_atTime___block_invoke;
    block[3] = &unk_2798EBCB0;
    block[4] = self;
    v11 = v7;
    v12 = v8;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)nanSubscriberDidStart:(id)a3 withPeerIPAddress:(id)a4 usingInterface:(id)a5 forRetry:(BOOL)a6
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MIBUNWClientController_nanSubscriberDidStart_withPeerIPAddress_usingInterface_forRetry___block_invoke;
  block[3] = &unk_2798EBCB0;
  block[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, block);
}

uint64_t __90__MIBUNWClientController_nanSubscriberDidStart_withPeerIPAddress_usingInterface_forRetry___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  [*(a1 + 32) _startMulticastReceiverUsingInterface:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _createNANTCPConnectionUsingInterface:v3];
}

- (void)nanSubscriberDidStop:(id)a3 withError:(id)a4 willRetry:(BOOL)a5
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MIBUNWClientController_nanSubscriberDidStop_withError_willRetry___block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __67__MIBUNWClientController_nanSubscriberDidStop_withError_willRetry___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  [*(a1 + 32) _stopMulticastReceiver];
  v4 = *(a1 + 32);

  return [v4 _invalidateNANTCPConnection];
}

- (void)nanSubscriberDidTerminateDataSession:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MIBUNWClientController_nanSubscriberDidTerminateDataSession___block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_checkOutWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startMulticastReceiverUsingInterface:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNWClientController_pingThroughMulticast___block_invoke_84_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "%{public}@: ping through multicast failed with error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_createNANTCPConnectionUsingInterface:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createTCPConnectionWithAddr:andPort:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
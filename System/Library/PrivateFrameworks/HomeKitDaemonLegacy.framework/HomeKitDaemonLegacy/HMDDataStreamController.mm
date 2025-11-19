@interface HMDDataStreamController
- (BOOL)_isDataStreamCapable;
- (BOOL)_isDataStreamConfigurationValid;
- (BOOL)setupRequiresCharacteristicReads;
- (HMDDataStreamController)initWithAccessory:(id)a3 transferManagementService:(id)a4 workQueue:(id)a5 dataStreamFactory:(id)a6;
- (HMDHAPAccessory)accessory;
- (HMDService)transferManagementService;
- (id)_getActiveProtocolWithName:(id)a3;
- (id)_getStreamProtocol;
- (void)_cancelStreamTransportWithError:(id)a3;
- (void)_createBulkStreamProtocol;
- (void)_createStreamSocketWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 completion:(id)a5;
- (void)_failPendingSocketRequestsWithError:(id)a3;
- (void)_handleAccessoryConnected;
- (void)_handleAccessoryDisconnected;
- (void)_initiateStreamSetup;
- (void)_processPendingSocketRequests;
- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3;
- (void)_resetDefaultDataStream;
- (void)_resetTransportInfo;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)addBulkSendListener:(id)a3 fileType:(id)a4;
- (void)dataStream:(id)a3 didFailWithError:(id)a4;
- (void)dataStreamDidClose:(id)a3;
- (void)dataStreamDidOpen:(id)a3;
- (void)dataStreamDidReceiveRawFrame:(id)a3;
- (void)dataStreamDidUpdateActiveStatus:(id)a3;
- (void)dataStreamInitializationSetupOperation:(id)a3 didCompleteSupportReadWithStatus:(BOOL)a4;
- (void)dataStreamSetupOperation:(id)a3 didFailWithError:(id)a4;
- (void)dataStreamSetupOperation:(id)a3 didSucceedWithTransport:(id)a4 sessionEncryption:(id)a5;
- (void)deRegisterFromNotifications;
- (void)handleAccessoryConnected;
- (void)handleAccessoryDisconnected:(id)a3;
- (void)invalidate;
- (void)openBulkSendSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)openStreamSocketWithApplicationProtocol:(id)a3 completion:(id)a4;
- (void)registerForNotifications;
- (void)removeBulkSendListener:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDDataStreamController

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDService)transferManagementService
{
  WeakRetained = objc_loadWeakRetained(&self->_transferManagementService);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDataStreamController *)self idleTimer];

  if (v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDDataStreamController *)v8 defaultDataStream];
      v12 = [v11 isActive];
      v13 = @"inactive";
      if (v12)
      {
        v13 = @"active";
      }

      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Idle timer fired and data stream is %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [(HMDDataStreamController *)v8 defaultDataStream];
    v15 = [v14 isActive];

    if ((v15 & 1) == 0)
    {
      v16 = [(HMDDataStreamController *)v8 defaultDataStream];
      [v16 close];
    }

    [(HMDDataStreamController *)v8 _stopIdleTimer];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopIdleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDataStreamController *)self idleTimer];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping idle timer", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDDataStreamController *)v6 idleTimer];
    [v9 cancel];

    [(HMDDataStreamController *)v6 setIdleTimer:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startIdleTimer
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDDataStreamController *)self _stopIdleTimer];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting idle timer", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v9 = [v8 preferenceForKey:@"hdsIdleTimeout"];

  v10 = [v9 numberValue];

  if (v10)
  {
    v11 = [v9 numberValue];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 5.0;
  }

  v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v13];
  [(HMDDataStreamController *)v5 setIdleTimer:v14];

  v15 = [(HMDDataStreamController *)v5 idleTimer];
  [v15 setDelegate:v5];

  v16 = [(HMDDataStreamController *)v5 workQueue];
  v17 = [(HMDDataStreamController *)v5 idleTimer];
  [v17 setDelegateQueue:v16];

  v18 = [(HMDDataStreamController *)v5 idleTimer];
  [v18 resume];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDDataStreamController_invalidate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__HMDDataStreamController_invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:&unk_28662ADB8];
  [*(a1 + 32) _cancelStreamTransportWithError:v2];
}

- (void)openBulkSendSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[HMDDataStreamBulkSendProtocol protocolName];
  v18 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v17];

  v19 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    [v21 openSessionForFileType:v12 reason:v13 metadata:v14 queue:v15 callback:v16];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v28 = v22;
      *buf = 138543362;
      v30 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@HMDDataStreamBulkSendProtocol not registered; cannot start bulk send session", buf, 0xCu);

      v22 = v28;
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v16[2](v16, 0, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidUpdateActiveStatus:(id)a3
{
  v4 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDDataStreamController *)self defaultDataStream];
  v6 = [v5 isActive];

  if (v6)
  {

    [(HMDDataStreamController *)self _stopIdleTimer];
  }

  else
  {

    [(HMDDataStreamController *)self _startIdleTimer];
  }
}

- (void)dataStreamDidReceiveRawFrame:(id)a3
{
  v4 = [(HMDDataStreamController *)self accessory];
  v3 = [v4 primaryIPServer];
  [v3 _indicateSessionActivityWithReason:@"DataStream"];
}

- (void)dataStreamDidOpen:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream opened", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamController *)v6 _processPendingSocketRequests];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidClose:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream closed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamController *)v6 _resetDefaultDataStream];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@DataStream failed with error (%@)!", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDDataStreamController *)v9 _resetDefaultDataStream];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_resetDefaultDataStream
{
  [(HMDDataStreamController *)self setDefaultDataStream:0];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  [(HMDDataStreamController *)self _failPendingSocketRequestsWithError:v3];
}

- (void)_createBulkStreamProtocol
{
  v3 = [HMDDataStreamBulkSendProtocol alloc];
  v4 = [(HMDDataStreamController *)self workQueue];
  v5 = [(HMDDataStreamController *)self accessory];
  v6 = [(HMDDataStreamController *)self logIdentifier];
  v12 = [(HMDDataStreamBulkSendProtocol *)v3 initWithQueue:v4 accessory:v5 logIdentifier:v6];

  v7 = [(HMDDataStreamController *)self defaultDataStream];
  v8 = +[HMDDataStreamBulkSendProtocol protocolName];
  [v7 addProtocol:v12 name:v8];

  v9 = [(HMDDataStreamController *)self defaultDataStream];
  v10 = [v9 protocolDelegateHandle];
  [(HMDDataStreamBulkSendProtocol *)v12 setDataStream:v10];

  v11 = [(HMDDataStreamController *)self setupInProgress];
  [v11 movePendingBulkSendListenersToBulkSendProtocol:v12];
}

- (void)_cancelStreamTransportWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamController *)self setupInProgress];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDDataStreamController *)v7 setupInProgress];
    [v10 cancelSetup];

    [(HMDDataStreamController *)v7 _failPendingSocketRequestsWithError:v4];
    [(HMDDataStreamController *)v7 setSetupInProgress:0];
  }

  else
  {
    v11 = [(HMDDataStreamController *)self defaultDataStream];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Canceling active DataStream", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [(HMDDataStreamController *)v13 defaultDataStream];
      [v17 close];
    }

    else
    {
      if (v15)
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Dropping cancel-stream; appears to already be canceled", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamSetupOperation:(id)a3 didFailWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamController *)self setupInProgress];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup (which is in progress)", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDDataStreamController *)v10 setSetupInProgress:0];
    [(HMDDataStreamController *)v10 _failPendingSocketRequestsWithError:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamSetupOperation:(id)a3 didSucceedWithTransport:(id)a4 sessionEncryption:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDataStreamController *)self setupInProgress];

  if (v11 == v8)
  {
    v16 = [(HMDDataStreamController *)self dataStreamFactory];
    v17 = [(HMDDataStreamController *)self workQueue];
    v18 = [(HMDDataStreamController *)self logIdentifier];
    v19 = (v16)[2](v16, v9, v10, v17, v18);

    [(HMDDataStreamController *)self setDefaultDataStream:v19];
    v20 = [(HMDDataStreamController *)self defaultDataStream];
    [v20 setDelegate:self];

    [v9 setDelegate:v19];
    [(HMDDataStreamController *)self _createBulkStreamProtocol];
    [v19 connect];
    [(HMDDataStreamController *)self setSetupInProgress:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Setup operation succeeded however is no longer the current one; ignoring its result.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamInitializationSetupOperation:(id)a3 didCompleteSupportReadWithStatus:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDDataStreamController *)self setupInProgress];

  if (v7 == v6)
  {
    if (v4)
    {
      [(HMDDataStreamController *)self _handleAccessoryConnected];
    }

    if ([(HMDDataStreamController *)self _isDataStreamCapable]&& ![(HMDDataStreamController *)self supportsDataStreamOverTCP])
    {
      [v6 setMaxControllerTransportMTU:self->_maxControllerTransportMTU];
      v17 = [(HMDDataStreamController *)self setupInProgress];
      [v17 startSetup];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream initialization setup (which is in progress)", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDDataStreamController *)v13 setSetupInProgress:0];
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [(HMDDataStreamController *)v13 _failPendingSocketRequestsWithError:v16];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Setup init operation succeeded however is no longer the current one; ignoring its result.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_initiateStreamSetup
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self setupInProgress];

  if (!v3)
  {
    v8 = [(HMDDataStreamController *)self setupRequiresCharacteristicReads];
    v9 = [(HMDDataStreamController *)self accessory];
    v10 = [(HMDDataStreamController *)self transferManagementService];
    if ([(HMDDataStreamController *)self supportsDataStreamOverTCP])
    {
      v11 = [(HMDDataStreamController *)self workQueue];
      v12 = [(HMDDataStreamController *)self logIdentifier];
      v13 = [HMDDataStreamSetupOperation tcpSetupOperationWithAccessory:v9 queue:v11 logIdentifier:v12 transferManagementService:v10];
    }

    else
    {
      if (![(HMDDataStreamController *)self supportsDataStreamOverHAP]&& !v8)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; not supported", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [(HMDDataStreamController *)v18 _cancelStreamTransportWithError:v21];

        goto LABEL_14;
      }

      v11 = [(HMDDataStreamController *)self workQueue];
      v12 = [(HMDDataStreamController *)self logIdentifier];
      v13 = [HMDDataStreamSetupOperation hapSetupOperationWithAccessory:v9 queue:v11 logIdentifier:v12 transferManagementService:v10 maxControllerTransportMTU:[(HMDDataStreamController *)self maxControllerTransportMTU] setupOperationReadRequired:v8];
    }

    v14 = v13;
    [(HMDDataStreamController *)self setSetupInProgress:v13];

    v15 = [(HMDDataStreamController *)self setupInProgress];
    [v15 setDelegate:self];

    if (!v8)
    {
      v16 = [(HMDDataStreamController *)self setupInProgress];
      [v16 startSetup];
    }

LABEL_14:

    goto LABEL_15;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Initiating stream setup while already in progress; ignoring this extra call.", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupRequiresCharacteristicReads
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamController *)self _isDataStreamCapable])
  {
    goto LABEL_7;
  }

  if (![(HMDDataStreamController *)self _isDataStreamConfigurationValid])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current data stream configuration is not valid", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  if ([(HMDDataStreamController *)self _isDataStreamCapable])
  {
LABEL_7:
    result = 0;
  }

  else
  {
    result = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isDataStreamCapable
{
  if ([(HMDDataStreamController *)self supportsDataStreamOverTCP])
  {
    return 1;
  }

  return [(HMDDataStreamController *)self supportsDataStreamOverHAP];
}

- (void)_createStreamSocketWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating stream socket for application protocol %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [HMDDataStreamSocket alloc];
  v16 = [(HMDDataStreamController *)v12 workQueue];
  v17 = [(HMDDataStreamSocket *)v15 initWithStreamProtocol:v8 applicationProtocolName:v9 workQueue:v16];

  [v8 registerSocket:v17];
  v10[2](v10, v17, 0);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_getStreamProtocol
{
  v3 = +[HMDDataStreamStreamProtocol protocolName];
  v4 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v3];

  v5 = v4;
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

  v8 = v5;
  if (!v7)
  {
    v9 = [HMDDataStreamStreamProtocol alloc];
    v10 = [(HMDDataStreamController *)self defaultDataStream];
    v11 = [v10 protocolDelegateHandle];
    v8 = [(HMDDataStreamStreamProtocol *)v9 initWithDataStream:v11];

    v12 = [(HMDDataStreamController *)self defaultDataStream];
    v13 = +[HMDDataStreamStreamProtocol protocolName];
    [v12 addProtocol:v8 name:v13];
  }

  return v8;
}

- (void)_failPendingSocketRequestsWithError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HMDDataStreamController *)self pendingSocketRequests];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) completion];
        (v10)[2](v10, 0, v4);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(HMDDataStreamController *)self pendingSocketRequests];
  [v11 removeAllObjects];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processPendingSocketRequests
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self pendingSocketRequests];
  v4 = [v3 hmf_isEmpty];

  if ((v4 & 1) == 0)
  {
    v5 = [(HMDDataStreamController *)self _getStreamProtocol];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(HMDDataStreamController *)self pendingSocketRequests];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 applicationProtocolName];
          v13 = [v11 completion];
          [(HMDDataStreamController *)self _createStreamSocketWithStreamProtocol:v5 applicationProtocolName:v12 completion:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [(HMDDataStreamController *)self pendingSocketRequests];
    [v14 removeAllObjects];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)openStreamSocketWithApplicationProtocol:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDDataStreamController_openStreamSocketWithApplicationProtocol_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __78__HMDDataStreamController_openStreamSocketWithApplicationProtocol_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultDataStream];

  if (v2 || ([*(a1 + 32) _initiateStreamSetup], objc_msgSend(*(a1 + 32), "setupInProgress"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) pendingSocketRequests];
    v5 = [[HMDPendingSocketRequest alloc] initWithApplicationProtocolName:*(a1 + 40) completion:*(a1 + 48)];
    [v4 addObject:v5];

    v6 = [*(a1 + 32) setupInProgress];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Waiting for DataStream setup before processing stream socket request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *MEMORY[0x277D85DE8];

      [v12 _processPendingSocketRequests];
    }
  }

  else
  {
    v14 = *(a1 + 48);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v14 + 16))(v14, 0);
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)removeBulkSendListener:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamController *)self accessory];
  v6 = [(HMDDataStreamController *)self defaultDataStream];

  if (!v6)
  {
    v17 = [(HMDDataStreamController *)self setupInProgress];

    if (v17)
    {
      v18 = [(HMDDataStreamController *)self setupInProgress];
      v19 = [v18 removeBulkSendListener:v4];

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v19)
      {
        if (v23)
        {
          v24 = HMFGetLogIdentifier();
          *v29 = 138543362;
          *&v29[4] = v24;
          v25 = "%{public}@Removed pending bulk-send listener registration (waiting for stream setup)";
LABEL_20:
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, v25, v29, 0xCu);
        }
      }

      else if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *v29 = 138543362;
        *&v29[4] = v24;
        v25 = "%{public}@Removed bulk-send listener trivially (stream setting up, but this was not part of it)";
        goto LABEL_20;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *v29 = 138543362;
        *&v29[4] = v24;
        v25 = "%{public}@Removed bulk-send listener trivially (nothing had started)";
        goto LABEL_20;
      }
    }

    objc_autoreleasePoolPop(v20);
LABEL_22:
    [v4 accessory:v5 didCloseDataStreamWithError:{0, *v29}];
    goto LABEL_23;
  }

  v7 = +[HMDDataStreamBulkSendProtocol protocolName];
  v8 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v7];

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      *v29 = 138543362;
      *&v29[4] = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream", v29, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [v11 removeListener:v4];

    goto LABEL_22;
  }

  if (v15)
  {
    v26 = HMFGetLogIdentifier();
    *v29 = 138543362;
    *&v29[4] = v26;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream (but there was no protocol!?)", v29, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v27 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1064];
  [v4 accessory:v5 didCloseDataStreamWithError:v27];

LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)addBulkSendListener:(id)a3 fileType:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamController *)self accessory];
  v9 = [(HMDDataStreamController *)self defaultDataStream];

  if (v9)
  {
    v10 = +[HMDDataStreamBulkSendProtocol protocolName];
    v11 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v10];

    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding bulk-send listener on this stream for file-type '%@'", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [v14 addListener:v6 fileType:v7];
    }

    else
    {
      if (v18)
      {
        v26 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Cancelling bulk-send listener registration for file-type '%@' due to no such protocol on this stream", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v27 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1064];
      [v6 accessory:v8 didCloseDataStreamWithError:v27];
    }
  }

  else
  {
    [(HMDDataStreamController *)self _initiateStreamSetup];
    v20 = [(HMDDataStreamController *)self setupInProgress];

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    if (v20)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Add pending bulk-send listener registration for file-type '%@' (waiting for stream setup)", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v12 = [(HMDDataStreamController *)v22 setupInProgress];
      [v12 addBulkSendListener:v6 fileType:v7];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v29;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling bulk-send listener registration for file-type '%@' due to no active data stream", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1063];
      [v6 accessory:v8 didCloseDataStreamWithError:v12];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_getActiveProtocolWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDataStreamController *)self defaultDataStream];
  v7 = [v6 protocolWithName:v4];

  return v7;
}

- (void)_handleAccessoryDisconnected
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is no longer connected: %@. Removing any transports that were active", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v4->_supportsDataStreamOverTCP = 0;
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [(HMDDataStreamController *)v4 _cancelStreamTransportWithError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamController *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDDataStreamController_handleAccessoryDisconnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__HMDDataStreamController_handleAccessoryDisconnected___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) accessory];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [*(a1 + 40) _handleAccessoryDisconnected];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) accessory];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unconfigured accessory: %@ did not match self.accessory :%@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccessoryConnected
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDataStreamController *)self _isDataStreamConfigurationValid];
  v5 = [(HMDDataStreamController *)self canAcceptBulkSendListeners];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDDataStreamController *)v7 accessory];
    v11 = [v10 shortDescription];
    v12 = HMFBooleanToString();
    v13 = HMFBooleanToString();
    v17 = 138544130;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is connected: %@. Configured: %@ Accepts Bulk Send: %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  if (v4 && v5)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [(HMDDataStreamController *)v7 accessory];
    [v14 postNotificationName:@"HMDAccessoryDoesSupportBulkSendDataStreamNotification" object:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Reading required transport characteristic for data stream controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDDataStreamController *)v7 transferManagementService];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 findCharacteristicWithType:*MEMORY[0x277CCFB98]];
    v13 = [v11 findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];
    v14 = v13;
    if (v12 && v13)
    {
      v15 = [v12 value];
      if (!v15 || ([v14 value], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v17))
      {
        v27 = [HMDCharacteristicRequest requestWithCharacteristic:v12];
        v36[0] = v27;
        v28 = [HMDCharacteristicRequest requestWithCharacteristic:v14];
        v36[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

        objc_initWeak(buf, v7);
        v30 = [(HMDDataStreamController *)v7 accessory];
        v31 = [(HMDDataStreamController *)v7 workQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __87__HMDDataStreamController__readRequiredTransportCharacteristicsIfNeededWithCompletion___block_invoke;
        v33[3] = &unk_2797351F8;
        objc_copyWeak(&v35, buf);
        v34 = v4;
        [v30 readCharacteristicValues:v29 source:1090 queue:v31 completionHandler:v33];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }

      else
      {
        (*(v4 + 2))(v4, 0);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v7;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v25;
        v39 = 2112;
        v40 = v12;
        v41 = 2112;
        v42 = v14;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot read required transport characteristic for data stream controller: version characteristic (%@) or supported configuration characteristic (%@) is nil", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(v4 + 2))(v4, v26);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot read required transport characteristic for data stream controller: transfer management service is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v4 + 2))(v4, v12);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __87__HMDDataStreamController__readRequiredTransportCharacteristicsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v6);

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) error];
          if (v12)
          {
            v13 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v14 + 16))(v14, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDataStreamConfigurationValid
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDataStreamController *)self transferManagementService];
  v5 = [v4 findCharacteristicWithType:*MEMORY[0x277CCFB98]];
  v6 = [v5 value];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0F940]);
    v8 = [v5 value];
    v9 = [v7 initWithString:v8];

    if (v9)
    {
      v10 = [v9 majorVersion];
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      v14 = v13;
      if (v10 == 1)
      {
        v103 = v4;
        v106 = v5;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = HMFGetLogIdentifier();
          v16 = [(HMDDataStreamController *)v12 accessory];
          v17 = [v16 name];
          v18 = [(HMDDataStreamController *)v12 accessory];
          v19 = [v18 uuid];
          v20 = [v19 UUIDString];
          *buf = 138544130;
          v117 = v15;
          v118 = 2112;
          v119 = v9;
          v120 = 2112;
          v121 = v17;
          v122 = 2112;
          v123 = v20;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@HDS has version '%@' (%@/%@)", buf, 0x2Au);

          v5 = v106;
          v4 = v103;
        }

        objc_autoreleasePoolPop(v11);
        v21 = [v4 findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];
        if (v21)
        {
          [(HMDDataStreamController *)v12 _resetTransportInfo];
          v22 = MEMORY[0x277CFEB30];
          v23 = [v21 value];
          v114 = 0;
          v24 = [v22 parsedFromData:v23 error:&v114];
          v25 = v114;

          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v24 == 0;
          }

          v27 = !v26;
          if (v26)
          {
            v81 = objc_autoreleasePoolPush();
            v82 = v12;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
            {
              v84 = HMFGetLogIdentifier();
              v85 = [(HMDDataStreamController *)v82 accessory];
              [v85 name];
              v86 = v101 = v21;
              [(HMDDataStreamController *)v82 accessory];
              v97 = v24;
              v87 = v99 = v27;
              [v87 uuid];
              v89 = v88 = v81;
              [v89 UUIDString];
              v90 = v95 = v25;
              *buf = 138543874;
              v117 = v84;
              v118 = 2112;
              v119 = v86;
              v120 = 2112;
              v121 = v90;
              _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Failed to parse HDS supported configuration (%@/%@)", buf, 0x20u);

              v81 = v88;
              v27 = v99;
              v24 = v97;

              v21 = v101;
              v4 = v103;

              v25 = v95;
              v5 = v106;
            }

            objc_autoreleasePoolPop(v81);
          }

          else
          {
            v93 = v9;
            v94 = v25;
            v98 = v27;
            v100 = v21;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v96 = v24;
            v28 = [v24 configurations];
            v29 = [v28 countByEnumeratingWithState:&v110 objects:v115 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v111;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v111 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v110 + 1) + 8 * i);
                  v34 = [v33 transport];

                  if (v34)
                  {
                    v35 = [v33 transport];
                    v36 = [v35 value];

                    if (v36 == 1)
                    {
                      if (![(HMDDataStreamController *)v12 supportsDataStreamOverHAP])
                      {
                        v37 = [v33 maximumControllerTransportMTU];

                        if (v37)
                        {
                          v38 = [v33 maximumControllerTransportMTU];
                          v39 = [v38 value];
                          v40 = [v39 unsignedIntegerValue];

                          [(HMDDataStreamController *)v12 setSupportsDataStreamOverHAP:1];
                          [(HMDDataStreamController *)v12 setMaxControllerTransportMTU:v40];
                        }

                        else
                        {
                          v41 = objc_autoreleasePoolPush();
                          v42 = v12;
                          v43 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                          {
                            v44 = HMFGetLogIdentifier();
                            *buf = 138543362;
                            v117 = v44;
                            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service advertises HDS-over-HAP but provides no MTU; ignoring.", buf, 0xCu);
                          }

                          objc_autoreleasePoolPop(v41);
                        }
                      }
                    }

                    else if (!v36)
                    {
                      [(HMDDataStreamController *)v12 setSupportsDataStreamOverTCP:1];
                    }
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v110 objects:v115 count:16];
              }

              while (v30);
            }

            v4 = v103;
            v5 = v106;
            v9 = v93;
            v25 = v94;
            v21 = v100;
            v27 = v98;
            v24 = v96;
          }
        }

        else
        {
          v72 = objc_autoreleasePoolPush();
          v73 = v12;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = HMFGetLogIdentifier();
            v76 = [(HMDDataStreamController *)v73 accessory];
            v77 = [v76 name];
            v78 = [(HMDDataStreamController *)v73 accessory];
            v79 = [v78 uuid];
            v80 = [v79 UUIDString];
            *buf = 138543874;
            v117 = v75;
            v118 = 2112;
            v119 = v77;
            v120 = 2112;
            v121 = v80;
            _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@No HDS supported configuration (%@/%@)", buf, 0x20u);

            v21 = 0;
            v5 = v106;

            v4 = v103;
          }

          objc_autoreleasePoolPop(v72);
          v27 = 0;
        }

        goto LABEL_50;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v66 = HMFGetLogIdentifier();
        v67 = [(HMDDataStreamController *)v12 accessory];
        [v67 name];
        v68 = v109 = v5;
        v69 = [(HMDDataStreamController *)v12 accessory];
        v70 = [v69 uuid];
        [v70 UUIDString];
        v71 = v105 = v4;
        *buf = 138544130;
        v117 = v66;
        v118 = 2112;
        v119 = v9;
        v120 = 2112;
        v121 = v68;
        v122 = 2112;
        v123 = v71;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@HDS version '%@' is not supported (%@/%@)", buf, 0x2Au);

        v5 = v109;
        v4 = v105;
      }

      v65 = v11;
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      v56 = self;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = HMFGetLogIdentifier();
        v59 = [v5 value];
        [(HMDDataStreamController *)v56 accessory];
        v60 = v108 = v5;
        [v60 name];
        v61 = v104 = v4;
        [(HMDDataStreamController *)v56 accessory];
        v62 = v102 = v55;
        v63 = [v62 uuid];
        v64 = [v63 UUIDString];
        *buf = 138544130;
        v117 = v58;
        v118 = 2112;
        v119 = v59;
        v120 = 2112;
        v121 = v61;
        v122 = 2112;
        v123 = v64;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@HDS version '%@' was not parsable (%@/%@)", buf, 0x2Au);

        v55 = v102;
        v4 = v104;

        v5 = v108;
      }

      v65 = v55;
    }

    objc_autoreleasePoolPop(v65);
    v27 = 0;
LABEL_50:

    goto LABEL_51;
  }

  v45 = objc_autoreleasePoolPush();
  v46 = self;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    v49 = [(HMDDataStreamController *)v46 accessory];
    v50 = [v49 name];
    [(HMDDataStreamController *)v46 accessory];
    v51 = v107 = v5;
    [v51 uuid];
    v53 = v52 = v4;
    v54 = [v53 UUIDString];
    *buf = 138543874;
    v117 = v48;
    v118 = 2112;
    v119 = v50;
    v120 = 2112;
    v121 = v54;
    _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@No HDS version found (%@/%@)", buf, 0x20u);

    v4 = v52;
    v5 = v107;
  }

  objc_autoreleasePoolPop(v45);
  v27 = 0;
LABEL_51:

  v91 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)handleAccessoryConnected
{
  v3 = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDDataStreamController_handleAccessoryConnected__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __51__HMDDataStreamController_handleAccessoryConnected__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__HMDDataStreamController_handleAccessoryConnected__block_invoke_2;
  v3[3] = &unk_2797359D8;
  v3[4] = v1;
  return [v1 _readRequiredTransportCharacteristicsIfNeededWithCompletion:v3];
}

void __51__HMDDataStreamController_handleAccessoryConnected__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [*(a1 + 32) _handleAccessoryConnected];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_resetTransportInfo
{
  [(HMDDataStreamController *)self setSupportsDataStreamOverTCP:0];
  [(HMDDataStreamController *)self setSupportsDataStreamOverHAP:0];

  [(HMDDataStreamController *)self setMaxControllerTransportMTU:0];
}

- (void)deRegisterFromNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)registerForNotifications
{
  v5 = [(HMDDataStreamController *)self accessory];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:v5];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:v5];

  if ([v5 isReachable])
  {
    [(HMDDataStreamController *)self handleAccessoryConnected];
  }
}

- (HMDDataStreamController)initWithAccessory:(id)a3 transferManagementService:(id)a4 workQueue:(id)a5 dataStreamFactory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HMDDataStreamController;
  v14 = [(HMDDataStreamController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, v10);
    objc_storeWeak(&v15->_transferManagementService, v11);
    objc_storeStrong(&v15->_workQueue, a5);
    v16 = [MEMORY[0x277CBEB18] array];
    pendingSocketRequests = v15->_pendingSocketRequests;
    v15->_pendingSocketRequests = v16;

    v18 = _Block_copy(v13);
    dataStreamFactory = v15->_dataStreamFactory;
    v15->_dataStreamFactory = v18;

    v20 = [v10 uuid];
    v21 = [v20 UUIDString];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = v21;
  }

  return v15;
}

HMDDataStream *__81__HMDDataStreamController_initWithAccessory_transferManagementService_workQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[HMDDataStream alloc] initWithTransport:v11 sessionEncryption:v10 workQueue:v9 logIdentifier:v8];

  return v12;
}

@end
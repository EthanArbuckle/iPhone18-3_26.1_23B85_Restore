@interface HMDCameraStreamControlMessageHandler
+ (BOOL)_isNegotiateMessage:(id)message;
+ (BOOL)_isReconfigureMessage:(id)message;
+ (BOOL)_isRemoteSetupMessage:(id)message;
+ (BOOL)_isSetAudioStreamSettingMessage:(id)message;
+ (BOOL)_isSetAudioVolumeMessage:(id)message;
+ (BOOL)_isStartMessage:(id)message;
+ (BOOL)_isStopMessage:(id)message;
+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)message;
+ (id)logCategory;
- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)info;
- (BOOL)hasStreamSession;
- (BOOL)hasStreamSessionShowingOnCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor residentMessageHandler:(id)messageHandler dataSource:(id)self0;
- (HMDCameraStreamManagerSession)streamSession;
- (HMDHAPAccessory)accessory;
- (NSDictionary)stateDump;
- (NSString)description;
- (NSString)streamSessionID;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)identifier;
- (void)_handleNegotiateMessage:(id)message;
- (void)_handleReconfigureMessage:(id)message;
- (void)_handleRemoteSetupMessage:(id)message;
- (void)_handleSetAudioState:(id)state;
- (void)_handleSetAudioVolume:(id)volume;
- (void)_handleStartMessage:(id)message;
- (void)_handleStopMessage:(id)message;
- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)message;
- (void)_resetStreamSession:(id)session;
- (void)_respondToLocalNegotiateStreamMessage:(id)message;
- (void)_sendStreamStoppedMessageWithError:(id)error;
- (void)_sendStreamStoppedRemoteNotificationWithError:(id)error;
- (void)_stopStreamWithError:(id)error;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)handleCameraSettingsDidChangeNotification:(id)notification;
- (void)handleConnectionDeactivatedNotification:(id)notification;
- (void)handleMessage:(id)message;
- (void)handleProcessStateChange:(id)change;
- (void)setAudioVolume:(id)volume callback:(id)callback;
- (void)setStreamSession:(id)session;
- (void)streamControlManager:(id)manager didNegotiateStreamWithSelectedParameters:(id)parameters;
- (void)streamControlManager:(id)manager didStopStreamWithSessionID:(id)d error:(id)error;
- (void)streamControlManagerDidReceiveFirstFrame:(id)frame;
- (void)streamControlManagerDidReconfigureStream:(id)stream;
- (void)streamControlManagerDidSetUpRemoteConnection:(id)connection;
- (void)streamControlManagerDidStartStream:(id)stream;
- (void)takeOwnershipOfStreamUsingMessage:(id)message;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraStreamControlMessageHandler

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleConnectionDeactivatedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"connection"];

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

  if (v7)
  {
    workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMDCameraStreamControlMessageHandler_handleConnectionDeactivatedNotification___block_invoke;
    v9[3] = &unk_2797359B0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __80__HMDCameraStreamControlMessageHandler_handleConnectionDeactivatedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) streamSession];
  v3 = [v2 streamClientConnection];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client has deactivated", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v9 _stopStreamWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleProcessStateChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"processInfo"];

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

  if (v7)
  {
    workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HMDCameraStreamControlMessageHandler_handleProcessStateChange___block_invoke;
    v9[3] = &unk_2797359B0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __65__HMDCameraStreamControlMessageHandler_handleProcessStateChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) streamSession];
  v3 = [v2 streamClientConnection];
  v4 = [v3 processInfo];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5 && [*(a1 + 32) _shouldStopStreamSessionForProcessInfo:*(a1 + 40)])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) state];
      if (v10 > 4)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_27972E080[v10];
      }

      v12 = v11;
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client application state is %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v13 _stopStreamWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDCameraStreamControlMessageHandler_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __82__HMDCameraStreamControlMessageHandler_handleCameraSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 cameraProfiles];
  v4 = [v3 anyObject];
  v5 = [v4 currentSettings];

  if (v5)
  {
    [v5 currentAccessMode];
    if ((HMIsStreamingAllowedForCameraAccessMode() & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      [v6 _stopStreamWithError:v7];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings are not initialized, skipping cancelling pending stream requests", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetStreamSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = sessionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting the current stream session with error: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession streamControlManager];
  streamMetrics = [streamControlManager streamMetrics];
  [streamMetrics setError:sessionCopy];

  [(HMDCameraStreamControlMessageHandler *)selfCopy setStreamSession:0];
  dynamicActivityAttributionPublisher = [(HMDCameraStreamControlMessageHandler *)selfCopy dynamicActivityAttributionPublisher];
  [dynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendStreamStoppedRemoteNotificationWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID = [streamSession destinationID];
    v30 = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = destinationID;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending stream stopped notification to %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession2 sessionID];
    v16SessionID = [sessionID sessionID];
    [dictionary setObject:v16SessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v18 forKeyedSubscript:@"kCameraSessionError"];
    }

    v19 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamStoppedRemoteNotificationKey" messagePayload:dictionary];
    [v19 setQualityOfService:33];
    v20 = [v19 copy];
    profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)selfCopy profileUniqueIdentifier];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID2 = [streamSession3 destinationID];
    workQueue = [(HMDCameraStreamControlMessageHandler *)selfCopy workQueue];
    [homeManager sendSecureMessage:v20 target:profileUniqueIdentifier userID:0 destination:destinationID2 responseQueue:workQueue responseHandler:&__block_literal_global_67_60954];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@No home manager", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendStreamStoppedMessageWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamClientConnection = [streamSession streamClientConnection];

  if (streamClientConnection)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSessionID = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
    [dictionary setObject:streamSessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v9 forKeyedSubscript:@"kCameraSessionError"];
      streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
      streamControlManager = [streamSession2 streamControlManager];
      streamMetrics = [streamControlManager streamMetrics];
      [streamMetrics setError:errorCopy];
    }

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self profileUniqueIdentifier];
    v15 = [v13 initWithTarget:profileUniqueIdentifier];

    v16 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCF610] destination:v15 payload:dictionary];
    [v16 setTransport:streamClientConnection];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      shortDescription = [v16 shortDescription];
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = shortDescription;
      v32 = 2112;
      v33 = streamClientConnection;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Notifying client that stream has stopped using message %@: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    messageDispatcher = [(HMDCameraStreamControlMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v16];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot send stream stopped message because XPC client connection doesn't exist", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManager:(id)manager didStopStreamWithSessionID:(id)d error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dCopy = d;
  errorCopy = error;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v13 = [sessionID isEqual:dCopy];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v18;
      v42 = 2114;
      v43 = errorCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Stream did stop with error: %{public}@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    currentMessage = [streamSession2 currentMessage];

    if (currentMessage)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription = [currentMessage shortDescription];
        v40 = 138543618;
        v41 = v24;
        v42 = 2112;
        v43 = shortDescription;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Responding to the current message: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (errorCopy)
      {
        [currentMessage respondWithError:errorCopy];
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [currentMessage respondWithError:v29];
      }

      streamSession3 = [(HMDCameraStreamControlMessageHandler *)v22 streamSession];
      [streamSession3 setCurrentMessage:0];
    }

    streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID = [streamSession4 destinationID];

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (destinationID)
    {
      if (v36)
      {
        v37 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v37;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being relayed elsewhere so sending remote stream stopped message", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedRemoteNotificationWithError:errorCopy];
    }

    else
    {
      if (v36)
      {
        v38 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v38;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being shown locally so sending local stream stopped message", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedMessageWithError:errorCopy];
    }

    [(HMDCameraStreamControlMessageHandler *)v34 _resetStreamSession:errorCopy];
  }

  else
  {
    if (v17)
    {
      v26 = HMFGetLogIdentifier();
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      sessionID2 = [streamSession5 sessionID];
      v40 = 138543874;
      v41 = v26;
      v42 = 2112;
      v43 = dCopy;
      v44 = 2112;
      v45 = sessionID2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring did stop stream callback for session ID %@ because our session ID is %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidReconfigureStream:(id)stream
{
  v42 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == streamCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession2 currentMessage];
    name = [currentMessage name];
    v10 = [name isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage2 = [streamSession3 currentMessage];
        name2 = [currentMessage2 name];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage3 = [streamSession4 currentMessage];
        identifier = [currentMessage3 identifier];
        uUIDString = [identifier UUIDString];
        *buf = 138543874;
        v37 = v15;
        v38 = 2112;
        v39 = name2;
        v40 = 2112;
        v41 = uUIDString;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with identifier %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      currentMessage4 = [streamSession5 currentMessage];
      responseHandler = [currentMessage4 responseHandler];

      if (responseHandler)
      {
        streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage5 = [streamSession6 currentMessage];
        responseHandler2 = [currentMessage5 responseHandler];
        responseHandler2[2](responseHandler2, 0, 0);
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v31;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@No response handler set for message", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
      }

      streamSession7 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      [streamSession7 setCurrentMessage:0];
    }

    else
    {
      if (v14)
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v27;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@No pending reconfigure stream request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidReceiveFirstFrame:(id)frame
{
  v26 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  [sessionID markMilestoneFor:@"ReceivedFirstFrame"];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  currentMessage = [streamSession2 currentMessage];

  name = [currentMessage name];
  v10 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

  if (v10)
  {
    streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
    streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
    [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:0];

    [(HMDCameraStreamControlMessageHandler *)self _respondToLocalNegotiateStreamMessage:currentMessage];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    [streamSession3 setCurrentMessage:0];

    streamSession4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    streamSetupTimer = [streamSession4 streamSetupTimer];
    [streamSetupTimer suspend];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [currentMessage shortDescription];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = shortDescription;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Received did receive first frame with an unexpected current message: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidStartStream:(id)stream
{
  v41 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == streamCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentStartResponse"];

    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession3 currentMessage];

    if (currentMessage)
    {
      name = [currentMessage name];
      v18 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v18)
      {
LABEL_17:

        goto LABEL_18;
      }

      name2 = [currentMessage name];
      v20 = [name2 isEqualToString:@"kStartRemoteStreamRequestKey"];

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          shortDescription = [currentMessage shortDescription];
          v35 = 138543618;
          v36 = v25;
          v37 = 2112;
          v38 = shortDescription;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did start stream callback by responding to remote start stream message: %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        [currentMessage respondWithSuccess];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        [streamSession4 setCurrentMessage:0];

        streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        streamSetupTimer = [streamSession5 streamSetupTimer];
        [streamSetupTimer suspend];

        streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSnapshotHandler];
        streamManagementService = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamManagementService];
        [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:0];

        goto LABEL_17;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        shortDescription2 = [currentMessage shortDescription];
        v35 = 138543618;
        v36 = v32;
        v37 = 2112;
        v38 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did start stream callback: %@", &v35, 0x16u);

        goto LABEL_15;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v32;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Received did start stream without a current message", &v35, 0xCu);
LABEL_15:
      }
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_17;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy3 streamSession];
    streamControlManager2 = [streamSession6 streamControlManager];
    v35 = 138543874;
    v36 = v10;
    v37 = 2112;
    v38 = streamControlManager2;
    v39 = 2112;
    v40 = streamCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did start stream because our stream control manager %@ does not match the provided one: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidSetUpRemoteConnection:(id)connection
{
  v47 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == connectionCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentConnectionSetup"];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      destinationID = [streamSession3 destinationID];
      *buf = 138543618;
      v42 = v18;
      v43 = 2112;
      v44 = destinationID;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending stream remote setup notification to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
    home = [accessory home];
    homeManager = [home homeManager];

    if (homeManager)
    {
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      sessionID2 = [streamSession4 sessionID];
      v25SessionID = [sessionID2 sessionID];
      v40 = v25SessionID;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      v28 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamRemoteConnectionSetupNotificationKey" messagePayload:v27];
      [v28 setQualityOfService:33];
      v29 = [v28 copy];
      profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)selfCopy profileUniqueIdentifier];
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      destinationID2 = [streamSession5 destinationID];
      workQueue = [(HMDCameraStreamControlMessageHandler *)selfCopy workQueue];
      [homeManager sendSecureMessage:v29 target:profileUniqueIdentifier userID:0 destination:destinationID2 responseQueue:workQueue responseHandler:0];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v37;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@No home manager", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
      streamControlManager2 = [streamSession6 streamControlManager];
      *buf = 138543874;
      v42 = v10;
      v43 = 2112;
      v44 = streamControlManager2;
      v45 = 2112;
      v46 = connectionCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did set up remote connection because our stream control manager %@ does not match the provided one: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManager:(id)manager didNegotiateStreamWithSelectedParameters:(id)parameters
{
  v44 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  parametersCopy = parameters;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == managerCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentNegotiationResponse"];

    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession3 currentMessage];

    if (currentMessage)
    {
      name = [currentMessage name];
      v21 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v38 = 138543362;
          v39 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by starting stream", &v38, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [(HMDCameraStreamControlMessageHandler *)selfCopy _handleStartMessage:currentMessage];
        goto LABEL_20;
      }

      name2 = [currentMessage name];
      v31 = [name2 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      v28 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          shortDescription = [currentMessage shortDescription];
          v38 = 138543618;
          v39 = v33;
          v40 = 2112;
          v41 = shortDescription;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by responding to remote negotiate stream message: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [currentMessage respondWithPayload:parametersCopy];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy3 streamSession];
        [streamSession4 setCurrentMessage:0];

        goto LABEL_20;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        shortDescription2 = [currentMessage shortDescription];
        v38 = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = shortDescription2;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did negotiate stream callback: %@", &v38, 0x16u);

        goto LABEL_18;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received did negotiate stream without a current message", &v38, 0xCu);
LABEL_18:
      }
    }

    objc_autoreleasePoolPop(v26);
LABEL_20:

    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy4 streamSession];
    streamControlManager2 = [streamSession5 streamControlManager];
    v38 = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = streamControlManager2;
    v42 = 2112;
    v43 = managerCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did negotiate stream because our stream control manager %@ does not match the provided one: %@", &v38, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_21:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamSetupTimer = [streamSession streamSetupTimer];

  if (streamSetupTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Stream setup timer fired", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
    [(HMDCameraStreamControlMessageHandler *)selfCopy _stopStreamWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  name = [accessory name];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  instanceID = [streamManagementService instanceID];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v9SessionID = [sessionID sessionID];
  v11 = [v3 stringWithFormat:@"%@/%@/%@", name, instanceID, v9SessionID];

  return v11;
}

- (void)_respondToLocalNegotiateStreamMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  streamSessionID = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
  [dictionary setObject:streamSessionID forKeyedSubscript:@"kCameraSessionID"];

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  slotIdentifier = [streamControlManager slotIdentifier];
  [dictionary setObject:slotIdentifier forKeyedSubscript:*MEMORY[0x277CD1060]];

  v11 = MEMORY[0x277CCABB0];
  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager2 = [streamSession2 streamControlManager];
  v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(streamControlManager2, "audioStreamSetting")}];
  [dictionary setObject:v14 forKeyedSubscript:@"kAudioStreamSetting"];

  streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager3 = [streamSession3 streamControlManager];
  aspectRatio = [streamControlManager3 aspectRatio];
  [dictionary setObject:aspectRatio forKeyedSubscript:*MEMORY[0x277CD1198]];

  streamSession4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager4 = [streamSession4 streamControlManager];
  audioDownlinkToken = [streamControlManager4 audioDownlinkToken];
  [dictionary setObject:audioDownlinkToken forKeyedSubscript:*MEMORY[0x277CCF5D8]];

  streamSession5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager5 = [streamSession5 streamControlManager];
  audioUplinkToken = [streamControlManager5 audioUplinkToken];
  [dictionary setObject:audioUplinkToken forKeyedSubscript:*MEMORY[0x277CCF5E0]];

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v31 = 138543874;
    v32 = v27;
    v33 = 2112;
    v34 = shortDescription;
    v35 = 2112;
    v36 = dictionary;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Responding to message %@ with payload %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
  v29 = [dictionary copy];
  [messageCopy respondWithPayload:v29];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (identifierCopy)
  {
    streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    destinationID = [streamSession destinationID];

    if (!destinationID)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating activity attribution with applicationBundleIdentifier: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      dynamicActivityAttributionPublisher = [(HMDCameraStreamControlMessageHandler *)selfCopy dynamicActivityAttributionPublisher];
      [dynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:identifierCopy];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  LODWORD(workQueue) = [dataSource supportsApplicationBackgroundStateMonitoring];

  state = [infoCopy state];
  if (workQueue)
  {
    if (state == -1)
    {
      v9 = [infoCopy isEntitledForSPIAccess] ^ 1;
    }

    else if (state)
    {
      if (state == 2)
      {
        applicationInfo = [infoCopy applicationInfo];
        LOBYTE(v9) = applicationInfo != 0;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = (state - 4) < 0xFFFFFFFFFFFFFFFBLL;
  }

  return v9;
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  stateDump = [streamControlManager stateDump];
  [dictionary setObject:stateDump forKeyedSubscript:@"Stream"];

  return dictionary;
}

- (BOOL)hasStreamSessionShowingOnCurrentDevice
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraStreamControlMessageHandler *)self hasStreamSession])
  {
    return 0;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  destinationID = [streamSession destinationID];
  v6 = destinationID == 0;

  return v6;
}

- (BOOL)hasStreamSession
{
  selfCopy = self;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  LOBYTE(selfCopy) = streamSession != 0;

  return selfCopy;
}

- (NSString)streamSessionID
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v5SessionID = [sessionID sessionID];

  return v5SessionID;
}

- (void)_handleSetAudioState:(id)state
{
  v45 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [stateCopy numberForKey:@"kAudioStreamSetting"];
  v7 = v6;
  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    v18 = v14;
    goto LABEL_16;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v9 = unsignedIntegerValue;
  if ((unsignedIntegerValue - 1) >= 2)
  {
    if (unsignedIntegerValue == 3)
    {
      if ([stateCopy isAuthorizedForMicrophoneAccess])
      {
        dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
        supportsBidirectionalAudioForCameraStreaming = [dataSource supportsBidirectionalAudioForCameraStreaming];

        if (supportsBidirectionalAudioForCameraStreaming)
        {
          goto LABEL_3;
        }

        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v24;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Bi-directional audio is not supported on this device for camera streaming.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 48;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          name = [stateCopy name];
          *buf = 138543874;
          v40 = v35;
          v41 = 2112;
          v42 = name;
          v43 = 2048;
          sourcePid = [stateCopy sourcePid];
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Denying incoming message %@ for client pid %ld since the process is not authorized for microphone access", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 89;
      }

LABEL_17:
      v12 = [v25 hmErrorWithCode:v26];
      [stateCopy respondWithError:v12];
      goto LABEL_18;
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v30;
      v41 = 2048;
      v42 = v9;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid audio stream setting: %lu", buf, 0x16u);
    }

    v18 = v27;
LABEL_16:
    objc_autoreleasePoolPop(v18);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 3;
    goto LABEL_17;
  }

LABEL_3:
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  [streamControlManager updateAudioSetting:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9, @"kAudioStreamSetting"}];
  v38 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [stateCopy respondWithPayload:v13];

LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)setAudioVolume:(id)volume callback:(id)callback
{
  v29 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  callbackCopy = callback;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  supportsChangingVolume = [dataSource supportsChangingVolume];

  if ((supportsChangingVolume & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Changing audio volume setting is not allowed on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 48;
    goto LABEL_10;
  }

  if (!volumeCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 3;
LABEL_10:
    v13 = [v18 hmErrorWithCode:v19];
    callbackCopy[2](callbackCopy, v13);
    goto LABEL_11;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__HMDCameraStreamControlMessageHandler_setAudioVolume_callback___block_invoke;
  v25[3] = &unk_279730A60;
  v26 = callbackCopy;
  [streamControlManager updateAudioVolume:volumeCopy callback:v25];

  v13 = v26;
LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
}

void __64__HMDCameraStreamControlMessageHandler_setAudioVolume_callback___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)_handleSetAudioVolume:(id)volume
{
  v16 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([volumeCopy isEntitledForSPIAccess])
  {
    v6 = [volumeCopy numberForKey:*MEMORY[0x277CCF5E8]];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMDCameraStreamControlMessageHandler__handleSetAudioVolume___block_invoke;
    v12[3] = &unk_2797359D8;
    v13 = volumeCopy;
    [(HMDCameraStreamControlMessageHandler *)self setAudioVolume:v6 callback:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Ignoring set audio volume message as it is not entitled for SPI access", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [volumeCopy respondWithError:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleStopMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling stop message with identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v12 = [messagePayload errorFromDataForKey:@"kCameraSessionError"];

  if (v12)
  {
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    streamControlManager = [streamSession streamControlManager];
    streamMetrics = [streamControlManager streamMetrics];
    [streamMetrics setError:v12];
  }

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager2 = [streamSession2 streamControlManager];
  [streamControlManager2 stopStreamWithError:v12];

  [messageCopy respondWithSuccess];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update video resolution quality message with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v12 = [messagePayload hmf_numberForKey:*MEMORY[0x277CCF620]];

  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing camera video resolution quality", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 27;
    goto LABEL_12;
  }

  integerValue = [v12 integerValue];
  if ((integerValue - 1) >= 5)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 2048;
      v33 = integerValue;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid resolution quality enum value received: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 3;
LABEL_12:
    v26 = [v20 hmErrorWithCode:v21];
    [messageCopy respondWithError:v26];

    goto LABEL_13;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession streamControlManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__HMDCameraStreamControlMessageHandler__handleUpdateMaximumVideoResolutionQualityMessage___block_invoke;
  v28[3] = &unk_2797358C8;
  v28[4] = selfCopy;
  v29 = messageCopy;
  [streamControlManager updateMaximumVideoResolutionQuality:integerValue completionHandler:v28];

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

void __90__HMDCameraStreamControlMessageHandler__handleUpdateMaximumVideoResolutionQualityMessage___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update video resolution quality", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfuly updated video resolution quality", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleReconfigureMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling reconfigure message with identifier: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  [streamSession setCurrentMessage:messageCopy];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession2 streamControlManager];
  messagePayload = [messageCopy messagePayload];
  [streamControlManager reconfigureStream:messagePayload];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleStartMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = identifier;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling start message with identifier: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  proxyConnection = [messageCopy proxyConnection];
  applicationBundleIdentifier = [proxyConnection applicationBundleIdentifier];
  [(HMDCameraStreamControlMessageHandler *)selfCopy _attributeMicrophoneUsageToApplicationBundleIdentifier:applicationBundleIdentifier];

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  [streamSession setCurrentMessage:messageCopy];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  sessionID = [streamSession2 sessionID];
  [sessionID markMilestoneFor:@"ReceivedStartRequest"];

  streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession3 streamControlManager];
  messagePayload = [messageCopy messagePayload];
  [streamControlManager startStreamWithRemoteSettings:messagePayload];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteSetupMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  remoteSourceDevice = [messageCopy remoteSourceDevice];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (remoteSourceDevice)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      identifier = [messageCopy identifier];
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = identifier;
      v24 = 2112;
      v25 = remoteSourceDevice;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remote setup message %@ from device: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession sessionID];
    [sessionID markMilestoneFor:@"ReceivedConnectionSetup"];

    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    streamControlManager = [streamSession2 streamControlManager];
    [streamControlManager setUpRemoteConnectionWithDevice:remoteSourceDevice];

    [messageCopy respondWithPayload:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = messageCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote source device for remote setup message: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleNegotiateMessage:(id)message
{
  v144 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:@"kCameraSessionID"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138543874;
      v139 = v11;
      v140 = 2112;
      v141 = v6;
      v142 = 2112;
      v143 = shortDescription;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiation message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
    v14 = accessory;
    if (!accessory)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v29;
        v140 = 2112;
        v141 = v6;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      currentSettings = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      [messageCopy respondWithError:currentSettings];
      goto LABEL_62;
    }

    cameraProfiles = [accessory cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    currentSettings = [anyObject currentSettings];

    if (currentSettings)
    {
      [currentSettings currentAccessMode];
      if ((HMIsStreamingAllowedForCameraAccessMode() & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          [currentSettings currentAccessMode];
          v22 = HMCameraAccessModeAsString();
          *buf = 138543874;
          v139 = v21;
          v140 = 2112;
          v141 = v6;
          v142 = 2112;
          v143 = v22;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[%@] Streaming is disallowed for current access mode: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        [messageCopy respondWithError:v23];
        goto LABEL_61;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v33;
        v140 = 2112;
        v141 = v6;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[%@] Camera profile settings are not initialized; skipping controller side checks to disallow stream request", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    v34 = [messageCopy dataForKey:@"kCameraSessionPreference"];
    v35 = 0;
    v134 = v34;
    if ([messageCopy isEntitledForSPIAccess] && v34)
    {
      v137 = 0;
      v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:&v137];
      v36 = v137;
      if (!v35)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543874;
          v139 = v40;
          v140 = 2112;
          v141 = v6;
          v142 = 2112;
          v143 = v36;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to unarchive camera stream preferences from camera session preference message: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v35 = 0;
      }
    }

    v135 = v35;
    proxyConnection = [messageCopy proxyConnection];
    isRemote = [messageCopy isRemote];
    v43 = objc_autoreleasePoolPush();
    v44 = selfCopy;
    v45 = HMFGetOSLogHandle();
    v46 = v45;
    if ((isRemote & 1) == 0 && !proxyConnection)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543874;
        v139 = v47;
        v140 = 2112;
        v141 = v6;
        v142 = 2112;
        v143 = messageCopy;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot find XPC client connection for negotiate stream message received over XPC: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
      [messageCopy respondWithError:v48];
      v49 = v134;
      goto LABEL_60;
    }

    v133 = proxyConnection;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      processInfo = [proxyConnection processInfo];
      *buf = 138543874;
      v139 = v50;
      v140 = 2112;
      v141 = v6;
      v142 = 2112;
      v143 = processInfo;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@[%@] Using stream client process info: %@", buf, 0x20u);

      proxyConnection = v133;
    }

    objc_autoreleasePoolPop(v43);
    v52 = [HMDCameraStreamSessionID alloc];
    streamManagementService = [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v48 = [(HMDCameraStreamSessionID *)v52 initWithAccessory:v14 service:streamManagementService sessionID:v6 message:messageCopy];

    negotiationMilestone = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];

    if (negotiationMilestone)
    {
      negotiationMilestone2 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v56 = [negotiationMilestone2 key];
      v57 = MEMORY[0x277CCABB0];
      negotiationMilestone3 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v59 = [v57 numberWithInteger:{objc_msgSend(negotiationMilestone3, "timestamp")}];
      [(HMDCameraSessionID *)v48 markMilestoneFor:v56 withTimestamp:v59];

      proxyConnection = v133;
    }

    remoteSourceDevice = [messageCopy remoteSourceDevice];
    isReachable = [v14 isReachable];
    residentMessageHandler = [(HMDCameraStreamControlMessageHandler *)v44 residentMessageHandler];
    remoteAccessDevice = [residentMessageHandler remoteAccessDevice];

    v130 = currentSettings;
    if (isReachable)
    {
      v62 = objc_autoreleasePoolPush();
      v63 = v44;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v65;
        v140 = 2112;
        v141 = v6;
        v66 = "%{public}@[%@] Creating local stream control manager because accessory is reachable";
LABEL_47:
        _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, v66, buf, 0x16u);
      }
    }

    else
    {
      dataSource = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
      supportsReceivingRemoteCameraStream = [dataSource supportsReceivingRemoteCameraStream];

      if (supportsReceivingRemoteCameraStream)
      {
        v62 = objc_autoreleasePoolPush();
        v69 = v44;
        v64 = HMFGetOSLogHandle();
        v70 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
        if (remoteAccessDevice)
        {
          v127 = v48;
          if (v70)
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v139 = v71;
            v140 = 2112;
            v141 = v6;
            _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating remote stream control manager because accessory is not reachable", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v62);
          dataSource2 = [(HMDCameraStreamControlMessageHandler *)v69 dataSource];
          [(HMDCameraStreamControlMessageHandler *)v69 workQueue];
          v124 = v72 = v69;
          streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)v69 streamSnapshotHandler];
          networkMonitor = [(HMDCameraStreamControlMessageHandler *)v69 networkMonitor];
          reachabilityPath = [networkMonitor reachabilityPath];
          streamManagementService2 = [(HMDCameraStreamControlMessageHandler *)v69 streamManagementService];
          messagePayload = [messageCopy messagePayload];
          profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)v72 profileUniqueIdentifier];
          residentMessageHandler2 = [(HMDCameraStreamControlMessageHandler *)v72 residentMessageHandler];
          v121 = messagePayload;
          networkMonitor2 = streamManagementService2;
          v115 = streamManagementService2;
          v117 = messagePayload;
          v48 = v127;
          v78 = remoteSourceDevice;
          v79 = [dataSource2 createRemoteStreamControlManagerWithSessionID:v127 workQueue:v124 streamSnapshotHandler:streamSnapshotHandler reachabilityPath:reachabilityPath device:remoteSourceDevice delegate:v72 accessory:v14 streamManagementService:v115 remoteCapabilities:v117 profileUniqueIdentifier:profileUniqueIdentifier residentMessageHandler:residentMessageHandler2 remoteAccessDevice:remoteAccessDevice streamPreference:v135];
          v80 = 60.0;
          goto LABEL_50;
        }

        if (v70)
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v139 = v65;
          v140 = 2112;
          v141 = v6;
          v66 = "%{public}@[%@] Creating local stream control manager even though accessory is not reachable because there is no remote access device";
          goto LABEL_47;
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        v81 = v44;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v139 = v65;
          v140 = 2112;
          v141 = v6;
          v66 = "%{public}@[%@] Creating local stream control manager even though accessory is not reachable because we cannot receive remote streams";
          goto LABEL_47;
        }
      }
    }

    objc_autoreleasePoolPop(v62);
    dataSource3 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    localNetworkConfig = [dataSource3 localNetworkConfig];

    if (!localNetworkConfig)
    {
      v109 = objc_autoreleasePoolPush();
      v110 = v44;
      v111 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v112;
        v140 = 2112;
        v141 = v6;
        _os_log_impl(&dword_2531F8000, v111, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to get the local network address config", buf, 0x16u);

        proxyConnection = v133;
      }

      objc_autoreleasePoolPop(v109);
      v93 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v93];
      v49 = v134;
      goto LABEL_59;
    }

    dataSource4 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    workQueue2 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
    [(HMDCameraStreamControlMessageHandler *)v44 streamSnapshotHandler];
    v85 = v128 = v6;
    networkMonitor2 = [(HMDCameraStreamControlMessageHandler *)v44 networkMonitor];
    reachabilityPath2 = [networkMonitor2 reachabilityPath];
    [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v87 = v86 = v14;
    profileUniqueIdentifier = [messageCopy messagePayload];
    residentMessageHandler2 = [(HMDCameraStreamControlMessageHandler *)v44 supportedConfigCache];
    v124 = dataSource4;
    dataSource2 = localNetworkConfig;
    v121 = v87;
    v114 = v86;
    v116 = v87;
    v14 = v86;
    v88 = dataSource4;
    streamSnapshotHandler = workQueue2;
    networkMonitor = v85;
    v89 = v85;
    v6 = v128;
    v78 = remoteSourceDevice;
    v79 = [v88 createLocalStreamControlManagerWithSessionID:v48 workQueue:workQueue2 streamSnapshotHandler:v89 reachabilityPath:reachabilityPath2 device:remoteSourceDevice delegate:v44 accessory:v114 streamManagementService:v116 localNetworkConfig:localNetworkConfig remoteCapabilities:profileUniqueIdentifier supportedConfigCache:residentMessageHandler2 streamPreference:v135];
    v80 = 30.0;
LABEL_50:

    dataSource5 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    remoteDestinationString = [v78 remoteDestinationString];
    v129 = v48;
    v92 = [dataSource5 createStreamManagerSessionWithSessionID:v48 destinationID:remoteDestinationString streamClientConnection:v133 streamControlManager:v79 setupWaitPeriod:v80];

    v136 = 0;
    LOBYTE(dataSource5) = [v92 canStartWithError:&v136];
    v126 = v136;
    v93 = v79;
    if (dataSource5)
    {
      [(HMDCameraStreamControlMessageHandler *)v44 setStreamSession:v92];
      streamSession = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      [streamSession setCurrentMessage:messageCopy];

      streamSession2 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamControlManager = [streamSession2 streamControlManager];
      [streamControlManager negotiateStream];

      streamSession3 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer = [streamSession3 streamSetupTimer];
      [streamSetupTimer setDelegate:v44];

      workQueue3 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer2 = [streamSession4 streamSetupTimer];
      [streamSetupTimer2 setDelegateQueue:workQueue3];

      streamSession5 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer3 = [streamSession5 streamSetupTimer];
      [streamSetupTimer3 resume];

      v104 = v126;
    }

    else
    {
      v105 = objc_autoreleasePoolPush();
      v106 = v44;
      v107 = HMFGetOSLogHandle();
      v104 = v126;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        *buf = 138543874;
        v139 = v108;
        v140 = 2112;
        v141 = v6;
        v142 = 2112;
        v143 = v126;
        _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot start stream session: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v105);
      [messageCopy respondWithError:v126];
    }

    proxyConnection = v133;
    v49 = v134;
    v48 = v129;
LABEL_59:

    currentSettings = v130;
LABEL_60:
    v23 = v135;

LABEL_61:
LABEL_62:

    goto LABEL_63;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    messagePayload2 = [messageCopy messagePayload];
    *buf = 138543618;
    v139 = v24;
    v140 = 2112;
    v141 = messagePayload2;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find session ID in negotiate message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [messageCopy respondWithError:v14];
LABEL_63:

  v113 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  proxyConnection = [messageCopy proxyConnection];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamClientConnection = [streamSession streamClientConnection];

  if (proxyConnection && streamClientConnection && proxyConnection != streamClientConnection)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138544130;
      v35 = v12;
      v36 = 2112;
      v37 = shortDescription;
      v38 = 2112;
      v39 = proxyConnection;
      v40 = 2112;
      v41 = streamClientConnection;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting stream control request message %@ from client %@ because stream is owned by other client %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v14 = MEMORY[0x277CCA9B8];
    v15 = 17;
  }

  else
  {
    if ([objc_opt_class() _isStopMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleStopMessage:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioStreamSettingMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioState:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioVolumeMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioVolume:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isRemoteSetupMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleRemoteSetupMessage:messageCopy];
      goto LABEL_16;
    }

    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession2 currentMessage];

    if (currentMessage)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        currentMessage2 = [streamSession3 currentMessage];
        shortDescription2 = [currentMessage2 shortDescription];
        [messageCopy shortDescription];
        v27 = v33 = v20;
        *buf = 138543874;
        v35 = v23;
        v36 = 2112;
        v37 = shortDescription2;
        v38 = 2112;
        v39 = v27;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Current message %@ is already being processed, rejecting message %@", buf, 0x20u);

        v20 = v33;
      }

      objc_autoreleasePoolPop(v20);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 3;
    }

    else
    {
      if ([objc_opt_class() _isNegotiateMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleNegotiateMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isStartMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleStartMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isReconfigureMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleReconfigureMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isUpdateMaximumVideoResolutionQualityMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleUpdateMaximumVideoResolutionQualityMessage:messageCopy];
        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        name = [messageCopy name];
        *buf = 138543618;
        v35 = v31;
        v36 = 2112;
        v37 = name;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unknown message type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 2;
    }
  }

  v16 = [v14 hmErrorWithCode:v15];
  [messageCopy respondWithError:v16];

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopStreamWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (streamSession)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      v19 = 138543874;
      v20 = v10;
      v21 = 2112;
      v22 = streamSession2;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failing stream session %@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession3 sessionID];
    v14SessionID = [sessionID sessionID];
    [dictionary setObject:v14SessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v16 forKeyedSubscript:@"kCameraSessionError"];
    }

    v17 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCF608] messagePayload:dictionary];
    [(HMDCameraStreamControlMessageHandler *)selfCopy _handleStopMessage:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)takeOwnershipOfStreamUsingMessage:(id)message
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (!streamSession)
  {
    _HMFPreconditionFailure();
LABEL_29:
    _HMFPreconditionFailure();
  }

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  destinationID = [streamSession2 destinationID];

  if (destinationID)
  {
    goto LABEL_29;
  }

  proxyConnection = [messageCopy proxyConnection];
  if (proxyConnection)
  {
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    streamClientConnection = [streamSession3 streamClientConnection];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (streamClientConnection != proxyConnection)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v47 = 138543618;
        v48 = v16;
        v49 = 2112;
        v50 = proxyConnection;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Taking ownership of stream using client connection: %@", &v47, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      currentMessage = [streamSession4 currentMessage];

      if (currentMessage)
      {
        if (([objc_opt_class() _isNegotiateMessage:currentMessage] & 1) == 0)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = selfCopy;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            shortDescription = [currentMessage shortDescription];
            v47 = 138543618;
            v48 = v44;
            v49 = 2112;
            v50 = shortDescription;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot take ownership of stream because stream is handling a non-negotiate message: %@", &v47, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          streamSession6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [messageCopy respondWithError:streamSession6];
          goto LABEL_26;
        }

        streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        [streamSession5 setCurrentMessage:messageCopy];

        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          shortDescription2 = [currentMessage shortDescription];
          v47 = 138543618;
          v48 = v23;
          v49 = 2112;
          v50 = shortDescription2;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding to existing negotiate message: %@", &v47, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        applicationBundleIdentifier = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [currentMessage respondWithError:applicationBundleIdentifier];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          shortDescription3 = [messageCopy shortDescription];
          v47 = 138543618;
          v48 = v37;
          v49 = 2112;
          v50 = shortDescription3;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying existing stream client that stream has stopped and responding to new stream client message: %@", &v47, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [(HMDCameraStreamControlMessageHandler *)v35 _sendStreamStoppedMessageWithError:v39];

        [(HMDCameraStreamControlMessageHandler *)v35 _respondToLocalNegotiateStreamMessage:messageCopy];
        applicationBundleIdentifier = [proxyConnection applicationBundleIdentifier];
        [(HMDCameraStreamControlMessageHandler *)v35 _attributeMicrophoneUsageToApplicationBundleIdentifier:applicationBundleIdentifier];
      }

      streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      [streamSession6 setStreamClientConnection:proxyConnection];
LABEL_26:

      goto LABEL_27;
    }

    if (v15)
    {
      v33 = HMFGetLogIdentifier();
      v47 = 138543362;
      v48 = v33;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Client requested to start a stream while it already owns one", &v47, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 1;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      shortDescription4 = [messageCopy shortDescription];
      v47 = 138543618;
      v48 = v29;
      v49 = 2112;
      v50 = shortDescription4;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot find XPC client connection while taking ownership of stream using message: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 58;
  }

  currentMessage = [v31 hmErrorWithCode:v32];
  [messageCopy respondWithError:currentMessage];
LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)setStreamSession:(id)session
{
  sessionCopy = session;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = self->_streamSession;
  self->_streamSession = sessionCopy;

  streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:sessionCopy != 0];
}

- (HMDCameraStreamManagerSession)streamSession
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = self->_streamSession;

  return streamSession;
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  if (accessory)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleConnectionDeactivatedNotification_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:accessory];

    [(HMDCameraStreamControlMessageHandler *)self setMessageDispatcher:dispatcherCopy];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  name = [accessory name];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  instanceID = [streamManagementService instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", name, instanceID];

  return v8;
}

- (void)dealloc
{
  v3 = self->_streamSession;
  v4 = v3;
  if (v3)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDCameraStreamControlMessageHandler_dealloc__block_invoke;
    block[3] = &unk_279735D00;
    v8 = v3;
    dispatch_async(workQueue, block);
  }

  v6.receiver = self;
  v6.super_class = HMDCameraStreamControlMessageHandler;
  [(HMDCameraStreamControlMessageHandler *)&v6 dealloc];
}

void __47__HMDCameraStreamControlMessageHandler_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamControlManager];
  v1 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1039];
  [v2 stopStreamWithError:v1];
}

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor
{
  v14 = MEMORY[0x277CCACA8];
  monitorCopy = monitor;
  identifierCopy = identifier;
  serviceCopy = service;
  accessoryCopy = accessory;
  handlerCopy = handler;
  queueCopy = queue;
  name = [accessoryCopy name];
  instanceID = [serviceCopy instanceID];
  v23 = [v14 stringWithFormat:@"%@/%@", name, instanceID];

  v24 = [[HMDCameraResidentMessageHandler alloc] initWithAccessory:accessoryCopy logIdentifier:v23];
  v25 = objc_alloc_init(HMDCameraStreamControlMessageHandlerDataSource);
  v26 = [(HMDCameraStreamControlMessageHandler *)self initWithWorkQueue:queueCopy streamSnapshotHandler:handlerCopy accessory:accessoryCopy streamManagementService:serviceCopy profileUniqueIdentifier:identifierCopy networkMonitor:monitorCopy residentMessageHandler:v24 dataSource:v25];

  return v26;
}

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor residentMessageHandler:(id)messageHandler dataSource:(id)self0
{
  v42[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  obj = accessory;
  serviceCopy = service;
  identifierCopy = identifier;
  monitorCopy = monitor;
  messageHandlerCopy = messageHandler;
  v19 = serviceCopy;
  sourceCopy = source;
  v41.receiver = self;
  v41.super_class = HMDCameraStreamControlMessageHandler;
  v21 = [(HMDCameraStreamControlMessageHandler *)&v41 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_workQueue, queue);
    objc_storeStrong(&v22->_streamSnapshotHandler, handler);
    objc_storeWeak(&v22->_accessory, obj);
    objc_storeStrong(&v22->_profileUniqueIdentifier, identifier);
    objc_storeStrong(&v22->_streamManagementService, service);
    objc_storeStrong(&v22->_residentMessageHandler, messageHandler);
    v23 = MEMORY[0x277CCACA8];
    instanceID = [v19 instanceID];
    v25 = [v23 stringWithFormat:@"%@", instanceID];

    v26 = MEMORY[0x277CCAD78];
    v42[0] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v28 = [v26 hm_deriveUUIDFromBaseUUID:identifierCopy withSalts:v27];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v28;

    v30 = objc_alloc_init(HMDCameraSupportedConfigurationCache);
    supportedConfigCache = v22->_supportedConfigCache;
    v22->_supportedConfigCache = v30;

    objc_storeStrong(&v22->_networkMonitor, monitor);
    createDynamicActivityAttributionPublisher = [sourceCopy createDynamicActivityAttributionPublisher];
    dynamicActivityAttributionPublisher = v22->_dynamicActivityAttributionPublisher;
    v22->_dynamicActivityAttributionPublisher = createDynamicActivityAttributionPublisher;

    objc_storeStrong(&v22->_dataSource, source);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43, &__block_literal_global_61074);
  }

  v3 = logCategory__hmf_once_v44;

  return v3;
}

uint64_t __51__HMDCameraStreamControlMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v44;
  logCategory__hmf_once_v44 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)_isRemoteSetupMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  return v4;
}

+ (BOOL)_isSetAudioVolumeMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF600]];

  return v4;
}

+ (BOOL)_isSetAudioStreamSettingMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF5F8]];

  return v4;
}

+ (BOOL)_isStopMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  if ([name isEqualToString:*MEMORY[0x277CCF608]])
  {
    v5 = 1;
  }

  else
  {
    name2 = [messageCopy name];
    if ([name2 isEqualToString:@"kStopRemoteStreamRequestKey"])
    {
      v5 = 1;
    }

    else
    {
      name3 = [messageCopy name];
      v5 = [name3 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];
    }
  }

  return v5;
}

+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF618]];

  return v4;
}

+ (BOOL)_isReconfigureMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isStartMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kStartRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isNegotiateMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  if ([name isEqualToString:@"kNegotitateRemoteStreamRequestKey"])
  {
    v5 = 1;
  }

  else
  {
    name2 = [messageCopy name];
    v5 = [name2 isEqualToString:*MEMORY[0x277CCF5F0]];
  }

  return v5;
}

@end
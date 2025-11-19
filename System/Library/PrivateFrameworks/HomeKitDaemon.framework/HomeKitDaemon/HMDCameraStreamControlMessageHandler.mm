@interface HMDCameraStreamControlMessageHandler
+ (BOOL)_isNegotiateMessage:(id)a3;
+ (BOOL)_isReconfigureMessage:(id)a3;
+ (BOOL)_isRemoteSetupMessage:(id)a3;
+ (BOOL)_isSetAudioStreamSettingMessage:(id)a3;
+ (BOOL)_isSetAudioVolumeMessage:(id)a3;
+ (BOOL)_isStartMessage:(id)a3;
+ (BOOL)_isStopMessage:(id)a3;
+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)a3;
+ (id)logCategory;
- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)a3;
- (BOOL)hasStreamSession;
- (BOOL)hasStreamSessionShowingOnCurrentDevice;
- (BOOL)isEqual:(id)a3;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)a3 streamSnapshotHandler:(id)a4 accessory:(id)a5 streamManagementService:(id)a6 profileUniqueIdentifier:(id)a7 networkMonitor:(id)a8;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)a3 streamSnapshotHandler:(id)a4 accessory:(id)a5 streamManagementService:(id)a6 profileUniqueIdentifier:(id)a7 networkMonitor:(id)a8 residentMessageHandler:(id)a9 dataSource:(id)a10;
- (HMDCameraStreamManagerSession)streamSession;
- (HMDHAPAccessory)accessory;
- (NSDictionary)stateDump;
- (NSString)description;
- (NSString)streamSessionID;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)a3;
- (void)_handleNegotiateMessage:(id)a3;
- (void)_handleReconfigureMessage:(id)a3;
- (void)_handleRemoteSetupMessage:(id)a3;
- (void)_handleSetAudioState:(id)a3;
- (void)_handleSetAudioVolume:(id)a3;
- (void)_handleStartMessage:(id)a3;
- (void)_handleStopMessage:(id)a3;
- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)a3;
- (void)_resetStreamSession:(id)a3;
- (void)_respondToLocalNegotiateStreamMessage:(id)a3;
- (void)_sendStreamStoppedMessageWithError:(id)a3;
- (void)_sendStreamStoppedRemoteNotificationWithError:(id)a3;
- (void)_stopStreamWithError:(id)a3;
- (void)configureWithMessageDispatcher:(id)a3;
- (void)dealloc;
- (void)handleCameraSettingsDidChangeNotification:(id)a3;
- (void)handleConnectionDeactivatedNotification:(id)a3;
- (void)handleMessage:(id)a3;
- (void)handleProcessStateChange:(id)a3;
- (void)setAudioVolume:(id)a3 callback:(id)a4;
- (void)setStreamSession:(id)a3;
- (void)streamControlManager:(id)a3 didNegotiateStreamWithSelectedParameters:(id)a4;
- (void)streamControlManager:(id)a3 didStopStreamWithSessionID:(id)a4 error:(id)a5;
- (void)streamControlManagerDidReceiveFirstFrame:(id)a3;
- (void)streamControlManagerDidReconfigureStream:(id)a3;
- (void)streamControlManagerDidSetUpRemoteConnection:(id)a3;
- (void)streamControlManagerDidStartStream:(id)a3;
- (void)takeOwnershipOfStreamUsingMessage:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraStreamControlMessageHandler

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleConnectionDeactivatedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"connection"];

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
    v8 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMDCameraStreamControlMessageHandler_handleConnectionDeactivatedNotification___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client has deactivated", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v9 _stopStreamWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleProcessStateChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"processInfo"];

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
    v8 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HMDCameraStreamControlMessageHandler_handleProcessStateChange___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
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
        v11 = off_278680668[v10];
      }

      v12 = v11;
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client application state is %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v13 _stopStreamWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraSettingsDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDCameraStreamControlMessageHandler_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings are not initialized, skipping cancelling pending stream requests", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v2 = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetStreamSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting the current stream session with error: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCameraStreamControlMessageHandler *)v6 streamSession];
  v10 = [v9 streamControlManager];
  v11 = [v10 streamMetrics];
  [v11 setError:v4];

  [(HMDCameraStreamControlMessageHandler *)v6 setStreamSession:0];
  v12 = [(HMDCameraStreamControlMessageHandler *)v6 dynamicActivityAttributionPublisher];
  [v12 setCurrentAttributionKey:0 andApp:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendStreamStoppedRemoteNotificationWithError:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDCameraStreamControlMessageHandler *)v6 streamSession];
    v10 = [v9 destinationID];
    v30 = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending stream stopped notification to %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDCameraStreamControlMessageHandler *)v6 accessory];
  v12 = [v11 home];
  v13 = [v12 homeManager];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [(HMDCameraStreamControlMessageHandler *)v6 streamSession];
    v16 = [v15 sessionID];
    v17 = [v16 sessionID];
    [v14 setObject:v17 forKeyedSubscript:@"kCameraSessionID"];

    if (v4)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
      [v14 setObject:v18 forKeyedSubscript:@"kCameraSessionError"];
    }

    v19 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamStoppedRemoteNotificationKey" messagePayload:v14];
    [v19 setQualityOfService:33];
    v20 = [v19 copy];
    v21 = [(HMDCameraStreamControlMessageHandler *)v6 profileUniqueIdentifier];
    v22 = [(HMDCameraStreamControlMessageHandler *)v6 streamSession];
    v23 = [v22 destinationID];
    v24 = [(HMDCameraStreamControlMessageHandler *)v6 workQueue];
    [v13 sendSecureMessage:v20 target:v21 userID:0 destination:v23 responseQueue:v24 responseHandler:&__block_literal_global_76];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v6;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@No home manager", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendStreamStoppedMessageWithError:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v6 = [v5 streamClientConnection];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
    [v7 setObject:v8 forKeyedSubscript:@"kCameraSessionID"];

    if (v4)
    {
      v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
      [v7 setObject:v9 forKeyedSubscript:@"kCameraSessionError"];
      v10 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
      v11 = [v10 streamControlManager];
      v12 = [v11 streamMetrics];
      [v12 setError:v4];
    }

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    v14 = [(HMDCameraStreamControlMessageHandler *)self profileUniqueIdentifier];
    v15 = [v13 initWithTarget:v14];

    v16 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCF610] destination:v15 payload:v7];
    [v16 setTransport:v6];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v16 shortDescription];
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Notifying client that stream has stopped using message %@: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [(HMDCameraStreamControlMessageHandler *)v18 messageDispatcher];
    [v22 sendMessage:v16];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot send stream stopped message because XPC client connection doesn't exist", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManager:(id)a3 didStopStreamWithSessionID:(id)a4 error:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v12 = [v11 sessionID];
  v13 = [v12 isEqual:v9];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
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
      v43 = v10;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Stream did stop with error: %{public}@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [(HMDCameraStreamControlMessageHandler *)v15 streamSession];
    v20 = [v19 currentMessage];

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v15;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v20 shortDescription];
        v40 = 138543618;
        v41 = v24;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Responding to the current message: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (v10)
      {
        [v20 respondWithError:v10];
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [v20 respondWithError:v29];
      }

      v30 = [(HMDCameraStreamControlMessageHandler *)v22 streamSession];
      [v30 setCurrentMessage:0];
    }

    v31 = [(HMDCameraStreamControlMessageHandler *)v15 streamSession];
    v32 = [v31 destinationID];

    v33 = objc_autoreleasePoolPush();
    v34 = v15;
    v35 = HMFGetOSLogHandle();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v32)
    {
      if (v36)
      {
        v37 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being relayed elsewhere so sending remote stream stopped message", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedRemoteNotificationWithError:v10];
    }

    else
    {
      if (v36)
      {
        v38 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v38;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being shown locally so sending local stream stopped message", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedMessageWithError:v10];
    }

    [(HMDCameraStreamControlMessageHandler *)v34 _resetStreamSession:v10];
  }

  else
  {
    if (v17)
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMDCameraStreamControlMessageHandler *)v15 streamSession];
      v28 = [v27 sessionID];
      v40 = 138543874;
      v41 = v26;
      v42 = 2112;
      v43 = v9;
      v44 = 2112;
      v45 = v28;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring did stop stream callback for session ID %@ because our session ID is %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidReconfigureStream:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v6 = [v5 streamControlManager];

  if (v6 == v4)
  {
    v7 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v8 = [v7 currentMessage];
    v9 = [v8 name];
    v10 = [v9 isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v35 = [(HMDCameraStreamControlMessageHandler *)v12 streamSession];
        v34 = [v35 currentMessage];
        v16 = [v34 name];
        v17 = [(HMDCameraStreamControlMessageHandler *)v12 streamSession];
        v18 = [v17 currentMessage];
        v19 = [v18 identifier];
        v20 = [v19 UUIDString];
        *buf = 138543874;
        v37 = v15;
        v38 = 2112;
        v39 = v16;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with identifier %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v21 = [(HMDCameraStreamControlMessageHandler *)v12 streamSession];
      v22 = [v21 currentMessage];
      v23 = [v22 responseHandler];

      if (v23)
      {
        v24 = [(HMDCameraStreamControlMessageHandler *)v12 streamSession];
        v25 = [v24 currentMessage];
        v26 = [v25 responseHandler];
        v26[2](v26, 0, 0);
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = v12;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v31;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No response handler set for message", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
      }

      v32 = [(HMDCameraStreamControlMessageHandler *)v12 streamSession];
      [v32 setCurrentMessage:0];
    }

    else
    {
      if (v14)
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v27;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No pending reconfigure stream request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidReceiveFirstFrame:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v6 = [v5 sessionID];
  [v6 markMilestoneFor:@"ReceivedFirstFrame"];

  v7 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v8 = [v7 currentMessage];

  v9 = [v8 name];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCF5F0]];

  if (v10)
  {
    v11 = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
    v12 = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
    [v11 setStreamSetupStatusForService:v12 inProgress:0];

    [(HMDCameraStreamControlMessageHandler *)self _respondToLocalNegotiateStreamMessage:v8];
    v13 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    [v13 setCurrentMessage:0];

    v14 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v15 = [v14 streamSetupTimer];
    [v15 suspend];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v8 shortDescription];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Received did receive first frame with an unexpected current message: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidStartStream:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v6 = [v5 streamControlManager];

  if (v6 == v4)
  {
    v13 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v14 = [v13 sessionID];
    [v14 markMilestoneFor:@"SentStartResponse"];

    v15 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v16 = [v15 currentMessage];

    if (v16)
    {
      v17 = [v16 name];
      v18 = [v17 isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v18)
      {
LABEL_17:

        goto LABEL_18;
      }

      v19 = [v16 name];
      v20 = [v19 isEqualToString:@"kStartRemoteStreamRequestKey"];

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v16 shortDescription];
          v35 = 138543618;
          v36 = v25;
          v37 = 2112;
          v38 = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did start stream callback by responding to remote start stream message: %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        [v16 respondWithSuccess];
        v27 = [(HMDCameraStreamControlMessageHandler *)v22 streamSession];
        [v27 setCurrentMessage:0];

        v28 = [(HMDCameraStreamControlMessageHandler *)v22 streamSession];
        v29 = [v28 streamSetupTimer];
        [v29 suspend];

        v30 = [(HMDCameraStreamControlMessageHandler *)v22 streamSnapshotHandler];
        v31 = [(HMDCameraStreamControlMessageHandler *)v22 streamManagementService];
        [v30 setStreamSetupStatusForService:v31 inProgress:0];

        goto LABEL_17;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v16 shortDescription];
        v35 = 138543618;
        v36 = v32;
        v37 = 2112;
        v38 = v33;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did start stream callback: %@", &v35, 0x16u);

        goto LABEL_15;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v32;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Received did start stream without a current message", &v35, 0xCu);
LABEL_15:
      }
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_17;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
    v12 = [v11 streamControlManager];
    v35 = 138543874;
    v36 = v10;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did start stream because our stream control manager %@ does not match the provided one: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManagerDidSetUpRemoteConnection:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v6 = [v5 streamControlManager];

  if (v6 == v4)
  {
    v13 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v14 = [v13 sessionID];
    [v14 markMilestoneFor:@"SentConnectionSetup"];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraStreamControlMessageHandler *)v16 streamSession];
      v20 = [v19 destinationID];
      *buf = 138543618;
      v42 = v18;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending stream remote setup notification to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [(HMDCameraStreamControlMessageHandler *)v16 accessory];
    v22 = [v21 home];
    v23 = [v22 homeManager];

    if (v23)
    {
      v24 = [(HMDCameraStreamControlMessageHandler *)v16 streamSession];
      v25 = [v24 sessionID];
      v26 = [v25 sessionID];
      v40 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      v28 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamRemoteConnectionSetupNotificationKey" messagePayload:v27];
      [v28 setQualityOfService:33];
      v29 = [v28 copy];
      v30 = [(HMDCameraStreamControlMessageHandler *)v16 profileUniqueIdentifier];
      v31 = [(HMDCameraStreamControlMessageHandler *)v16 streamSession];
      v32 = [v31 destinationID];
      v33 = [(HMDCameraStreamControlMessageHandler *)v16 workQueue];
      [v23 sendSecureMessage:v29 target:v30 userID:0 destination:v32 responseQueue:v33 responseHandler:0];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v16;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No home manager", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
      v12 = [v11 streamControlManager];
      *buf = 138543874;
      v42 = v10;
      v43 = 2112;
      v44 = v12;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did set up remote connection because our stream control manager %@ does not match the provided one: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)streamControlManager:(id)a3 didNegotiateStreamWithSelectedParameters:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v9 = [v8 streamControlManager];

  if (v9 == v6)
  {
    v16 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v17 = [v16 sessionID];
    [v17 markMilestoneFor:@"SentNegotiationResponse"];

    v18 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v19 = [v18 currentMessage];

    if (v19)
    {
      v20 = [v19 name];
      v21 = [v20 isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v38 = 138543362;
          v39 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by starting stream", &v38, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [(HMDCameraStreamControlMessageHandler *)v23 _handleStartMessage:v19];
        goto LABEL_20;
      }

      v30 = [v19 name];
      v31 = [v30 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v32 = HMFGetOSLogHandle();
      v28 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v19 shortDescription];
          v38 = 138543618;
          v39 = v33;
          v40 = 2112;
          v41 = v34;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by responding to remote negotiate stream message: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [v19 respondWithPayload:v7];
        v35 = [(HMDCameraStreamControlMessageHandler *)v27 streamSession];
        [v35 setCurrentMessage:0];

        goto LABEL_20;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v36 = [v19 shortDescription];
        v38 = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = v36;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did negotiate stream callback: %@", &v38, 0x16u);

        goto LABEL_18;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received did negotiate stream without a current message", &v38, 0xCu);
LABEL_18:
      }
    }

    objc_autoreleasePoolPop(v26);
LABEL_20:

    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDCameraStreamControlMessageHandler *)v11 streamSession];
    v15 = [v14 streamControlManager];
    v38 = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did negotiate stream because our stream control manager %@ does not match the provided one: %@", &v38, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_21:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v7 = [v6 streamSetupTimer];

  if (v7 == v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Stream setup timer fired", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
    [(HMDCameraStreamControlMessageHandler *)v9 _stopStreamWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCameraStreamControlMessageHandler *)self accessory];
  v5 = [v4 name];
  v6 = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  v7 = [v6 instanceID];
  v8 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v9 = [v8 sessionID];
  v10 = [v9 sessionID];
  v11 = [v3 stringWithFormat:@"%@/%@/%@", v5, v7, v10];

  return v11;
}

- (void)_respondToLocalNegotiateStreamMessage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
  [v6 setObject:v7 forKeyedSubscript:@"kCameraSessionID"];

  v8 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v9 = [v8 streamControlManager];
  v10 = [v9 slotIdentifier];
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD1060]];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v13 = [v12 streamControlManager];
  v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(v13, "audioStreamSetting")}];
  [v6 setObject:v14 forKeyedSubscript:@"kAudioStreamSetting"];

  v15 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v16 = [v15 streamControlManager];
  v17 = [v16 aspectRatio];
  [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD1198]];

  v18 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v19 = [v18 streamControlManager];
  v20 = [v19 audioDownlinkToken];
  [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCF5D8]];

  v21 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v22 = [v21 streamControlManager];
  v23 = [v22 audioUplinkToken];
  [v6 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCF5E0]];

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v4 shortDescription];
    v31 = 138543874;
    v32 = v27;
    v33 = 2112;
    v34 = v28;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Responding to message %@ with payload %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
  v29 = [v6 copy];
  [v4 respondWithPayload:v29];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v7 = [v6 destinationID];

    if (!v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating activity attribution with applicationBundleIdentifier: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [(HMDCameraStreamControlMessageHandler *)v9 dynamicActivityAttributionPublisher];
      [v12 setCurrentAttributionKey:0 andApp:v4];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  LODWORD(v5) = [v6 supportsApplicationBackgroundStateMonitoring];

  v7 = [v4 state];
  if (v5)
  {
    if (v7 == -1)
    {
      v9 = [v4 isEntitledForSPIAccess] ^ 1;
    }

    else if (v7)
    {
      if (v7 == 2)
      {
        v8 = [v4 applicationInfo];
        LOBYTE(v9) = v8 != 0;
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
    LOBYTE(v9) = (v7 - 4) < 0xFFFFFFFFFFFFFFFBLL;
  }

  return v9;
}

- (NSDictionary)stateDump
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v5 = [v4 streamControlManager];
  v6 = [v5 stateDump];
  [v3 setObject:v6 forKeyedSubscript:@"Stream"];

  return v3;
}

- (BOOL)hasStreamSessionShowingOnCurrentDevice
{
  v3 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (![(HMDCameraStreamControlMessageHandler *)self hasStreamSession])
  {
    return 0;
  }

  v4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v5 = [v4 destinationID];
  v6 = v5 == 0;

  return v6;
}

- (BOOL)hasStreamSession
{
  v2 = self;
  v3 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraStreamControlMessageHandler *)v2 streamSession];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (NSString)streamSessionID
{
  v3 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v5 = [v4 sessionID];
  v6 = [v5 sessionID];

  return v6;
}

- (void)_handleSetAudioState:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 numberForKey:@"kAudioStreamSetting"];
  v7 = v6;
  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    v18 = v14;
    goto LABEL_16;
  }

  v8 = [v6 unsignedIntegerValue];
  v9 = v8;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 3)
    {
      if ([v4 isAuthorizedForMicrophoneAccess])
      {
        v19 = [(HMDCameraStreamControlMessageHandler *)self dataSource];
        v20 = [v19 supportsBidirectionalAudioForCameraStreaming];

        if (v20)
        {
          goto LABEL_3;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Bi-directional audio is not supported on this device for camera streaming.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 48;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v4 name];
          *buf = 138543874;
          v40 = v35;
          v41 = 2112;
          v42 = v36;
          v43 = 2048;
          v44 = [v4 sourcePid];
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Denying incoming message %@ for client pid %ld since the process is not authorized for microphone access", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 89;
      }

LABEL_17:
      v12 = [v25 hmErrorWithCode:v26];
      [v4 respondWithError:v12];
      goto LABEL_18;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v30;
      v41 = 2048;
      v42 = v9;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid audio stream setting: %lu", buf, 0x16u);
    }

    v18 = v27;
LABEL_16:
    objc_autoreleasePoolPop(v18);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 3;
    goto LABEL_17;
  }

LABEL_3:
  v10 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v11 = [v10 streamControlManager];
  [v11 updateAudioSetting:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9, @"kAudioStreamSetting"}];
  v38 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v4 respondWithPayload:v13];

LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)setAudioVolume:(id)a3 callback:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  v10 = [v9 supportsChangingVolume];

  if ((v10 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Changing audio volume setting is not allowed on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 48;
    goto LABEL_10;
  }

  if (!v6)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 3;
LABEL_10:
    v13 = [v18 hmErrorWithCode:v19];
    v7[2](v7, v13);
    goto LABEL_11;
  }

  v11 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v12 = [v11 streamControlManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__HMDCameraStreamControlMessageHandler_setAudioVolume_callback___block_invoke;
  v25[3] = &unk_278683B50;
  v26 = v7;
  [v12 updateAudioVolume:v6 callback:v25];

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

- (void)_handleSetAudioVolume:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 isEntitledForSPIAccess])
  {
    v6 = [v4 numberForKey:*MEMORY[0x277CCF5E8]];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMDCameraStreamControlMessageHandler__handleSetAudioVolume___block_invoke;
    v12[3] = &unk_27868A250;
    v13 = v4;
    [(HMDCameraStreamControlMessageHandler *)self setAudioVolume:v6 callback:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Ignoring set audio volume message as it is not entitled for SPI access", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleStopMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling stop message with identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 messagePayload];
  v12 = [v11 errorFromDataForKey:@"kCameraSessionError"];

  if (v12)
  {
    v13 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
    v14 = [v13 streamControlManager];
    v15 = [v14 streamMetrics];
    [v15 setError:v12];
  }

  v16 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  v17 = [v16 streamControlManager];
  [v17 stopStreamWithError:v12];

  [v4 respondWithSuccess];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update video resolution quality message with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 messagePayload];
  v12 = [v11 hmf_numberForKey:*MEMORY[0x277CCF620]];

  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing camera video resolution quality", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 27;
    goto LABEL_12;
  }

  v13 = [v12 integerValue];
  if ((v13 - 1) >= 5)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 2048;
      v33 = v13;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid resolution quality enum value received: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 3;
LABEL_12:
    v26 = [v20 hmErrorWithCode:v21];
    [v4 respondWithError:v26];

    goto LABEL_13;
  }

  v14 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  v15 = [v14 streamControlManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__HMDCameraStreamControlMessageHandler__handleUpdateMaximumVideoResolutionQualityMessage___block_invoke;
  v28[3] = &unk_27868A1D8;
  v28[4] = v7;
  v29 = v4;
  [v15 updateMaximumVideoResolutionQuality:v13 completionHandler:v28];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update video resolution quality", &v11, 0xCu);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfuly updated video resolution quality", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleReconfigureMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling reconfigure message with identifier: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  [v11 setCurrentMessage:v4];

  v12 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  v13 = [v12 streamControlManager];
  v14 = [v4 messagePayload];
  [v13 reconfigureStream:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleStartMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling start message with identifier: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 proxyConnection];
  v12 = [v11 applicationBundleIdentifier];
  [(HMDCameraStreamControlMessageHandler *)v7 _attributeMicrophoneUsageToApplicationBundleIdentifier:v12];

  v13 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  [v13 setCurrentMessage:v4];

  v14 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  v15 = [v14 sessionID];
  [v15 markMilestoneFor:@"ReceivedStartRequest"];

  v16 = [(HMDCameraStreamControlMessageHandler *)v7 streamSession];
  v17 = [v16 streamControlManager];
  v18 = [v4 messagePayload];
  [v17 startStreamWithRemoteSettings:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteSetupMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 remoteSourceDevice];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 identifier];
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remote setup message %@ from device: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
    v14 = [v13 sessionID];
    [v14 markMilestoneFor:@"ReceivedConnectionSetup"];

    v15 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
    v16 = [v15 streamControlManager];
    [v16 setUpRemoteConnectionWithDevice:v6];

    [v4 respondWithPayload:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote source device for remote setup message: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleNegotiateMessage:(id)a3
{
  v144 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 stringForKey:@"kCameraSessionID"];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 shortDescription];
      *buf = 138543874;
      v139 = v11;
      v140 = 2112;
      v141 = v6;
      v142 = 2112;
      v143 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiation message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMDCameraStreamControlMessageHandler *)v8 accessory];
    v14 = v13;
    if (!v13)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v8;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v29;
        v140 = 2112;
        v141 = v6;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      [v4 respondWithError:v17];
      goto LABEL_62;
    }

    v15 = [v13 cameraProfiles];
    v16 = [v15 anyObject];
    v17 = [v16 currentSettings];

    if (v17)
    {
      [v17 currentAccessMode];
      if ((HMIsStreamingAllowedForCameraAccessMode() & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v8;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          [v17 currentAccessMode];
          v22 = HMCameraAccessModeAsString();
          *buf = 138543874;
          v139 = v21;
          v140 = 2112;
          v141 = v6;
          v142 = 2112;
          v143 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[%@] Streaming is disallowed for current access mode: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        [v4 respondWithError:v23];
        goto LABEL_61;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v8;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v139 = v33;
        v140 = 2112;
        v141 = v6;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[%@] Camera profile settings are not initialized; skipping controller side checks to disallow stream request", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    v34 = [v4 dataForKey:@"kCameraSessionPreference"];
    v35 = 0;
    v134 = v34;
    if ([v4 isEntitledForSPIAccess] && v34)
    {
      v137 = 0;
      v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:&v137];
      v36 = v137;
      if (!v35)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v8;
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
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to unarchive camera stream preferences from camera session preference message: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v35 = 0;
      }
    }

    v135 = v35;
    v41 = [v4 proxyConnection];
    v42 = [v4 isRemote];
    v43 = objc_autoreleasePoolPush();
    v44 = v8;
    v45 = HMFGetOSLogHandle();
    v46 = v45;
    if ((v42 & 1) == 0 && !v41)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543874;
        v139 = v47;
        v140 = 2112;
        v141 = v6;
        v142 = 2112;
        v143 = v4;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot find XPC client connection for negotiate stream message received over XPC: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
      [v4 respondWithError:v48];
      v49 = v134;
      goto LABEL_60;
    }

    v133 = v41;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      v51 = [v41 processInfo];
      *buf = 138543874;
      v139 = v50;
      v140 = 2112;
      v141 = v6;
      v142 = 2112;
      v143 = v51;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@[%@] Using stream client process info: %@", buf, 0x20u);

      v41 = v133;
    }

    objc_autoreleasePoolPop(v43);
    v52 = [HMDCameraStreamSessionID alloc];
    v53 = [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v48 = [(HMDCameraStreamSessionID *)v52 initWithAccessory:v14 service:v53 sessionID:v6 message:v4];

    v54 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];

    if (v54)
    {
      v55 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v56 = [v55 key];
      v57 = MEMORY[0x277CCABB0];
      v58 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v59 = [v57 numberWithInteger:{objc_msgSend(v58, "timestamp")}];
      [(HMDCameraSessionID *)v48 markMilestoneFor:v56 withTimestamp:v59];

      v41 = v133;
    }

    v132 = [v4 remoteSourceDevice];
    v60 = [v14 isReachable];
    v61 = [(HMDCameraStreamControlMessageHandler *)v44 residentMessageHandler];
    v131 = [v61 remoteAccessDevice];

    v130 = v17;
    if (v60)
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
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, v66, buf, 0x16u);
      }
    }

    else
    {
      v67 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
      v68 = [v67 supportsReceivingRemoteCameraStream];

      if (v68)
      {
        v62 = objc_autoreleasePoolPush();
        v69 = v44;
        v64 = HMFGetOSLogHandle();
        v70 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
        if (v131)
        {
          v127 = v48;
          if (v70)
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v139 = v71;
            v140 = 2112;
            v141 = v6;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating remote stream control manager because accessory is not reachable", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v62);
          v125 = [(HMDCameraStreamControlMessageHandler *)v69 dataSource];
          [(HMDCameraStreamControlMessageHandler *)v69 workQueue];
          v124 = v72 = v69;
          v73 = [(HMDCameraStreamControlMessageHandler *)v69 streamSnapshotHandler];
          v123 = [(HMDCameraStreamControlMessageHandler *)v69 networkMonitor];
          v119 = [v123 reachabilityPath];
          v74 = [(HMDCameraStreamControlMessageHandler *)v69 streamManagementService];
          v75 = [v4 messagePayload];
          v76 = [(HMDCameraStreamControlMessageHandler *)v72 profileUniqueIdentifier];
          v77 = [(HMDCameraStreamControlMessageHandler *)v72 residentMessageHandler];
          v121 = v75;
          v122 = v74;
          v115 = v74;
          v117 = v75;
          v48 = v127;
          v78 = v132;
          v79 = [v125 createRemoteStreamControlManagerWithSessionID:v127 workQueue:v124 streamSnapshotHandler:v73 reachabilityPath:v119 device:v132 delegate:v72 accessory:v14 streamManagementService:v115 remoteCapabilities:v117 profileUniqueIdentifier:v76 residentMessageHandler:v77 remoteAccessDevice:v131 streamPreference:v135];
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
    v82 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    v83 = [v82 localNetworkConfig];

    if (!v83)
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
        _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to get the local network address config", buf, 0x16u);

        v41 = v133;
      }

      objc_autoreleasePoolPop(v109);
      v93 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v4 respondWithError:v93];
      v49 = v134;
      goto LABEL_59;
    }

    v84 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    v120 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
    [(HMDCameraStreamControlMessageHandler *)v44 streamSnapshotHandler];
    v85 = v128 = v6;
    v122 = [(HMDCameraStreamControlMessageHandler *)v44 networkMonitor];
    v118 = [v122 reachabilityPath];
    [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v87 = v86 = v14;
    v76 = [v4 messagePayload];
    v77 = [(HMDCameraStreamControlMessageHandler *)v44 supportedConfigCache];
    v124 = v84;
    v125 = v83;
    v121 = v87;
    v114 = v86;
    v116 = v87;
    v14 = v86;
    v88 = v84;
    v73 = v120;
    v123 = v85;
    v89 = v85;
    v6 = v128;
    v78 = v132;
    v79 = [v88 createLocalStreamControlManagerWithSessionID:v48 workQueue:v120 streamSnapshotHandler:v89 reachabilityPath:v118 device:v132 delegate:v44 accessory:v114 streamManagementService:v116 localNetworkConfig:v83 remoteCapabilities:v76 supportedConfigCache:v77 streamPreference:v135];
    v80 = 30.0;
LABEL_50:

    v90 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    v91 = [v78 remoteDestinationString];
    v129 = v48;
    v92 = [v90 createStreamManagerSessionWithSessionID:v48 destinationID:v91 streamClientConnection:v133 streamControlManager:v79 setupWaitPeriod:v80];

    v136 = 0;
    LOBYTE(v90) = [v92 canStartWithError:&v136];
    v126 = v136;
    v93 = v79;
    if (v90)
    {
      [(HMDCameraStreamControlMessageHandler *)v44 setStreamSession:v92];
      v94 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      [v94 setCurrentMessage:v4];

      v95 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      v96 = [v95 streamControlManager];
      [v96 negotiateStream];

      v97 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      v98 = [v97 streamSetupTimer];
      [v98 setDelegate:v44];

      v99 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
      v100 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      v101 = [v100 streamSetupTimer];
      [v101 setDelegateQueue:v99];

      v102 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      v103 = [v102 streamSetupTimer];
      [v103 resume];

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
        _os_log_impl(&dword_229538000, v107, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot start stream session: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v105);
      [v4 respondWithError:v126];
    }

    v41 = v133;
    v49 = v134;
    v48 = v129;
LABEL_59:

    v17 = v130;
LABEL_60:
    v23 = v135;

LABEL_61:
LABEL_62:

    goto LABEL_63;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v4 messagePayload];
    *buf = 138543618;
    v139 = v24;
    v140 = 2112;
    v141 = v25;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find session ID in negotiate message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [v4 respondWithError:v14];
LABEL_63:

  v113 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 proxyConnection];
  v7 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v8 = [v7 streamClientConnection];

  if (v6 && v8 && v6 != v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      *buf = 138544130;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting stream control request message %@ from client %@ because stream is owned by other client %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v14 = MEMORY[0x277CCA9B8];
    v15 = 17;
  }

  else
  {
    if ([objc_opt_class() _isStopMessage:v4])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleStopMessage:v4];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioStreamSettingMessage:v4])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioState:v4];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioVolumeMessage:v4])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioVolume:v4];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isRemoteSetupMessage:v4])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleRemoteSetupMessage:v4];
      goto LABEL_16;
    }

    v18 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v19 = [v18 currentMessage];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [(HMDCameraStreamControlMessageHandler *)v21 streamSession];
        v25 = [v24 currentMessage];
        v26 = [v25 shortDescription];
        [v4 shortDescription];
        v27 = v33 = v20;
        *buf = 138543874;
        v35 = v23;
        v36 = 2112;
        v37 = v26;
        v38 = 2112;
        v39 = v27;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Current message %@ is already being processed, rejecting message %@", buf, 0x20u);

        v20 = v33;
      }

      objc_autoreleasePoolPop(v20);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 3;
    }

    else
    {
      if ([objc_opt_class() _isNegotiateMessage:v4])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleNegotiateMessage:v4];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isStartMessage:v4])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleStartMessage:v4];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isReconfigureMessage:v4])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleReconfigureMessage:v4];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isUpdateMaximumVideoResolutionQualityMessage:v4])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleUpdateMaximumVideoResolutionQualityMessage:v4];
        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v4 name];
        *buf = 138543618;
        v35 = v31;
        v36 = 2112;
        v37 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unknown message type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 2;
    }
  }

  v16 = [v14 hmErrorWithCode:v15];
  [v4 respondWithError:v16];

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopStreamWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
      v19 = 138543874;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failing stream session %@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [(HMDCameraStreamControlMessageHandler *)v8 streamSession];
    v14 = [v13 sessionID];
    v15 = [v14 sessionID];
    [v12 setObject:v15 forKeyedSubscript:@"kCameraSessionID"];

    if (v4)
    {
      v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
      [v12 setObject:v16 forKeyedSubscript:@"kCameraSessionError"];
    }

    v17 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCF608] messagePayload:v12];
    [(HMDCameraStreamControlMessageHandler *)v8 _handleStopMessage:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)takeOwnershipOfStreamUsingMessage:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_29:
    _HMFPreconditionFailure();
  }

  v7 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  v8 = [v7 destinationID];

  if (v8)
  {
    goto LABEL_29;
  }

  v9 = [v4 proxyConnection];
  if (v9)
  {
    v10 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    v11 = [v10 streamClientConnection];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v11 != v9)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v47 = 138543618;
        v48 = v16;
        v49 = 2112;
        v50 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Taking ownership of stream using client connection: %@", &v47, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [(HMDCameraStreamControlMessageHandler *)v13 streamSession];
      v18 = [v17 currentMessage];

      if (v18)
      {
        if (([objc_opt_class() _isNegotiateMessage:v18] & 1) == 0)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v13;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            v45 = [v18 shortDescription];
            v47 = 138543618;
            v48 = v44;
            v49 = 2112;
            v50 = v45;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot take ownership of stream because stream is handling a non-negotiate message: %@", &v47, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v4 respondWithError:v40];
          goto LABEL_26;
        }

        v19 = [(HMDCameraStreamControlMessageHandler *)v13 streamSession];
        [v19 setCurrentMessage:v4];

        v20 = objc_autoreleasePoolPush();
        v21 = v13;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v18 shortDescription];
          v47 = 138543618;
          v48 = v23;
          v49 = 2112;
          v50 = v24;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding to existing negotiate message: %@", &v47, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v25 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [v18 respondWithError:v25];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v13;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v4 shortDescription];
          v47 = 138543618;
          v48 = v37;
          v49 = 2112;
          v50 = v38;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying existing stream client that stream has stopped and responding to new stream client message: %@", &v47, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [(HMDCameraStreamControlMessageHandler *)v35 _sendStreamStoppedMessageWithError:v39];

        [(HMDCameraStreamControlMessageHandler *)v35 _respondToLocalNegotiateStreamMessage:v4];
        v25 = [v9 applicationBundleIdentifier];
        [(HMDCameraStreamControlMessageHandler *)v35 _attributeMicrophoneUsageToApplicationBundleIdentifier:v25];
      }

      v40 = [(HMDCameraStreamControlMessageHandler *)v13 streamSession];
      [v40 setStreamClientConnection:v9];
LABEL_26:

      goto LABEL_27;
    }

    if (v15)
    {
      v33 = HMFGetLogIdentifier();
      v47 = 138543362;
      v48 = v33;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Client requested to start a stream while it already owns one", &v47, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 1;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v4 shortDescription];
      v47 = 138543618;
      v48 = v29;
      v49 = 2112;
      v50 = v30;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot find XPC client connection while taking ownership of stream using message: %@", &v47, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 58;
  }

  v18 = [v31 hmErrorWithCode:v32];
  [v4 respondWithError:v18];
LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)setStreamSession:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  streamSession = self->_streamSession;
  self->_streamSession = v4;

  v8 = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
  v7 = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  [v8 setStreamSetupStatusForService:v7 inProgress:v4 != 0];
}

- (HMDCameraStreamManagerSession)streamSession
{
  v3 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  streamSession = self->_streamSession;

  return streamSession;
}

- (void)configureWithMessageDispatcher:(id)a3
{
  v9 = a3;
  v4 = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraStreamControlMessageHandler *)self accessory];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_handleConnectionDeactivatedNotification_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v5];

    [(HMDCameraStreamControlMessageHandler *)self setMessageDispatcher:v9];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCameraStreamControlMessageHandler *)self accessory];
  v5 = [v4 name];
  v6 = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  v7 = [v6 instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];

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
    block[3] = &unk_27868A728;
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

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)a3 streamSnapshotHandler:(id)a4 accessory:(id)a5 streamManagementService:(id)a6 profileUniqueIdentifier:(id)a7 networkMonitor:(id)a8
{
  v14 = MEMORY[0x277CCACA8];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v18 name];
  v22 = [v17 instanceID];
  v23 = [v14 stringWithFormat:@"%@/%@", v21, v22];

  v24 = [[HMDCameraResidentMessageHandler alloc] initWithAccessory:v18 logIdentifier:v23];
  v25 = objc_alloc_init(HMDCameraStreamControlMessageHandlerDataSource);
  v26 = [(HMDCameraStreamControlMessageHandler *)self initWithWorkQueue:v20 streamSnapshotHandler:v19 accessory:v18 streamManagementService:v17 profileUniqueIdentifier:v16 networkMonitor:v15 residentMessageHandler:v24 dataSource:v25];

  return v26;
}

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)a3 streamSnapshotHandler:(id)a4 accessory:(id)a5 streamManagementService:(id)a6 profileUniqueIdentifier:(id)a7 networkMonitor:(id)a8 residentMessageHandler:(id)a9 dataSource:(id)a10
{
  v42[1] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v38 = a4;
  obj = a5;
  v17 = a6;
  v18 = a7;
  v37 = a8;
  v36 = a9;
  v19 = v17;
  v20 = a10;
  v41.receiver = self;
  v41.super_class = HMDCameraStreamControlMessageHandler;
  v21 = [(HMDCameraStreamControlMessageHandler *)&v41 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_workQueue, a3);
    objc_storeStrong(&v22->_streamSnapshotHandler, a4);
    objc_storeWeak(&v22->_accessory, obj);
    objc_storeStrong(&v22->_profileUniqueIdentifier, a7);
    objc_storeStrong(&v22->_streamManagementService, a6);
    objc_storeStrong(&v22->_residentMessageHandler, a9);
    v23 = MEMORY[0x277CCACA8];
    v24 = [v19 instanceID];
    v25 = [v23 stringWithFormat:@"%@", v24];

    v26 = MEMORY[0x277CCAD78];
    v42[0] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v28 = [v26 hm_deriveUUIDFromBaseUUID:v18 withSalts:v27];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v28;

    v30 = objc_alloc_init(HMDCameraSupportedConfigurationCache);
    supportedConfigCache = v22->_supportedConfigCache;
    v22->_supportedConfigCache = v30;

    objc_storeStrong(&v22->_networkMonitor, a8);
    v32 = [v20 createDynamicActivityAttributionPublisher];
    dynamicActivityAttributionPublisher = v22->_dynamicActivityAttributionPublisher;
    v22->_dynamicActivityAttributionPublisher = v32;

    objc_storeStrong(&v22->_dataSource, a10);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43, &__block_literal_global_95851);
  }

  v3 = logCategory__hmf_once_v44;

  return v3;
}

void __51__HMDCameraStreamControlMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v44;
  logCategory__hmf_once_v44 = v1;
}

+ (BOOL)_isRemoteSetupMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  return v4;
}

+ (BOOL)_isSetAudioVolumeMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCF600]];

  return v4;
}

+ (BOOL)_isSetAudioStreamSettingMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCF5F8]];

  return v4;
}

+ (BOOL)_isStopMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if ([v4 isEqualToString:*MEMORY[0x277CCF608]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 name];
    if ([v6 isEqualToString:@"kStopRemoteStreamRequestKey"])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 name];
      v5 = [v7 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];
    }
  }

  return v5;
}

+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCF618]];

  return v4;
}

+ (BOOL)_isReconfigureMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isStartMessage:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"kStartRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isNegotiateMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if ([v4 isEqualToString:@"kNegotitateRemoteStreamRequestKey"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 name];
    v5 = [v6 isEqualToString:*MEMORY[0x277CCF5F0]];
  }

  return v5;
}

@end
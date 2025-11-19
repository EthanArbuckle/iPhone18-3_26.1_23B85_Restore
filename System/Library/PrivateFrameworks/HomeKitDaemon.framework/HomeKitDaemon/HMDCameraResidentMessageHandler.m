@interface HMDCameraResidentMessageHandler
+ (id)logCategory;
- (BOOL)isRemoteAccessDeviceReachable;
- (BOOL)isUsingCompanionForRemoteAccessDevice;
- (HMDAccessory)accessory;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4 messageDispatcher:(id)a5;
- (HMDDevice)remoteAccessDevice;
- (id)nextMessageForDeviceIdentifier:(id)a3;
- (void)dequeueRespondedMessageForDeviceIdentifier:(id)a3;
- (void)enqueueMessage:(id)a3 forDeviceIdentifier:(id)a4;
- (void)sendMessageWithName:(id)a3 cameraSessionID:(id)a4 payload:(id)a5 target:(id)a6 device:(id)a7 responseQueue:(id)a8 responseHandler:(id)a9;
- (void)sendMessageWithName:(id)a3 cameraSessionID:(id)a4 payload:(id)a5 target:(id)a6 responseQueue:(id)a7 responseHandler:(id)a8;
- (void)sendNextMessageForDeviceIdentifier:(id)a3;
@end

@implementation HMDCameraResidentMessageHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)sendNextMessageForDeviceIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraResidentMessageHandler *)self nextMessageForDeviceIdentifier:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 shortDescription];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending next queued message %@ to device with identifier: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDCameraResidentMessageHandler *)v7 messageDispatcher];
    [v11 sendMessage:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)nextMessageForDeviceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 firstObject];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)dequeueRespondedMessageForDeviceIdentifier:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v5 = [v4 objectForKeyedSubscript:v7];

  [v5 hmf_removeFirstObject];
  if (![v5 count])
  {
    v6 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [v6 setObject:0 forKeyedSubscript:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enqueueMessage:(id)a3 forDeviceIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  v10 = [v8 count];
  [v8 addObject:v11];

  os_unfair_lock_unlock(&self->_lock);
  if (!v10)
  {
    [(HMDCameraResidentMessageHandler *)self sendNextMessageForDeviceIdentifier:v6];
  }
}

- (BOOL)isRemoteAccessDeviceReachable
{
  v2 = [(HMDCameraResidentMessageHandler *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isRemoteAccessDeviceReachable];

  return v4;
}

- (BOOL)isUsingCompanionForRemoteAccessDevice
{
  v3 = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  v4 = [(HMDCameraResidentMessageHandler *)self accessory];
  v5 = [v4 home];
  v6 = [v5 homeManager];
  v7 = [v6 companionDevice];
  v8 = [v3 isEqual:v7];

  return v8;
}

- (HMDDevice)remoteAccessDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraResidentMessageHandler *)self accessory];
  v4 = [v3 home];

  if (v4)
  {
    v5 = [v4 homeManager];
    v6 = [v5 companionDevice];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v12 = [v4 primaryResident];
      v7 = [v12 device];

      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v17;
          v22 = 2112;
          v23 = v4;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find remote access device for home %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get home to determine remote access device", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendMessageWithName:(id)a3 cameraSessionID:(id)a4 payload:(id)a5 target:(id)a6 responseQueue:(id)a7 responseHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  [(HMDCameraResidentMessageHandler *)self sendMessageWithName:v19 cameraSessionID:v18 payload:v17 target:v16 device:v20 responseQueue:v15 responseHandler:v14];
}

- (void)sendMessageWithName:(id)a3 cameraSessionID:(id)a4 payload:(id)a5 target:(id)a6 device:(id)a7 responseQueue:(id)a8 responseHandler:(id)a9
{
  v60 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v19)
  {
    v38 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:v18 device:v19];
    v41 = v17;
    v22 = [HMDRemoteMessage secureMessageWithName:"secureMessageWithName:qualityOfService:destination:messagePayload:" qualityOfService:v15 destination:33 messagePayload:?];
    v23 = [v22 identifier];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_12;
    v42[3] = &unk_278688A90;
    v40 = v20;
    v43 = v20;
    v39 = v21;
    v47 = v21;
    v44 = self;
    v24 = v23;
    v45 = v24;
    v25 = v19;
    v46 = v25;
    [v22 setResponseHandler:v42];
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v35 = v26;
      [v25 shortDescription];
      v36 = v18;
      v31 = v30 = v16;
      [v22 shortDescription];
      v32 = v37 = v15;
      *buf = 138544130;
      v53 = v29;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Enqueueing camera message for session ID %@ to %@ using %@", buf, 0x2Au);

      v15 = v37;
      v16 = v30;
      v18 = v36;

      v26 = v35;
    }

    objc_autoreleasePoolPop(v26);
    v33 = [v25 identifier];
    [(HMDCameraResidentMessageHandler *)v27 enqueueMessage:v22 forDeviceIdentifier:v33];

    v20 = v40;
    v17 = v41;
    v21 = v39;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke;
    block[3] = &unk_278689AB8;
    block[4] = self;
    v49 = v15;
    v50 = v16;
    v51 = v21;
    dispatch_async(v20, block);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Did not find the resident device to send the message %@ for session %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1034];
  (*(v8 + 16))(v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

void __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_2;
  block[3] = &unk_278689F98;
  v23 = *(a1 + 64);
  v8 = v5;
  v21 = v8;
  v9 = v6;
  v22 = v9;
  dispatch_async(v7, block);
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 48);
    *buf = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received response for message with identifier %@. Sending next message", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 56) identifier];
  [v15 dequeueRespondedMessageForDeviceIdentifier:v16];

  v17 = *(a1 + 40);
  v18 = [*(a1 + 56) identifier];
  [v17 sendNextMessageForDeviceIdentifier:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4 messageDispatcher:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v19 = _HMFPreconditionFailure();
    return [(HMDCameraResidentMessageHandler *)v19 initWithAccessory:v20 logIdentifier:v21, v22];
  }

  v23.receiver = self;
  v23.super_class = HMDCameraResidentMessageHandler;
  v12 = [(HMDCameraResidentMessageHandler *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_accessory, v8);
    objc_storeStrong(&v13->_messageDispatcher, a5);
    v14 = [v9 copy];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x277CBEB38] dictionary];
    queuedMessagesByDeviceIdentifier = v13->_queuedMessagesByDeviceIdentifier;
    v13->_queuedMessagesByDeviceIdentifier = v16;
  }

  return v13;
}

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)a3 logIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDMessageDispatcher defaultDispatcher];
  v9 = [(HMDCameraResidentMessageHandler *)self initWithAccessory:v7 logIdentifier:v6 messageDispatcher:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_119276 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_119276, &__block_literal_global_119277);
  }

  v3 = logCategory__hmf_once_v10_119278;

  return v3;
}

void __46__HMDCameraResidentMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_119278;
  logCategory__hmf_once_v10_119278 = v1;
}

@end
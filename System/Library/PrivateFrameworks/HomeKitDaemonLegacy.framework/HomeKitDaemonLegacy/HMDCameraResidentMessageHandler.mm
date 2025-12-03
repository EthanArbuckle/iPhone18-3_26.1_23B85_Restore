@interface HMDCameraResidentMessageHandler
+ (id)logCategory;
- (BOOL)isRemoteAccessDeviceReachable;
- (BOOL)isUsingCompanionForRemoteAccessDevice;
- (HMDAccessory)accessory;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier;
- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier messageDispatcher:(id)dispatcher;
- (HMDDevice)remoteAccessDevice;
- (id)nextMessageForDeviceIdentifier:(id)identifier;
- (void)dequeueRespondedMessageForDeviceIdentifier:(id)identifier;
- (void)enqueueMessage:(id)message forDeviceIdentifier:(id)identifier;
- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target device:(id)device responseQueue:(id)queue responseHandler:(id)handler;
- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target responseQueue:(id)queue responseHandler:(id)handler;
- (void)sendNextMessageForDeviceIdentifier:(id)identifier;
@end

@implementation HMDCameraResidentMessageHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)sendNextMessageForDeviceIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(HMDCameraResidentMessageHandler *)self nextMessageForDeviceIdentifier:identifierCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [v5 shortDescription];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = shortDescription;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending next queued message %@ to device with identifier: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    messageDispatcher = [(HMDCameraResidentMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)nextMessageForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v6 = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];
  firstObject = [v6 firstObject];

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (void)dequeueRespondedMessageForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  v5 = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];

  [v5 hmf_removeFirstObject];
  if (![v5 count])
  {
    queuedMessagesByDeviceIdentifier2 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [queuedMessagesByDeviceIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enqueueMessage:(id)message forDeviceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  queuedMessagesByDeviceIdentifier = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
  array = [queuedMessagesByDeviceIdentifier objectForKeyedSubscript:identifierCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    queuedMessagesByDeviceIdentifier2 = [(HMDCameraResidentMessageHandler *)self queuedMessagesByDeviceIdentifier];
    [queuedMessagesByDeviceIdentifier2 setObject:array forKeyedSubscript:identifierCopy];
  }

  v10 = [array count];
  [array addObject:messageCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v10)
  {
    [(HMDCameraResidentMessageHandler *)self sendNextMessageForDeviceIdentifier:identifierCopy];
  }
}

- (BOOL)isRemoteAccessDeviceReachable
{
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];
  isRemoteAccessDeviceReachable = [home isRemoteAccessDeviceReachable];

  return isRemoteAccessDeviceReachable;
}

- (BOOL)isUsingCompanionForRemoteAccessDevice
{
  remoteAccessDevice = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];
  homeManager = [home homeManager];
  companionDevice = [homeManager companionDevice];
  v8 = [remoteAccessDevice isEqual:companionDevice];

  return v8;
}

- (HMDDevice)remoteAccessDevice
{
  v24 = *MEMORY[0x277D85DE8];
  accessory = [(HMDCameraResidentMessageHandler *)self accessory];
  home = [accessory home];

  if (home)
  {
    homeManager = [home homeManager];
    companionDevice = [homeManager companionDevice];

    if (companionDevice)
    {
      device = companionDevice;
    }

    else
    {
      primaryResident = [home primaryResident];
      device = [primaryResident device];

      if (device)
      {
        v13 = device;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v17;
          v22 = 2112;
          v23 = home;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find remote access device for home %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get home to determine remote access device", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    device = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return device;
}

- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target responseQueue:(id)queue responseHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  targetCopy = target;
  payloadCopy = payload;
  dCopy = d;
  nameCopy = name;
  remoteAccessDevice = [(HMDCameraResidentMessageHandler *)self remoteAccessDevice];
  [(HMDCameraResidentMessageHandler *)self sendMessageWithName:nameCopy cameraSessionID:dCopy payload:payloadCopy target:targetCopy device:remoteAccessDevice responseQueue:queueCopy responseHandler:handlerCopy];
}

- (void)sendMessageWithName:(id)name cameraSessionID:(id)d payload:(id)payload target:(id)target device:(id)device responseQueue:(id)queue responseHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  payloadCopy = payload;
  targetCopy = target;
  deviceCopy = device;
  queueCopy = queue;
  handlerCopy = handler;
  if (deviceCopy)
  {
    v38 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:targetCopy device:deviceCopy];
    v41 = payloadCopy;
    v22 = [HMDRemoteMessage secureMessageWithName:"secureMessageWithName:qualityOfService:destination:messagePayload:" qualityOfService:nameCopy destination:33 messagePayload:?];
    identifier = [v22 identifier];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke_12;
    v42[3] = &unk_279734780;
    v40 = queueCopy;
    v43 = queueCopy;
    v39 = handlerCopy;
    v47 = handlerCopy;
    selfCopy = self;
    v24 = identifier;
    v45 = v24;
    v25 = deviceCopy;
    v46 = v25;
    [v22 setResponseHandler:v42];
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v35 = v26;
      [v25 shortDescription];
      v36 = targetCopy;
      v31 = v30 = dCopy;
      [v22 shortDescription];
      v32 = v37 = nameCopy;
      *buf = 138544130;
      v53 = v29;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Enqueueing camera message for session ID %@ to %@ using %@", buf, 0x2Au);

      nameCopy = v37;
      dCopy = v30;
      targetCopy = v36;

      v26 = v35;
    }

    objc_autoreleasePoolPop(v26);
    identifier2 = [v25 identifier];
    [(HMDCameraResidentMessageHandler *)selfCopy2 enqueueMessage:v22 forDeviceIdentifier:identifier2];

    queueCopy = v40;
    payloadCopy = v41;
    handlerCopy = v39;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__HMDCameraResidentMessageHandler_sendMessageWithName_cameraSessionID_payload_target_device_responseQueue_responseHandler___block_invoke;
    block[3] = &unk_279734578;
    block[4] = self;
    v49 = nameCopy;
    v50 = dCopy;
    v51 = handlerCopy;
    dispatch_async(queueCopy, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Did not find the resident device to send the message %@ for session %@", &v11, 0x20u);
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
  block[3] = &unk_2797355D0;
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
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received response for message with identifier %@. Sending next message", buf, 0x16u);
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

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier messageDispatcher:(id)dispatcher
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!identifierCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = dispatcherCopy;
  if (!dispatcherCopy)
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
    objc_storeWeak(&v12->_accessory, accessoryCopy);
    objc_storeStrong(&v13->_messageDispatcher, dispatcher);
    v14 = [identifierCopy copy];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    queuedMessagesByDeviceIdentifier = v13->_queuedMessagesByDeviceIdentifier;
    v13->_queuedMessagesByDeviceIdentifier = dictionary;
  }

  return v13;
}

- (HMDCameraResidentMessageHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  v8 = +[HMDMessageDispatcher defaultDispatcher];
  v9 = [(HMDCameraResidentMessageHandler *)self initWithAccessory:accessoryCopy logIdentifier:identifierCopy messageDispatcher:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_78943 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_78943, &__block_literal_global_78944);
  }

  v3 = logCategory__hmf_once_v10_78945;

  return v3;
}

uint64_t __46__HMDCameraResidentMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_78945;
  logCategory__hmf_once_v10_78945 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
@interface HMDRemoteLoginMessageSender
+ (id)logCategory;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginMessageSender)initWithTarget:(id)target accessory:(id)accessory device:(id)device workQueue:(id)queue messageDispatcher:(id)dispatcher;
- (id)logIdentifier;
- (void)sendRemoteMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler;
@end

@implementation HMDRemoteLoginMessageSender

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)sendRemoteMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  handlerCopy = handler;
  device = [(HMDRemoteLoginMessageSender *)self device];
  if (device || (-[HMDRemoteLoginMessageSender accessory](self, "accessory"), v12 = objc_claimAutoreleasedReturnValue(), [v12 device], device = objc_claimAutoreleasedReturnValue(), v12, device))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v34 = v16;
      v35 = 2112;
      v36 = nameCopy;
      v37 = 2112;
      v38 = device;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [HMDRemoteDeviceMessageDestination alloc];
    target = [(HMDRemoteLoginMessageSender *)selfCopy target];
    v19 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:target device:device];

    v20 = [HMDRemoteMessage secureMessageWithName:nameCopy destination:v19 messagePayload:payloadCopy];
    objc_initWeak(buf, selfCopy);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __81__HMDRemoteLoginMessageSender_sendRemoteMessageWithName_payload_responseHandler___block_invoke;
    v30 = &unk_278689728;
    objc_copyWeak(&v32, buf);
    v31 = handlerCopy;
    [v20 setResponseHandler:&v27];
    v21 = [(HMDRemoteLoginMessageSender *)selfCopy messageDispatcher:v27];
    [v21 sendMessage:v20 completionHandler:0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);

    goto LABEL_6;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Remote device to send the message is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  if (handlerCopy)
  {
    device = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(handlerCopy + 2))(handlerCopy, device, 0);
LABEL_6:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __81__HMDRemoteLoginMessageSender_sendRemoteMessageWithName_payload_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDRemoteLoginMessageSender_sendRemoteMessageWithName_payload_responseHandler___block_invoke_2;
    block[3] = &unk_278689F98;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __81__HMDRemoteLoginMessageSender_sendRemoteMessageWithName_payload_responseHandler___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)logIdentifier
{
  target = [(HMDRemoteLoginMessageSender *)self target];
  uUIDString = [target UUIDString];

  return uUIDString;
}

- (HMDRemoteLoginMessageSender)initWithTarget:(id)target accessory:(id)accessory device:(id)device workQueue:(id)queue messageDispatcher:(id)dispatcher
{
  targetCopy = target;
  accessoryCopy = accessory;
  deviceCopy = device;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  v21.receiver = self;
  v21.super_class = HMDRemoteLoginMessageSender;
  v18 = [(HMDRemoteLoginMessageSender *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_target, target);
    objc_storeStrong(&v19->_device, device);
    objc_storeWeak(&v19->_accessory, accessoryCopy);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_153914 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_153914, &__block_literal_global_153915);
  }

  v3 = logCategory__hmf_once_v1_153916;

  return v3;
}

void __42__HMDRemoteLoginMessageSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_153916;
  logCategory__hmf_once_v1_153916 = v1;
}

@end
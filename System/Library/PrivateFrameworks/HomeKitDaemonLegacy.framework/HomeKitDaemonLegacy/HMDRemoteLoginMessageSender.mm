@interface HMDRemoteLoginMessageSender
+ (id)logCategory;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginMessageSender)initWithTarget:(id)a3 accessory:(id)a4 device:(id)a5 workQueue:(id)a6 messageDispatcher:(id)a7;
- (id)logIdentifier;
- (void)sendRemoteMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5;
@end

@implementation HMDRemoteLoginMessageSender

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)sendRemoteMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDRemoteLoginMessageSender *)self device];
  if (v11 || (-[HMDRemoteLoginMessageSender accessory](self, "accessory"), v12 = objc_claimAutoreleasedReturnValue(), [v12 device], v11 = objc_claimAutoreleasedReturnValue(), v12, v11))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v34 = v16;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [HMDRemoteDeviceMessageDestination alloc];
    v18 = [(HMDRemoteLoginMessageSender *)v14 target];
    v19 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:v18 device:v11];

    v20 = [HMDRemoteMessage secureMessageWithName:v8 destination:v19 messagePayload:v9];
    objc_initWeak(buf, v14);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __81__HMDRemoteLoginMessageSender_sendRemoteMessageWithName_payload_responseHandler___block_invoke;
    v30 = &unk_2797355F8;
    objc_copyWeak(&v32, buf);
    v31 = v10;
    [v20 setResponseHandler:&v27];
    v21 = [(HMDRemoteLoginMessageSender *)v14 messageDispatcher:v27];
    [v21 sendMessage:v20 completionHandler:0];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);

    goto LABEL_6;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Remote device to send the message is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(v10 + 2))(v10, v11, 0);
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
    block[3] = &unk_2797355D0;
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
  v2 = [(HMDRemoteLoginMessageSender *)self target];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDRemoteLoginMessageSender)initWithTarget:(id)a3 accessory:(id)a4 device:(id)a5 workQueue:(id)a6 messageDispatcher:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMDRemoteLoginMessageSender;
  v18 = [(HMDRemoteLoginMessageSender *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_target, a3);
    objc_storeStrong(&v19->_device, a5);
    objc_storeWeak(&v19->_accessory, v14);
    objc_storeStrong(&v19->_workQueue, a6);
    objc_storeStrong(&v19->_messageDispatcher, a7);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_101635 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_101635, &__block_literal_global_101636);
  }

  v3 = logCategory__hmf_once_v1_101637;

  return v3;
}

uint64_t __42__HMDRemoteLoginMessageSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_101637;
  logCategory__hmf_once_v1_101637 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
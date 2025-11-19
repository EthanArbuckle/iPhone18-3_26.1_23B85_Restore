@interface HMDMediaDestinationMessageHandler
+ (id)logCategory;
- (HMDMediaDestinationMessageHandler)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 notifications:(id)a6 dataSource:(id)a7 delegate:(id)a8;
- (HMDMediaDestinationMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationMessageHandlerDelegate)delegate;
- (id)audioGroupIdentifierInMessage:(id)a3 error:(id *)a4;
- (unint64_t)supportedOptionsInMessage:(id)a3 error:(id *)a4;
- (void)handleMediaDestinationUpdateAudioGroupIdentifierRequestMessage:(id)a3;
- (void)handleMediaDestinationUpdateSupportedOptionsRequestMessage:(id)a3;
- (void)handleUpdatedDestination:(id)a3;
- (void)sendRequestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4;
- (void)sendRequestToUpdateSupportOptions:(unint64_t)a3 completion:(id)a4;
@end

@implementation HMDMediaDestinationMessageHandler

- (HMDMediaDestinationMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleMediaDestinationUpdateSupportedOptionsRequestMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination supported options request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 responseHandler];

  if (!v9)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v20;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination supported options request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    goto LABEL_11;
  }

  v29 = 0;
  v10 = [(HMDMediaDestinationMessageHandler *)v6 supportedOptionsInMessage:v4 error:&v29];
  v11 = v29;
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supported options from update destination supported options request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
LABEL_11:
    [v4 respondWithError:v12];
    goto LABEL_18;
  }

  v21 = [(HMDMediaDestinationMessageHandler *)v6 delegate];
  v22 = v21;
  if (v21)
  {
    [v21 mediaDestinationMessageHandler:v6 didReceiveUpdateSupportedOptionsRequestMessage:v4 supportOptions:v10];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v6;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to update supported options due to no delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v27];
  }

  v12 = 0;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationUpdateAudioGroupIdentifierRequestMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination audio group identifier request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 responseHandler];

  if (v9)
  {
    v28 = 0;
    v10 = [(HMDMediaDestinationMessageHandler *)v6 audioGroupIdentifierInMessage:v4 error:&v28];
    v11 = v28;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v15;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio group identifier from update audio group identifier request message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v4 respondWithError:v11];
    }

    else
    {
      v20 = [(HMDMediaDestinationMessageHandler *)v6 delegate];
      v21 = v20;
      if (v20)
      {
        [v20 mediaDestinationMessageHandler:v6 didReceiveUpdateAudioGroupIdentifierRequestMessage:v4 audioGroupIdentifier:v10];
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v6;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to update audio group identifier due to no delegate", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v26];
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v19;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination audio group identifier request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v11];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (unint64_t)supportedOptionsInMessage:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 messagePayload];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_numberForKey:*MEMORY[0x277CD0868]];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supported options from message payload: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *a4 = v11 = 0;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else if (a4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)audioGroupIdentifierInMessage:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 messagePayload];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_stringForKey:*MEMORY[0x277CD0838]];
    v10 = v9;
    if (v9)
    {
      if ([v9 isEqualToString:*MEMORY[0x277CD0860]])
      {
        goto LABEL_16;
      }

      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
      if (v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        objc_autoreleasePoolPop(v12);
        if (a4)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          *a4 = v11 = 0;
          goto LABEL_17;
        }

LABEL_16:
        v11 = 0;
        goto LABEL_17;
      }

      v15 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      v16 = "%{public}@Failed to parse audio group identifier from message payload: %@";
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v8;
      v16 = "%{public}@Failed to get audio group identifier from message payload: %@";
    }

    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v16, &v23, 0x16u);

    goto LABEL_14;
  }

  if (a4)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)handleUpdatedDestination:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling updated destination: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMessageHandler *)v6 notificationCenter];
  [v9 postNotificationName:*MEMORY[0x277CD0880] object:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestToUpdateSupportOptions:(unint64_t)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationSupportOptionsAsString();
    *buf = 138543618;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending request to update destination support options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    v31 = *MEMORY[0x277CD0868];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v32 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v14 = objc_alloc(MEMORY[0x277D0F820]);
    v15 = [(HMDMessageHandler *)v8 messageTargetUUID];
    v16 = [v14 initWithTarget:v15];

    v17 = objc_alloc(MEMORY[0x277D0F848]);
    v18 = [v17 initWithName:*MEMORY[0x277CD0878] destination:v16 payload:v13];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __82__HMDMediaDestinationMessageHandler_sendRequestToUpdateSupportOptions_completion___block_invoke;
    v28 = &unk_278685AF8;
    v29 = v8;
    v30 = v6;
    [v18 setResponseHandler:&v25];
    v19 = [v18 copy];
    [(HMDMessageHandler *)v8 routeMessage:v19];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v8;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to set completion to update support options", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __82__HMDMediaDestinationMessageHandler_sendRequestToUpdateSupportOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update destination supported options request message responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v33 = *MEMORY[0x277CD0838];
    v12 = [v6 UUIDString];
    v13 = v12;
    v14 = *MEMORY[0x277CD0860];
    if (v12)
    {
      v14 = v12;
    }

    v34 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = objc_alloc(MEMORY[0x277D0F820]);
    v17 = [(HMDMessageHandler *)v9 messageTargetUUID];
    v18 = [v16 initWithTarget:v17];

    v19 = objc_alloc(MEMORY[0x277D0F848]);
    v20 = [v19 initWithName:*MEMORY[0x277CD0870] destination:v18 payload:v15];
    [v20 setRemoteRestriction:41];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __88__HMDMediaDestinationMessageHandler_sendRequestToUpdateAudioGroupIdentifier_completion___block_invoke;
    v30 = &unk_278685AF8;
    v31 = v9;
    v32 = v7;
    [v20 setResponseHandler:&v27];
    v21 = [v20 copy];
    [(HMDMessageHandler *)v9 routeMessage:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to set completion to update support options", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __88__HMDMediaDestinationMessageHandler_sendRequestToUpdateAudioGroupIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update audio group identifier request message responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationMessageHandler)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 notifications:(id)a6 dataSource:(id)a7 delegate:(id)a8
{
  v29[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:
    _HMFPreconditionFailure();
LABEL_11:
    _HMFPreconditionFailure();
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v29[0] = *MEMORY[0x277CD0870];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v28 = *MEMORY[0x277CD0878];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v23 = [v14 uniqueIdentifier];
  v27.receiver = self;
  v27.super_class = HMDMediaDestinationMessageHandler;
  v24 = [(HMDAppleMediaAccessoryMessageHandler *)&v27 initWithMessageTargetUUID:v23 messageDispatcher:v15 notificationCenter:v16 ownerPrivateRemoteMessages:MEMORY[0x277CBEBF8] adminPrivateRemoteMessages:v21 internalMessages:v22 notifications:v17 notificationsToObject:MEMORY[0x277CBEC10]];

  if (v24)
  {
    [(HMDMediaDestinationMessageHandler *)v24 setDataSource:v18];
    [(HMDMediaDestinationMessageHandler *)v24 setDelegate:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_189801 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_189801, &__block_literal_global_189802);
  }

  v3 = logCategory__hmf_once_v21_189803;

  return v3;
}

void __48__HMDMediaDestinationMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_189803;
  logCategory__hmf_once_v21_189803 = v1;
}

@end
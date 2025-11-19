@interface HMDAppleMediaAccessoryLocalMessageHandler
+ (id)logCategory;
- (HMDAppleMediaAccessoryLocalMessageHandler)initWithIdentifier:(id)a3 assistantSettingsConnection:(id)a4;
- (HMDAppleMediaAccessoryLocalMessageHandlerDataSource)dataSource;
- (id)dataSourceAccessoryWithUUID:(id)a3;
- (id)logIdentifier;
- (void)handleSiriEndpointDeleteSiriHistoryMessage:(id)a3;
@end

@implementation HMDAppleMediaAccessoryLocalMessageHandler

- (HMDAppleMediaAccessoryLocalMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaAccessoryLocalMessageHandler *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dataSourceAccessoryWithUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessoryLocalMessageHandler *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accessoryWithUUID:v4 forAppleMediaAccessoryLocalMessageHandler:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory with uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleSiriEndpointDeleteSiriHistoryMessage:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling siri endpoint delete siri history message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E18]) initWithPayload:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 accessoryUUID];
      v13 = [(HMDAppleMediaAccessoryLocalMessageHandler *)v6 dataSourceAccessoryWithUUID:v12];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 endpointIdentifier];
        if (v15)
        {
          v16 = [(HMDAppleMediaAccessoryLocalMessageHandler *)v6 assistantSettingsConnection];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __88__HMDAppleMediaAccessoryLocalMessageHandler_handleSiriEndpointDeleteSiriHistoryMessage___block_invoke;
          v36[3] = &unk_2797359D8;
          v37 = v4;
          [v16 deleteSiriHistoryWithEndpointUUID:v15 completionHandler:v36];

          v17 = v37;
        }

        else
        {
          v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          v30 = objc_autoreleasePoolPush();
          v31 = v6;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v33 = v35 = v30;
            *buf = 138544130;
            v39 = v33;
            v40 = 2112;
            v41 = v14;
            v42 = 2112;
            v43 = v4;
            v44 = 2112;
            v45 = v17;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to get endpoint identifier for accessory: %@ for delete siri history message: %@ error: %@", buf, 0x2Au);

            v30 = v35;
          }

          objc_autoreleasePoolPop(v30);
          [v4 respondWithError:v17];
        }
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v26 = objc_autoreleasePoolPush();
        v27 = v6;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138544130;
          v39 = v29;
          v40 = 2112;
          v41 = v12;
          v42 = 2112;
          v43 = v4;
          v44 = 2112;
          v45 = v15;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory with uuid: %@ for delete siri history message: %@ error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        [v4 respondWithError:v15];
      }
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v25;
        v40 = 2112;
        v41 = v9;
        v42 = 2112;
        v43 = v12;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode message payload from delete siri history message payload: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [v4 respondWithError:v12];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v21;
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from delete siri history message: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [v4 respondWithError:v11];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDAppleMediaAccessoryLocalMessageHandler_handleSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) respondWithError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 respondWithSuccess];
}

- (HMDAppleMediaAccessoryLocalMessageHandler)initWithIdentifier:(id)a3 assistantSettingsConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryLocalMessageHandler *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryLocalMessageHandler;
  v10 = [(HMDAppleMediaAccessoryLocalMessageHandler *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    objc_storeStrong(&v11->_assistantSettingsConnection, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_42092 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_42092, &__block_literal_global_42093);
  }

  v3 = logCategory__hmf_once_v7_42094;

  return v3;
}

uint64_t __56__HMDAppleMediaAccessoryLocalMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_42094;
  logCategory__hmf_once_v7_42094 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
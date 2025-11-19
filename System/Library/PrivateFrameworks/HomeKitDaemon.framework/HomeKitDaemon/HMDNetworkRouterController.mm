@interface HMDNetworkRouterController
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDHAPAccessory)accessory;
- (HMDNetworkRouterController)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5;
- (HMDService)routerService;
- (NSString)wiFiSSID;
- (unint64_t)hash;
- (void)_handleAccessoryConnected;
- (void)_handleCharacteristicChanges:(id)a3;
- (void)_handleCharacteristicsChangedPayload:(id)a3;
- (void)_handleNetworkAccessViolationUpdate;
- (void)_writeClientConfigurationControlRequest:(id)a3 operationName:(id)a4 completion:(id)a5;
- (void)_writeTLVWithValueInResponse:(id)a3 characteristicType:(id)a4 operationName:(id)a5 completion:(id)a6;
- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 completion:(id)a5;
- (void)_writeValueIfDifferent:(id)a3 characteristicType:(id)a4 operationName:(id)a5 completion:(id)a6;
- (void)addClientConfiguration:(id)a3 completion:(id)a4;
- (void)configure;
- (void)fetchAccessViolationsWithCompletion:(id)a3;
- (void)getClientStatusWithIdentifier:(id)a3 completion:(id)a4;
- (void)getClientStatusWithIdentifiers:(id)a3 completion:(id)a4;
- (void)handleAccessoryConfiguredNotification:(id)a3;
- (void)handleCharacteristicsChangedNotification:(id)a3;
- (void)readClientConfigurationWithClientIdentifier:(id)a3 completion:(id)a4;
- (void)removeClientConfigurationWithClientIdentifier:(id)a3 completion:(id)a4;
- (void)resetAccessViolationForClientIdentifier:(id)a3 completion:(id)a4;
- (void)updateClientConfiguration:(id)a3 completion:(id)a4;
- (void)writeManagedNetworkEnable:(BOOL)a3 completion:(id)a4;
@end

@implementation HMDNetworkRouterController

- (HMDService)routerService
{
  WeakRetained = objc_loadWeakRetained(&self->_routerService);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleAccessoryConfiguredNotification:(id)a3
{
  v4 = [(HMDNetworkRouterController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDNetworkRouterController_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkRouterController *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDNetworkRouterController_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__HMDNetworkRouterController_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _handleCharacteristicsChangedPayload:v2];
}

- (void)_handleAccessoryConnected
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterController *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v21 = v5;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(HMDNetworkRouterController *)self routerService];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v25 = 0u;
    v7 = [v20 characteristics];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 characteristicType];
          v14 = [v13 isEqualToString:@"0000021F-0000-1000-8000-0026BB765291"];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = v21;
    if ([v6 count])
    {
      [(HMDNetworkRouterController *)self _handleCharacteristicChanges:v6];
      [v21 enableNotification:1 forCharacteristics:v6 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.networkRouter"];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Handling connected accessory failed. No hapAccessory found.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicsChangedPayload:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNetworkRouterController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
  if ([v6 count])
  {
    v19 = v4;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [(HMDNetworkRouterController *)self accessory];
          v15 = [v13 accessory];
          v16 = HMFEqualObjects();

          if (v16)
          {
            [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [(HMDNetworkRouterController *)self _handleCharacteristicChanges:v7];
    v6 = v18;
    v4 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) type];
        v10 = [v9 isEqualToString:@"0000021F-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          [(HMDNetworkRouterController *)self _handleNetworkAccessViolationUpdate];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleNetworkAccessViolationUpdate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterController *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      v13 = "%{public}@Handling network access violation failed. No hapAccessory found.";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, 0xCu);
    }

LABEL_12:

    objc_autoreleasePoolPop(v9);
    goto LABEL_13;
  }

  v6 = [v5 home];
  v7 = [v6 routerClientManager];
  v8 = [v7 started];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      v13 = "%{public}@Device is not managing the network router, skipping handling of network violation update";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HMDNetworkRouterController__handleNetworkAccessViolationUpdate__block_invoke;
  v17[3] = &unk_27867E6F8;
  v17[4] = self;
  [(HMDNetworkRouterController *)self fetchAccessViolationsWithCompletion:v17];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

void __65__HMDNetworkRouterController__handleNetworkAccessViolationUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) accessory];
    v8 = [v7 home];

    if (v8)
    {
      v47 = a1;
      v45 = v6;
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v46 = v5;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v55;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v55 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v54 + 1) + 8 * i);
            v16 = [v15 clientIdentifier];
            v17 = [v16 value];

            if (v17)
            {
              v18 = [v15 clientIdentifier];
              v19 = [v18 value];
              [v9 setObject:v15 forKey:v19];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v54 objects:v65 count:16];
        }

        while (v12);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v44 = v8;
      obj = [v8 accessories];
      v20 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
      v21 = v47;
      if (v20)
      {
        v22 = v20;
        v49 = *v51;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v51 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v50 + 1) + 8 * j);
            v25 = [v24 networkClientIdentifier];
            if (v25)
            {
              v26 = v9;
              v27 = [v9 objectForKeyedSubscript:v25];
              v28 = v27;
              if (v27)
              {
                v29 = [v27 lastViolationTimestamp];
                v30 = HAPDateWithTimeIntervalSince1970();

                v31 = [v28 lastResetTimestamp];
                v32 = HAPDateWithTimeIntervalSince1970();

                v33 = [[HMDAccessoryNetworkAccessViolation alloc] initWithLastViolationDate:v30 lastViolationResetDate:v32];
                [v24 saveNetworkAccessViolation:v33];
              }

              else
              {
                v34 = objc_autoreleasePoolPush();
                v35 = *(v21 + 32);
                v36 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  v37 = HMFGetLogIdentifier();
                  v38 = [v24 name];
                  *buf = 138543874;
                  v59 = v37;
                  v60 = 2112;
                  v61 = v38;
                  v62 = 2112;
                  v63 = v25;
                  _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No network access violation info for accessory %@ with client identifier %@", buf, 0x20u);

                  v21 = v47;
                }

                objc_autoreleasePoolPop(v34);
              }

              v9 = v26;
            }
          }

          v22 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
        }

        while (v22);
      }

      v6 = v45;
      v5 = v46;
      v8 = v44;
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = *(a1 + 32);
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v42;
      v60 = 2112;
      v61 = v6;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch access violations: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:a4 value:a3 authorizationData:0 type:0];
  v10 = [(HMDNetworkRouterController *)self accessory];
  v17[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = [(HMDNetworkRouterController *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HMDNetworkRouterController__writeValue_forCharacteristic_completion___block_invoke;
  v15[3] = &unk_278683820;
  v16 = v8;
  v13 = v8;
  [v10 writeCharacteristicValues:v11 source:1170 queue:v12 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __71__HMDNetworkRouterController__writeValue_forCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

- (void)_writeTLVWithValueInResponse:(id)a3 characteristicType:(id)a4 operationName:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32 = 0;
  v14 = [v10 serializeWithError:&v32];
  v15 = v32;
  if (v14)
  {
    v16 = [(HMDNetworkRouterController *)self routerService];
    v17 = [v16 findCharacteristicWithType:v11];

    if (v17)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __103__HMDNetworkRouterController__writeTLVWithValueInResponse_characteristicType_operationName_completion___block_invoke;
      v28[3] = &unk_27867E6D0;
      v28[4] = self;
      v29 = v12;
      v30 = v14;
      v31 = v13;
      [(HMDNetworkRouterController *)self _writeValue:v30 forCharacteristic:v17 completion:v28];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Characteristic not found for operation %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v13 + 2))(v13, v26, 0);

      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138544130;
      v34 = v21;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize TLV: %@ with error: %@ for operation %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v13 + 2))(v13, v17, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __103__HMDNetworkRouterController__writeTLVWithValueInResponse_characteristicType_operationName_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v3 error];
      v24 = 138544130;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@%@ with write value %@ failed with error %@", &v24, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v12 = *(a1 + 56);
    v13 = [v3 error];
  }

  else
  {
    v15 = [v3 value];

    if (v15)
    {
      v16 = *(a1 + 56);
      v14 = [v3 value];
      (*(v16 + 16))(v16, 0, v14);
      goto LABEL_8;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Invalid response from %@ with write value %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  }

  v14 = v13;
  (*(v12 + 16))(v12, v13, 0);
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_writeValueIfDifferent:(id)a3 characteristicType:(id)a4 operationName:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDNetworkRouterController *)self routerService];
  v15 = [v14 findCharacteristicWithType:v11];

  if (v15)
  {
    v16 = [v15 value];
    v17 = [v16 isEqual:v10];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v33 = v21;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Omitting %@ write with value %@, cached value matches", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v13[2](v13, 0);
    }

    else
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __97__HMDNetworkRouterController__writeValueIfDifferent_characteristicType_operationName_completion___block_invoke;
      v28[3] = &unk_27867E6D0;
      v28[4] = self;
      v29 = v12;
      v30 = v10;
      v31 = v13;
      [(HMDNetworkRouterController *)self _writeValue:v30 forCharacteristic:v15 completion:v28];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Characteristic not found for operation %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (v13)[2](v13, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __97__HMDNetworkRouterController__writeValueIfDifferent_characteristicType_operationName_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v3 error];
      v22 = 138544130;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@%@ with write value %@ failed with error %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v12 = *(a1 + 56);
    v13 = [v3 error];
  }

  else
  {
    if (v3)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_8;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid response from %@ with write value %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  }

  v14 = v13;
  (*(v12 + 16))(v12, v13);

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_writeClientConfigurationControlRequest:(id)a3 operationName:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v14;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Writing client configuration request %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__HMDNetworkRouterController__writeClientConfigurationControlRequest_operationName_completion___block_invoke;
  v19[3] = &unk_278687428;
  v19[4] = v12;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  [(HMDNetworkRouterController *)v12 _writeTLVWithValueInResponse:v16 characteristicType:@"0000020C-0000-1000-8000-0026BB765291" operationName:v17 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __95__HMDNetworkRouterController__writeClientConfigurationControlRequest_operationName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      *buf = 138543874;
      v49 = v10;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@ operation failed with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v47 = 0;
    v12 = [HMDNetworkRouterClientControlResponse parsedFromData:v6 error:&v47];
    v13 = v47;
    if (v13)
    {
      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 40);
        v20 = *(a1 + 48);
        *buf = 138544130;
        v49 = v18;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v20;
        v54 = 2112;
        v55 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse response to %@ request: %@ with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v21 = [v12 operationResponses];
      v22 = [v21 firstObject];

      if (v22)
      {
        v23 = [v22 configuration];
        v24 = [v23 clientIdentifier];

        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v45 = v25;
          v46 = HMFGetLogIdentifier();
          v43 = *(a1 + 40);
          v44 = [v22 status];
          v28 = HMDNetworkRouterControlOperationStatusTypeAsString([v44 status]);
          if (v24)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@" (returned client identifier = %@)", v24];
          }

          else
          {
            v29 = &stru_283CF9D50;
          }

          *buf = 138544130;
          v49 = v46;
          v50 = 2112;
          v51 = v43;
          v52 = 2112;
          v53 = v28;
          v54 = 2112;
          v55 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@%@ operation status %@%@", buf, 0x2Au);
          if (v24)
          {
          }

          v25 = v45;
        }

        objc_autoreleasePoolPop(v25);
        v37 = *(a1 + 56);
        v38 = [v22 status];
        v39 = [v38 status];
        v40 = v39;
        if ((v39 - 1) > 0xA)
        {
          v41 = 0;
        }

        else
        {
          v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:qword_22A587BB8[v39 - 1]];
        }

        if (v40 && !v41)
        {
          v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        }

        (*(v37 + 16))(v37, v41, v22);
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(a1 + 32);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v34 = *(a1 + 40);
          v35 = *(a1 + 48);
          *buf = 138543874;
          v49 = v33;
          v50 = 2112;
          v51 = v34;
          v52 = 2112;
          v53 = v35;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid response from %@ with write value %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v36 = *(a1 + 56);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
        (*(v36 + 16))(v36, v24, 0);
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)resetAccessViolationForClientIdentifier:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = accessViolationControlWithType(2);
  v9 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v6];
  v10 = [HMDNetworkRouterClientIdentifierList alloc];
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  v12 = [(HMDNetworkRouterClientIdentifierList *)v10 initWithClientIdentifiers:v11];
  [v8 setClientIdentifierList:v12];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v16;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = @"Reset Access Violation";
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Write control request %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__HMDNetworkRouterController_resetAccessViolationForClientIdentifier_completion___block_invoke;
  v19[3] = &unk_27867E6A8;
  v20 = v7;
  v17 = v7;
  [(HMDNetworkRouterController *)v14 _writeTLVWithValueInResponse:v8 characteristicType:@"0000021F-0000-1000-8000-0026BB765291" operationName:@"Reset Access Violation" completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccessViolationsWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = accessViolationControlWithType(1);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = @"Get Access Violation List";
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Write control request %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HMDNetworkRouterController_fetchAccessViolationsWithCompletion___block_invoke;
  v12[3] = &unk_27867E680;
  v13 = @"Get Access Violation List";
  v14 = v4;
  v12[4] = v7;
  v10 = v4;
  [(HMDNetworkRouterController *)v7 _writeTLVWithValueInResponse:v5 characteristicType:@"0000021F-0000-1000-8000-0026BB765291" operationName:@"Get Access Violation List" completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __66__HMDNetworkRouterController_fetchAccessViolationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v22 = 0;
    v7 = [HMDNetworkRouterAccessViolationControlResponse parsedFromData:v6 error:&v22];
    v8 = v22;
    if (v7)
    {
      v9 = *(a1 + 48);
      v10 = [v7 violations];
      v11 = [v10 copy];
      (*(v9 + 16))(v9, v11, 0);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 40);
        *buf = 138544130;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v6;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse response to %@ request %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch access violation list TLV: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeClientConfigurationWithClientIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = clientControlWithOperationType(4);
  v9 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v7];

  v10 = [v8 operations];
  v11 = [v10 firstObject];
  v12 = [v11 configuration];
  [v12 setClientIdentifier:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HMDNetworkRouterController_removeClientConfigurationWithClientIdentifier_completion___block_invoke;
  v14[3] = &unk_27867E658;
  v15 = v6;
  v13 = v6;
  [(HMDNetworkRouterController *)self _writeClientConfigurationControlRequest:v8 operationName:@"Remove Client Configuration" completion:v14];
}

- (void)updateClientConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = clientControlWithOperationType(5);
  v9 = [v8 operations];
  v10 = [v9 firstObject];
  [v10 setConfiguration:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDNetworkRouterController_updateClientConfiguration_completion___block_invoke;
  v12[3] = &unk_27867E658;
  v13 = v6;
  v11 = v6;
  [(HMDNetworkRouterController *)self _writeClientConfigurationControlRequest:v8 operationName:@"Update Client Configuration" completion:v12];
}

- (void)readClientConfigurationWithClientIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = clientControlWithOperationType(2);
  v9 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v7];

  v10 = [v8 operations];
  v11 = [v10 firstObject];
  v12 = [v11 configuration];
  [v12 setClientIdentifier:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HMDNetworkRouterController_readClientConfigurationWithClientIdentifier_completion___block_invoke;
  v14[3] = &unk_27867E658;
  v15 = v6;
  v13 = v6;
  [(HMDNetworkRouterController *)self _writeClientConfigurationControlRequest:v8 operationName:@"Read Client Configuration" completion:v14];
}

void __85__HMDNetworkRouterController_readClientConfigurationWithClientIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 configuration];
  (*(v4 + 16))(v4, v5, v6);
}

- (void)addClientConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = clientControlWithOperationType(3);
  v9 = [v8 operations];
  v10 = [v9 firstObject];
  [v10 setConfiguration:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HMDNetworkRouterController_addClientConfiguration_completion___block_invoke;
  v12[3] = &unk_27867E658;
  v13 = v6;
  v11 = v6;
  [(HMDNetworkRouterController *)self _writeClientConfigurationControlRequest:v8 operationName:@"Add Client Configuration" completion:v12];
}

void __64__HMDNetworkRouterController_addClientConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 configuration];
  v6 = [v5 clientIdentifier];
  v7 = [v6 value];

  v8 = *(a1 + 32);
  if (v7)
  {
    (*(v8 + 16))(v8, 0, v7);
  }

  else if (v10)
  {
    (*(v8 + 16))(v8, v10, 0);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)getClientStatusWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDNetworkRouterClientStatusIdentifierList alloc];
  v9 = [MEMORY[0x277CBEB18] arrayWithObject:v7];

  v10 = [(HMDNetworkRouterClientStatusIdentifierList *)v8 initWithClientStatusIdentifiers:v9];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDNetworkRouterController_getClientStatusWithIdentifier_completion___block_invoke;
  v12[3] = &unk_27867E630;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(HMDNetworkRouterController *)self getClientStatusWithIdentifiers:v10 completion:v12];
}

void __71__HMDNetworkRouterController_getClientStatusWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v6 clientStatuses];
    v9 = [v8 count];

    if (v9 < 2)
    {
      v16 = *(a1 + 40);
      v15 = [v7 clientStatuses];
      v17 = [v15 firstObject];
      (*(v16 + 16))(v16, 0, v17);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Router returned multiple client status results but only one was expected", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = *(a1 + 40);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v14 + 16))(v14, v15, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getClientStatusWithIdentifiers:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[HMDNetworkRouterClientStatusControlOperation alloc] initWithOperation:1];
  v9 = [[HMDNetworkRouterClientStatusControl alloc] initWithOperation:v8 clientStatusIdentifierList:v6];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v20 = v13;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = @"Get Client Status";
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Writing client status request %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HMDNetworkRouterController_getClientStatusWithIdentifiers_completion___block_invoke;
  v16[3] = &unk_27867E680;
  v16[4] = v11;
  v17 = @"Get Client Status";
  v18 = v7;
  v14 = v7;
  [(HMDNetworkRouterController *)v11 _writeTLVWithValueInResponse:v9 characteristicType:@"0000020D-0000-1000-8000-0026BB765291" operationName:@"Get Client Status" completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __72__HMDNetworkRouterController_getClientStatusWithIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v21 = 0;
    v7 = [HMDNetworkRouterClientStatusList parsedFromData:v6 error:&v21];
    v8 = v21;
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *(a1 + 40);
        *buf = 138544130;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v8;
        v15 = "%{public}@Failed to parse response to %@ request: %@ with error: %@";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 42;
LABEL_8:
        _os_log_impl(&dword_229538000, v16, v17, v15, buf, v18);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v23 = v13;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      v15 = "%{public}@%@ returned response: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEBUG;
      v18 = 32;
      goto LABEL_8;
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 48) + 16))();

    goto LABEL_10;
  }

  (*(*(a1 + 48) + 16))();
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)writeManagedNetworkEnable:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    v4 = &unk_283E73AF0;
  }

  else
  {
    v4 = &unk_283E73B08;
  }

  [(HMDNetworkRouterController *)self _writeValueIfDifferent:v4 characteristicType:@"00000215-0000-1000-8000-0026BB765291" operationName:@"Setting Managed Network Enable" completion:a4];
}

- (NSString)wiFiSSID
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterController *)self routerService];
  v4 = [v3 getConfiguredName];

  if (v4 && [v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@SSID unavailable", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HMDNetworkRouterController *)self routerService];
  v3 = [v2 uuid];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDNetworkRouterController *)self routerService];
      v7 = [v6 uuid];
      v8 = [(HMDNetworkRouterController *)v5 routerService];

      v9 = [v8 uuid];
      v10 = [v7 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)configure
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterController *)self accessory];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v3];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:v3];

    if ([v3 isReachable])
    {
      v6 = [(HMDNetworkRouterController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__HMDNetworkRouterController_configure__block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v6, block);
    }
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
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not configuring network router controller as accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkRouterController)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDNetworkRouterController;
  v11 = [(HMDNetworkRouterController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, v8);
    objc_storeWeak(&v12->_routerService, v9);
    objc_storeStrong(&v12->_workQueue, a5);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30_193482 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30_193482, &__block_literal_global_193483);
  }

  v3 = logCategory__hmf_once_v31_193484;

  return v3;
}

void __41__HMDNetworkRouterController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31_193484;
  logCategory__hmf_once_v31_193484 = v1;
}

@end
@interface HMDMediaDestinationBackingStoreHandler
+ (id)backingStoreObjectForMediaDestination:(id)a3;
+ (id)logCategory;
- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)a3 backingStore:(id)a4 metricsDispatcher:(id)a5 delegate:(id)a6;
- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate;
- (HMMediaDestination)destination;
- (void)mergeDestination:(id)a3;
- (void)setAudioGroupIdentifier:(id)a3;
- (void)setSupportedOptions:(unint64_t)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateAudioGroupIdentifier:(id)a3 completion:(id)a4;
- (void)updateSupportedOptions:(unint64_t)a3 completion:(id)a4;
@end

@implementation HMDMediaDestinationBackingStoreHandler

- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove unknown transaction object: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  [v7 respondWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v14;
    v50 = 2112;
    v51 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction object updated with new object: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v19 = v9;
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
      v22 = [(HMDMediaDestinationBackingStoreHandler *)v12 destination];
      v23 = v22;
      if (v22 && ([v22 uniqueIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "uuid"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "hmf_isEqualToUUID:", v25), v25, v24, (v26 & 1) == 0))
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v12;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v45;
          v50 = 2112;
          v51 = v21;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio destination with unrecongnized model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
      }

      else
      {
        v27 = [v21 setProperties];
        if ([v27 containsObject:@"supportedOptions"])
        {
          v28 = [v21 supportedOptions];
          -[HMDMediaDestinationBackingStoreHandler setSupportedOptions:](v12, "setSupportedOptions:", [v28 unsignedIntegerValue]);
        }

        if ([v27 containsObject:@"audioGroupIdentifier"])
        {
          v29 = [v21 audioGroupIdentifier];
          [(HMDMediaDestinationBackingStoreHandler *)v12 setAudioGroupIdentifier:v29];
        }

        v30 = [(HMDMediaDestinationBackingStoreHandler *)v12 destination];
        if ((HMFEqualObjects() & 1) == 0)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v12;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v34 = v47 = v31;
            *buf = 138543874;
            v49 = v34;
            v50 = 2112;
            v51 = v23;
            v52 = 2112;
            v53 = v30;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated audio destination: %@ new audio destination: %@", buf, 0x20u);

            v31 = v47;
          }

          objc_autoreleasePoolPop(v31);
          v35 = [v10 transactionResult];
          [v35 markChanged];

          v36 = [v10 transactionResult];
          [v36 markSaveToAssistant];

          v37 = [(HMDMediaDestinationBackingStoreHandler *)v32 delegate];
          [v37 mediaDestinationBackingStoreHandler:v32 didUpdateDestination:v30];
        }

        [v10 respondWithSuccess];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v12;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v41;
        v50 = 2112;
        v51 = v19;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to process unknown transaction object: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [v10 respondWithError:v23];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v12;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)setAudioGroupIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setAudioGroupIdentifier:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportedOptions:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setSupportedOptions:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaDestination)destination
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableMediaDestination *)self->_destination copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateAudioGroupIdentifier:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to audio group identifier: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v13 = [(HMDMediaDestinationBackingStoreHandler *)v9 destination];
    v14 = [v13 audioGroupIdentifier];
    v15 = [v6 hmf_isEqualToUUID:v14];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v9;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Attempting forced push due to audio group identifier already updated", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = +[HMDBackingStoreTransactionOptions defaultOutOfSyncOptions];

      v12 = v20;
    }

    v21 = [HMDMediaDestinationModel alloc];
    v22 = [(HMDMediaDestinationBackingStoreHandler *)v9 destination];
    v23 = [(HMDMediaDestinationModel *)v21 initWithDestination:v22 changeType:2];

    [(HMDMediaDestinationModel *)v23 setAudioGroupIdentifier:v6];
    [(HMDBackingStoreHandler *)v9 runTransactionWithModel:v23 options:v12 reason:@"UpdateAudioGroupIdentifier" completion:v7];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v9;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio group identifier due to no completion", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateSupportedOptions:(unint64_t)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HMMediaDestinationSupportOptionsAsString();
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to supported options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v6)
  {
    v12 = [(HMDMediaDestinationBackingStoreHandler *)v9 destination];
    if ([v12 supportedOptions] == a3)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v9;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Supported options already updated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v6[2](v6, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"UpdateSupportedOptions", v7];
      v22 = [HMDMediaDestinationModel alloc];
      v23 = [(HMDMediaDestinationBackingStoreHandler *)v9 destination];
      v24 = [(HMDMediaDestinationModel *)v22 initWithDestination:v23 changeType:2];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [(HMDMediaDestinationModel *)v24 setSupportedOptions:v25];

      [(HMDBackingStoreHandler *)v9 runTransactionWithModel:v24 reason:v21 completion:v6];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update supported options due to no completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)mergeDestination:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (([(HMMutableMediaDestination *)self->_destination isEqual:v4]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [v4 mutableCopy];
    destination = self->_destination;
    self->_destination = v5;

    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Merged destination: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)a3 backingStore:(id)a4 metricsDispatcher:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return +[(HMDMediaDestinationBackingStoreHandler *)v20];
  }

  v14 = v13;
  v15 = [v10 uniqueIdentifier];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationBackingStoreHandler;
  v16 = [(HMDBackingStoreHandler *)&v22 initWithIdentifier:v15 backingStore:v11];

  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v14);
    v17 = [v10 mutableCopy];
    destination = v16->_destination;
    v16->_destination = v17;

    objc_storeStrong(&v16->_metricsDispatcher, a5);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_58648 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_58648, &__block_literal_global_58649);
  }

  v3 = logCategory__hmf_once_v19_58650;

  return v3;
}

void __53__HMDMediaDestinationBackingStoreHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_58650;
  logCategory__hmf_once_v19_58650 = v1;
}

+ (id)backingStoreObjectForMediaDestination:(id)a3
{
  v3 = a3;
  v4 = [[HMDMediaDestinationModel alloc] initWithDestination:v3 changeType:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "supportedOptions")}];
  [(HMDMediaDestinationModel *)v4 setSupportedOptions:v5];

  v6 = [v3 audioGroupIdentifier];

  [(HMDMediaDestinationModel *)v4 setAudioGroupIdentifier:v6];

  return v4;
}

@end
@interface HMDMediaDestinationBackingStoreHandler
+ (id)backingStoreObjectForMediaDestination:(id)destination;
+ (id)logCategory;
- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)destination backingStore:(id)store metricsDispatcher:(id)dispatcher delegate:(id)delegate;
- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate;
- (HMMediaDestination)destination;
- (void)mergeDestination:(id)destination;
- (void)setAudioGroupIdentifier:(id)identifier;
- (void)setSupportedOptions:(unint64_t)options;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationBackingStoreHandler

- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = removedCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove unknown transaction object: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  [messageCopy respondWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v54 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v14;
    v50 = 2112;
    v51 = valuesCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction object updated with new object: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v19 = valuesCopy;
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
      destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
      v23 = destination;
      if (destination && ([destination uniqueIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "uuid"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "hmf_isEqualToUUID:", v25), v25, v24, (v26 & 1) == 0))
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
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
        setProperties = [v21 setProperties];
        if ([setProperties containsObject:@"supportedOptions"])
        {
          supportedOptions = [v21 supportedOptions];
          -[HMDMediaDestinationBackingStoreHandler setSupportedOptions:](selfCopy, "setSupportedOptions:", [supportedOptions unsignedIntegerValue]);
        }

        if ([setProperties containsObject:@"audioGroupIdentifier"])
        {
          audioGroupIdentifier = [v21 audioGroupIdentifier];
          [(HMDMediaDestinationBackingStoreHandler *)selfCopy setAudioGroupIdentifier:audioGroupIdentifier];
        }

        destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
        if ((HMFEqualObjects() & 1) == 0)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = selfCopy;
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
            v53 = destination2;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated audio destination: %@ new audio destination: %@", buf, 0x20u);

            v31 = v47;
          }

          objc_autoreleasePoolPop(v31);
          transactionResult = [messageCopy transactionResult];
          [transactionResult markChanged];

          transactionResult2 = [messageCopy transactionResult];
          [transactionResult2 markSaveToAssistant];

          delegate = [(HMDMediaDestinationBackingStoreHandler *)v32 delegate];
          [delegate mediaDestinationBackingStoreHandler:v32 didUpdateDestination:destination2];
        }

        [messageCopy respondWithSuccess];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
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
      [messageCopy respondWithError:v23];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
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

- (void)setAudioGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setAudioGroupIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportedOptions:(unint64_t)options
{
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setSupportedOptions:options];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaDestination)destination
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableMediaDestination *)self->_destination copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to audio group identifier: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (completionCopy)
  {
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    audioGroupIdentifier = [destination audioGroupIdentifier];
    v15 = [identifierCopy hmf_isEqualToUUID:audioGroupIdentifier];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
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
    destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    v23 = [(HMDMediaDestinationModel *)v21 initWithDestination:destination2 changeType:2];

    [(HMDMediaDestinationModel *)v23 setAudioGroupIdentifier:identifierCopy];
    [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v23 options:v12 reason:@"UpdateAudioGroupIdentifier" completion:completionCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
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

- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HMMediaDestinationSupportOptionsAsString();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  if (completionCopy)
  {
    destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    if ([destination supportedOptions] == options)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Supported options already updated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"UpdateSupportedOptions", v7];
      v22 = [HMDMediaDestinationModel alloc];
      destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
      v24 = [(HMDMediaDestinationModel *)v22 initWithDestination:destination2 changeType:2];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      [(HMDMediaDestinationModel *)v24 setSupportedOptions:v25];

      [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v24 reason:v21 completion:completionCopy];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
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

- (void)mergeDestination:(id)destination
{
  v16 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  os_unfair_lock_lock_with_options();
  if (([(HMMutableMediaDestination *)self->_destination isEqual:destinationCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [destinationCopy mutableCopy];
    destination = self->_destination;
    self->_destination = v5;

    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = destinationCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Merged destination: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)destination backingStore:(id)store metricsDispatcher:(id)dispatcher delegate:(id)delegate
{
  destinationCopy = destination;
  storeCopy = store;
  dispatcherCopy = dispatcher;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!storeCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return +[(HMDMediaDestinationBackingStoreHandler *)v20];
  }

  v14 = delegateCopy;
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationBackingStoreHandler;
  v16 = [(HMDBackingStoreHandler *)&v22 initWithIdentifier:uniqueIdentifier backingStore:storeCopy];

  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v14);
    v17 = [destinationCopy mutableCopy];
    destination = v16->_destination;
    v16->_destination = v17;

    objc_storeStrong(&v16->_metricsDispatcher, dispatcher);
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

+ (id)backingStoreObjectForMediaDestination:(id)destination
{
  destinationCopy = destination;
  v4 = [[HMDMediaDestinationModel alloc] initWithDestination:destinationCopy changeType:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(destinationCopy, "supportedOptions")}];
  [(HMDMediaDestinationModel *)v4 setSupportedOptions:v5];

  audioGroupIdentifier = [destinationCopy audioGroupIdentifier];

  [(HMDMediaDestinationModel *)v4 setAudioGroupIdentifier:audioGroupIdentifier];

  return v4;
}

@end
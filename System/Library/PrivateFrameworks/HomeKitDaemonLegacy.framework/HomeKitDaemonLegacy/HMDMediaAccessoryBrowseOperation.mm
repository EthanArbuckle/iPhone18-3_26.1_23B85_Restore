@interface HMDMediaAccessoryBrowseOperation
+ (double)defaultTimeout;
+ (id)logCategory;
- (HMDMediaAccessoryBrowseOperation)initWithAccessoryIdentifier:(id)identifier timeout:(double)timeout;
- (HMDMediaEndpoint)endpoint;
- (NSArray)outputDevices;
- (unsigned)endpointFeatures;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)setEndpointFeatures:(unsigned int)features;
@end

@implementation HMDMediaAccessoryBrowseOperation

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = HMDMediaAccessoryBrowseOperation;
  [(HMFOperation *)&v3 cancel];
  if (self->_session)
  {
    MEMORY[0x259C02130]();
  }
}

- (void)main
{
  v20 = *MEMORY[0x277D85DE8];
  endpointFeatures = [(HMDMediaAccessoryBrowseOperation *)self endpointFeatures];
  if (endpointFeatures != -1)
  {
    v4 = endpointFeatures;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v8;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting features: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
  }

  accessoryIdentifier = self->_accessoryIdentifier;
  [MEMORY[0x277CBEA60] arrayWithObjects:&accessoryIdentifier count:1];
  [(HMDMediaAccessoryBrowseOperation *)self endpointFeatures];
  self->_session = MRAVReconnaissanceSessionCreateWithEndpointFeatures();
  objc_initWeak(buf, self);
  timeoutDate = [(HMFOperation *)self timeoutDate];
  [timeoutDate timeIntervalSinceNow];
  v11 = v10;

  if (v11 <= 0.0)
  {
    +[HMDMediaAccessoryBrowseOperation defaultTimeout];
  }

  session = self->_session;
  objc_copyWeak(&v14, buf);
  MRAVReconnaissanceSessionBeginSearch();
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __40__HMDMediaAccessoryBrowseOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained isExecuting])
  {
    v38 = a4;
    if (a3)
    {
      v39 = [[HMDMediaEndpoint alloc] initWithEndpoint:a3];
    }

    else
    {
      v39 = 0;
    }

    v9 = a2;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v50 count:16];
    v40 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      p_vtable = &OBJC_METACLASS___HMDMediaPlaybackActionModel.vtable;
      do
      {
        v16 = 0;
        v41 = v13;
        do
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [objc_alloc((p_vtable + 202)) initWithOutputDevice:*(*(&v42 + 1) + 8 * v16)];
          v18 = v17;
          if (v17)
          {
            v19 = *(v8 + 44);
            v20 = [v17 uniqueIdentifier];
            LODWORD(v19) = [v19 isEqualToString:v20];

            if (v19)
            {
              v21 = v14;
              v22 = p_vtable;
              v23 = objc_autoreleasePoolPush();
              v24 = v8;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v26 = v8;
                v28 = v27 = v10;
                *buf = 138543618;
                v47 = v28;
                v48 = 2112;
                v49 = v18;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Found output device: %@", buf, 0x16u);

                v10 = v27;
                v8 = v26;
                v11 = v40;
              }

              objc_autoreleasePoolPop(v23);
              [v10 addObject:v18];
              p_vtable = v22;
              v14 = v21;
              v13 = v41;
            }
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v13);
    }

    v29 = [v10 copy];
    v30 = v29;
    if (v39 || [v29 count])
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(v8 + 42, v39);
      objc_storeStrong(v8 + 43, v30);
      os_unfair_lock_unlock(v8 + 78);
      [v8 finish];
    }

    else
    {
      v32 = v10;
      v33 = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v36;
        v48 = 2112;
        v49 = v38;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find accessory with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v38];
      [v34 cancelWithError:v37];

      v10 = v32;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (NSArray)outputDevices
{
  os_unfair_lock_lock_with_options();
  v3 = self->_outputDevices;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDMediaEndpoint)endpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_endpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEndpointFeatures:(unsigned int)features
{
  os_unfair_lock_lock_with_options();
  self->_endpointFeatures = features;

  os_unfair_lock_unlock(&self->_lock);
}

- (unsigned)endpointFeatures
{
  os_unfair_lock_lock_with_options();
  endpointFeatures = self->_endpointFeatures;
  os_unfair_lock_unlock(&self->_lock);
  return endpointFeatures;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    CFRelease(session);
  }

  v4.receiver = self;
  v4.super_class = HMDMediaAccessoryBrowseOperation;
  [(HMDMediaAccessoryBrowseOperation *)&v4 dealloc];
}

- (HMDMediaAccessoryBrowseOperation)initWithAccessoryIdentifier:(id)identifier timeout:(double)timeout
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (timeout <= 0.0)
    {
      +[HMDMediaAccessoryBrowseOperation defaultTimeout];
      timeout = v7;
    }

    v19.receiver = self;
    v19.super_class = HMDMediaAccessoryBrowseOperation;
    v8 = [(HMFOperation *)&v19 initWithTimeout:timeout];
    v9 = v8;
    if (v8)
    {
      v8->_endpointFeatures = -1;
      v10 = [identifierCopy copy];
      accessoryIdentifier = v9->_accessoryIdentifier;
      v9->_accessoryIdentifier = v10;
    }

    selfCopy = v9;
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to create reconnaissance session with nil identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_44866 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_44866, &__block_literal_global_14_44867);
  }

  v3 = logCategory__hmf_once_v10_44868;

  return v3;
}

uint64_t __47__HMDMediaAccessoryBrowseOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_44868;
  logCategory__hmf_once_v10_44868 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (double)defaultTimeout
{
  if (defaultTimeout_onceToken != -1)
  {
    dispatch_once(&defaultTimeout_onceToken, &__block_literal_global_44873);
  }

  return *&defaultTimeout_timeout;
}

void __50__HMDMediaAccessoryBrowseOperation_defaultTimeout__block_invoke()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"mediaAccessoryResolutionTimeout"];
  v5 = [v1 numberValue];

  [v5 doubleValue];
  v3 = v2 < 2.22044605e-16 || v2 <= 0.0;
  v4 = v2 + 3.0;
  if (v3)
  {
    v4 = 3.0;
  }

  defaultTimeout_timeout = *&v4;
}

@end
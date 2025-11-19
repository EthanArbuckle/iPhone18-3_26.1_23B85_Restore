@interface HMDMPCResolveDestinationOperation
+ (id)logCategory;
- (HMDMPCResolveDestinationOperation)initWithHashedRouteIDs:(id)a3 mediaApplicationDestination:(int64_t)a4 mediaApplicationIdentifier:(id)a5 forceSingleGroup:(BOOL)a6 completion:(id)a7 remoteControlDestinationFactory:(id)a8;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)main;
- (void)setCompletionBlock:(id)a3;
@end

@implementation HMDMPCResolveDestinationOperation

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMPCResolveDestinationOperation *)self hashedRouteIDs];
  v5 = [v3 initWithName:@"Hashed Route IDs" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDMPCResolveDestinationOperation *)self hashedRouteIDs];
  v6 = [v3 stringWithFormat:@"%@ route IDs: %@", v4, v5];

  return v6;
}

- (void)setCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HMDMPCResolveDestinationOperation_setCompletionBlock___block_invoke;
  aBlock[3] = &unk_2786841C8;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  v7.receiver = self;
  v7.super_class = HMDMPCResolveDestinationOperation;
  [(HMDMPCResolveDestinationOperation *)&v7 setCompletionBlock:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __56__HMDMPCResolveDestinationOperation_setCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained resolveDestinationCompletionBlock];
  v3 = [WeakRetained error];
  if (v3)
  {
    v2[2](v2, 0);
  }

  else
  {
    v4 = [WeakRetained resolvedDestination];
    (v2)[2](v2, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMPCResolveDestinationOperation *)self mediaApplicationDestination];
  if (!self)
  {
    v13 = 0;
    goto LABEL_15;
  }

  if (!v3)
  {
    v14 = self;
    goto LABEL_13;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = [(HMDMPCResolveDestinationOperation *)self remoteControlDestinationFactory];
      v5 = [v4 nowPlayingApplicationDestination];
LABEL_14:
      v13 = v5;

      goto LABEL_15;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMPCResolveDestinationOperation mediaApplicationDestination](v16, "mediaApplicationDestination")}];
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unknown destination %@ for resolve destination operation, using system media destination", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = v16;
LABEL_13:
    v4 = [(HMDMPCResolveDestinationOperation *)v14 remoteControlDestinationFactory];
    v5 = [v4 systemMediaApplicationDestination];
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDMPCResolveDestinationOperation *)v7 mediaApplicationIdentifier];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Using custom media application destination for bundle identifier %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = objc_alloc(MEMORY[0x277D27878]);
  v12 = [(HMDMPCResolveDestinationOperation *)v7 mediaApplicationIdentifier];
  v13 = [v11 initWithAppBundleID:v12];

LABEL_15:
  v20 = [(HMDMPCResolveDestinationOperation *)self remoteControlDestinationFactory];
  v21 = [(HMDMPCResolveDestinationOperation *)self hashedRouteIDs];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__HMDMPCResolveDestinationOperation_main__block_invoke;
  v23[3] = &unk_27867BAA0;
  v23[4] = self;
  [v20 resolveMPCDestination:v13 withHashedRouteIdentifiers:v21 audioRoutingInfo:0 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __41__HMDMPCResolveDestinationOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v2)
  {
    if (v3 && ([v3 outputDeviceUIDs], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
    {
      v7 = [v2 remoteControlDestinationFactory];
      v8 = [v7 mutableCopyForMPCDestination:v4];

      [v8 setSingleGroup:{objc_msgSend(v2, "forceSingleGroup")}];
      [v2 setResolvedDestination:v8];
      [v2 finish];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v2;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = MEMORY[0x277CCABB0];
        v14 = [v10 hashedRouteIDs];
        v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
        v16 = MEMORY[0x277CCABB0];
        v17 = [v4 outputDeviceUIDs];
        v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        *buf = 138543874;
        v29 = v12;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to resolve hashed media profiles given %@ hashedRouteIDs, resolved to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v19 = MEMORY[0x277CCACA8];
      v20 = MEMORY[0x277CCABB0];
      v21 = [v10 hashedRouteIDs];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = MEMORY[0x277CCABB0];
      v24 = [v4 outputDeviceUIDs];
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      v8 = [v19 stringWithFormat:@"Resolved destination failed, given %@ hashedRouteIDs, resolved to %@", v22, v25];

      v26 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2950 description:v8 underlyingError:0];
      [v10 cancelWithError:v26];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDMPCResolveDestinationOperation)initWithHashedRouteIDs:(id)a3 mediaApplicationDestination:(int64_t)a4 mediaApplicationIdentifier:(id)a5 forceSingleGroup:(BOOL)a6 completion:(id)a7 remoteControlDestinationFactory:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = HMDMPCResolveDestinationOperation;
  v19 = [(HMFOperation *)&v24 initWithTimeout:0.0];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_hashedRouteIDs, a3);
    v21 = _Block_copy(v17);
    resolveDestinationCompletionBlock = v20->_resolveDestinationCompletionBlock;
    v20->_resolveDestinationCompletionBlock = v21;

    v20->_mediaApplicationDestination = a4;
    objc_storeStrong(&v20->_mediaApplicationIdentifier, a5);
    v20->_forceSingleGroup = a6;
    objc_storeStrong(&v20->_remoteControlDestinationFactory, a8);
    [(HMDMPCResolveDestinationOperation *)v20 setCompletionBlock:0];
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_152950 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_152950, &__block_literal_global_152951);
  }

  v3 = logCategory__hmf_once_v4_152952;

  return v3;
}

void __48__HMDMPCResolveDestinationOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_152952;
  logCategory__hmf_once_v4_152952 = v1;
}

@end
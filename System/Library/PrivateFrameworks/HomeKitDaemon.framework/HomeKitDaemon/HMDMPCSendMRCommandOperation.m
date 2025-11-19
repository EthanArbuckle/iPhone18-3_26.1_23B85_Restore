@interface HMDMPCSendMRCommandOperation
+ (id)logCategory;
- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)a3 destination:(id)a4 options:(id)a5 externalObjectInterface:(id)a6;
- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)a3 options:(id)a4 destination:(id)a5;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (int64_t)errorCodeForCurrentOperation;
- (void)generateMPCErrorOrFinishWithError:(void *)a3 statuses:;
- (void)main;
@end

@implementation HMDMPCSendMRCommandOperation

- (int64_t)errorCodeForCurrentOperation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];

  if (!v3)
  {
    v8 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];

    if (v8)
    {
      v9 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
      v10 = [v9 unsignedIntValue];

      switch(v10)
      {
        case 0:
          result = 2959;
          goto LABEL_20;
        case 1:
          result = 2960;
          goto LABEL_20;
        case 3:
          result = 2961;
          goto LABEL_20;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMDMPCSendMRCommandOperation *)v15 mediaRemoteCommand];
        v20 = 138543618;
        v21 = v17;
        v22 = 1024;
        v23 = [v18 unsignedIntValue];
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unhandled MR command case %u", &v20, 0x12u);

        goto LABEL_18;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Generic MR command error", &v20, 0xCu);
LABEL_18:
      }
    }

    objc_autoreleasePoolPop(v14);
    result = 2957;
    goto LABEL_20;
  }

  v4 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 hasPrefix:@"com.apple.SoundScapes"];

  if (v6)
  {
    result = 2964;
  }

  else
  {
    v11 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
    v12 = [v11 bundleIdentifier];
    v13 = [v12 hasPrefix:@"com.apple.Music"];

    if (v13)
    {
      result = 2963;
    }

    else
    {
      result = 2958;
    }
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
  v5 = [v3 initWithName:@"Media Remote Command" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMPCSendMRCommandOperation *)self options];
  v8 = [v6 initWithName:@"Options" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  v11 = [v9 initWithName:@"Playback Archive" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDMPCSendMRCommandOperation *)self destination];
  v14 = [v12 initWithName:@"Destination" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
  v6 = [(HMDMPCSendMRCommandOperation *)self options];
  v7 = [(HMDMPCSendMRCommandOperation *)self destination];
  v8 = [v3 stringWithFormat:@"%@ MR Command: %@, options: %@ destination: %@", v4, v5, v6, v7];

  return v8;
}

- (void)main
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(HMDMPCSendMRCommandOperation *)self dependencies];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 error];

        if (v9)
        {
          v12 = [v8 error];
          [(HMFOperation *)self cancelWithError:v12];
          goto LABEL_18;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];

  if (v10)
  {
    v3 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
    v11 = [v3 unsignedIntValue];
    v12 = [(HMDMPCSendMRCommandOperation *)self destination];
    v13 = [(HMDMPCSendMRCommandOperation *)self options];
    v14 = v13;
    if (!self)
    {
      goto LABEL_17;
    }

    v15 = v13;
    v16 = v12;
    v17 = [(HMDMPCSendMRCommandOperation *)self externalObjectInterface];
    v18 = [v17 createMPCAssistantCommand];

    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __66__HMDMPCSendMRCommandOperation_sendMRCommand_destination_options___block_invoke;
    v33 = &unk_278684218;
    v34 = self;
    v35 = v18;
    v19 = v18;
    [v19 sendCommand:v11 toDestination:v16 withOptions:v15 completion:&v30];
    goto LABEL_16;
  }

  v20 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];

  if (!v20)
  {
    v3 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2962 description:@"No command or queue in SendCommandOperation" underlyingError:0];
    [(HMFOperation *)self cancelWithError:v3];
    goto LABEL_19;
  }

  v3 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  v12 = [(HMDMPCSendMRCommandOperation *)self destination];
  v21 = [(HMDMPCSendMRCommandOperation *)self options];
  v14 = v21;
  if (self)
  {
    v22 = v21;
    v15 = v12;
    v16 = v3;
    v23 = [(HMDMPCSendMRCommandOperation *)self externalObjectInterface];
    v24 = [v23 createMPCAssistantCommand];

    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __72__HMDMPCSendMRCommandOperation_sendPlaybackArchive_destination_options___block_invoke;
    v33 = &unk_278684218;
    v34 = self;
    v35 = v24;
    v19 = v24;
    [v19 sendPlaybackArchive:v16 toDestination:v15 withOptions:v22 completion:&v30];

LABEL_16:
  }

LABEL_17:

LABEL_18:
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

void __72__HMDMPCSendMRCommandOperation_sendPlaybackArchive_destination_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2080;
    v15 = "[HMDMPCSendMRCommandOperation sendPlaybackArchive:destination:options:]_block_invoke";
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[HMDMPCSendMRCommandOperation] %s", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDMPCSendMRCommandOperation *)*(a1 + 32) generateMPCErrorOrFinishWithError:v5 statuses:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)generateMPCErrorOrFinishWithError:(void *)a3 statuses:
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_35;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v41 = v10;
    v42 = 2112;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDMPCSendMRCommandOperation] error %@ statuses %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [v8 mediaRemoteCommand];
  if (v11)
  {
    v12 = [v8 mediaRemoteCommand];
    v13 = [v12 unsignedIntValue] == 1;
  }

  else
  {
    v13 = 0;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if (MRMediaRemoteErrorIsInformational())
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v17;
      v18 = "%{public}@[HMDMPCSendMRCommandOperation] discarding informational media remote error";
      v19 = v16;
      v20 = 12;
LABEL_14:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (MPCAssistantErrorIsInformational())
  {
    v14 = objc_autoreleasePoolPush();
    v21 = v8;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v17;
      v42 = 2112;
      v43 = v5;
      v18 = "%{public}@[HMDMPCSendMRCommandOperation] discarding informational media playback core assistant error: %@";
      v19 = v16;
      v20 = 22;
      goto LABEL_14;
    }

LABEL_15:

    objc_autoreleasePoolPop(v14);
LABEL_16:
    if (v13 & [v6 containsObject:&unk_283E74CF0])
    {
      v5 = 0;
      goto LABEL_18;
    }

    if ([v6 containsObject:&unk_283E74D08])
    {
      v5 = 0;
LABEL_24:
      [v8 finish];
      goto LABEL_35;
    }

    v26 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA068];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"statuses %@", v6];
    v39 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v29 = [v26 hmErrorWithCode:2005 userInfo:v28];

    v5 = 0;
    if (!v29)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v30 = [v5 domain];
  if ([v30 isEqualToString:*MEMORY[0x277D277F8]])
  {
    v31 = [v5 code] == 1 || objc_msgSend(v5, "code") == 18;
  }

  else
  {
    v31 = 0;
  }

  if ((v13 & ([v6 containsObject:&unk_283E74CF0] | v31)) == 1)
  {
LABEL_18:
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v25;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDMPCSendMRCommandOperation] discarding pause media remote error and assuming success as there is no now playing application (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_24;
  }

  v29 = v5;
  v5 = v29;
LABEL_32:
  v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:objc_msgSend(v8 description:"errorCodeForCurrentOperation") underlyingError:{@"Media remote MPC command failure", v29}];
  v33 = objc_autoreleasePoolPush();
  v34 = v8;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543874;
    v41 = v36;
    v42 = 2112;
    v43 = v32;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[HMDMPCSendMRCommandOperation] Cancel with error %@, underlying error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v33);
  [v34 cancelWithError:v32];

LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
}

void __66__HMDMPCSendMRCommandOperation_sendMRCommand_destination_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2080;
    v15 = "[HMDMPCSendMRCommandOperation sendMRCommand:destination:options:]_block_invoke";
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[HMDMPCSendMRCommandOperation] %s", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDMPCSendMRCommandOperation *)*(a1 + 32) generateMPCErrorOrFinishWithError:v5 statuses:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)a3 destination:(id)a4 options:(id)a5 externalObjectInterface:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HMDMPCSendMRCommandOperation;
  v15 = [(HMFOperation *)&v20 initWithTimeout:0.0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_playbackArchive, a3);
    objc_storeStrong(&v16->_destination, a4);
    v17 = [v13 copy];
    options = v16->_options;
    v16->_options = v17;

    objc_storeStrong(&v16->_externalObjectInterface, a6);
  }

  return v16;
}

- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)a3 options:(id)a4 destination:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDMPCSendMRCommandOperationDefaultExternalObjectInterface);
  v12 = [(HMDMPCSendMRCommandOperation *)self initWithPlaybackArchive:v10 destination:v8 options:v9 externalObjectInterface:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_241673 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_241673, &__block_literal_global_241674);
  }

  v3 = logCategory__hmf_once_v10_241675;

  return v3;
}

void __43__HMDMPCSendMRCommandOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_241675;
  logCategory__hmf_once_v10_241675 = v1;
}

@end
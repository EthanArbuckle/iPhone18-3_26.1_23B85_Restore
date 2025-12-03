@interface HMDDefaultSimpleDownloader
+ (id)logCategory;
- (HMDDefaultSimpleDownloader)initWithLogIdentifier:(id)identifier;
- (id)logIdentifier;
- (void)fetchURL:(id)l completion:(id)completion;
@end

@implementation HMDDefaultSimpleDownloader

- (id)logIdentifier
{
  if (self)
  {
    self = self->_identifier;
  }

  return self;
}

- (void)fetchURL:(id)l completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0x400000 diskCapacity:20971520 directoryURL:0];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setHTTPCookieAcceptPolicy:1];
  [defaultSessionConfiguration setHTTPCookieStorage:0];
  [defaultSessionConfiguration setHTTPShouldSetCookies:0];
  [defaultSessionConfiguration setURLCredentialStorage:0];
  [defaultSessionConfiguration setURLCache:v8];
  [defaultSessionConfiguration set_alternativeServicesStorage:0];
  v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v29 = lCopy;
  v11 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy];
  [v11 setHTTPMethod:@"GET"];
  configuration = [v10 configuration];
  uRLCache = [configuration URLCache];
  v31 = v11;
  v14 = [uRLCache cachedResponseForRequest:v11];

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v30 = v17;
  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v21;
      v36 = 2112;
      v37 = v30;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Found a cached vendor info response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__HMDDefaultSimpleDownloader_fetchURL_completion___block_invoke;
  v32[3] = &unk_27867D2B8;
  v32[4] = self;
  v22 = completionCopy;
  v33 = v22;
  v23 = [v10 dataTaskWithRequest:v31 completionHandler:v32];
  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v27;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Resuming task: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  [v23 resume];

  v28 = *MEMORY[0x277D85DE8];
}

void __50__HMDDefaultSimpleDownloader_fetchURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v14 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v21;
        v30 = 1024;
        LODWORD(v31) = [v16 statusCode];
        v22 = "%{public}@Data task finished with HTTP status code %d";
        v23 = v19;
        v24 = 18;
LABEL_13:
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v22, &v28, v24);
      }
    }

    else if (v20)
    {
      v21 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v21;
      v22 = "%{public}@Data task finished";
      v23 = v19;
      v24 = 12;
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v13;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data task finished with error: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_15:
  v25 = _Block_copy(*(a1 + 40));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, v7, v8, v9);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDDefaultSimpleDownloader)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = HMDDefaultSimpleDownloader;
  v5 = [(HMDDefaultSimpleDownloader *)&v8 init];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_179137 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_179137, &__block_literal_global_179138);
  }

  v3 = logCategory__hmf_once_v9_179139;

  return v3;
}

void __41__HMDDefaultSimpleDownloader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_179139;
  logCategory__hmf_once_v9_179139 = v1;
}

@end
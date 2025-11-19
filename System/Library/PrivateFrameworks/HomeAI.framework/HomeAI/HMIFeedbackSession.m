@interface HMIFeedbackSession
+ (id)logCategory;
- (HMIFeedbackSession)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation HMIFeedbackSession

- (HMIFeedbackSession)init
{
  v17.receiver = self;
  v17.super_class = HMIFeedbackSession;
  v2 = [(HMIFeedbackSession *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"HMIFeedback Queue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v5 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v6 = MEMORY[0x277CCAD30];
    v7 = [(HMIFeedbackSession *)v2 operationQueue];
    v8 = [v6 sessionWithConfiguration:v5 delegate:v2 delegateQueue:v7];
    session = v2->_session;
    v2->_session = v8;

    v10 = [[HMIHomeKitClient alloc] initWithNoCaching];
    homeKitClient = v2->_homeKitClient;
    v2->_homeKitClient = v10;

    feedbackServiceHost = v2->_feedbackServiceHost;
    v2->_feedbackServiceHost = @"hkcvml.apple.com";

    if (+[HMIPreference isInternalInstall])
    {
      v13 = +[HMIPreference sharedInstance];
      v14 = [v13 BOOLPreferenceForKey:@"useDevelopmentFeedbackService" defaultValue:0];

      if (v14)
      {
        v15 = v2->_feedbackServiceHost;
        v2->_feedbackServiceHost = @"hkcvml-dev.apple.com";
      }
    }
  }

  return v2;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[HMIPreference isInternalInstall])
  {
    v11 = +[HMIPreference sharedInstance];
    v12 = [v11 BOOLPreferenceForKey:@"useDevelopmentFeedbackService" defaultValue:0];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [(HMIFeedbackSession *)v14 feedbackServiceHost];
        *buf = 138543618;
        v49 = v16;
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Trusting host: %@ by default, not enforcing certificate pinning since user is donating videos to a dev server", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
LABEL_16:
      v10[2](v10, 1, 0);
      goto LABEL_21;
    }
  }

  v18 = [v9 protectionSpace];
  v19 = [v18 host];
  v20 = [(HMIFeedbackSession *)self feedbackServiceHost];
  v21 = [v19 isEqual:v20];

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v21)
  {
    if (v25)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v26;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Force Certificate Pinning", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [v9 protectionSpace];
    v28 = [v27 authenticationMethod];
    v29 = [v28 isEqualToString:*MEMORY[0x277CCA720]];

    if (!v29)
    {
      goto LABEL_16;
    }

    v30 = [(HMIFeedbackSession *)v23 feedbackServiceHost];
    AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

    if (AppleSSLPinned)
    {
      v32 = [v9 protectionSpace];
      v33 = [v32 serverTrust];

      v34 = SecTrustSetPolicies(v33, AppleSSLPinned);
      CFRelease(AppleSSLPinned);
      if (v34)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v23;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v38;
          v50 = 2048;
          v51 = v34;
          _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_ERROR, "%{public}@Error setting trust policies: %lu", buf, 0x16u);
        }
      }

      else
      {
        error = 0;
        if (SecTrustEvaluateWithError(v33, &error))
        {
          v45 = [MEMORY[0x277CCACF0] credentialForTrust:v33];
          (v10)[2](v10, 0, v45);

          goto LABEL_21;
        }

        if (!error)
        {
          goto LABEL_15;
        }

        v35 = objc_autoreleasePoolPush();
        v36 = v23;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v46;
          v50 = 2112;
          v51 = error;
          _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_ERROR, "%{public}@Invalid certificate: %@", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v35);
    }

LABEL_15:
    v10[2](v10, 2, 0);
    goto LABEL_21;
  }

  if (v25)
  {
    v39 = HMFGetLogIdentifier();
    v40 = [v9 protectionSpace];
    v41 = [v40 host];
    *buf = 138543618;
    v49 = v39;
    v50 = 2112;
    v51 = v41;
    _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Trusting host: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v42 = MEMORY[0x277CCACF0];
  v43 = [v9 protectionSpace];
  v44 = [v42 credentialForTrust:{objc_msgSend(v43, "serverTrust")}];
  (v10)[2](v10, 0, v44);

LABEL_21:
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    +[HMIFeedbackSession logCategory];
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __33__HMIFeedbackSession_logCategory__block_invoke()
{
  logCategory__hmf_once_v12 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
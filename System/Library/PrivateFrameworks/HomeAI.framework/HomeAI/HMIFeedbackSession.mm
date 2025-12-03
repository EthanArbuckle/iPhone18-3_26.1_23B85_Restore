@interface HMIFeedbackSession
+ (id)logCategory;
- (HMIFeedbackSession)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
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
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v6 = MEMORY[0x277CCAD30];
    operationQueue = [(HMIFeedbackSession *)v2 operationQueue];
    v8 = [v6 sessionWithConfiguration:defaultSessionConfiguration delegate:v2 delegateQueue:operationQueue];
    session = v2->_session;
    v2->_session = v8;

    initWithNoCaching = [[HMIHomeKitClient alloc] initWithNoCaching];
    homeKitClient = v2->_homeKitClient;
    v2->_homeKitClient = initWithNoCaching;

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

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (+[HMIPreference isInternalInstall])
  {
    v11 = +[HMIPreference sharedInstance];
    v12 = [v11 BOOLPreferenceForKey:@"useDevelopmentFeedbackService" defaultValue:0];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        feedbackServiceHost = [(HMIFeedbackSession *)selfCopy feedbackServiceHost];
        *buf = 138543618;
        v49 = v16;
        v50 = 2112;
        v51 = feedbackServiceHost;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Trusting host: %@ by default, not enforcing certificate pinning since user is donating videos to a dev server", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
LABEL_16:
      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_21;
    }
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  feedbackServiceHost2 = [(HMIFeedbackSession *)self feedbackServiceHost];
  v21 = [host isEqual:feedbackServiceHost2];

  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
    protectionSpace2 = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace2 authenticationMethod];
    v29 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

    if (!v29)
    {
      goto LABEL_16;
    }

    feedbackServiceHost3 = [(HMIFeedbackSession *)selfCopy2 feedbackServiceHost];
    AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

    if (AppleSSLPinned)
    {
      protectionSpace3 = [challengeCopy protectionSpace];
      serverTrust = [protectionSpace3 serverTrust];

      v34 = SecTrustSetPolicies(serverTrust, AppleSSLPinned);
      CFRelease(AppleSSLPinned);
      if (v34)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy2;
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
        if (SecTrustEvaluateWithError(serverTrust, &error))
        {
          v45 = [MEMORY[0x277CCACF0] credentialForTrust:serverTrust];
          (handlerCopy)[2](handlerCopy, 0, v45);

          goto LABEL_21;
        }

        if (!error)
        {
          goto LABEL_15;
        }

        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy2;
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
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_21;
  }

  if (v25)
  {
    v39 = HMFGetLogIdentifier();
    protectionSpace4 = [challengeCopy protectionSpace];
    host2 = [protectionSpace4 host];
    *buf = 138543618;
    v49 = v39;
    v50 = 2112;
    v51 = host2;
    _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Trusting host: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v42 = MEMORY[0x277CCACF0];
  protectionSpace5 = [challengeCopy protectionSpace];
  v44 = [v42 credentialForTrust:{objc_msgSend(protectionSpace5, "serverTrust")}];
  (handlerCopy)[2](handlerCopy, 0, v44);

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
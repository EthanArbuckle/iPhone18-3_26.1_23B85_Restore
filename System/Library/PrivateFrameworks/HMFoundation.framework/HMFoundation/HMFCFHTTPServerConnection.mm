@interface HMFCFHTTPServerConnection
@end

@implementation HMFCFHTTPServerConnection

void __66___HMFCFHTTPServerConnection__sendStatusCode_forRequest_bodyData___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier(v7);
      v11 = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Failed to send internal response, %@, with error: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __43___HMFCFHTTPServerConnection_sendResponse___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = *(a1 + 32);
      v17 = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending response: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [v2 activity];
    [v9 markWithReason:@"Sending"];

    v10 = [*(a1 + 40) pendingRespones];
    [v10 addObject:*(a1 + 32)];

    [*(a1 + 32) responseRef];
    _CFHTTPServerResponseEnqueue();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier(v4);
      v12 = *(a1 + 32);
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@The response is invalid: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v13 = [*(a1 + 32) completionHandler];

    if (v13)
    {
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v15 = [*(a1 + 32) completionHandler];
      (v15)[2](v15, v14);

      [*(a1 + 32) setCompletionHandler:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __41___HMFCFHTTPServerConnection_logCategory__block_invoke()
{
  qword_280AFC360 = HMFCreateOSLogHandle(@"Networking.HTTP.Server.Connection.Internal", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

@end
@interface HMDXPCMessageReportingSessionManager
+ (id)logCategory;
- (HMDXPCMessageReportingSessionManager)init;
- (id)consumeResponseMessagePayloadsForSessionWithReportContextRequestInfo:(id)a3;
- (void)addResponseMessagePayload:(id)a3 toSessionWithUUID:(id)a4;
- (void)endSessionWithUUID:(id)a3;
- (void)startSessionWithUUID:(id)a3 reportContext:(id)a4 xpcClientConnection:(id)a5;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDXPCMessageReportingSessionManager

- (void)timerDidFire:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v7 = *v27;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v26 + 1) + 8 * i);
      v10 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [v11 consumeSessionResultsTimer];
      LODWORD(v10) = v12 == v4;

      if (v10)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v19;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Results retrieval timed out for session with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [(HMDXPCMessageReportingSessionManager *)v17 sessionsByUUID];
        [v20 setObject:0 forKeyedSubscript:v9];

        v15 = 0;
        goto LABEL_18;
      }

      v13 = [v11 endSessionTimer];
      v14 = v13 == v4;

      if (v14)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v24;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@End timed out for session with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v15 = [v11 UUID];
LABEL_18:

        goto LABEL_19;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    v15 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_19:

  os_unfair_lock_unlock(&self->_lock);
  if (v15)
  {
    [(HMDXPCMessageReportingSessionManager *)self endSessionWithUUID:v15];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)consumeResponseMessagePayloadsForSessionWithReportContextRequestInfo:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = *v30;
    v27 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
        v12 = [v11 objectForKeyedSubscript:v10];

        v13 = [v12 reportContext];
        v14 = [v13 requestInfo];
        v15 = [v14 isEqualToData:v4];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v26 = v16;
            v19 = HMFGetLogIdentifier();
            v28 = [v12 responseMessagePayloads];
            v20 = [v28 count];
            v21 = [v12 UUID];
            *buf = 138543874;
            v34 = v19;
            v35 = 2048;
            v36 = v20;
            v37 = 2112;
            v38 = v21;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Consuming %lu response message payloads for session with UUID: %@", buf, 0x20u);

            v16 = v26;
          }

          objc_autoreleasePoolPop(v16);
          v22 = [(HMDXPCMessageReportingSessionManager *)v17 sessionsByUUID];
          v23 = [v12 UUID];
          [v22 setObject:0 forKeyedSubscript:v23];

          v27 = [v12 responseMessagePayloads];

          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

LABEL_14:

  os_unfair_lock_unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)endSessionWithUUID:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v14;
      v50 = 2112;
      v51 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No existing session to end with UUID: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v7 = [v6 consumeSessionResultsTimer];

  if (!v7)
  {
    v15 = [v6 reportContext];
    v16 = [v6 xpcClientConnection];
    v17 = [v16 isActivated];

    v18 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v19 = [v18 preferenceForKey:@"cachedResponsesCleanupTimeoutSeconds"];
    v20 = [v19 numberValue];

    v21 = [(HMDXPCMessageReportingSessionManager *)self consumeSessionResultsTimerFactory];
    [v20 doubleValue];
    v22 = v21[2](v21, 0);
    [v6 setConsumeSessionResultsTimer:v22];

    v23 = [v6 consumeSessionResultsTimer];
    [v23 setDelegate:self];

    v24 = [v6 consumeSessionResultsTimer];
    [v24 resume];

    [v6 setEndSessionTimer:0];
    os_unfair_lock_unlock(&self->_lock);
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v28;
      v50 = 2112;
      v51 = v4;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Ending session with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [v15 reportDomain];
    v30 = [v15 requestInfo];
    if (v17)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v26;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v34;
        v50 = 2112;
        v51 = v4;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@XPC client connection is still active so not reporting completion of session with UUID: %@", buf, 0x16u);
      }
    }

    else
    {
      if ([v29 isEqualToString:*MEMORY[0x277CD0CB8]])
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v26;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v38;
          v50 = 2112;
          v51 = v30;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Reporting completion of Siri request with requestInfo: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        v39 = dispatch_get_global_queue(0, 0);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __59__HMDXPCMessageReportingSessionManager_endSessionWithUUID___block_invoke;
        v46[3] = &unk_27868A750;
        v46[4] = v36;
        v47 = v30;
        dispatch_async(v39, v46);

        goto LABEL_26;
      }

      if (isInternalBuild() && [v29 isEqualToString:*MEMORY[0x277CD0CC0]])
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v26;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v43;
          v50 = 2112;
          v51 = v30;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Reporting completion of HomeUtil request with requestInfo: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        notify_post("HomeUtilAsyncCompletionReportNotification");
        goto LABEL_26;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = v26;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543874;
        v49 = v44;
        v50 = 2112;
        v51 = v29;
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Not reporting completion of request with unhandled domain: %@, requestInfo: %@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v31);
LABEL_26:

    goto LABEL_27;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 UUID];
    *buf = 138543618;
    v49 = v11;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not ending already-ended session with UUID: %@", buf, 0x16u);
  }

LABEL_7:

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_unlock(&self->_lock);
LABEL_27:

  v45 = *MEMORY[0x277D85DE8];
}

void __59__HMDXPCMessageReportingSessionManager_endSessionWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performBackgroundRequestHandler];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMDXPCMessageReportingSessionManager_endSessionWithUUID___block_invoke_2;
  v4[3] = &unk_27867F418;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  (v2)[2](v2, v5, v4);
}

void __59__HMDXPCMessageReportingSessionManager_endSessionWithUUID___block_invoke_2(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v10 = "%{public}@Successfully reported completion of request with requestInfo: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v13;
    v10 = "%{public}@Failed to report completion of request with requestInfo: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)addResponseMessagePayload:(id)a3 toSessionWithUUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 responseMessagePayloads];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding response message payload to session with UUID: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v10 addObject:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startSessionWithUUID:(id)a3 reportContext:(id)a4 xpcClientConnection:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 reportTimeout];
  if (v11 <= 0.0)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v9 reportDomain];
    v18 = [v9 requestInfo];
    v26 = 138544386;
    v27 = v16;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting reporting session with UUID: %@, reportDomain: %@, requestInfo: %@, timeout: %fs", &v26, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [[HMDXPCMessageReportingSession alloc] initWithUUID:v8 reportContext:v9 xpcClientConnection:v10];
  v20 = [(HMDXPCMessageReportingSessionManager *)v14 endSessionTimerFactory];
  v21 = v20[2](v20, 2, v12);
  [(HMDXPCMessageReportingSession *)v19 setEndSessionTimer:v21];

  v22 = [(HMDXPCMessageReportingSession *)v19 endSessionTimer];
  [v22 setDelegate:v14];

  v23 = [(HMDXPCMessageReportingSession *)v19 endSessionTimer];
  [v23 resume];

  os_unfair_lock_lock_with_options();
  v24 = [(HMDXPCMessageReportingSessionManager *)v14 sessionsByUUID];
  [v24 setObject:v19 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&v14->_lock);
  v25 = *MEMORY[0x277D85DE8];
}

- (HMDXPCMessageReportingSessionManager)init
{
  v9.receiver = self;
  v9.super_class = HMDXPCMessageReportingSessionManager;
  v2 = [(HMDXPCMessageReportingSessionManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    sessionsByUUID = v2->_sessionsByUUID;
    v2->_sessionsByUUID = v3;

    endSessionTimerFactory = v2->_endSessionTimerFactory;
    v2->_endSessionTimerFactory = &__block_literal_global_200625;

    consumeSessionResultsTimerFactory = v2->_consumeSessionResultsTimerFactory;
    v2->_consumeSessionResultsTimerFactory = &__block_literal_global_54_200626;

    performBackgroundRequestHandler = v2->_performBackgroundRequestHandler;
    v2->_performBackgroundRequestHandler = &__block_literal_global_57_200627;
  }

  return v2;
}

void __44__HMDXPCMessageReportingSessionManager_init__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CEF3F0];
  v5 = a3;
  v6 = a2;
  v8 = [[v4 alloc] initWithContext:v6];

  v7 = [objc_alloc(MEMORY[0x277CEF3E8]) initWithRequestInfo:v8];
  [v7 performRequestWithCompletion:v5];
}

id __44__HMDXPCMessageReportingSessionManager_init__block_invoke_2(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

id __44__HMDXPCMessageReportingSessionManager_init__block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_200638 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_200638, &__block_literal_global_65_200639);
  }

  v3 = logCategory__hmf_once_v17_200640;

  return v3;
}

void __51__HMDXPCMessageReportingSessionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_200640;
  logCategory__hmf_once_v17_200640 = v1;
}

@end
@interface HMDXPCMessageReportingSessionManager
+ (id)logCategory;
- (HMDXPCMessageReportingSessionManager)init;
- (id)consumeResponseMessagePayloadsForSessionWithReportContextRequestInfo:(id)info;
- (void)addResponseMessagePayload:(id)payload toSessionWithUUID:(id)d;
- (void)endSessionWithUUID:(id)d;
- (void)startSessionWithUUID:(id)d reportContext:(id)context xpcClientConnection:(id)connection;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDXPCMessageReportingSessionManager

- (void)timerDidFire:(id)fire
{
  v35 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sessionsByUUID = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v6 = [sessionsByUUID countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v6)
  {
    uUID = 0;
    goto LABEL_19;
  }

  v7 = *v27;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(sessionsByUUID);
      }

      v9 = *(*(&v26 + 1) + 8 * i);
      sessionsByUUID2 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
      v11 = [sessionsByUUID2 objectForKeyedSubscript:v9];

      consumeSessionResultsTimer = [v11 consumeSessionResultsTimer];
      LODWORD(sessionsByUUID2) = consumeSessionResultsTimer == fireCopy;

      if (sessionsByUUID2)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v19;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Results retrieval timed out for session with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        sessionsByUUID3 = [(HMDXPCMessageReportingSessionManager *)selfCopy sessionsByUUID];
        [sessionsByUUID3 setObject:0 forKeyedSubscript:v9];

        uUID = 0;
        goto LABEL_18;
      }

      endSessionTimer = [v11 endSessionTimer];
      v14 = endSessionTimer == fireCopy;

      if (v14)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v24;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@End timed out for session with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        uUID = [v11 UUID];
LABEL_18:

        goto LABEL_19;
      }
    }

    v6 = [sessionsByUUID countByEnumeratingWithState:&v26 objects:v34 count:16];
    uUID = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_19:

  os_unfair_lock_unlock(&self->_lock);
  if (uUID)
  {
    [(HMDXPCMessageReportingSessionManager *)self endSessionWithUUID:uUID];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)consumeResponseMessagePayloadsForSessionWithReportContextRequestInfo:(id)info
{
  v40 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  sessionsByUUID = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  allKeys = [sessionsByUUID allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = *v30;
    responseMessagePayloads2 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        sessionsByUUID2 = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
        v12 = [sessionsByUUID2 objectForKeyedSubscript:v10];

        reportContext = [v12 reportContext];
        requestInfo = [reportContext requestInfo];
        v15 = [requestInfo isEqualToData:infoCopy];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v26 = v16;
            v19 = HMFGetLogIdentifier();
            responseMessagePayloads = [v12 responseMessagePayloads];
            v20 = [responseMessagePayloads count];
            uUID = [v12 UUID];
            *buf = 138543874;
            v34 = v19;
            v35 = 2048;
            v36 = v20;
            v37 = 2112;
            v38 = uUID;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Consuming %lu response message payloads for session with UUID: %@", buf, 0x20u);

            v16 = v26;
          }

          objc_autoreleasePoolPop(v16);
          sessionsByUUID3 = [(HMDXPCMessageReportingSessionManager *)selfCopy sessionsByUUID];
          uUID2 = [v12 UUID];
          [sessionsByUUID3 setObject:0 forKeyedSubscript:uUID2];

          responseMessagePayloads2 = [v12 responseMessagePayloads];

          goto LABEL_14;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    responseMessagePayloads2 = MEMORY[0x277CBEBF8];
  }

LABEL_14:

  os_unfair_lock_unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];

  return responseMessagePayloads2;
}

- (void)endSessionWithUUID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  sessionsByUUID = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v6 = [sessionsByUUID objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v14;
      v50 = 2112;
      v51 = dCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No existing session to end with UUID: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  consumeSessionResultsTimer = [v6 consumeSessionResultsTimer];

  if (!consumeSessionResultsTimer)
  {
    reportContext = [v6 reportContext];
    xpcClientConnection = [v6 xpcClientConnection];
    isActivated = [xpcClientConnection isActivated];

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v19 = [mEMORY[0x277D0F8D0] preferenceForKey:@"cachedResponsesCleanupTimeoutSeconds"];
    numberValue = [v19 numberValue];

    consumeSessionResultsTimerFactory = [(HMDXPCMessageReportingSessionManager *)self consumeSessionResultsTimerFactory];
    [numberValue doubleValue];
    v22 = consumeSessionResultsTimerFactory[2](consumeSessionResultsTimerFactory, 0);
    [v6 setConsumeSessionResultsTimer:v22];

    consumeSessionResultsTimer2 = [v6 consumeSessionResultsTimer];
    [consumeSessionResultsTimer2 setDelegate:self];

    consumeSessionResultsTimer3 = [v6 consumeSessionResultsTimer];
    [consumeSessionResultsTimer3 resume];

    [v6 setEndSessionTimer:0];
    os_unfair_lock_unlock(&self->_lock);
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v28;
      v50 = 2112;
      v51 = dCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Ending session with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    reportDomain = [reportContext reportDomain];
    requestInfo = [reportContext requestInfo];
    if (isActivated)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy2;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v34;
        v50 = 2112;
        v51 = dCopy;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@XPC client connection is still active so not reporting completion of session with UUID: %@", buf, 0x16u);
      }
    }

    else
    {
      if ([reportDomain isEqualToString:*MEMORY[0x277CD0CB8]])
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy2;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v38;
          v50 = 2112;
          v51 = requestInfo;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Reporting completion of Siri request with requestInfo: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        v39 = dispatch_get_global_queue(0, 0);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __59__HMDXPCMessageReportingSessionManager_endSessionWithUUID___block_invoke;
        v46[3] = &unk_2797359B0;
        v46[4] = v36;
        v47 = requestInfo;
        dispatch_async(v39, v46);

        goto LABEL_26;
      }

      if (isInternalBuild() && [reportDomain isEqualToString:*MEMORY[0x277CD0CC0]])
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy2;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v43;
          v50 = 2112;
          v51 = requestInfo;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Reporting completion of HomeUtil request with requestInfo: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        notify_post("HomeUtilAsyncCompletionReportNotification");
        goto LABEL_26;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy2;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543874;
        v49 = v44;
        v50 = 2112;
        v51 = reportDomain;
        v52 = 2112;
        v53 = requestInfo;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Not reporting completion of request with unhandled domain: %@, requestInfo: %@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v31);
LABEL_26:

    goto LABEL_27;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [v6 UUID];
    *buf = 138543618;
    v49 = v11;
    v50 = 2112;
    v51 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not ending already-ended session with UUID: %@", buf, 0x16u);
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
  v4[3] = &unk_27972C528;
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
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, 0x16u);
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

- (void)addResponseMessagePayload:(id)payload toSessionWithUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  sessionsByUUID = [(HMDXPCMessageReportingSessionManager *)self sessionsByUUID];
  v9 = [sessionsByUUID objectForKeyedSubscript:dCopy];
  responseMessagePayloads = [v9 responseMessagePayloads];

  if (responseMessagePayloads)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding response message payload to session with UUID: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [responseMessagePayloads addObject:payloadCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startSessionWithUUID:(id)d reportContext:(id)context xpcClientConnection:(id)connection
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  connectionCopy = connection;
  [contextCopy reportTimeout];
  if (v11 <= 0.0)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    reportDomain = [contextCopy reportDomain];
    requestInfo = [contextCopy requestInfo];
    v26 = 138544386;
    v27 = v16;
    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = reportDomain;
    v32 = 2112;
    v33 = requestInfo;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting reporting session with UUID: %@, reportDomain: %@, requestInfo: %@, timeout: %fs", &v26, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [[HMDXPCMessageReportingSession alloc] initWithUUID:dCopy reportContext:contextCopy xpcClientConnection:connectionCopy];
  endSessionTimerFactory = [(HMDXPCMessageReportingSessionManager *)selfCopy endSessionTimerFactory];
  v21 = endSessionTimerFactory[2](endSessionTimerFactory, 2, v12);
  [(HMDXPCMessageReportingSession *)v19 setEndSessionTimer:v21];

  endSessionTimer = [(HMDXPCMessageReportingSession *)v19 endSessionTimer];
  [endSessionTimer setDelegate:selfCopy];

  endSessionTimer2 = [(HMDXPCMessageReportingSession *)v19 endSessionTimer];
  [endSessionTimer2 resume];

  os_unfair_lock_lock_with_options();
  sessionsByUUID = [(HMDXPCMessageReportingSessionManager *)selfCopy sessionsByUUID];
  [sessionsByUUID setObject:v19 forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v25 = *MEMORY[0x277D85DE8];
}

- (HMDXPCMessageReportingSessionManager)init
{
  v9.receiver = self;
  v9.super_class = HMDXPCMessageReportingSessionManager;
  v2 = [(HMDXPCMessageReportingSessionManager *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionsByUUID = v2->_sessionsByUUID;
    v2->_sessionsByUUID = dictionary;

    endSessionTimerFactory = v2->_endSessionTimerFactory;
    v2->_endSessionTimerFactory = &__block_literal_global_57947;

    consumeSessionResultsTimerFactory = v2->_consumeSessionResultsTimerFactory;
    v2->_consumeSessionResultsTimerFactory = &__block_literal_global_54;

    performBackgroundRequestHandler = v2->_performBackgroundRequestHandler;
    v2->_performBackgroundRequestHandler = &__block_literal_global_57_57948;
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
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_65_57958);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

uint64_t __51__HMDXPCMessageReportingSessionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
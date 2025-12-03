@interface HMDEventTriggerUserConfirmationSession
+ (id)logCategory;
- (HMDEventTriggerExecutionSession)executionSession;
- (HMDEventTriggerUserConfirmationSession)initWithSessionID:(id)d eventTrigger:(id)trigger workQueue:(id)queue msgDispatcher:(id)dispatcher requestingDevice:(id)device;
- (void)_askForUserPermissionFromDevice:(id)device executionSessionID:(id)d;
- (void)_createBulletinNotification;
- (void)_handleUserPermissionRemoteResponse:(id)response;
- (void)_handleUserPermissionRemoveDialogRequest:(id)request;
- (void)_registerForMessages;
- (void)_removeUserDialog:(id)dialog;
- (void)_sessionComplete;
- (void)_userResponse:(unint64_t)response completionHandler:(id)handler;
- (void)askForUserPermission:(id)permission;
- (void)createBulletinNotification;
- (void)dealloc;
- (void)timerDidFire:(id)fire;
- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler;
@end

@implementation HMDEventTriggerUserConfirmationSession

- (HMDEventTriggerExecutionSession)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (void)_sessionComplete
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Declaring session is complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  eventTrigger = [(HMDEventTriggerSession *)selfCopy eventTrigger];
  [eventTrigger resetExecutionState];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPermissionRemoveDialogRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received user confirmation remove dialog request", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDEventTriggerUserConfirmationSession *)selfCopy _sessionComplete];
  [requestCopy respondWithPayload:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeUserDialog:(id)dialog
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dialog;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    v8 = *MEMORY[0x277CD2328];
    *&v5 = 138543618;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 isCurrentDevice])
        {
          device = +[HMDBulletinBoard sharedBulletinBoard];
          eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
          uuid = [eventTrigger uuid];
          uUIDString = [uuid UUIDString];
          [device removeBulletinsForTrigger:uUIDString];
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = v20;
            v27 = v18;
            v28 = 2112;
            v29 = v10;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending the remove dialog message to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          device = [v10 device];
          [(HMDEventTriggerSession *)selfCopy sendMessage:v8 payload:0 device:device responseHandler:0];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPermissionRemoteResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [responseCopy numberForKey:*MEMORY[0x277CD2320]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];
  remoteSourceDevice = [responseCopy remoteSourceDevice];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMDUserConfirmationResponseAsString(unsignedIntegerValue);
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = remoteSourceDevice;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ from the device %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [HMDEventTriggerDevice alloc];
  eventTrigger = [(HMDEventTriggerSession *)selfCopy eventTrigger];
  home = [eventTrigger home];
  v16 = [(HMDEventTriggerDevice *)v13 initWithDevice:remoteSourceDevice forHome:home];

  executionSession = [(HMDEventTriggerUserConfirmationSession *)selfCopy executionSession];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__HMDEventTriggerUserConfirmationSession__handleUserPermissionRemoteResponse___block_invoke;
  v20[3] = &unk_2797359D8;
  v21 = responseCopy;
  v18 = responseCopy;
  [executionSession userResponse:unsignedIntegerValue device:v16 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __78__HMDEventTriggerUserConfirmationSession__handleUserPermissionRemoteResponse___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)_userResponse:(unint64_t)response completionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDUserConfirmationResponseAsString(response);
    *buf = 138543618;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Bulletin notification response ended with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (response - 2 >= 2)
  {
    if (response == 1)
    {
      analyticsEvent = [(HMDEventTriggerUserConfirmationSession *)selfCopy analyticsEvent];
      analyticsData = [analyticsEvent analyticsData];
      [analyticsData setResultErrorCode:3000];
    }
  }

  else
  {
    [MEMORY[0x277D17DC0] currentTime];
    v13 = v12;
    analyticsEvent2 = [(HMDEventTriggerUserConfirmationSession *)selfCopy analyticsEvent];
    [analyticsEvent2 startTime];
    v16 = v15;
    analyticsEvent3 = [(HMDEventTriggerUserConfirmationSession *)selfCopy analyticsEvent];
    analyticsData2 = [analyticsEvent3 analyticsData];
    [analyticsData2 setUserResponseDelay:((v13 - v16) / 1000.0)];

    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = MEMORY[0x277CCABB0];
      analyticsEvent4 = [(HMDEventTriggerUserConfirmationSession *)selfCopy analyticsEvent];
      analyticsData3 = [analyticsEvent4 analyticsData];
      v25 = [v22 numberWithUnsignedLongLong:{objc_msgSend(analyticsData3, "userResponseDelay")}];
      *buf = 138543618;
      v54 = v21;
      v55 = 2112;
      v56 = v25;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@self.metricEvent.metric.userResponseDelay %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  requestingDevice = [(HMDEventTriggerUserConfirmationSession *)selfCopy requestingDevice];
  isCurrentDevice = [requestingDevice isCurrentDevice];

  if (isCurrentDevice)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v33;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Issuing trigger reponse to local execution session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    executionSession = [(HMDEventTriggerUserConfirmationSession *)v31 executionSession];
    requestingDevice2 = [(HMDEventTriggerUserConfirmationSession *)v31 requestingDevice];
    [executionSession userResponse:response device:requestingDevice2 completionHandler:handlerCopy];
  }

  else
  {
    v51[0] = *MEMORY[0x277CD22C0];
    sessionID = [(HMDEventTriggerSession *)selfCopy sessionID];
    uUIDString = [sessionID UUIDString];
    v52[0] = uUIDString;
    v51[1] = *MEMORY[0x277CD2320];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:response];
    v52[1] = v38;
    executionSession = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

    objc_initWeak(&location, selfCopy);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__HMDEventTriggerUserConfirmationSession__userResponse_completionHandler___block_invoke;
    aBlock[3] = &unk_2797355F8;
    objc_copyWeak(&v49, &location);
    v39 = handlerCopy;
    v48 = v39;
    v40 = _Block_copy(aBlock);
    if (![(HMDEventTriggerSession *)selfCopy sendResidentMessage:*MEMORY[0x277CD2338] payload:executionSession responseHandler:v40])
    {
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v54 = v44;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Could not find compatible resident, Cannot send response", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
      if (v39)
      {
        v45 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        (*(v39 + 2))(v39, v45);
      }

      [(HMDEventTriggerUserConfirmationSession *)v42 _sessionComplete];
    }

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  [(HMDEventTriggerUserConfirmationSession *)selfCopy setUserResponseTimer:0];
  v46 = *MEMORY[0x277D85DE8];
}

void __74__HMDEventTriggerUserConfirmationSession__userResponse_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending user permission response resulted with error %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v5);
  }

  [v9 _sessionComplete];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDEventTriggerUserConfirmationSession_userDidConfirmExecute_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  executeCopy = execute;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, block);
}

uint64_t __82__HMDEventTriggerUserConfirmationSession_userDidConfirmExecute_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) _userResponse:v1 completionHandler:*(a1 + 40)];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDEventTriggerUserConfirmationSession_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(workQueue, v7);
}

void __55__HMDEventTriggerUserConfirmationSession_timerDidFire___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userResponseTimer];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@User did not respond to confirm trigger execution", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _userResponse:1 completionHandler:0];
    [*(a1 + 40) setUserResponseTimer:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createBulletinNotification
{
  v22 = *MEMORY[0x277D85DE8];
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  if (eventTrigger)
  {
    v4 = [HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent alloc];
    sessionID = [(HMDEventTriggerSession *)self sessionID];
    uUIDString = [sessionID UUIDString];
    v7 = [(HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent *)v4 initWithSessionID:uUIDString];
    [(HMDEventTriggerUserConfirmationSession *)self setAnalyticsEvent:v7];

    v8 = +[HMDBulletinBoard sharedBulletinBoard];
    v9 = [v8 insertBulletinForSecureTrigger:eventTrigger];

    v10 = [HMDTriggerConfirmationTimer alloc];
    sessionID2 = [(HMDEventTriggerSession *)self sessionID];
    v12 = [(HMDTriggerConfirmationTimer *)v10 initWithExecutionSessionID:sessionID2 timeoutInterval:bulletinSecureTriggerTimeoutInSeconds];
    [(HMDEventTriggerUserConfirmationSession *)self setUserResponseTimer:v12];

    userResponseTimer = [(HMDEventTriggerUserConfirmationSession *)self userResponseTimer];
    [userResponseTimer setDelegate:self];

    userResponseTimer2 = [(HMDEventTriggerUserConfirmationSession *)self userResponseTimer];
    [userResponseTimer2 resume];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not creating a bulletin because event trigger is nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)createBulletinNotification
{
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDEventTriggerUserConfirmationSession_createBulletinNotification__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_askForUserPermissionFromDevice:(id)device executionSessionID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dCopy = d;
  if (dCopy)
  {
    v7 = [HomeKitEventTriggerUserConfirmationSendLogEvent alloc];
    sessionID = [(HMDEventTriggerSession *)self sessionID];
    uUIDString = [sessionID UUIDString];
    v10 = [(HomeKitEventTriggerUserConfirmationSendLogEvent *)v7 initWithSessionID:uUIDString];

    analyticsSendEvents = [(HMDEventTriggerUserConfirmationSession *)self analyticsSendEvents];
    [analyticsSendEvents addObject:v10];

    v37 = *MEMORY[0x277CD22C0];
    v38 = dCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__HMDEventTriggerUserConfirmationSession__askForUserPermissionFromDevice_executionSessionID___block_invoke;
    aBlock[3] = &unk_279735248;
    objc_copyWeak(&v35, &location);
    v13 = v10;
    v33 = v13;
    v14 = deviceCopy;
    v34 = v14;
    v15 = _Block_copy(aBlock);
    device = [v14 device];
    eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
    uuid = [eventTrigger uuid];
    v19 = [(HMDEventTriggerSession *)self sendMessage:*MEMORY[0x277CD2330] payload:v12 device:device target:uuid responseHandler:v15];

    if (!v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot find the compatible resident to send the permission request, marking it as failure", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      executionSession = [(HMDEventTriggerUserConfirmationSession *)selfCopy executionSession];
      [executionSession userResponse:4 device:v14 completionHandler:0];

      analyticsData = [(HomeKitEventTriggerUserConfirmationSendLogEvent *)v13 analyticsData];
      [analyticsData setResultErrorCode:3007];
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot ask for permission without execution session identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __93__HMDEventTriggerUserConfirmationSession__askForUserPermissionFromDevice_executionSessionID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v5 code];
  v9 = [*(a1 + 32) analyticsData];
  [v9 setResultErrorCode:v8];

  if (v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received error for user permission request: %@, marking user permission as denied", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v11 executionSession];
    [v14 userResponse:4 device:*(a1 + 40) completionHandler:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)askForUserPermission:(id)permission
{
  permissionCopy = permission;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDEventTriggerUserConfirmationSession_askForUserPermission___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = permissionCopy;
  v6 = permissionCopy;
  dispatch_async(workQueue, v7);
}

void __63__HMDEventTriggerUserConfirmationSession_askForUserPermission___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) executionSession];
  v3 = [v2 sessionID];
  v4 = [v3 UUIDString];

  if (v4)
  {
    v5 = [*(a1 + 40) isCurrentDevice];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v9)
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@This device owns the trigger, asking the permission locally", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) _createBulletinNotification];
    }

    else
    {
      if (v9)
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 40);
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@This device does not own the trigger, asking the permission with the device %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) _askForUserPermissionFromDevice:*(a1 + 40) executionSessionID:v4];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Confirmation session is missing associated execution session identifier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v16[2] = *MEMORY[0x277D85DE8];
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  home = [eventTrigger home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];

  msgDispatcher = [(HMDEventTriggerSession *)self msgDispatcher];
  v7 = *MEMORY[0x277CD2328];
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v16[0] = v8;
  v16[1] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [msgDispatcher registerForMessage:v7 receiver:self policies:v9 selector:sel__handleUserPermissionRemoveDialogRequest_];

  msgDispatcher2 = [(HMDEventTriggerSession *)self msgDispatcher];
  v11 = *MEMORY[0x277CD2338];
  v12 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v15[0] = v12;
  v15[1] = v5;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [msgDispatcher2 registerForMessage:v11 receiver:self policies:v13 selector:sel__handleUserPermissionRemoteResponse_];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  analyticsEvent = [(HMDEventTriggerUserConfirmationSession *)self analyticsEvent];
  [v3 submitLogEvent:analyticsEvent];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  analyticsSendEvents = [(HMDEventTriggerUserConfirmationSession *)self analyticsSendEvents];
  v6 = [analyticsSendEvents countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(analyticsSendEvents);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v11 submitLogEvent:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [analyticsSendEvents countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = HMDEventTriggerUserConfirmationSession;
  [(HMDEventTriggerSession *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDEventTriggerUserConfirmationSession)initWithSessionID:(id)d eventTrigger:(id)trigger workQueue:(id)queue msgDispatcher:(id)dispatcher requestingDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = HMDEventTriggerUserConfirmationSession;
  v14 = [(HMDEventTriggerSession *)&v19 initWithSessionID:d eventTrigger:trigger workQueue:queue msgDispatcher:dispatcher];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestingDevice, device);
    array = [MEMORY[0x277CBEB18] array];
    analyticsSendEvents = v15->_analyticsSendEvents;
    v15->_analyticsSendEvents = array;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_132981 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_132981, &__block_literal_global_132982);
  }

  v3 = logCategory__hmf_once_v1_132983;

  return v3;
}

uint64_t __53__HMDEventTriggerUserConfirmationSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_132983;
  logCategory__hmf_once_v1_132983 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
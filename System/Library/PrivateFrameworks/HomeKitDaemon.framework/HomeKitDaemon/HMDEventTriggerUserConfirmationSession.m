@interface HMDEventTriggerUserConfirmationSession
+ (id)logCategory;
- (HMDEventTriggerExecutionSession)executionSession;
- (HMDEventTriggerUserConfirmationSession)initWithSessionID:(id)a3 eventTrigger:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6 requestingDevice:(id)a7;
- (void)_askForUserPermissionFromDevice:(id)a3 executionSessionID:(id)a4;
- (void)_createBulletinNotification;
- (void)_handleUserPermissionRemoteResponse:(id)a3;
- (void)_handleUserPermissionRemoveDialogRequest:(id)a3;
- (void)_registerForMessages;
- (void)_removeUserDialog:(id)a3;
- (void)_sessionComplete;
- (void)_userResponse:(unint64_t)a3 completionHandler:(id)a4;
- (void)askForUserPermission:(id)a3;
- (void)createBulletinNotification;
- (void)dealloc;
- (void)timerDidFire:(id)a3;
- (void)userDidConfirmExecute:(BOOL)a3 completionHandler:(id)a4;
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Declaring session is complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDEventTriggerSession *)v4 eventTrigger];
  [v7 resetExecutionState];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPermissionRemoveDialogRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received user confirmation remove dialog request", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDEventTriggerUserConfirmationSession *)v6 _sessionComplete];
  [v4 respondWithPayload:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeUserDialog:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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
          v11 = +[HMDBulletinBoard sharedBulletinBoard];
          v12 = [(HMDEventTriggerSession *)self eventTrigger];
          v13 = [v12 uuid];
          v14 = [v13 UUIDString];
          [v11 removeBulletinsForTrigger:v14];
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = v20;
            v27 = v18;
            v28 = 2112;
            v29 = v10;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending the remove dialog message to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v11 = [v10 device];
          [(HMDEventTriggerSession *)v16 sendMessage:v8 payload:0 device:v11 responseHandler:0];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPermissionRemoteResponse:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD2320]];
  v6 = [v5 unsignedIntegerValue];
  v7 = [v4 remoteSourceDevice];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMDUserConfirmationResponseAsString(v6);
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response %@ from the device %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [HMDEventTriggerDevice alloc];
  v14 = [(HMDEventTriggerSession *)v9 eventTrigger];
  v15 = [v14 home];
  v16 = [(HMDEventTriggerDevice *)v13 initWithDevice:v7 forHome:v15];

  v17 = [(HMDEventTriggerUserConfirmationSession *)v9 executionSession];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__HMDEventTriggerUserConfirmationSession__handleUserPermissionRemoteResponse___block_invoke;
  v20[3] = &unk_27868A250;
  v21 = v4;
  v18 = v4;
  [v17 userResponse:v6 device:v16 completionHandler:v20];

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

- (void)_userResponse:(unint64_t)a3 completionHandler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMDUserConfirmationResponseAsString(a3);
    *buf = 138543618;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Bulletin notification response ended with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (a3 - 2 >= 2)
  {
    if (a3 == 1)
    {
      v26 = [(HMDEventTriggerUserConfirmationSession *)v8 analyticsEvent];
      v27 = [v26 analyticsData];
      [v27 setResultErrorCode:3000];
    }
  }

  else
  {
    [MEMORY[0x277D17DC0] currentTime];
    v13 = v12;
    v14 = [(HMDEventTriggerUserConfirmationSession *)v8 analyticsEvent];
    [v14 startTime];
    v16 = v15;
    v17 = [(HMDEventTriggerUserConfirmationSession *)v8 analyticsEvent];
    v18 = [v17 analyticsData];
    [v18 setUserResponseDelay:((v13 - v16) / 1000.0)];

    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = MEMORY[0x277CCABB0];
      v23 = [(HMDEventTriggerUserConfirmationSession *)v8 analyticsEvent];
      v24 = [v23 analyticsData];
      v25 = [v22 numberWithUnsignedLongLong:{objc_msgSend(v24, "userResponseDelay")}];
      *buf = 138543618;
      v54 = v21;
      v55 = 2112;
      v56 = v25;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@self.metricEvent.metric.userResponseDelay %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v28 = [(HMDEventTriggerUserConfirmationSession *)v8 requestingDevice];
  v29 = [v28 isCurrentDevice];

  if (v29)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v8;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Issuing trigger reponse to local execution session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [(HMDEventTriggerUserConfirmationSession *)v31 executionSession];
    v35 = [(HMDEventTriggerUserConfirmationSession *)v31 requestingDevice];
    [v34 userResponse:a3 device:v35 completionHandler:v6];
  }

  else
  {
    v51[0] = *MEMORY[0x277CD22C0];
    v36 = [(HMDEventTriggerSession *)v8 sessionID];
    v37 = [v36 UUIDString];
    v52[0] = v37;
    v51[1] = *MEMORY[0x277CD2320];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v52[1] = v38;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

    objc_initWeak(&location, v8);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__HMDEventTriggerUserConfirmationSession__userResponse_completionHandler___block_invoke;
    aBlock[3] = &unk_278689728;
    objc_copyWeak(&v49, &location);
    v39 = v6;
    v48 = v39;
    v40 = _Block_copy(aBlock);
    if (![(HMDEventTriggerSession *)v8 sendResidentMessage:*MEMORY[0x277CD2338] payload:v34 responseHandler:v40])
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v8;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v54 = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Could not find compatible resident, Cannot send response", buf, 0xCu);
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

  [(HMDEventTriggerUserConfirmationSession *)v8 setUserResponseTimer:0];
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending user permission response resulted with error %@", &v14, 0x16u);
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

- (void)userDidConfirmExecute:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDEventTriggerUserConfirmationSession_userDidConfirmExecute_completionHandler___block_invoke;
  block[3] = &unk_278687F18;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
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

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDEventTriggerUserConfirmationSession_timerDidFire___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@User did not respond to confirm trigger execution", &v9, 0xCu);
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
  v3 = [(HMDEventTriggerSession *)self eventTrigger];
  if (v3)
  {
    v4 = [HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent alloc];
    v5 = [(HMDEventTriggerSession *)self sessionID];
    v6 = [v5 UUIDString];
    v7 = [(HomeKitEventTriggerUserConfirmationReceiverSessionLogEvent *)v4 initWithSessionID:v6];
    [(HMDEventTriggerUserConfirmationSession *)self setAnalyticsEvent:v7];

    v8 = +[HMDBulletinBoard sharedBulletinBoard];
    v9 = [v8 insertBulletinForSecureTrigger:v3];

    v10 = [HMDTriggerConfirmationTimer alloc];
    v11 = [(HMDEventTriggerSession *)self sessionID];
    v12 = [(HMDTriggerConfirmationTimer *)v10 initWithExecutionSessionID:v11 timeoutInterval:bulletinSecureTriggerTimeoutInSeconds];
    [(HMDEventTriggerUserConfirmationSession *)self setUserResponseTimer:v12];

    v13 = [(HMDEventTriggerUserConfirmationSession *)self userResponseTimer];
    [v13 setDelegate:self];

    v14 = [(HMDEventTriggerUserConfirmationSession *)self userResponseTimer];
    [v14 resume];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not creating a bulletin because event trigger is nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)createBulletinNotification
{
  v3 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDEventTriggerUserConfirmationSession_createBulletinNotification__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_askForUserPermissionFromDevice:(id)a3 executionSessionID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [HomeKitEventTriggerUserConfirmationSendLogEvent alloc];
    v8 = [(HMDEventTriggerSession *)self sessionID];
    v9 = [v8 UUIDString];
    v10 = [(HomeKitEventTriggerUserConfirmationSendLogEvent *)v7 initWithSessionID:v9];

    v11 = [(HMDEventTriggerUserConfirmationSession *)self analyticsSendEvents];
    [v11 addObject:v10];

    v37 = *MEMORY[0x277CD22C0];
    v38 = v6;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__HMDEventTriggerUserConfirmationSession__askForUserPermissionFromDevice_executionSessionID___block_invoke;
    aBlock[3] = &unk_278689460;
    objc_copyWeak(&v35, &location);
    v13 = v10;
    v33 = v13;
    v14 = v31;
    v34 = v14;
    v15 = _Block_copy(aBlock);
    v16 = [v14 device];
    v17 = [(HMDEventTriggerSession *)self eventTrigger];
    v18 = [v17 uuid];
    v19 = [(HMDEventTriggerSession *)self sendMessage:*MEMORY[0x277CD2330] payload:v12 device:v16 target:v18 responseHandler:v15];

    if (!v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot find the compatible resident to send the permission request, marking it as failure", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMDEventTriggerUserConfirmationSession *)v21 executionSession];
      [v24 userResponse:4 device:v14 completionHandler:0];

      v25 = [(HomeKitEventTriggerUserConfirmationSendLogEvent *)v13 analyticsData];
      [v25 setResultErrorCode:3007];
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot ask for permission without execution session identifier", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received error for user permission request: %@, marking user permission as denied", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [v11 executionSession];
    [v14 userResponse:4 device:*(a1 + 40) completionHandler:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)askForUserPermission:(id)a3
{
  v4 = a3;
  v5 = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDEventTriggerUserConfirmationSession_askForUserPermission___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@This device owns the trigger, asking the permission locally", &v18, 0xCu);
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
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@This device does not own the trigger, asking the permission with the device %@", &v18, 0x16u);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Confirmation session is missing associated execution session identifier", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDEventTriggerSession *)self eventTrigger];
  v4 = [v3 home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:5 remoteAccessRequired:0];

  v6 = [(HMDEventTriggerSession *)self msgDispatcher];
  v7 = *MEMORY[0x277CD2328];
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v16[0] = v8;
  v16[1] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v6 registerForMessage:v7 receiver:self policies:v9 selector:sel__handleUserPermissionRemoveDialogRequest_];

  v10 = [(HMDEventTriggerSession *)self msgDispatcher];
  v11 = *MEMORY[0x277CD2338];
  v12 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v15[0] = v12;
  v15[1] = v5;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v10 registerForMessage:v11 receiver:self policies:v13 selector:sel__handleUserPermissionRemoteResponse_];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDEventTriggerUserConfirmationSession *)self analyticsEvent];
  [v3 submitLogEvent:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMDEventTriggerUserConfirmationSession *)self analyticsSendEvents];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v11 submitLogEvent:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = HMDEventTriggerUserConfirmationSession;
  [(HMDEventTriggerSession *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDEventTriggerUserConfirmationSession)initWithSessionID:(id)a3 eventTrigger:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6 requestingDevice:(id)a7
{
  v13 = a7;
  v19.receiver = self;
  v19.super_class = HMDEventTriggerUserConfirmationSession;
  v14 = [(HMDEventTriggerSession *)&v19 initWithSessionID:a3 eventTrigger:a4 workQueue:a5 msgDispatcher:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestingDevice, a7);
    v16 = [MEMORY[0x277CBEB18] array];
    analyticsSendEvents = v15->_analyticsSendEvents;
    v15->_analyticsSendEvents = v16;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_198533 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_198533, &__block_literal_global_198534);
  }

  v3 = logCategory__hmf_once_v1_198535;

  return v3;
}

void __53__HMDEventTriggerUserConfirmationSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_198535;
  logCategory__hmf_once_v1_198535 = v1;
}

@end
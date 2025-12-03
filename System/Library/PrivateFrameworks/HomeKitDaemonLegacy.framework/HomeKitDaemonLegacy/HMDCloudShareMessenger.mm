@interface HMDCloudShareMessenger
+ (id)logCategory;
- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home;
- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher;
- (HMDCloudShareMessengerDelegate)delegate;
- (HMDHome)home;
- (id)logIdentifier;
- (void)_requestShareInvitationDataFromUser:(id)user retryCount:(unint64_t)count activity:(id)activity;
- (void)_sendShareInvitationData:(id)data toDestination:(id)destination retryCount:(unint64_t)count activity:(id)activity completion:(id)completion;
- (void)configure;
- (void)handleShareInviteMessage:(id)message;
- (void)handleShareRequestInviteMessage:(id)message;
- (void)handleShareRevokeMessage:(id)message;
- (void)notifyOfShareAccessRevocationForUser:(id)user;
- (void)requestShareInvitationDataFromUser:(id)user;
- (void)sendShareInvitationData:(id)data toDevice:(id)device completion:(id)completion;
- (void)sendShareInvitationData:(id)data toUser:(id)user minimumHomeKitVersion:(id)version requiredSupportedFeatures:(id)features completion:(id)completion;
- (void)unconfigure;
@end

@implementation HMDCloudShareMessenger

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDCloudShareMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)handleShareRevokeMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share revoke message: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
  [delegate messengerDidReceiveShareAccessRevocation:selfCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleShareRequestInviteMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v30 = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share share request invite message: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDCloudShareMessenger *)selfCopy home];
  if (home)
  {
    v12 = [messageCopy userForHome:home];
    if (v12)
    {
      remoteSourceDevice = [messageCopy remoteSourceDevice];
      if (remoteSourceDevice)
      {
        v14 = remoteSourceDevice;
        delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
        [delegate messenger:selfCopy didReceiveInvitationRequestFromUser:v12 device:v14];

        [messageCopy respondWithSuccess];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because requesting device cannot be determined", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        [messageCopy respondWithError:v28];

        v14 = 0;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because requesting user cannot be determined", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      [messageCopy respondWithError:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle share request invite message because home reference is nil", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [messageCopy respondWithError:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleShareInviteMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received share invite message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v11 = [messagePayload objectForKeyedSubscript:@"invitationData"];

  if (v11)
  {
    delegate = [(HMDCloudShareMessenger *)selfCopy delegate];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__HMDCloudShareMessenger_handleShareInviteMessage___block_invoke;
    v20[3] = &unk_27972B728;
    v20[4] = selfCopy;
    v21 = messageCopy;
    [delegate messenger:selfCopy didReceiveInvitationData:v11 completion:v20];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to find invitation data in share invite message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [messageCopy respondWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__HMDCloudShareMessenger_handleShareInviteMessage___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Delegate successfully accepted share invitation", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) respondWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delegate failed to accept share invitation: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (!v5)
    {
      v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    }

    [*(a1 + 40) respondWithError:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_requestShareInvitationDataFromUser:(id)user retryCount:(unint64_t)count activity:(id)activity
{
  v41 = *MEMORY[0x277D85DE8];
  userCopy = user;
  activityCopy = activity;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accountHandle = [(HMDRemoteMessage *)userCopy accountHandle];
  if (accountHandle)
  {
    v12 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v14 = [(HMDRemoteAccountMessageDestination *)v12 initWithTarget:messageTargetUUID handle:accountHandle multicast:0 deviceCapabilities:0];

    v15 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareRequestInviteMessage" qualityOfService:17 destination:v14 payload:0 type:0 timeout:1 secure:0.0];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke;
    v30 = &unk_2797244D8;
    selfCopy = self;
    v32 = activityCopy;
    countCopy = count;
    v16 = userCopy;
    v33 = v16;
    [(HMDRemoteMessage *)v15 setResponseHandler:&v27];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v20;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending request CKShare invite message %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [(HMDCloudShareMessenger *)selfCopy2 messageDispatcher:v27];
    [v21 sendMessage:v15];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = userCopy;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not request share invitation data from user with no account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_2;
  block[3] = &unk_27972EC00;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v7 = v6;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v14 = v7;
  v16 = v8;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v32 = v5;
      v33 = 2114;
      v34 = v7;
      v35 = 2114;
      v36 = v8;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send request CKShare invite message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = *(a1 + 64) == 3;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) identifier];
        v16 = [v15 shortDescription];
        v17 = *(a1 + 64);
        *buf = 138543874;
        v32 = v14;
        v33 = 2114;
        v34 = v16;
        v35 = 2048;
        v36 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send request share invitation message and reached retry limit %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 48) identifier];
        v20 = [v19 shortDescription];
        v21 = *(a1 + 64);
        *buf = 138544130;
        v32 = v18;
        v33 = 2114;
        v34 = v20;
        v35 = 2048;
        v36 = 0x4072C00000000000;
        v37 = 2048;
        v38 = v21;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Will retry sending request CKShare invite message in %fs (already retried %lu time(s))", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      objc_initWeak(buf, *(a1 + 40));
      v22 = [*(a1 + 40) shareInvitationRetryHandler];
      v23 = [*(a1 + 40) workQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_48;
      v27[3] = &unk_27972C550;
      objc_copyWeak(v30, buf);
      v24 = *(a1 + 56);
      v25 = *(a1 + 64);
      v28 = v24;
      v30[1] = v25;
      v29 = *(a1 + 48);
      (v22)[2](v22, v23, v27, 300.0);

      objc_destroyWeak(v30);
      objc_destroyWeak(buf);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __82__HMDCloudShareMessenger__requestShareInvitationDataFromUser_retryCount_activity___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isConfigured])
  {
    [WeakRetained _requestShareInvitationDataFromUser:*(a1 + 32) retryCount:*(a1 + 56) + 1 activity:*(a1 + 40)];
  }
}

- (void)_sendShareInvitationData:(id)data toDestination:(id)destination retryCount:(unint64_t)count activity:(id)activity completion:(id)completion
{
  v49[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  destinationCopy = destination;
  activityCopy = activity;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v48 = @"invitationData";
  v49[0] = dataCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v18 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareInviteMessage" qualityOfService:17 destination:destinationCopy payload:v17 type:0 timeout:1 secure:0.0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke;
  v36[3] = &unk_279727A88;
  v36[4] = self;
  v19 = activityCopy;
  v37 = v19;
  countCopy = count;
  v20 = completionCopy;
  v40 = v20;
  v21 = dataCopy;
  v38 = v21;
  v22 = destinationCopy;
  v39 = v22;
  [(HMDRemoteMessage *)v18 setResponseHandler:v36];
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v26 = v35 = v17;
    [v19 identifier];
    v27 = v33 = v23;
    [v27 shortDescription];
    v28 = v34 = v21;
    [(HMFObject *)v18 shortDescription];
    v30 = v29 = v20;
    *buf = 138543874;
    v43 = v26;
    v44 = 2114;
    v45 = v28;
    v46 = 2112;
    v47 = v30;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending CKShare invite message: %@", buf, 0x20u);

    v20 = v29;
    v21 = v34;

    v23 = v33;
    v17 = v35;
  }

  objc_autoreleasePoolPop(v23);
  messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
  [messageDispatcher sendMessage:v18];

  v32 = *MEMORY[0x277D85DE8];
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_2;
  block[3] = &unk_279731CD8;
  v13 = v3;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 64);
  v17 = *(a1 + 72);
  v16 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v40 = v5;
      v41 = 2114;
      v42 = v7;
      v43 = 2114;
      v44 = v8;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send CKShare invite message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = *(a1 + 80) == 3;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) identifier];
        v16 = [v15 shortDescription];
        v17 = *(a1 + 80);
        *buf = 138543874;
        v40 = v14;
        v41 = 2114;
        v42 = v16;
        v43 = 2048;
        v44 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to send share invitation message and reached retry limit %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v18 = *(a1 + 72);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, *(a1 + 32));
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 48) identifier];
        v24 = [v23 shortDescription];
        v25 = *(a1 + 80);
        *buf = 138544130;
        v40 = v22;
        v41 = 2114;
        v42 = v24;
        v43 = 2048;
        v44 = 0x4072C00000000000;
        v45 = 2048;
        v46 = v25;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Will retry sending CKShare invite message in %fs (already retried %lu time(s))", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      objc_initWeak(buf, *(a1 + 40));
      v26 = [*(a1 + 40) shareInvitationRetryHandler];
      v27 = [*(a1 + 40) workQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_45;
      v35[3] = &unk_2797244B0;
      objc_copyWeak(v38, buf);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      v38[1] = *(a1 + 80);
      v30 = *(a1 + 48);
      v31 = *(a1 + 72);
      *&v32 = v30;
      *(&v32 + 1) = v31;
      *&v33 = v28;
      *(&v33 + 1) = v29;
      v36 = v33;
      v37 = v32;
      (v26)[2](v26, v27, v35, 300.0);

      objc_destroyWeak(v38);
      objc_destroyWeak(buf);
    }

    goto LABEL_16;
  }

  v19 = *(a1 + 72);
  if (!v19)
  {
LABEL_16:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  v20 = *(v19 + 16);
  v21 = *MEMORY[0x277D85DE8];

  v20();
}

void __96__HMDCloudShareMessenger__sendShareInvitationData_toDestination_retryCount_activity_completion___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained isConfigured])
  {
    [WeakRetained _sendShareInvitationData:*(a1 + 32) toDestination:*(a1 + 40) retryCount:*(a1 + 72) + 1 activity:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)notifyOfShareAccessRevocationForUser:(id)user
{
  v25 = *MEMORY[0x277D85DE8];
  userCopy = user;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accountHandle = [(HMDRemoteMessage *)userCopy accountHandle];
  if (accountHandle)
  {
    v7 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v9 = [(HMDRemoteAccountMessageDestination *)v7 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

    v10 = [[HMDRemoteMessage alloc] initWithName:@"HMDCloudShareAccessRevokedMessage" qualityOfService:17 destination:v9 payload:0 type:3 timeout:0 secure:0.0];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending share access revoked message: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = userCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not notify of share access revocation for user with no account handle: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestShareInvitationDataFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send request share invitation"];
  [(HMDCloudShareMessenger *)self _requestShareInvitationDataFromUser:userCopy retryCount:0 activity:v6];
  __HMFActivityScopeLeave();
}

- (void)sendShareInvitationData:(id)data toDevice:(id)device completion:(id)completion
{
  dataCopy = data;
  deviceCopy = device;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
  v14 = [(HMDRemoteDeviceMessageDestination *)v12 initWithTarget:messageTargetUUID device:deviceCopy];

  v15 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send share invitation to device"];
  [(HMDCloudShareMessenger *)self _sendShareInvitationData:dataCopy toDestination:v14 retryCount:0 activity:v15 completion:completionCopy];
  __HMFActivityScopeLeave();
}

- (void)sendShareInvitationData:(id)data toUser:(id)user minimumHomeKitVersion:(id)version requiredSupportedFeatures:(id)features completion:(id)completion
{
  v40[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  userCopy = user;
  versionCopy = version;
  featuresCopy = features;
  completionCopy = completion;
  workQueue = [(HMDCloudShareMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v39 = @"kRequiredCapabilitiesKey";
  v37[0] = @"kHomedVersionKey";
  v17 = MEMORY[0x277CCABB0];
  versionString = [versionCopy versionString];
  [versionString doubleValue];
  v19 = [v17 numberWithDouble:?];
  v37[1] = @"kHomedSupportedFeaturesKey";
  v38[0] = v19;
  allObjects = [featuresCopy allObjects];
  v38[1] = allObjects;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40[0] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];

  accountHandle = [userCopy accountHandle];
  if (accountHandle)
  {
    v24 = [HMDRemoteAccountMessageDestination alloc];
    messageTargetUUID = [(HMDCloudShareMessenger *)self messageTargetUUID];
    v26 = [(HMDRemoteAccountMessageDestination *)v24 initWithTarget:messageTargetUUID handle:accountHandle multicast:0 deviceCapabilities:v22];

    *buf = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Send share invitation to user"];
    [(HMDCloudShareMessenger *)self _sendShareInvitationData:dataCopy toDestination:v26 retryCount:0 activity:*buf completion:completionCopy];
    __HMFActivityScopeLeave();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      v35 = 2112;
      v36 = userCopy;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not send share invitation data to user with no account handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = _Block_copy(completionCopy);
    if (v26)
    {
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*&v26->_multicast)(v26, 0, v31);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@De-registering from message dispatcher.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudShareMessenger *)selfCopy setConfigured:0];
  messageDispatcher = [(HMDCloudShareMessenger *)selfCopy messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDCloudShareMessenger *)self home];
  if (home)
  {
    v4 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v15[0] = v4;
    v15[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    messageDispatcher = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher registerForMessage:@"HMDCloudShareInviteMessage" receiver:self policies:v6 selector:sel_handleShareInviteMessage_];

    messageDispatcher2 = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher2 registerForMessage:@"HMDCloudShareRequestInviteMessage" receiver:self policies:v6 selector:sel_handleShareRequestInviteMessage_];

    messageDispatcher3 = [(HMDCloudShareMessenger *)self messageDispatcher];
    [messageDispatcher3 registerForMessage:@"HMDCloudShareAccessRevokedMessage" receiver:self policies:v6 selector:sel_handleShareRevokeMessage_];

    [(HMDCloudShareMessenger *)self setConfigured:1];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot configure cloud share messenger because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home messageDispatcher:(id)dispatcher
{
  dCopy = d;
  queueCopy = queue;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!queueCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!homeCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return __85__HMDCloudShareMessenger_initWithMessageTargetUUID_workQueue_home_messageDispatcher___block_invoke(v20);
  }

  v15 = dispatcherCopy;
  v21.receiver = self;
  v21.super_class = HMDCloudShareMessenger;
  v16 = [(HMDCloudShareMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v17->_messageTargetUUID, d);
    objc_storeWeak(&v17->_home, homeCopy);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    shareInvitationRetryHandler = v17->_shareInvitationRetryHandler;
    v17->_shareInvitationRetryHandler = &__block_literal_global_26995;
  }

  return v17;
}

void __85__HMDCloudShareMessenger_initWithMessageTargetUUID_workQueue_home_messageDispatcher___block_invoke(double a1, uint64_t a2, void *a3, void *a4)
{
  v5 = (a1 * 1000000000.0);
  v6 = a4;
  queue = a3;
  v7 = dispatch_time(0, v5);
  dispatch_after(v7, queue, v6);
}

- (HMDCloudShareMessenger)initWithMessageTargetUUID:(id)d workQueue:(id)queue home:(id)home
{
  homeCopy = home;
  queueCopy = queue;
  dCopy = d;
  v11 = +[HMDMessageDispatcher defaultDispatcher];
  v12 = [(HMDCloudShareMessenger *)self initWithMessageTargetUUID:dCopy workQueue:queueCopy home:homeCopy messageDispatcher:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_27009 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_27009, &__block_literal_global_51);
  }

  v3 = logCategory__hmf_once_v25_27010;

  return v3;
}

uint64_t __37__HMDCloudShareMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_27010;
  logCategory__hmf_once_v25_27010 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
@interface HMDRemoteLoginReceiverAuthentication
+ (id)logCategory;
- (HMDRemoteLoginReceiverAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate;
- (HMDRemoteLoginReceiverAuthenticationDelegate)delegate;
- (void)_authenticateAccount:(id)account targetedAccountType:(unint64_t)type;
- (void)_authenticateForAccountType:(unint64_t)type usingAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)_authenticateStoreWithAuthenticationResults:(id)results completionHandler:(id)handler;
- (void)_completedAuthenticationRequest:(id)request loggedInAccount:(id)account;
- (void)_handleAuthenticationResults:(id)results error:(id)error targetedAccountType:(unint64_t)type;
- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion;
@end

@implementation HMDRemoteLoginReceiverAuthentication

- (HMDRemoteLoginReceiverAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_completedAuthenticationRequest:(id)request loggedInAccount:(id)account
{
  requestCopy = request;
  accountCopy = account;
  delegate = [(HMDRemoteLoginReceiverAuthentication *)self delegate];
  if ([delegate conformsToProtocol:&unk_283FA6478])
  {
    v8 = delegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    v10 = [HMDRemoteLoginAuthenticationResponse alloc];
    sessionID = [(HMDRemoteLoginAuthentication *)self sessionID];
    v12 = [(HMRemoteLoginMessage *)v10 initWithSessionID:sessionID];

    if (accountCopy)
    {
      [(HMDRemoteLoginAuthenticationResponse *)v12 setLoggedInAccount:accountCopy];
    }

    [(HMRemoteLoginMessage *)v12 setError:requestCopy];
    [v9 didCompleteAuthentication:self response:v12];
  }
}

- (void)_handleAuthenticationResults:(id)results error:(id)error targetedAccountType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  if (resultsCopy)
  {
    objc_initWeak(location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__HMDRemoteLoginReceiverAuthentication__handleAuthenticationResults_error_targetedAccountType___block_invoke;
    v15[3] = &unk_27867E0A0;
    objc_copyWeak(&v16, location);
    [(HMDRemoteLoginReceiverAuthentication *)self _authenticateForAccountType:type usingAuthenticationResults:resultsCopy completionHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v13;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Authentication results is not valid, resulted in error %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDRemoteLoginReceiverAuthentication *)selfCopy _completedAuthenticationRequest:errorCopy loggedInAccount:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __95__HMDRemoteLoginReceiverAuthentication__handleAuthenticationResults_error_targetedAccountType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HMDRemoteLoginReceiverAuthentication__handleAuthenticationResults_error_targetedAccountType___block_invoke_2;
    block[3] = &unk_27868A010;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)_authenticateAccount:(id)account targetedAccountType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v7 = objc_alloc_init(MEMORY[0x277CF0178]);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = accountCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Authenticating the account with context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HMDRemoteLoginReceiverAuthentication__authenticateAccount_targetedAccountType___block_invoke;
  v13[3] = &unk_27867E078;
  objc_copyWeak(v14, buf);
  v14[1] = type;
  [v7 authenticateWithContext:accountCopy completion:v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __81__HMDRemoteLoginReceiverAuthentication__authenticateAccount_targetedAccountType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAuthenticationResults:v6 error:v5 targetedAccountType:*(a1 + 40)];
}

- (void)_authenticateStoreWithAuthenticationResults:(id)results completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v8 = [resultsCopy hmf_stringForKey:*MEMORY[0x277CEFFD8]];
  v9 = [resultsCopy hmf_stringForKey:*MEMORY[0x277CEFF78]];
  v10 = [resultsCopy hmf_stringForKey:*MEMORY[0x277CEFFC8]];
  v11 = [resultsCopy hmf_stringForKey:*MEMORY[0x277CEFFD0]];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138544130;
    v37 = v15;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Authenticating iTunes account with username %@, altDSID: %@, pet: %@", buf, 0x2Au);
  }

  v29 = v9;

  objc_autoreleasePoolPop(v12);
  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    [v11 length];
    v20 = HMFBooleanToString();
    *buf = 138543618;
    v37 = v19;
    v38 = 2112;
    v39 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Password: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = objc_alloc_init(MEMORY[0x277CEE3D8]);
  [v21 setAuthenticationType:1];
  v22 = [objc_alloc(MEMORY[0x277CEE3E8]) initWithAuthenticationResults:resultsCopy options:v21];
  performAuthentication = [v22 performAuthentication];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke;
  v33[3] = &unk_278689358;
  v33[4] = v17;
  v24 = v8;
  v34 = v24;
  v25 = handlerCopy;
  v35 = v25;
  [performAuthentication addErrorBlock:v33];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_40;
  v30[3] = &unk_27867E050;
  v30[4] = v17;
  v31 = v24;
  v32 = v25;
  v26 = v25;
  v27 = v24;
  [performAuthentication addSuccessBlock:v30];

  v28 = *MEMORY[0x277D85DE8];
}

void __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@iTunes authentication failed. (%@). Error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(v9 + 16))(v9, v10, 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_2;
  v6[3] = &unk_278689AB8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@iTunes successfully authenticated. Making active. (%@).", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 48) account];
  [v7 ams_setActive:1 forMediaType:0];

  v8 = [*(a1 + 48) account];
  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wasOtherAccount"];

  v9 = [MEMORY[0x277CB8F48] ams_sharedAccountStoreForMediaType:0];
  v10 = [*(a1 + 48) account];
  v11 = [v9 ams_saveAccount:v10];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_42;
  v16[3] = &unk_278689F98;
  v16[4] = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v11 addSuccessBlock:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_44;
  v13[3] = &unk_278689358;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  [v11 addErrorBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_42(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v7 = [*(a1 + 40) account];
    v8 = [v6 stringForObjectValue:v7];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Succeeded in save of account: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) account];
  (*(v9 + 16))(v9, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void __102__HMDRemoteLoginReceiverAuthentication__authenticateStoreWithAuthenticationResults_completionHandler___block_invoke_44(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v9 = [*(a1 + 40) account];
    v10 = [v8 stringForObjectValue:v9];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to save account %@: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 48);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(v11 + 16))(v11, v12, 0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateForAccountType:(unint64_t)type usingAuthenticationResults:(id)results completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMDRemoteLoginAccountTypeAsString(type);
    v22 = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Authenticating account type %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (type)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMDRemoteLoginAccountTypeAsString(type);
      v22 = 138543874;
      v23 = v18;
      v24 = 2080;
      v25 = "[HMDRemoteLoginReceiverAuthentication _authenticateForAccountType:usingAuthenticationResults:completionHandler:]";
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@%s: Unknown account services: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    handlerCopy[2](handlerCopy, v20, 0);
  }

  else
  {
    [(HMDRemoteLoginReceiverAuthentication *)selfCopy _authenticateStoreWithAuthenticationResults:resultsCopy completionHandler:handlerCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = +[HMDAppleAccountManager sharedManager];
  accountStore = [v8 accountStore];

  if (accountStore)
  {
    v10 = +[HMDAppleAccountManager sharedManager];
    accountStore2 = [v10 accountStore];
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v14 = [accountStore2 accountTypeWithAccountTypeIdentifier:identifier];

    [accountCopy setAccountType:v14];
    [accountCopy _setObjectID:0];
    [accountCopy markAllPropertiesDirty];
    v15 = +[HMDAppleAccountManager sharedManager];
    accountStore3 = [v15 accountStore];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HMDRemoteLoginReceiverAuthentication__saveRemoteVerifiedAccount_completion___block_invoke;
    v17[3] = &unk_278682000;
    v17[4] = self;
    v19 = completionCopy;
    v18 = accountCopy;
    [accountStore3 saveVerifiedAccount:v18 withCompletionHandler:v17];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __78__HMDRemoteLoginReceiverAuthentication__saveRemoteVerifiedAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Save of verified account successful; %@.", &v18, 0x16u);
    }
  }

  else
  {
    v12 = [v5 code];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v9 = v13;
    if (v12 == 5)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 40);
        v18 = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Account already existed %@.", &v18, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Save of account failed. This will stop further attempts as this should not fail. Error: %@", &v18, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteLoginReceiverAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDRemoteLoginReceiverAuthentication;
  v13 = [(HMDRemoteLoginAuthentication *)&v16 initWithSessionID:d remoteDevice:device workQueue:queue remoteMessageSender:sender];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_189472 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_189472, &__block_literal_global_189473);
  }

  v3 = logCategory__hmf_once_v1_189474;

  return v3;
}

void __51__HMDRemoteLoginReceiverAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_189474;
  logCategory__hmf_once_v1_189474 = v1;
}

@end
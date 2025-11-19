@interface HMDRemoteLoginReceiver
+ (id)logCategory;
- (void)_auditLoggedInAccountFor:(id)a3;
- (void)_authenticate:(id)a3 message:(id)a4;
- (void)_callCompletion:(id)a3;
- (void)_handleACAccountDidChangeNotification:(id)a3;
- (void)_handleCompanionAuthenticationRequest:(id)a3;
- (void)_handleProxyAuthenticationRequest:(id)a3;
- (void)_handleProxyDeviceRequest:(id)a3;
- (void)_handleSignoutRequest:(id)a3;
- (void)auditLoggedInAccount;
- (void)auditLoggedInAccountFor:(id)a3;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)didCompleteAuthentication:(id)a3 response:(id)a4;
- (void)registerForMessages;
- (void)registerForNotifications;
@end

@implementation HMDRemoteLoginReceiver

- (void)didCompleteAuthentication:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRemoteLoginBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDRemoteLoginReceiver_didCompleteAuthentication_response___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__HMDRemoteLoginReceiver_didCompleteAuthentication_response___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loginSession];
  v3 = [v2 remoteAuthentication];
  v4 = *(a1 + 40);

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@ has completed with response %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _callCompletion:*(a1 + 48)];
  }

  else
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received completion from unknown remote authentication with error %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleACAccountDidChangeNotification:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277CB8A60]];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x277CB8C90]];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v27 = v4;
    v12 = v28 = v6;
    [(HMDRemoteLoginBase *)v10 remoteLoginHandler];
    v14 = v13 = v8;
    v15 = [v14 loggedInAccount];
    v16 = [(HMDRemoteLoginBase *)v10 remoteLoginHandler];
    v17 = [v16 loggedInAccount];
    [v17 identifier];
    v19 = v18 = v9;
    *buf = 138544386;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v28;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v19;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Got account change notification type:%@ identifier:%@ current:%@ currentIdentifier:%@", buf, 0x34u);

    v9 = v18;
    v8 = v13;

    v4 = v27;
    v6 = v28;
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    if ([v8 isEqualToString:*MEMORY[0x277CB8D58]])
    {
      v20 = [(HMDRemoteLoginBase *)v10 remoteLoginHandler];
      v21 = [v20 loggedInAccount];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v10;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Performing account audit on detecting iTunes account change with active account present.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [(HMDRemoteLoginReceiver *)v23 auditLoggedInAccount];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_callCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Login session has ended with response %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDRemoteLoginReceiver *)v6 loginSession];
  v10 = [v9 completion];

  if (v10)
  {
    v11 = [(HMDRemoteLoginReceiver *)v6 loginSession];
    v12 = [v11 completion];
    (v12)[2](v12, v4);
  }

  [(HMDRemoteLoginReceiver *)v6 setLoginSession:0];
  v13 = [v4 error];

  if (!v13)
  {
    v14 = [v4 loggedInAccount];
    [(HMDRemoteLoginReceiver *)v6 _auditLoggedInAccountFor:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_auditLoggedInAccountFor:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginBase *)self remoteLoginHandler];
  v6 = [v5 loggedInAccount];
  v7 = [v6 aa_altDSID];
  v8 = [v4 aa_altDSID];
  if (HMFEqualObjects())
  {
    v9 = [v5 loggedInAccount];
    v10 = [v9 username];
    v11 = [v4 username];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v5 loggedInAccount];
        v24 = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@homed knowledge of logged in iTunes account %@ matches with account store: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v5 loggedInAccount];
    v24 = 138543874;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@homed knowledge of logged in iTunes account %@ is different than in account store: %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  [v5 _updateLoggedInAccount:v4];
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)auditLoggedInAccountFor:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteLoginBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDRemoteLoginReceiver_auditLoggedInAccountFor___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)auditLoggedInAccount
{
  v3 = [(HMDRemoteLoginBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDRemoteLoginReceiver_auditLoggedInAccount__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__HMDRemoteLoginReceiver_auditLoggedInAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 isCurrentAccessory];

  if (v3)
  {
    v4 = +[HMDRemoteLoginUtilities primaryITunesAccount];
    [*(a1 + 32) _auditLoggedInAccountFor:v4];
  }
}

- (void)_handleSignoutRequest:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!v5)
  {
    v14 = [v4 messagePayload];
    v12 = [HMDRemoteLoginSignoutRequest objWithDict:v14];

    if (!v12)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Signout request is missing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [v4 responseHandler];

      if (!v29)
      {
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v13 = [v4 responseHandler];
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v13)[2](v13, v15, 0);
      goto LABEL_34;
    }

    v13 = [MEMORY[0x277CB8F48] ams_sharedAccountStoreForMediaType:0];
    v15 = [v13 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8D58]];
    if (!v15)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine store account type for iTunesStore", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v34 = [v4 responseHandler];

      if (v34)
      {
        v54 = [v4 responseHandler];
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        (v54)[2](v54, v35, 0);
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_34;
    }

    v53 = [v13 accountsWithAccountType:v15];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__252485;
    v73 = __Block_byref_object_dispose__252486;
    v74 = 0;
    v16 = [(HMDRemoteLoginBase *)self remoteLoginHandler];
    v17 = [v16 loggedInAccount];
    v52 = [v17 username];

    if (v52)
    {
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke;
      v62[3] = &unk_278685860;
      v18 = v52;
      v63 = v18;
      v64 = buf;
      [v53 hmf_enumerateWithAutoreleasePoolUsingBlock:v62];
      v19 = *(*&buf[8] + 40) == 0;
      context = objc_autoreleasePoolPush();
      v20 = self;
      if (v19)
      {
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *v65 = 138543618;
          v66 = v44;
          v67 = 2112;
          v68 = v18;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine store account from request username %@", v65, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v45 = [v4 responseHandler];

        if (v45)
        {
          v46 = [v4 responseHandler];
          v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          (v46)[2](v46, v47, 0);
        }
      }

      else
      {
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          v49 = [MEMORY[0x277D0F8D8] defaultFormatter];
          v22 = [v49 stringForObjectValue:*(*&buf[8] + 40)];
          v23 = [MEMORY[0x277D0F8D8] defaultFormatter];
          v24 = [v23 stringForObjectValue:v13];
          *v65 = 138543874;
          v66 = v50;
          v67 = 2112;
          v68 = v22;
          v69 = 2112;
          v70 = v24;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Will signout of account %@ using store %@", v65, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        objc_initWeak(v65, v20);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_61;
        block[3] = &unk_27868A3C0;
        v60 = buf;
        v56 = 0;
        v57 = v13;
        v58 = v20;
        objc_copyWeak(&v61, v65);
        v59 = v4;
        dispatch_async(MEMORY[0x277D85CD0], block);

        objc_destroyWeak(&v61);
        objc_destroyWeak(v65);
      }

      v41 = v63;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *v65 = 138543618;
        v66 = v39;
        v67 = 2112;
        v68 = 0;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot sign out of an account with username: %@", v65, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v40 = [v4 responseHandler];

      if (!v40)
      {
        goto LABEL_32;
      }

      v41 = [v4 responseHandler];
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v41)[2](v41, v42, 0);
    }

LABEL_32:
    _Block_object_dispose(buf, 8);

LABEL_34:
    goto LABEL_35;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDRemoteLoginReceiver *)v7 loginSession];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 responseHandler];

  if (v11)
  {
    v12 = [v4 responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    v12[2](v12, v13, 0);
LABEL_35:

    goto LABEL_36;
  }

LABEL_37:

  v48 = *MEMORY[0x277D85DE8];
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 username];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_61(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) ams_setActive:0 forMediaType:*(a1 + 32)];
  v2 = [*(a1 + 40) ams_saveAccount:*(*(*(a1 + 64) + 8) + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2;
  v8[3] = &unk_27868A410;
  v3 = *(a1 + 64);
  v8[4] = *(a1 + 48);
  v10 = v3;
  objc_copyWeak(&v11, (a1 + 72));
  v9 = *(a1 + 56);
  [v2 addSuccessBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2_63;
  v6[3] = &unk_278685888;
  v6[4] = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = v5;
  v7 = v5;
  [v2 addErrorBlock:v6];

  objc_destroyWeak(&v11);
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v7 = [v6 stringForObjectValue:*(*(*(a1 + 48) + 8) + 40)];
    *buf = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Succeeded in save of account: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_62;
  v10[3] = &unk_27868A750;
  v10[4] = WeakRetained;
  v11 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_2_63(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v9 = [v8 stringForObjectValue:*(*(*(a1 + 48) + 8) + 40)];
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to save account %@: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 40) responseHandler];

  if (v10)
  {
    v11 = [*(a1 + 40) responseHandler];
    (v11)[2](v11, v3, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __48__HMDRemoteLoginReceiver__handleSignoutRequest___block_invoke_62(uint64_t a1)
{
  [*(a1 + 32) auditLoggedInAccountFor:0];
  v2 = [*(a1 + 40) responseHandler];

  if (v2)
  {
    v3 = [*(a1 + 40) responseHandler];
    (*(v3 + 2))(v3, 0, 0);
  }
}

- (void)_authenticate:(id)a3 message:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [HMDRemoteLoginReceiverSession alloc];
  v9 = [v6 sessionID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__HMDRemoteLoginReceiver__authenticate_message___block_invoke;
  v20[3] = &unk_278685838;
  v10 = v7;
  v21 = v10;
  v11 = [(HMDRemoteLoginReceiverSession *)v8 initWithSessionID:v9 remoteAuthentication:v6 completion:v20];
  [(HMDRemoteLoginReceiver *)self setLoginSession:v11];

  v12 = [(HMDRemoteLoginReceiver *)self loginSession];
  v13 = [v12 remoteAuthentication];
  [v13 authenticate];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v6 sessionID];
    *buf = 138543618;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Started authentication for session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *MEMORY[0x277D85DE8];
}

void __48__HMDRemoteLoginReceiver__authenticate_message___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    v5 = [v6 messagePayload];
    (v4)[2](v4, 0, v5);
  }
}

- (void)_handleProxyAuthenticationRequest:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!v5)
  {
    v14 = [v4 messagePayload];
    v12 = [HMDRemoteLoginProxyAuthenticationRequest objWithDict:v14];

    if (v12)
    {
      v15 = [v4 remoteSourceID];
      v16 = [HMDDevice deviceWithDestination:v15];
      v17 = [v12 sessionID];
      v18 = [(HMDRemoteLoginBase *)self accessory];
      v19 = [v18 home];
      v20 = [v19 homeManager];
      v21 = [v20 messageDispatcher];

      v22 = [HMDRemoteLoginMessageSender alloc];
      v23 = [(HMDRemoteLoginBase *)self uuid];
      v24 = [(HMDRemoteLoginBase *)self workQueue];
      v25 = [(HMDRemoteLoginMessageSender *)v22 initWithTarget:v23 accessory:0 device:v16 workQueue:v24 messageDispatcher:v21];

      v26 = [HMDRemoteLoginReceiverProxyAuthentication alloc];
      v27 = [(HMDRemoteLoginBase *)self workQueue];
      v28 = [(HMDRemoteLoginReceiverProxyAuthentication *)v26 initWithSessionID:v17 remoteDevice:v16 workQueue:v27 remoteMessageSender:v25 delegate:self request:v12];

      [(HMDRemoteLoginReceiver *)self _authenticate:v28 message:v4];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Proxy Authentication request is missing", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v12 = [v4 responseHandler];

      if (v12)
      {
        v33 = [v4 responseHandler];
        v34 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (v33)[2](v33, v34, 0);

        v12 = 0;
      }
    }

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDRemoteLoginReceiver *)v7 loginSession];
    v36 = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 responseHandler];

  if (v11)
  {
    v12 = [v4 responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (v12)[2](v12, v13, 0);

LABEL_12:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_handleProxyDeviceRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!v5)
  {
    v14 = [v4 messagePayload];
    v12 = [HMDRemoteLoginProxyDeviceRequest objWithDict:v14];

    if (!v12)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Proxy device request is missing", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v12 = [v4 responseHandler];

      if (v12)
      {
        v26 = [v4 responseHandler];
        v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (v26)[2](v26, v27, 0);

        v12 = 0;
      }

      goto LABEL_11;
    }

    v13 = [MEMORY[0x277CF0218] currentDevice];
    [v13 setLinkType:3];
    v15 = [HMDRemoteLoginProxyDeviceResponse alloc];
    v16 = [v12 sessionID];
    v17 = [(HMRemoteLoginMessage *)v15 initWithSessionID:v16];

    [(HMDRemoteLoginProxyDeviceResponse *)v17 setProxyDevice:v13];
    v18 = [v4 responseHandler];

    if (v18)
    {
      v19 = [v4 responseHandler];
      v20 = [(HMDRemoteLoginProxyDeviceResponse *)v17 messagePayload];
      (v19)[2](v19, 0, v20);
    }

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDRemoteLoginReceiver *)v7 loginSession];
    v28 = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 responseHandler];

  if (v11)
  {
    v12 = [v4 responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (v12)[2](v12, v13, 0);
    goto LABEL_10;
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompanionAuthenticationRequest:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginReceiver *)self loginSession];

  if (!v5)
  {
    v14 = [v4 messagePayload];
    v12 = [HMDRemoteLoginCompanionAuthenticationRequest objWithDict:v14];

    if (v12)
    {
      v15 = [v4 remoteSourceID];
      v16 = [HMDDevice deviceWithDestination:v15];
      v17 = [v12 sessionID];
      v18 = [(HMDRemoteLoginBase *)self accessory];
      v19 = [v18 home];
      v20 = [v19 homeManager];
      v21 = [v20 messageDispatcher];

      v22 = [HMDRemoteLoginMessageSender alloc];
      v23 = [(HMDRemoteLoginBase *)self uuid];
      v24 = [(HMDRemoteLoginBase *)self workQueue];
      v25 = [(HMDRemoteLoginMessageSender *)v22 initWithTarget:v23 accessory:0 device:v16 workQueue:v24 messageDispatcher:v21];

      v26 = [HMDRemoteLoginReceiverCompanionAuthentication alloc];
      v27 = [(HMDRemoteLoginBase *)self workQueue];
      v28 = [(HMDRemoteLoginReceiverCompanionAuthentication *)v26 initWithSessionID:v17 remoteDevice:v16 workQueue:v27 remoteMessageSender:v25 delegate:self request:v12];

      [(HMDRemoteLoginReceiver *)self _authenticate:v28 message:v4];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Companion Authentication request is missing", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v12 = [v4 responseHandler];

      if (v12)
      {
        v33 = [v4 responseHandler];
        v34 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        (v33)[2](v33, v34, 0);

        v12 = 0;
      }
    }

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDRemoteLoginReceiver *)v7 loginSession];
    v36 = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Login session %@ is still in progress", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 responseHandler];

  if (v11)
  {
    v12 = [v4 responseHandler];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    (v12)[2](v12, v13, 0);

LABEL_12:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotifications
{
  v3 = [(HMDRemoteLoginBase *)self accessory];
  v4 = [v3 isCurrentAccessory];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__handleACAccountDidChangeNotification_ name:*MEMORY[0x277CB8DB8] object:0];
  }
}

- (void)registerForMessages
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginBase *)self accessory];
  v4 = [v3 home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v7 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v8 = +[HMDRemoteLoginCompanionAuthenticationRequest messageName];
  v23[0] = v5;
  v23[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v7 registerForMessage:v8 receiver:self policies:v9 selector:sel__handleCompanionAuthenticationRequest_];

  v10 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v11 = +[HMDRemoteLoginProxyDeviceRequest messageName];
  v22[0] = v5;
  v22[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v10 registerForMessage:v11 receiver:self policies:v12 selector:sel__handleProxyDeviceRequest_];

  v13 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v14 = +[HMDRemoteLoginProxyAuthenticationRequest messageName];
  v21[0] = v5;
  v21[1] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [v13 registerForMessage:v14 receiver:self policies:v15 selector:sel__handleProxyAuthenticationRequest_];

  v16 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v17 = +[HMDRemoteLoginSignoutRequest messageName];
  v20[0] = v5;
  v20[1] = v6;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v16 registerForMessage:v17 receiver:self policies:v18 selector:sel__handleSignoutRequest_];

  [(HMDRemoteLoginReceiver *)self registerForNotifications];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v4.receiver = self;
  v4.super_class = HMDRemoteLoginReceiver;
  [(HMDRemoteLoginBase *)&v4 configureWithWorkQueue:a3 messageDispatcher:a4];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_252527 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_252527, &__block_literal_global_252528);
  }

  v3 = logCategory__hmf_once_v1_252529;

  return v3;
}

void __37__HMDRemoteLoginReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_252529;
  logCategory__hmf_once_v1_252529 = v1;
}

@end
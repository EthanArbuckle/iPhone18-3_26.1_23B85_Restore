@interface HMDCloudKitReachabilitySource
- (int64_t)areCloudKitServersReachableWithError:(id *)error;
@end

@implementation HMDCloudKitReachabilitySource

- (int64_t)areCloudKitServersReachableWithError:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CBC220]);
  v5 = [v4 initWithContainerIdentifier:@"com.apple.homekit.config" environment:cloudKitContainerEnvironment];
  v6 = objc_opt_new();
  [v6 setUseZoneWidePCS:1];
  v7 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5 options:v6];
  v8 = dispatch_group_create();
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Waiting to check whether CloudKit is reachable or not... Start", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_group_enter(v8);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__82538;
  v69 = __Block_byref_object_dispose__82539;
  v70 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __70__HMDCloudKitReachabilitySource_areCloudKitServersReachableWithError___block_invoke;
  v44[3] = &unk_278676778;
  p_buf = &buf;
  v47 = &v58;
  v48 = &v54;
  v49 = &v50;
  v12 = v8;
  v45 = v12;
  [v7 accountInfoWithCompletionHandler:v44];
  v13 = dispatch_time(0, 60000000000);
  v14 = dispatch_group_wait(v12, v13) == 0;
  v15 = objc_autoreleasePoolPush();
  if (!v14)
  {
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v62 = 138543362;
      v63 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Fetching the CK account info operation timed out.", v62, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *v62 = 138543362;
    v63 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Waiting to check whether CloudKit is reachable or not... End", v62, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v23 = v59[3];
  if (!v23 || *(*(&buf + 1) + 40))
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = *(*(&buf + 1) + 40);
      *v62 = 138543618;
      v63 = v26;
      v64 = 2112;
      v65 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@CK account fetch info resulted into error : %@", v62, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    if (error)
    {
      v18 = 0;
      *error = *(*(&buf + 1) + 40);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = 1;
  if (v23 <= 2)
  {
    if (v23 != 1)
    {
      if (v23 == 2)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *v62 = 138543362;
          v63 = v30;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@CK account status is restricted", v62, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v18 = 2;
      }

      goto LABEL_8;
    }

    if (v55[3])
    {
      v18 = 1;
      goto LABEL_8;
    }

    v38 = objc_autoreleasePoolPush();
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *v62 = 138543362;
      v63 = v41;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@CK account status available but need to verify terms", v62, 0xCu);
    }

LABEL_39:

    objc_autoreleasePoolPop(v38);
    v18 = 5;
    goto LABEL_8;
  }

  if (v23 == 3)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *v62 = 138543362;
      v63 = v37;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@CK account status is not signed in", v62, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v18 = 3;
  }

  else
  {
    if (v23 != 4)
    {
      goto LABEL_8;
    }

    if ((v55[3] & 1) == 0)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *v62 = 138543362;
        v63 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@CK account status is invalid credentials", v62, 0xCu);
      }

      goto LABEL_39;
    }

    v31 = *(v51 + 24);
    v32 = objc_autoreleasePoolPush();
    if (v31)
    {
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *v62 = 138543362;
        v63 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@CK account status is need to verify terms", v62, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v18 = 6;
    }

    else
    {
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *v62 = 138543362;
        v63 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@CK account status is temporarily unavailable", v62, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v18 = 4;
    }
  }

LABEL_8:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&buf, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __70__HMDCloudKitReachabilitySource_areCloudKitServersReachableWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@CK account fetch info completed with : %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  *(*(*(a1 + 48) + 8) + 24) = [v5 accountStatus];
  *(*(*(a1 + 56) + 8) + 24) = [v5 hasValidCredentials];
  *(*(*(a1 + 64) + 8) + 24) = [v5 needsToVerifyTerms];
  dispatch_group_leave(*(a1 + 32));

  v13 = *MEMORY[0x277D85DE8];
}

@end
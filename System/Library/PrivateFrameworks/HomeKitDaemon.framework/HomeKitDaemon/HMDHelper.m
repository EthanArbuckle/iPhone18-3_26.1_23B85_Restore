@interface HMDHelper
- (HMDHelper)initWithExternalProtocol:(id)a3;
- (id)hashedRouteIDForIdentifier:(id)a3;
@end

@implementation HMDHelper

- (id)hashedRouteIDForIdentifier:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDHelper *)self externalProtocol];
    v6 = [v5 createAFSecurityConnection];

    if (!v6)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        LODWORD(v39) = 138543362;
        *(&v39 + 4) = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot set up a connection to assistantServices framework to hash the routeID", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
      goto LABEL_15;
    }

    v7 = dispatch_group_create();
    *&v39 = 0;
    *(&v39 + 1) = &v39;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__242489;
    v42 = __Block_byref_object_dispose__242490;
    v43 = 0;
    dispatch_group_enter(v7);
    v8 = [v4 dataUsingEncoding:4];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__HMDHelper_hashedRouteIDForIdentifier___block_invoke;
    v31[3] = &unk_2786842D8;
    v34 = &v39;
    v32 = v6;
    v9 = v7;
    v33 = v9;
    [v32 processData:v8 usingProcedure:1 completion:v31];
    v10 = dispatch_time(0, 15000000000);
    if (dispatch_group_wait(v9, v10))
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v13;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Timed out encoding routeID %@", buf, 0x16u);
      }
    }

    else
    {
      v23 = *(*(&v39 + 1) + 40);
      if (v23)
      {
        v14 = [v23 base64EncodedStringWithOptions:0];
        v24 = objc_autoreleasePoolPush();
        if (v14)
        {
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v26;
            v37 = 2112;
            v38 = v14;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Base64-converted hashedRouteUID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
          goto LABEL_8;
        }

        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = *(*(&v39 + 1) + 40);
          *buf = 138543618;
          v36 = v29;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to base64 encode hashedRouteUIDData %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
LABEL_7:
        v14 = 0;
LABEL_8:

        _Block_object_dispose(&v39, 8);
LABEL_15:

        goto LABEL_16;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v27;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode routeID %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_7;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    LODWORD(v39) = 138543362;
    *(&v39 + 4) = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@nil routeID - nothing to hash", &v39, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

void __40__HMDHelper_hashedRouteIDForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Hashed routeUID as %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_group_leave(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDHelper)initWithExternalProtocol:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHelper;
  v6 = [(HMDHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalProtocol, a3);
  }

  return v7;
}

@end
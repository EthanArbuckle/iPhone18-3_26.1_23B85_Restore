@interface HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice
@end

@implementation HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice

void ____HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v10;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine rapport identity for current device with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 56);
    v12 = v6;
    if (v11)
    {
      (*(v11 + 16))(v11, v6);
      v12 = v6;
    }

    goto LABEL_31;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v14)
  {

LABEL_25:
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 40);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Rapport did not return the self identity", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v16 = 0;
    goto LABEL_28;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v41;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v41 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v40 + 1) + 8 * i);
      if ([v19 type] == 1)
      {
        v20 = v19;

        v16 = v20;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
  }

  while (v15);

  if (!v16)
  {
    goto LABEL_25;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 40);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v24;
    v49 = 2112;
    v50 = v16;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Found current device RPIdentity: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v25 = [*(a1 + 48) rpIdentity];
  if (!v25 || (v26 = v25, [*(a1 + 48) rpIdentity], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToRPIdentity:", v16), v27, v26, (v28 & 1) == 0))
  {
    v29 = [HMDRPIdentity identityWithRPIdentity:v16];
    if (v29)
    {
      [*(a1 + 48) setRpIdentity:v29];
    }
  }

  v30 = [*(a1 + 40) notificationCenter];
  v31 = *(a1 + 40);
  v44 = @"deviceIRK";
  v32 = [v16 deviceIRKData];
  v45 = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  [v30 postNotificationName:@"HMDAppleAccountManagerFetchedCurrentDeviceIRK" object:v31 userInfo:v33];

  v12 = 0;
LABEL_28:
  v38 = *(a1 + 56);
  if (v38)
  {
    (*(v38 + 16))(v38, v12);
  }

LABEL_31:
  v39 = *MEMORY[0x277D85DE8];
}

@end
@interface HMFMessage(HMDUser)
- (id)matchingRemoteIdentityUserForHome:()HMDUser;
- (id)userForHome:()HMDUser;
@end

@implementation HMFMessage(HMDUser)

- (id)userForHome:()HMDUser
{
  v4 = a3;
  if (v4)
  {
    if ([a1 isRemote] && objc_msgSend(a1, "remoteRestriction") != 4)
    {
      v5 = [a1 matchingRemoteIdentityUserForHome:v4];
    }

    else
    {
      v5 = [v4 currentUser];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)matchingRemoteIdentityUserForHome:()HMDUser
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v15 identifier];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home as home was nil for message %@", &v21, 0x16u);

LABEL_16:
    }

LABEL_17:

    objc_autoreleasePoolPop(v14);
    v7 = 0;
    goto LABEL_18;
  }

  if (([a1 isRemote] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home because message is not remote: %@", &v21, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v5 = [a1 remoteSenderContext];
  v6 = [v5 mergeID];

  if (!v6 || ([v4 userWithMergeID:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [a1 remoteSenderContext];
    v9 = [v8 pairingIdentityIdentifier];

    if (!v9 || ([v4 userWithPairingIdentityIdentifier:v9], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home for message %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v7 = 0;
    }
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
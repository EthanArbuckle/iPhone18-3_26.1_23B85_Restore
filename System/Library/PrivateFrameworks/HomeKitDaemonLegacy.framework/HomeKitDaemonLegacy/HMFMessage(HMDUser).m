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
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v16 identifier];
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home as home was nil for message %@", &v22, 0x16u);

LABEL_19:
    }

LABEL_20:

    objc_autoreleasePoolPop(v15);
    v7 = 0;
    goto LABEL_21;
  }

  if (([a1 isRemote] & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home because message is not remote: %@", &v22, 0x16u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v5 = [a1 remoteSenderContext];
  v6 = [v5 mergeID];

  if (!v6 || ([v4 userWithMergeID:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [a1 remoteSenderContext];
    v9 = [v8 pairingIdentityIdentifier];

    if (!v9 || ([v4 userWithPairingIdentityIdentifier:v9], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [a1 remoteUserPairingIdentity];
      if (!v10 || ([v4 userWithPairingIdentity:v10], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = objc_autoreleasePoolPush();
        v12 = a1;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v14;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home for message %@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        v7 = 0;
      }
    }
  }

LABEL_21:
  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
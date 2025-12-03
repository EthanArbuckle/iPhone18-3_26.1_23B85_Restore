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
    if ([self isRemote] && objc_msgSend(self, "remoteRestriction") != 4)
    {
      currentUser = [self matchingRemoteIdentityUserForHome:v4];
    }

    else
    {
      currentUser = [v4 currentUser];
    }

    v6 = currentUser;
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
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      identifier = [selfCopy2 identifier];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home as home was nil for message %@", &v21, 0x16u);

LABEL_16:
    }

LABEL_17:

    objc_autoreleasePoolPop(v14);
    v7 = 0;
    goto LABEL_18;
  }

  if (([self isRemote] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = selfCopy2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home because message is not remote: %@", &v21, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  remoteSenderContext = [self remoteSenderContext];
  mergeID = [remoteSenderContext mergeID];

  if (!mergeID || ([v4 userWithMergeID:mergeID], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    remoteSenderContext2 = [self remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v4 userWithPairingIdentityIdentifier:pairingIdentityIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = selfCopy3;
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
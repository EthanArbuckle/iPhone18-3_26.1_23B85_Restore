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
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      identifier = [selfCopy2 identifier];
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = identifier;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home as home was nil for message %@", &v22, 0x16u);

LABEL_19:
    }

LABEL_20:

    objc_autoreleasePoolPop(v15);
    v7 = 0;
    goto LABEL_21;
  }

  if (([self isRemote] & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = selfCopy2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to find matching identity user for home because message is not remote: %@", &v22, 0x16u);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  remoteSenderContext = [self remoteSenderContext];
  mergeID = [remoteSenderContext mergeID];

  if (!mergeID || ([v4 userWithMergeID:mergeID], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    remoteSenderContext2 = [self remoteSenderContext];
    pairingIdentityIdentifier = [remoteSenderContext2 pairingIdentityIdentifier];

    if (!pairingIdentityIdentifier || ([v4 userWithPairingIdentityIdentifier:pairingIdentityIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      remoteUserPairingIdentity = [self remoteUserPairingIdentity];
      if (!remoteUserPairingIdentity || ([v4 userWithPairingIdentity:remoteUserPairingIdentity], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v14;
          v24 = 2112;
          v25 = selfCopy3;
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
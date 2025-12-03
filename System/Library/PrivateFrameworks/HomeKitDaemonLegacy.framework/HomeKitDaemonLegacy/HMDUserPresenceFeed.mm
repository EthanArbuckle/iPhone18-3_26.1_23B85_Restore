@interface HMDUserPresenceFeed
- (BOOL)isEqual:(id)equal;
- (HMDUser)user;
- (HMDUserPresenceFeed)initWithUser:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegion:(id)region reason:(id)reason;
- (id)description;
@end

@implementation HMDUserPresenceFeed

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    user = [(HMDUserPresenceFeed *)self user];
    uuid = [user uuid];
    user2 = [(HMDUserPresenceFeed *)v6 user];
    uuid2 = [user2 uuid];
    v11 = [uuid isEqual:uuid2];

    if (!v11)
    {
      goto LABEL_11;
    }

    presenceAuthStatus = [(HMDUserPresenceFeed *)self presenceAuthStatus];
    presenceAuthStatus2 = [(HMDUserPresenceFeed *)v6 presenceAuthStatus];
    v14 = [presenceAuthStatus isEqual:presenceAuthStatus2];

    if (!v14)
    {
      goto LABEL_11;
    }

    presenceComputeStatus = [(HMDUserPresenceFeed *)self presenceComputeStatus];
    presenceComputeStatus2 = [(HMDUserPresenceFeed *)v6 presenceComputeStatus];
    v17 = [presenceComputeStatus isEqual:presenceComputeStatus2];

    if (!v17)
    {
      goto LABEL_11;
    }

    presenceRegion = [(HMDUserPresenceFeed *)self presenceRegion];
    presenceRegion2 = [(HMDUserPresenceFeed *)v6 presenceRegion];
    v20 = [presenceRegion isEqual:presenceRegion2];

    if (v20)
    {
      reason = [(HMDUserPresenceFeed *)self reason];
      reason2 = [(HMDUserPresenceFeed *)v6 reason];
      v23 = [reason isEqual:reason2];
    }

    else
    {
LABEL_11:
      v23 = 0;
    }
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  user = [(HMDUserPresenceFeed *)self user];
  presenceAuthStatus = [(HMDUserPresenceFeed *)self presenceAuthStatus];
  presenceComputeStatus = [(HMDUserPresenceFeed *)self presenceComputeStatus];
  presenceRegion = [(HMDUserPresenceFeed *)self presenceRegion];
  reason = [(HMDUserPresenceFeed *)self reason];
  v9 = [v3 stringWithFormat:@"[HMDUserPresenceFeed User: %@, Auth: %@, Compute: %@, Region: %@, Reason: %@]", user, presenceAuthStatus, presenceComputeStatus, presenceRegion, reason];

  return v9;
}

- (HMDUserPresenceFeed)initWithUser:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegion:(id)region reason:(id)reason
{
  userCopy = user;
  statusCopy = status;
  computeStatusCopy = computeStatus;
  regionCopy = region;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = HMDUserPresenceFeed;
  v17 = [(HMDUserPresenceFeed *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_user, userCopy);
    objc_storeStrong(&v18->_presenceAuthStatus, status);
    objc_storeStrong(&v18->_presenceComputeStatus, computeStatus);
    objc_storeStrong(&v18->_presenceRegion, region);
    objc_storeStrong(&v18->_reason, reason);
  }

  return v18;
}

@end
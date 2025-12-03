@interface HMMTRAccessControl
+ (id)logCategory;
- (HMMTRAccessControl)init;
- (HMMTRFabric)fabric;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (unint64_t)currentUserPrivilege;
- (void)setCurrentUserPrivilege:(unint64_t)privilege;
@end

@implementation HMMTRAccessControl

- (HMMTRFabric)fabric
{
  WeakRetained = objc_loadWeakRetained(&self->_fabric);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  fabric = [(HMMTRAccessControl *)self fabric];
  fabricID = [fabric fabricID];

  if (fabricID)
  {
    v6 = objc_alloc(MEMORY[0x277D0F778]);
    fabric2 = [(HMMTRAccessControl *)self fabric];
    fabricID2 = [fabric2 fabricID];
    v9 = [v6 initWithName:@"Fabric ID" value:fabricID2];
    [array addObject:v9];
  }

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMMTRAccessControl *)self currentUserPrivilege]- 1;
  if (v11 > 2)
  {
    v12 = @"None";
  }

  else
  {
    v12 = off_2786EE340[v11];
  }

  v13 = [v10 initWithName:@"Current User Privilege" value:v12];
  [array addObject:v13];

  v14 = [array copy];

  return v14;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  fabric = [(HMMTRAccessControl *)self fabric];
  fabricID = [fabric fabricID];
  v5 = [v2 stringWithFormat:@"%@", fabricID];

  return v5;
}

- (unint64_t)currentUserPrivilege
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  currentUserPrivilege = self->_currentUserPrivilege;
  os_unfair_lock_unlock(&self->_lock);
  if (!currentUserPrivilege)
  {
    privilegeGetter = [(HMMTRAccessControl *)self privilegeGetter];
    v5 = privilegeGetter;
    if (privilegeGetter)
    {
      currentUserPrivilege = (*(privilegeGetter + 16))(privilegeGetter);
      os_unfair_lock_lock(&self->_lock);
      self->_currentUserPrivilege = currentUserPrivilege;
      os_unfair_lock_unlock(&self->_lock);
      if (currentUserPrivilege)
      {
        v6 = objc_autoreleasePoolPush();
        selfCopy = self;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v10 = v9;
          if (currentUserPrivilege > 3)
          {
            v11 = @"None";
          }

          else
          {
            v11 = off_2786EE340[currentUserPrivilege - 1];
          }

          v14 = 138543618;
          v15 = v9;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Set current user privilege to %@ by getter", &v14, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
      }
    }

    else
    {
      currentUserPrivilege = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return currentUserPrivilege;
}

- (void)setCurrentUserPrivilege:(unint64_t)privilege
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  currentUserPrivilege = self->_currentUserPrivilege;
  self->_currentUserPrivilege = privilege;
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = v9;
    if (currentUserPrivilege - 1 > 2)
    {
      v11 = @"None";
    }

    else
    {
      v11 = off_2786EE340[currentUserPrivilege - 1];
    }

    if (privilege - 1 > 2)
    {
      v12 = @"None";
    }

    else
    {
      v12 = off_2786EE340[privilege - 1];
    }

    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Set current user privilege from %@ to %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

- (HMMTRAccessControl)init
{
  v3.receiver = self;
  v3.super_class = HMMTRAccessControl;
  result = [(HMMTRAccessControl *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_currentUserPrivilege = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_6279 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_6279, &__block_literal_global_6280);
  }

  v3 = logCategory__hmf_once_v3_6281;

  return v3;
}

uint64_t __33__HMMTRAccessControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_6281;
  logCategory__hmf_once_v3_6281 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
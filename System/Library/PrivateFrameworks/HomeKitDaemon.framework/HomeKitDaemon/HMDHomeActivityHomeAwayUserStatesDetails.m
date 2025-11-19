@interface HMDHomeActivityHomeAwayUserStatesDetails
- (BOOL)_isUserConfirmedAtHome:(id)a3;
- (BOOL)_isUserConfirmedAway:(id)a3;
- (BOOL)areUsersAtHome:(id)a3;
- (BOOL)areUsersNotAtHome:(id)a3;
- (BOOL)isAnyUserAtHome;
- (BOOL)isNoUserAtHome;
- (BOOL)isUserAtHome:(id)a3;
- (BOOL)isUserNotAtHome:(id)a3;
- (HMDHome)home;
- (HMDHomeActivityHomeAwayUserStatesDetails)initWithMap:(id)a3 home:(id)a4;
- (NSString)description;
- (id)detailForUser:(id)a3;
@end

@implementation HMDHomeActivityHomeAwayUserStatesDetails

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v4 = [v2 stringWithFormat:@"[HMDHomeActivityHomeAwayUserStatesDetails: %@", v3];

  return v4;
}

- (BOOL)_isUserConfirmedAway:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 isNotAtHome];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did not find the user in user activity map: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_isUserConfirmedAtHome:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 isAtHome];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did not find the user in user activity map: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isAnyUserAtHome
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  if ([v3 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HMDHomeActivityHomeAwayUserStatesDetails_isAnyUserAtHome__block_invoke;
    v11[3] = &unk_278671850;
    v11[4] = self;
    v4 = [v3 na_any:v11];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@isAnyUserAtHome : HomeAway map is empty, returning NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isNoUserAtHome
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  if ([v3 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__HMDHomeActivityHomeAwayUserStatesDetails_isNoUserAtHome__block_invoke;
    v11[3] = &unk_278671850;
    v11[4] = self;
    v4 = [v3 na_allSatisfy:v11];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@isNoUserAtHome : HomeAway map is empty, returning NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)areUsersNotAtHome:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__HMDHomeActivityHomeAwayUserStatesDetails_areUsersNotAtHome___block_invoke;
    v7[3] = &unk_278688680;
    v7[4] = self;
    v5 = [v4 na_all:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __62__HMDHomeActivityHomeAwayUserStatesDetails_areUsersNotAtHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _isUserConfirmedAway:v3];

  return v4;
}

- (BOOL)areUsersAtHome:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HMDHomeActivityHomeAwayUserStatesDetails_areUsersAtHome___block_invoke;
    v7[3] = &unk_278688680;
    v7[4] = self;
    v5 = [v4 na_all:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __59__HMDHomeActivityHomeAwayUserStatesDetails_areUsersAtHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _isUserConfirmedAtHome:v3];

  return v4;
}

- (BOOL)isUserNotAtHome:(id)a3
{
  v4 = [a3 uuid];
  LOBYTE(self) = [(HMDHomeActivityHomeAwayUserStatesDetails *)self _isUserConfirmedAway:v4];

  return self;
}

- (BOOL)isUserAtHome:(id)a3
{
  v4 = [a3 uuid];
  LOBYTE(self) = [(HMDHomeActivityHomeAwayUserStatesDetails *)self _isUserConfirmedAtHome:v4];

  return self;
}

- (id)detailForUser:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityHomeAwayUserStatesDetails *)self userActivityStateMap];
  v6 = [v4 uuid];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (HMDHomeActivityHomeAwayUserStatesDetails)initWithMap:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityHomeAwayUserStatesDetails;
  v8 = [(HMDHomeActivityHomeAwayUserStatesDetails *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    userActivityStateMap = v8->_userActivityStateMap;
    v8->_userActivityStateMap = v9;

    objc_storeWeak(&v8->_home, v7);
  }

  return v8;
}

@end
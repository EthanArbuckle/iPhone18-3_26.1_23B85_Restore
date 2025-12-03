@interface HMDHomePresence
+ (id)logCategory;
- (BOOL)areUsersAtHome:(id)home;
- (BOOL)areUsersNotAtHome:(id)home;
- (BOOL)hasPresenceRegionForAllUsers;
- (BOOL)isAnyUserAtHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNoUserAtHome;
- (BOOL)isPresenceRegionKnownForUser:(id)user;
- (BOOL)isUserAtHome:(id)home;
- (BOOL)isUserNotAtHome:(id)home;
- (HMDHome)home;
- (HMDHomePresence)initWithHome:(id)home userPresenceMap:(id)map lastUpdateByDevice:(id)device;
- (NSArray)authorizedUsers;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)serializedIdentifierDictionary;
- (id)serializedUUIDDictionary;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDHomePresence

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)areUsersNotAtHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([homeCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = homeCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = v9 && [(HMDHomePresence *)self isUserNotAtHome:*(*(&v13 + 1) + 8 * i), v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)areUsersAtHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([homeCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = homeCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 = v8 || [(HMDHomePresence *)self isUserAtHome:*(*(&v13 + 1) + 8 * i), v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isPresenceRegionKnownForUser:(id)user
{
  v27 = *MEMORY[0x277D85DE8];
  userCopy = user;
  presenceAuthStatus = [userCopy presenceAuthStatus];
  value = [presenceAuthStatus value];

  if (value == 1)
  {
    userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
    uuid = [userCopy uuid];
    v9 = [userPresenceMap objectForKeyedSubscript:uuid];

    if (v9)
    {
      presenceRegionStatus = [v9 presenceRegionStatus];
      if (presenceRegionStatus)
      {
        presenceRegionStatus2 = [v9 presenceRegionStatus];
        v12 = [presenceRegionStatus2 value] != 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = userCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Could not find user %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = userCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@%@ is not presence-authorized, cannot determine isUserPresenceRegionKnown", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isUserNotAtHome:(id)home
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  presenceAuthStatus = [homeCopy presenceAuthStatus];
  value = [presenceAuthStatus value];

  if (value == 1)
  {
    userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
    uuid = [homeCopy uuid];
    v9 = [userPresenceMap objectForKeyedSubscript:uuid];

    if (v9)
    {
      presenceRegionStatus = [v9 presenceRegionStatus];
      v11 = [presenceRegionStatus value] == 2;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = homeCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Could not find user %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = homeCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@%@ is not presence-authorized, cannot determine isUserNotAtHome", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isUserAtHome:(id)home
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  presenceAuthStatus = [homeCopy presenceAuthStatus];
  value = [presenceAuthStatus value];

  if (value == 1)
  {
    userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
    uuid = [homeCopy uuid];
    v9 = [userPresenceMap objectForKeyedSubscript:uuid];

    if (v9)
    {
      presenceRegionStatus = [v9 presenceRegionStatus];
      v11 = [presenceRegionStatus value] == 1;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = homeCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Could not find user %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = homeCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@%@ is not presence-authorized, cannot determine isUserAtHome", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)hasPresenceRegionForAllUsers
{
  v23 = *MEMORY[0x277D85DE8];
  authorizedUsers = [(HMDHomePresence *)self authorizedUsers];
  if ([authorizedUsers count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = authorizedUsers;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![(HMDHomePresence *)self isPresenceRegionKnownForUser:*(*(&v16 + 1) + 8 * i), v16])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@doAllUsersHavePresenceRegion - No users in presence map", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isAnyUserAtHome
{
  v23 = *MEMORY[0x277D85DE8];
  authorizedUsers = [(HMDHomePresence *)self authorizedUsers];
  if ([authorizedUsers count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = authorizedUsers;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 = v7 || [(HMDHomePresence *)self isUserAtHome:*(*(&v16 + 1) + 8 * i), v16];
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@isAnyUserAtHome - No users in presence map", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isNoUserAtHome
{
  v23 = *MEMORY[0x277D85DE8];
  authorizedUsers = [(HMDHomePresence *)self authorizedUsers];
  if ([authorizedUsers count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = authorizedUsers;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 = v8 && [(HMDHomePresence *)self isUserNotAtHome:*(*(&v16 + 1) + 8 * i), v16];
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@isNoUserAtHome - No users in presence map", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  allValues = [userPresenceMap allValues];
  v6 = [allValues componentsJoinedByString:{@", "}];
  v7 = [v3 initWithName:@"UP" value:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)shortDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  allValues = [userPresenceMap allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        shortDescription = [*(*(&v14 + 1) + 8 * i) shortDescription];
        [string appendFormat:@"%@, ", shortDescription];
      }

      v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)logIdentifier
{
  home = [(HMDHomePresence *)self home];
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    name = [home name];
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];
  }

  else
  {
    name = [home uuid];
    uUIDString2 = [name UUIDString];
  }

  return uUIDString2;
}

- (unint64_t)hash
{
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  v3 = [userPresenceMap hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (v6)
  {
    userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
    userPresenceMap2 = [v6 userPresenceMap];
    v9 = [userPresenceMap isEqualToDictionary:userPresenceMap2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedIdentifierDictionary
{
  v3 = MEMORY[0x277CBEB38];
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(userPresenceMap, "count")}];

  userPresenceMap2 = [(HMDHomePresence *)self userPresenceMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMDHomePresence_serializedIdentifierDictionary__block_invoke;
  v10[3] = &unk_278680648;
  v7 = v5;
  v11 = v7;
  selfCopy = self;
  [userPresenceMap2 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __49__HMDHomePresence_serializedIdentifierDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 user];
  v8 = [v7 pairingIdentity];
  v9 = [v8 identifier];

  v10 = [v7 presenceAuthStatus];
  v11 = [v10 value];

  if (v11 != 1)
  {
LABEL_7:
    [*(a1 + 32) setObject:&unk_283E74078 forKeyedSubscript:v9];
    goto LABEL_8;
  }

  v12 = [v6 presenceRegionStatus];

  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Using HMDUserPresenceRegionStatusUnknown for user with nil presence: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_7;
  }

  v13 = [v6 presenceRegionStatus];
  v14 = [v13 number];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v9];

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)serializedUUIDDictionary
{
  v3 = MEMORY[0x277CBEB38];
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(userPresenceMap, "count")}];

  userPresenceMap2 = [(HMDHomePresence *)self userPresenceMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HMDHomePresence_serializedUUIDDictionary__block_invoke;
  v10[3] = &unk_278680648;
  v7 = v5;
  v11 = v7;
  selfCopy = self;
  [userPresenceMap2 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __43__HMDHomePresence_serializedUUIDDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 user];
  v8 = [v7 presenceAuthStatus];
  v9 = [v8 value];

  if (v9 != 1)
  {
LABEL_7:
    v20 = *(a1 + 32);
    v11 = [v7 uuid];
    v12 = [v11 UUIDString];
    [v20 setObject:&unk_283E74078 forKeyedSubscript:v12];
    goto LABEL_8;
  }

  v10 = [v6 presenceRegionStatus];

  if (!v10)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Using HMDUserPresenceRegionStatusUnknown for user with nil presence: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_7;
  }

  v11 = [v6 presenceRegionStatus];
  v12 = [v11 number];
  v13 = *(a1 + 32);
  v14 = [v7 uuid];
  v15 = [v14 UUIDString];
  [v13 setObject:v12 forKeyedSubscript:v15];

LABEL_8:
  v21 = *MEMORY[0x277D85DE8];
}

- (NSArray)authorizedUsers
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  userPresenceMap = [(HMDHomePresence *)self userPresenceMap];
  allValues = [userPresenceMap allValues];

  v6 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        user = [v10 user];
        presenceAuthStatus = [user presenceAuthStatus];
        value = [presenceAuthStatus value];

        if (value == 1)
        {
          user2 = [v10 user];
          [array addObject:user2];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDHomePresence)initWithHome:(id)home userPresenceMap:(id)map lastUpdateByDevice:(id)device
{
  homeCopy = home;
  mapCopy = map;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = HMDHomePresence;
  v11 = [(HMDHomePresence *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, homeCopy);
    v13 = [mapCopy copy];
    userPresenceMap = v12->_userPresenceMap;
    v12->_userPresenceMap = v13;

    objc_storeStrong(&v12->_lastUpdateByDevice, device);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_210915 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_210915, &__block_literal_global_210916);
  }

  v3 = logCategory__hmf_once_v4_210917;

  return v3;
}

void __30__HMDHomePresence_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_210917;
  logCategory__hmf_once_v4_210917 = v1;
}

@end
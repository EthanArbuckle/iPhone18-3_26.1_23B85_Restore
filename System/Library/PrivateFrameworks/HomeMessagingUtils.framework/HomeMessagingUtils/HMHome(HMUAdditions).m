@interface HMHome(HMUAdditions)
+ (id)hmu_homesFromHomes:()HMUAdditions withHomeLocationStatus:;
+ (id)hmu_homesFromHomes:()HMUAdditions withRoomNames:;
+ (id)hmu_homesFromHomes:()HMUAdditions withZoneNames:;
- (id)hmu_accessoryWithUniqueIdentifierUUIDString:()HMUAdditions;
- (id)hmu_allRoomsIncludingRoomForEntireHome;
- (id)hmu_allUsersIncludingCurrentUser;
- (id)hmu_endpointAccessories;
- (id)hmu_homePodsDictionary;
- (id)hmu_homePodsIncludingCurrentAccessoryDictionary;
- (id)hmu_roomWithName:()HMUAdditions;
- (id)hmu_roomWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_roomsWithUniqueIdentifiers:()HMUAdditions;
- (id)hmu_userWithSenderCorrelationIdentifier:()HMUAdditions;
- (id)hmu_userWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_userWithUniqueIdentifierUUIDString:()HMUAdditions;
- (id)hmu_zoneWithName:()HMUAdditions;
- (id)hmu_zoneWithUniqueIdentifier:()HMUAdditions;
- (id)hmu_zonesWithUniqueIdentifiers:()HMUAdditions;
- (uint64_t)hmu_isAdministrator:()HMUAdditions;
- (uint64_t)hmu_isCurrentUserAdministrator;
- (uint64_t)hmu_isCurrentUserOwner;
- (uint64_t)hmu_isOwner:()HMUAdditions;
- (uint64_t)hmu_isRemoteAccessAllowedForCurrentUser;
- (uint64_t)hmu_isRemoteAccessAllowedForUser:()HMUAdditions;
@end

@implementation HMHome(HMUAdditions)

- (id)hmu_allUsersIncludingCurrentUser
{
  v2 = [a1 users];
  v3 = [a1 currentUser];
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)hmu_userWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 communalUsers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_userWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_279772560;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_userWithUniqueIdentifierUUIDString:()HMUAdditions
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  if (v6)
  {
    v7 = [a1 hmu_userWithUniqueIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)hmu_isRemoteAccessAllowedForCurrentUser
{
  v2 = [a1 currentUser];
  v3 = [a1 hmu_isRemoteAccessAllowedForUser:v2];

  return v3;
}

- (uint64_t)hmu_isCurrentUserAdministrator
{
  v2 = [a1 currentUser];
  v3 = [a1 hmu_isAdministrator:v2];

  return v3;
}

- (uint64_t)hmu_isCurrentUserOwner
{
  v2 = [a1 currentUser];
  v3 = [a1 hmu_isOwner:v2];

  return v3;
}

- (uint64_t)hmu_isRemoteAccessAllowedForUser:()HMUAdditions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isRemoteAccessAllowed];

  return v2;
}

- (uint64_t)hmu_isAdministrator:()HMUAdditions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isAdministrator];

  return v2;
}

- (uint64_t)hmu_isOwner:()HMUAdditions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isOwner];

  return v2;
}

- (id)hmu_userWithSenderCorrelationIdentifier:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 hmu_allUsersIncludingCurrentUser];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HMHome_HMUAdditions__hmu_userWithSenderCorrelationIdentifier___block_invoke;
  v9[3] = &unk_279772560;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withRoomNames:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v22 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v10 rooms];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * j) name];
                v17 = [v6 containsObject:v16];

                if (v17)
                {
                  [v22 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v5 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withZoneNames:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v22 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v10 zones];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v24 + 1) + 8 * j) name];
                v17 = [v6 containsObject:v16];

                if (v17)
                {
                  [v22 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v5 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)hmu_homesFromHomes:()HMUAdditions withHomeLocationStatus:
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMHome_HMUAdditions__hmu_homesFromHomes_withHomeLocationStatus___block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__HMHome_8l;
  v6[4] = a4;
  v4 = [a3 na_filter:v6];

  return v4;
}

- (id)hmu_allRoomsIncludingRoomForEntireHome
{
  v2 = [a1 rooms];
  v3 = [a1 roomForEntireHome];
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

- (id)hmu_roomWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 rooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_roomWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_2797724F0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_roomsWithUniqueIdentifiers:()HMUAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [a1 rooms];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HMHome_HMUAdditions__hmu_roomsWithUniqueIdentifiers___block_invoke;
    v9[3] = &unk_2797724F0;
    v10 = v5;
    v7 = [v6 na_filter:v9];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)hmu_roomWithName:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 rooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HMHome_HMUAdditions__hmu_roomWithName___block_invoke;
  v9[3] = &unk_2797724F0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_zoneWithUniqueIdentifier:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 zones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_HMUAdditions__hmu_zoneWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_279772518;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_zonesWithUniqueIdentifiers:()HMUAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [a1 zones];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HMHome_HMUAdditions__hmu_zonesWithUniqueIdentifiers___block_invoke;
    v9[3] = &unk_279772518;
    v10 = v5;
    v7 = [v6 na_filter:v9];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)hmu_zoneWithName:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 zones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HMHome_HMUAdditions__hmu_zoneWithName___block_invoke;
  v9[3] = &unk_279772518;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hmu_accessoryWithUniqueIdentifierUUIDString:()HMUAdditions
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  if (v6)
  {
    v7 = [a1 accessoryWithUniqueIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hmu_homePodsDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hmu_isHomePod] && (objc_msgSend(v8, "isCurrentAccessory") & 1) == 0)
        {
          v9 = [v8 uniqueIdentifier];
          [v2 setObject:v8 forKey:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hmu_homePodsIncludingCurrentAccessoryDictionary
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v3 = [a1 hmu_homePodsDictionary];
  v4 = [v2 dictionaryWithDictionary:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 accessories];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hmu_isHomePod])
        {
          v11 = [v10 uniqueIdentifier];
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)hmu_endpointAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_1];

  return v2;
}

@end
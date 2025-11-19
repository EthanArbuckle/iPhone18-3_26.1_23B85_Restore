@interface HMDHomePresenceRemote
- (BOOL)areUsersAtHome:(id)a3;
- (BOOL)areUsersNotAtHome:(id)a3;
- (BOOL)isAnyUserAtHome;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNoUserAtHome;
- (BOOL)isUserAtHome:(id)a3;
- (BOOL)isUserNotAtHome:(id)a3;
- (HMDHomePresenceRemote)initWithPresenceByPairingIdentity:(id)a3;
- (HMDHomePresenceRemote)initWithPresenceByUserId:(id)a3;
- (NSString)description;
- (id)regionForUser:(id)a3;
- (unint64_t)hash;
@end

@implementation HMDHomePresenceRemote

- (BOOL)isAnyUserAtHome
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_userPresenceMap count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSDictionary *)self->_userPresenceMap allValues];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v9 + 1) + 8 * i) value] == 1)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isNoUserAtHome
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSDictionary *)self->_userPresenceMap count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSDictionary *)self->_userPresenceMap allValues];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v7 &= [*(*(&v11 + 1) + 8 * i) value] == 2;
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)areUsersNotAtHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(HMDHomePresenceRemote *)self regionForUser:*(*(&v14 + 1) + 8 * i), v14];
          v9 &= [v11 value] == 2;
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)areUsersAtHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(HMDHomePresenceRemote *)self regionForUser:*(*(&v14 + 1) + 8 * i), v14];
          v9 &= [v11 value] == 1;
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isUserNotAtHome:(id)a3
{
  v3 = [(HMDHomePresenceRemote *)self regionForUser:a3];
  v4 = [v3 value] == 2;

  return v4;
}

- (BOOL)isUserAtHome:(id)a3
{
  v3 = [(HMDHomePresenceRemote *)self regionForUser:a3];
  v4 = [v3 value] == 1;

  return v4;
}

- (id)regionForUser:(id)a3
{
  v4 = a3;
  userPresenceMap = self->_userPresenceMap;
  v6 = [v4 pairingIdentity];
  v7 = [v6 identifier];
  v8 = [(NSDictionary *)userPresenceMap objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = self->_userPresenceMap;
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    v8 = [(NSDictionary *)v9 objectForKeyedSubscript:v11];
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMDHomePresenceRemote *)self userPresenceMap];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMDHomePresenceRemote *)self userPresenceMap];
    v8 = [v6 userPresenceMap];
    v9 = [v7 isEqualToDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDHomePresenceRemote *)self userPresenceMap];
  v4 = [v2 stringWithFormat:@"[Home-Presence-Remote: %@]", v3];

  return v4;
}

- (HMDHomePresenceRemote)initWithPresenceByPairingIdentity:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDHomePresenceRemote;
  v5 = [(HMDHomePresenceRemote *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v19 = v5;
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v4 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = [HMDUserPresenceRegion regionWithNumber:v14];
          [(NSDictionary *)v7 setObject:v15 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v6 = v19;
    userPresenceMap = v19->_userPresenceMap;
    v19->_userPresenceMap = v7;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDHomePresenceRemote)initWithPresenceByUserId:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDHomePresenceRemote;
  v5 = [(HMDHomePresenceRemote *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v19 = v5;
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v4 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = [HMDUserPresenceRegion regionWithNumber:v14];
          [(NSDictionary *)v7 setObject:v15 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v6 = v19;
    userPresenceMap = v19->_userPresenceMap;
    v19->_userPresenceMap = v7;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

@end
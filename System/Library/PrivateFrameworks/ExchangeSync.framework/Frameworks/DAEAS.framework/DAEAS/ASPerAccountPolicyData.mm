@interface ASPerAccountPolicyData
- (ASPerAccountPolicyData)initWithAccountPersistentUUID:(id)d;
- (NSDictionary)policyValues;
- (NSString)policyKey;
- (id)description;
- (void)setPolicyKey:(id)key policyValues:(id)values;
@end

@implementation ASPerAccountPolicyData

- (ASPerAccountPolicyData)initWithAccountPersistentUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v20.receiver = self;
  v20.super_class = ASPerAccountPolicyData;
  v6 = [(ASPerAccountPolicyData *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountPersistentUUID, d);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [mEMORY[0x277D262A0] userInfoForClientUUID:v7->_accountPersistentUUID];

    v10 = [v9 objectForKeyedSubscript:@"deviceId"];
    v11 = v10;
    if (v9)
    {
      if (!v10 || (asDeviceID(), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 isEqualToString:v12], v12, (v13 & 1) == 0))
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = asDeviceID();
          *buf = 138412546;
          v22 = v11;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_24A0AC000, v14, v15, "Found an outdated deviceId %@ in policy data (compared to current device id of %@).  Blowing it away and starting fresh", buf, 0x16u);
        }

        mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
        [mEMORY[0x277D262A0]2 setUserInfo:0 forClientUUID:v7->_accountPersistentUUID];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  policyKey = [(ASPerAccountPolicyData *)self policyKey];
  policyValues = [(ASPerAccountPolicyData *)self policyValues];
  v8 = [v3 stringWithFormat:@"<%@: key %@\npolicies:\n%@>", v5, policyKey, policyValues];

  return v8;
}

- (NSString)policyKey
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] userInfoForClientUUID:self->_accountPersistentUUID];

  v5 = [v4 objectForKeyedSubscript:@"policyKey"];

  return v5;
}

- (NSDictionary)policyValues
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] userInfoForClientUUID:self->_accountPersistentUUID];

  v5 = [v4 objectForKeyedSubscript:@"policyValues"];

  return v5;
}

- (void)setPolicyKey:(id)key policyValues:(id)values
{
  keyCopy = key;
  valuesCopy = values;
  v7 = objc_opt_new();
  if (keyCopy)
  {
    [v7 setObject:keyCopy forKeyedSubscript:@"policyKey"];
  }

  if (valuesCopy)
  {
    [v7 setObject:valuesCopy forKeyedSubscript:@"policyValues"];
  }

  v8 = asDeviceID();
  [v7 setObject:v8 forKeyedSubscript:@"deviceId"];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setUserInfo:v7 forClientUUID:self->_accountPersistentUUID];
}

@end
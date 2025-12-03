@interface HAPPairingIdentity(HMDUser)
+ (id)hmd_currentPairingIdentityWithPrivilege:()HMDUser forceHH1Key:keyStore:;
+ (id)hmd_pairingIdentityWithDictionary:()HMDUser;
- (id)hmd_dictionaryEncoding;
@end

@implementation HAPPairingIdentity(HMDUser)

- (id)hmd_dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"HAP.identifier"];

  privateKey = [self privateKey];

  if (privateKey)
  {
    privateKey2 = [self privateKey];
    data = [privateKey2 data];
    [dictionary setObject:data forKeyedSubscript:@"HAP.privateKey"];
  }

  publicKey = [self publicKey];

  if (publicKey)
  {
    publicKey2 = [self publicKey];
    data2 = [publicKey2 data];
    [dictionary setObject:data2 forKeyedSubscript:@"HAP.publicKey"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "permissions")}];
  [dictionary setObject:v10 forKeyedSubscript:@"HAP.permissions"];

  v11 = [dictionary copy];

  return v11;
}

+ (id)hmd_pairingIdentityWithDictionary:()HMDUser
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"HAP.identifier"];
  v5 = [v3 objectForKeyedSubscript:@"HAP.privateKey"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"HAP.publicKey"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 objectForKeyedSubscript:@"HAP.permissions"];
  v10 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v4 publicKey:v8 privateKey:v6 permissions:{objc_msgSend(v9, "integerValue")}];

  return v10;
}

+ (id)hmd_currentPairingIdentityWithPrivilege:()HMDUser forceHH1Key:keyStore:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v7 = [v6 getControllerPublicKey:&v20 secretKey:0 username:&v19 allowCreation:0 error:&v18];
  v8 = v20;
  v9 = v19;
  v10 = v18;
  v11 = v10;
  if (v7)
  {

    v11 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v8];
    v12 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v9 publicKey:v11 privateKey:0 permissions:(a3 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[HMDUser] Failed to get current user from keychain with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

@end
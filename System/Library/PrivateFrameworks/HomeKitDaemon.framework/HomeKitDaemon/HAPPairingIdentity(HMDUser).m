@interface HAPPairingIdentity(HMDUser)
+ (id)hmd_currentPairingIdentityWithPrivilege:()HMDUser forceHH1Key:keyStore:;
+ (id)hmd_pairingIdentityWithDictionary:()HMDUser;
- (id)hmd_dictionaryEncoding;
@end

@implementation HAPPairingIdentity(HMDUser)

- (id)hmd_dictionaryEncoding
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 identifier];
  [v2 setObject:v3 forKeyedSubscript:@"HAP.identifier"];

  v4 = [a1 privateKey];

  if (v4)
  {
    v5 = [a1 privateKey];
    v6 = [v5 data];
    [v2 setObject:v6 forKeyedSubscript:@"HAP.privateKey"];
  }

  v7 = [a1 publicKey];

  if (v7)
  {
    v8 = [a1 publicKey];
    v9 = [v8 data];
    [v2 setObject:v9 forKeyedSubscript:@"HAP.publicKey"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "permissions")}];
  [v2 setObject:v10 forKeyedSubscript:@"HAP.permissions"];

  v11 = [v2 copy];

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
  v35 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = v7;
  v9 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  if (a4)
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v10 = [v7 getControllerPublicKey:&v28 secretKey:0 username:&v27 allowCreation:0 error:&v26];
    v11 = v28;
    v12 = v27;
    v13 = v26;
    v14 = v13;
    if (v10)
    {

LABEL_5:
      v16 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v11];
      v17 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v12 publicKey:v16 privateKey:0 permissions:v9];

      goto LABEL_13;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[HMDUser] Failed to get current user from keychain with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v15 = [v7 getOrCreateHH2ControllerKey:&v30 secretKey:0 keyPair:0 username:&v29];
    v11 = v30;
    v12 = v29;
    if (v15)
    {
      goto LABEL_5;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[HMDUser] Failed to get/create HH2 controller key from keychain", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v17 = 0;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
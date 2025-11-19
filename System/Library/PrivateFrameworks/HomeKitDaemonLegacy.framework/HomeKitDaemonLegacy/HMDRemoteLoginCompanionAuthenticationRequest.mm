@interface HMDRemoteLoginCompanionAuthenticationRequest
+ (id)objWithDict:(id)a3;
+ (id)objWithMessage:(id)a3;
- (HMDRemoteLoginCompanionAuthenticationRequest)initWithCoder:(id)a3;
- (NSDictionary)messagePayload;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDRemoteLoginCompanionAuthenticationRequest

- (HMDRemoteLoginCompanionAuthenticationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDRemoteLoginCompanionAuthenticationRequest;
  v5 = [(HMDRemoteLoginAuthenticationRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionDevice"];
    companionDevice = v5->_companionDevice;
    v5->_companionDevice = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginCompanionAuthenticationRequest;
  v4 = a3;
  [(HMDRemoteLoginAuthenticationRequest *)&v9 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CF0130] sharedInstance];
  v6 = [(HMDRemoteLoginCompanionAuthenticationRequest *)self account];
  v7 = [v5 transportableAuthKitAccount:v6];

  [v4 encodeObject:v7 forKey:@"account"];
  v8 = [(HMDRemoteLoginCompanionAuthenticationRequest *)self companionDevice];
  [v4 encodeObject:v8 forKey:@"companionDevice"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginCompanionAuthenticationRequest;
  v4 = [(HMDRemoteLoginAuthenticationRequest *)&v9 description];
  v5 = [(HMDRemoteLoginCompanionAuthenticationRequest *)self account];
  v6 = [(HMDRemoteLoginCompanionAuthenticationRequest *)self companionDevice];
  v7 = [v3 stringWithFormat:@"HMDRemoteLoginCompanionAuthenticationRequest: %@, Account: %@, Companion-Device: %@", v4, v5, v6];

  return v7;
}

- (NSDictionary)messagePayload
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = encodeRootObject();
  v4 = [(HMDRemoteLoginCompanionAuthenticationRequest *)self messageName];
  v8 = v4;
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)objWithMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_dataForKey:@"kHMDRemoteLoginCompanionAuthenticationRequest"];

  v15 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with message from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)objWithDict:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_dataForKey:@"kHMDRemoteLoginCompanionAuthenticationRequest"];
  v14 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with dictionary from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
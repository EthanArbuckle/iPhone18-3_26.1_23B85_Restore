@interface HMDRemoteLoginAuthenticationRequest
+ (id)objWithDict:(id)dict;
+ (id)objWithMessage:(id)message;
- (HMDRemoteLoginAuthenticationRequest)initWithCoder:(id)coder;
- (id)description;
- (id)messagePayload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDRemoteLoginAuthenticationRequest

- (HMDRemoteLoginAuthenticationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMDRemoteLoginAuthenticationRequest;
  v5 = [(HMRemoteLoginMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_targetedAccountType = [coderCopy decodeIntegerForKey:@"targetedAccountType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HMDRemoteLoginAuthenticationRequest;
  coderCopy = coder;
  [(HMRemoteLoginMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HMDRemoteLoginAuthenticationRequest targetedAccountType](self forKey:{"targetedAccountType", v5.receiver, v5.super_class), @"targetedAccountType"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HMDRemoteLoginAuthenticationRequest;
  v4 = [(HMRemoteLoginMessage *)&v7 description];
  v5 = [v3 stringWithFormat:@"HMDRemoteLoginAuthenticationRequest: %@, Services: %tu", v4, -[HMDRemoteLoginAuthenticationRequest targetedAccountType](self, "targetedAccountType")];

  return v5;
}

- (id)messagePayload
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = encodeRootObject();
  messageName = [(HMDRemoteLoginAuthenticationRequest *)self messageName];
  v8 = messageName;
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)objWithMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_dataForKey:@"kHMDRemoteLoginAuthenticationRequest"];

  v15 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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

+ (id)objWithDict:(id)dict
{
  v19 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = [dictCopy hmf_dataForKey:@"kHMDRemoteLoginAuthenticationRequest"];
  v14 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
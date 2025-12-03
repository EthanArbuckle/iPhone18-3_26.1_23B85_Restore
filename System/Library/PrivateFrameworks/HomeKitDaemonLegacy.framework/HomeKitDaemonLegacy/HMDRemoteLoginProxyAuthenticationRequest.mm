@interface HMDRemoteLoginProxyAuthenticationRequest
+ (id)objWithDict:(id)dict;
+ (id)objWithMessage:(id)message;
- (HMDRemoteLoginProxyAuthenticationRequest)initWithCoder:(id)coder;
- (NSDictionary)messagePayload;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDRemoteLoginProxyAuthenticationRequest

- (HMDRemoteLoginProxyAuthenticationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HMDRemoteLoginProxyAuthenticationRequest;
  v5 = [(HMDRemoteLoginAuthenticationRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    username = v5->_username;
    v5->_username = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwordToken"];
    passwordToken = v5->_passwordToken;
    v5->_passwordToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawPassword"];
    rawPassword = v5->_rawPassword;
    v5->_rawPassword = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginProxyAuthenticationRequest;
  coderCopy = coder;
  [(HMDRemoteLoginAuthenticationRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(HMDRemoteLoginProxyAuthenticationRequest *)self username:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"username"];

  passwordToken = [(HMDRemoteLoginProxyAuthenticationRequest *)self passwordToken];
  [coderCopy encodeObject:passwordToken forKey:@"passwordToken"];

  altDSID = [(HMDRemoteLoginProxyAuthenticationRequest *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  rawPassword = [(HMDRemoteLoginProxyAuthenticationRequest *)self rawPassword];
  [coderCopy encodeObject:rawPassword forKey:@"rawPassword"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = HMDRemoteLoginProxyAuthenticationRequest;
  v4 = [(HMDRemoteLoginAuthenticationRequest *)&v12 description];
  username = [(HMDRemoteLoginProxyAuthenticationRequest *)self username];
  rawPassword = [(HMDRemoteLoginProxyAuthenticationRequest *)self rawPassword];
  [rawPassword length];
  v7 = HMFBooleanToString();
  passwordToken = [(HMDRemoteLoginProxyAuthenticationRequest *)self passwordToken];
  altDSID = [(HMDRemoteLoginProxyAuthenticationRequest *)self altDSID];
  v10 = [v3 stringWithFormat:@"HMDRemoteLoginProxyAuthenticationRequest: %@, Username: %@, Password Present: %@, Token: %@, altDSID: %@", v4, username, v7, passwordToken, altDSID];

  return v10;
}

- (NSDictionary)messagePayload
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = encodeRootObject();
  messageName = [(HMDRemoteLoginProxyAuthenticationRequest *)self messageName];
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
  v6 = [messagePayload hmf_dataForKey:@"kHMDRemoteLoginProxyAuthenticationRequest"];

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
  v5 = [dictCopy hmf_dataForKey:@"kHMDRemoteLoginProxyAuthenticationRequest"];
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
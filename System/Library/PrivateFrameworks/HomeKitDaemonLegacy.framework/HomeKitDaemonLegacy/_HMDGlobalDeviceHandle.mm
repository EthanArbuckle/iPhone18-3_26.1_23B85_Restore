@interface _HMDGlobalDeviceHandle
- (BOOL)isEqual:(id)equal;
- (_HMDGlobalDeviceHandle)initWithCoder:(id)coder;
- (_HMDGlobalDeviceHandle)initWithDestination:(id)destination;
- (_HMDGlobalDeviceHandle)initWithPushToken:(id)token accountHandle:(id)handle;
- (id)description;
- (id)destination;
- (id)privateDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDGlobalDeviceHandle

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _HMDGlobalDeviceHandle;
  coderCopy = coder;
  [(_HMDDeviceHandle *)&v7 encodeWithCoder:coderCopy];
  v5 = [(_HMDGlobalDeviceHandle *)self pushToken:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.token"];

  accountHandle = [(_HMDGlobalDeviceHandle *)self accountHandle];
  [coderCopy encodeObject:accountHandle forKey:@"HM.account"];
}

- (_HMDGlobalDeviceHandle)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.token"];
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = _HMDGlobalDeviceHandle;
    v6 = [(_HMDDeviceHandle *)&v17 initWithCoder:coderCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_pushToken, v5);
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.account"];
      accountHandle = v7->_accountHandle;
      v7->_accountHandle = v8;
    }

    selfCopy = v7;
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = @"HM.token";
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing required object for key '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)destination
{
  pushToken = [(_HMDGlobalDeviceHandle *)self pushToken];
  accountHandle = [(_HMDGlobalDeviceHandle *)self accountHandle];
  v5 = [accountHandle URI];
  prefixedURI = [v5 prefixedURI];
  v7 = MEMORY[0x259C01FD0](pushToken, prefixedURI);

  return v7;
}

- (id)privateDescription
{
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v4 = [(_HMDGlobalDeviceHandle *)self description];
  v5 = [defaultFormatter privateStringForObjectValue:v4];

  return v5;
}

- (id)description
{
  pushToken = [(_HMDGlobalDeviceHandle *)self pushToken];
  v3 = [pushToken hmf_hexadecimalStringWithOptions:0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
      pushToken = [(_HMDGlobalDeviceHandle *)self pushToken];
      pushToken2 = [(_HMDGlobalDeviceHandle *)v6 pushToken];
      v9 = [pushToken isEqualToData:pushToken2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  pushToken = [(_HMDGlobalDeviceHandle *)self pushToken];
  v3 = [pushToken hash];

  return v3;
}

- (_HMDGlobalDeviceHandle)initWithDestination:(id)destination
{
  v37 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v5 = destinationCopy;
  if (destinationCopy)
  {
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v6 = __parseGlobalDestination(destinationCopy, &v30, &v29, &v28, &v27);
    v7 = v30;
    v8 = v29;
    v9 = v28;
    v10 = v27;
    if (v6)
    {
      v26.receiver = self;
      v26.super_class = _HMDGlobalDeviceHandle;
      v11 = [(_HMDDeviceHandle *)&v26 initWithIdentifier:v7];
      if (v11)
      {
        v12 = [v8 copy];
        pushToken = v11->_pushToken;
        v11->_pushToken = v12;

        v14 = [v9 copy];
        accountHandle = v11->_accountHandle;
        v11->_accountHandle = v14;
      }

      selfCopy2 = v11;
      v17 = selfCopy2;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v32 = v23;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse destination, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing destination parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (_HMDGlobalDeviceHandle)initWithPushToken:(id)token accountHandle:(id)handle
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  handleCopy = handle;
  v8 = handleCopy;
  if (tokenCopy)
  {
    v9 = [handleCopy URI];
    prefixedURI = [v9 prefixedURI];
    v11 = MEMORY[0x259C01FD0](tokenCopy, prefixedURI);

    selfCopy = [(_HMDGlobalDeviceHandle *)self initWithDestination:v11];
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Missing push token parameter", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

@end
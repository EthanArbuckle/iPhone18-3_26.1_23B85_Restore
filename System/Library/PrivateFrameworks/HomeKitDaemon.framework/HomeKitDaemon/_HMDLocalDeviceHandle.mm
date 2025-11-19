@interface _HMDLocalDeviceHandle
+ (BOOL)isValidDestination:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_HMDLocalDeviceHandle)initWithCoder:(id)a3;
- (_HMDLocalDeviceHandle)initWithDestination:(id)a3;
- (_HMDLocalDeviceHandle)initWithDeviceIdentifier:(id)a3;
- (id)description;
- (id)destination;
- (id)privateDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDLocalDeviceHandle

- (id)description
{
  v2 = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HMDLocalDeviceHandle;
  v4 = a3;
  [(_HMDDeviceHandle *)&v6 encodeWithCoder:v4];
  v5 = [(_HMDLocalDeviceHandle *)self deviceIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HM.deviceID"];
}

- (_HMDLocalDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HMDLocalDeviceHandle;
  v5 = [(_HMDDeviceHandle *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.deviceID"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;
  }

  return v5;
}

- (id)destination
{
  v2 = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  v3 = [v2 UUIDString];
  v4 = [@"device:" stringByAppendingString:v3];

  return v4;
}

- (id)privateDescription
{
  v3 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v4 = [(_HMDLocalDeviceHandle *)self description];
  v5 = [v3 privateStringForObjectValue:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
      v7 = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
      v8 = [(_HMDLocalDeviceHandle *)v6 deviceIdentifier];
      v9 = [v7 hmf_isEqualToUUID:v8];
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
  v2 = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (_HMDLocalDeviceHandle)initWithDestination:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v26 = 0;
    v6 = __parseLocalDestination(v4, &v26);
    v7 = v26;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x277CCAD78]);
      v9 = +[_HMDDeviceHandle identifierNamespace];
      v10 = [v5 dataUsingEncoding:4];
      v11 = [v8 initWithNamespace:v9 data:v10];

      v25.receiver = self;
      v25.super_class = _HMDLocalDeviceHandle;
      v12 = [(_HMDDeviceHandle *)&v25 initWithIdentifier:v11];
      if (v12)
      {
        v13 = [v6 copy];
        deviceIdentifier = v12->_deviceIdentifier;
        v12->_deviceIdentifier = v13;
      }

      v15 = v12;

      v16 = v15;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v15 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse destination, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v15 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing destination parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

- (_HMDLocalDeviceHandle)initWithDeviceIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UUIDString];
    v7 = [@"device:" stringByAppendingString:v6];

    v8 = [(_HMDLocalDeviceHandle *)self initWithDestination:v7];
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing device identifier parameter", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isValidDestination:(id)a3
{
  v3 = __parseLocalDestination(a3, 0);
  v4 = v3 != 0;

  return v4;
}

@end
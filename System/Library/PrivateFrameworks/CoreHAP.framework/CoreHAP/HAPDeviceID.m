@interface HAPDeviceID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceID:(id)a3;
- (HAPDeviceID)init;
- (HAPDeviceID)initWithCoder:(id)a3;
- (HAPDeviceID)initWithDeviceIDData:(id)a3;
- (HAPDeviceID)initWithDeviceIDString:(id)a3;
- (NSString)deviceIDString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPDeviceID

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    v4 = [(HAPDeviceID *)self data];
    [v5 encodeObject:v4 forKey:@"HAP.data"];
  }
}

- (HAPDeviceID)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)deviceIDString
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = v9 - ((3 * HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [(HAPDeviceID *)self data];
  [v4 bytes];
  v5 = [(HAPDeviceID *)self data];
  [v5 length];
  HardwareAddressToCString();

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqualToDeviceID:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HAPDeviceID *)self data];
  v6 = [v4 data];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
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
      v7 = [(HAPDeviceID *)self isEqualToDeviceID:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HAPDeviceID *)self data];
  v3 = [v2 hash];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HAPDeviceID *)self deviceIDString];
  v6 = [v3 stringWithFormat:@"<%@ %p: %@>", v4, self, v5];

  return v6;
}

- (HAPDeviceID)initWithDeviceIDData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  if (v5 == HAPDeviceIDLength)
  {
    v15.receiver = self;
    v15.super_class = HAPDeviceID;
    v6 = [(HAPDeviceID *)&v15 init];
    if (v6)
    {
      v7 = [v4 copy];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HAPDeviceID)initWithDeviceIDString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HAPDeviceIDLength;
  v6 = &buf[-((HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v4 UTF8String];
  [v4 length];
  if (TextToHardwareAddress())
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier string: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v5];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v11];

    v10 = self;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HAPDeviceID)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end
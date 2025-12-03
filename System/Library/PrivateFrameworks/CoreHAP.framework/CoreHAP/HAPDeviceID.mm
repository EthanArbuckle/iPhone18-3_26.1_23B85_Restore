@interface HAPDeviceID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceID:(id)d;
- (HAPDeviceID)init;
- (HAPDeviceID)initWithCoder:(id)coder;
- (HAPDeviceID)initWithDeviceIDData:(id)data;
- (HAPDeviceID)initWithDeviceIDString:(id)string;
- (NSString)deviceIDString;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPDeviceID

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    data = [(HAPDeviceID *)self data];
    [coderCopy encodeObject:data forKey:@"HAP.data"];
  }
}

- (HAPDeviceID)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)deviceIDString
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = v9 - ((3 * HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0);
  data = [(HAPDeviceID *)self data];
  [data bytes];
  data2 = [(HAPDeviceID *)self data];
  [data2 length];
  HardwareAddressToCString();

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqualToDeviceID:(id)d
{
  if (self == d)
  {
    return 1;
  }

  dCopy = d;
  data = [(HAPDeviceID *)self data];
  data2 = [dCopy data];

  LOBYTE(dCopy) = [data isEqualToData:data2];
  return dCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
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
  data = [(HAPDeviceID *)self data];
  v3 = [data hash];

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  deviceIDString = [(HAPDeviceID *)self deviceIDString];
  v6 = [v3 stringWithFormat:@"<%@ %p: %@>", v4, self, deviceIDString];

  return v6;
}

- (HAPDeviceID)initWithDeviceIDData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy length];
  if (v5 == HAPDeviceIDLength)
  {
    v15.receiver = self;
    v15.super_class = HAPDeviceID;
    v6 = [(HAPDeviceID *)&v15 init];
    if (v6)
    {
      v7 = [dataCopy copy];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    selfCopy = self;
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
      v19 = dataCopy;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    selfCopy = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HAPDeviceID)initWithDeviceIDString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = HAPDeviceIDLength;
  v6 = &buf[-((HAPDeviceIDLength + 15) & 0xFFFFFFFFFFFFFFF0)];
  [stringCopy UTF8String];
  [stringCopy length];
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
      v17 = stringCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Invalid device identifier string: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    selfCopy = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v5];
    self = [(HAPDeviceID *)self initWithDeviceIDData:v11];

    selfCopy = self;
  }

  v12 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
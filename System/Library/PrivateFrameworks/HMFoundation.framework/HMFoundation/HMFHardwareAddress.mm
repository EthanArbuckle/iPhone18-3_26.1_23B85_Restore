@interface HMFHardwareAddress
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddress:(id)a3;
- (HMFHardwareAddress)initWithAddressData:(id)a3;
- (HMFHardwareAddress)initWithAddressString:(id)a3 length:(unint64_t)a4;
- (HMFHardwareAddress)initWithCoder:(id)a3;
- (NSString)formattedString;
- (NSString)propertyDescription;
- (unint64_t)hash;
- (unint64_t)length;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFHardwareAddress

- (HMFHardwareAddress)initWithAddressString:(id)a3 length:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 - 1 > 7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v21 = v16;
      v22 = 2048;
      v23 = a4;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hardware address with invalid length: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  else
  {
    [v6 UTF8String];
    [v7 length];
    v8 = TextToHardwareAddress();
    if (v8)
    {
      v9 = v8;
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier(0);
        *buf = 138543874;
        v21 = v12;
        v22 = 2112;
        v23 = v7;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert string to hardware address %@: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v10);
      v13 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:&buf[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] length:a4];
      v13 = [(HMFHardwareAddress *)self initWithAddressData:v17];
      self = v17;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HMFHardwareAddress)initWithAddressData:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 length] || objc_msgSend(v4, "length") >= 9)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hardware address with data of invalid length: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v8 = 0;
    goto LABEL_8;
  }

  v12.receiver = self;
  v12.super_class = HMFHardwareAddress;
  v8 = [(HMFHardwareAddress *)&v12 init];
  if (v8)
  {
    v9 = [v4 copy];
    self = *(v8 + 2);
    *(v8 + 2) = v9;
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSString)propertyDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMFHardwareAddress *)self formattedString];
  v4 = [v2 stringWithFormat:@" formattedString=%@", v3];

  return v4;
}

- (unint64_t)length
{
  v2 = [(HMFHardwareAddress *)self data];
  v3 = [v2 length];

  return v3;
}

- (NSString)formattedString
{
  v10[1] = *MEMORY[0x277D85DE8];
  formattedString = self->_formattedString;
  if (!formattedString)
  {
    v4 = v10 - ((3 * [(HMFHardwareAddress *)self length]+ 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = [(HMFHardwareAddress *)self data];
    [v5 bytes];
    [(HMFHardwareAddress *)self length];
    HardwareAddressToCString();

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v7 = self->_formattedString;
    self->_formattedString = v6;

    formattedString = self->_formattedString;
  }

  v8 = *MEMORY[0x277D85DE8];

  return formattedString;
}

- (unint64_t)hash
{
  v2 = [(HMFHardwareAddress *)self data];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HMFHardwareAddress *)self isEqualToAddress:v4];

  return v5;
}

- (BOOL)isEqualToAddress:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(HMFHardwareAddress *)self data];
  v6 = [v4 data];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (HMFHardwareAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.data"];

  v6 = [(HMFHardwareAddress *)self initWithAddressData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFHardwareAddress *)self data];
  [v4 encodeObject:v5 forKey:@"HMF.data"];
}

@end
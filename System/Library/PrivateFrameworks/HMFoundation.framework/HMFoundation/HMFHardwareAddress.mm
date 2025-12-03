@interface HMFHardwareAddress
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddress:(id)address;
- (HMFHardwareAddress)initWithAddressData:(id)data;
- (HMFHardwareAddress)initWithAddressString:(id)string length:(unint64_t)length;
- (HMFHardwareAddress)initWithCoder:(id)coder;
- (NSString)formattedString;
- (NSString)propertyDescription;
- (unint64_t)hash;
- (unint64_t)length;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFHardwareAddress

- (HMFHardwareAddress)initWithAddressString:(id)string length:(unint64_t)length
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = stringCopy;
  if (length - 1 > 7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v21 = v16;
      v22 = 2048;
      lengthCopy = length;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hardware address with invalid length: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  else
  {
    [stringCopy UTF8String];
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
        lengthCopy = v7;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert string to hardware address %@: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v10);
      v13 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:&buf[-((length + 15) & 0xFFFFFFFFFFFFFFF0)] length:length];
      v13 = [(HMFHardwareAddress *)self initWithAddressData:v17];
      self = v17;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HMFHardwareAddress)initWithAddressData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![dataCopy length] || objc_msgSend(dataCopy, "length") >= 9)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = dataCopy;
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
    v9 = [dataCopy copy];
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
  formattedString = [(HMFHardwareAddress *)self formattedString];
  v4 = [v2 stringWithFormat:@" formattedString=%@", formattedString];

  return v4;
}

- (unint64_t)length
{
  data = [(HMFHardwareAddress *)self data];
  v3 = [data length];

  return v3;
}

- (NSString)formattedString
{
  v10[1] = *MEMORY[0x277D85DE8];
  formattedString = self->_formattedString;
  if (!formattedString)
  {
    v4 = v10 - ((3 * [(HMFHardwareAddress *)self length]+ 15) & 0xFFFFFFFFFFFFFFF0);
    data = [(HMFHardwareAddress *)self data];
    [data bytes];
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
  data = [(HMFHardwareAddress *)self data];
  v3 = [data hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HMFHardwareAddress *)self isEqualToAddress:equalCopy];

  return v5;
}

- (BOOL)isEqualToAddress:(id)address
{
  if (self == address)
  {
    return 1;
  }

  addressCopy = address;
  data = [(HMFHardwareAddress *)self data];
  data2 = [addressCopy data];

  LOBYTE(addressCopy) = [data isEqualToData:data2];
  return addressCopy;
}

- (HMFHardwareAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.data"];

  v6 = [(HMFHardwareAddress *)self initWithAddressData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(HMFHardwareAddress *)self data];
  [coderCopy encodeObject:data forKey:@"HMF.data"];
}

@end
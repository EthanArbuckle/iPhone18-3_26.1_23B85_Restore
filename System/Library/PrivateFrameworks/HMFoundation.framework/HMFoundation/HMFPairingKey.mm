@interface HMFPairingKey
+ (void)setClassMappingForNSCoder;
- (BOOL)isEqual:(id)a3;
- (HMFPairingKey)init;
- (HMFPairingKey)initWithCoder:(id)a3;
- (HMFPairingKey)initWithPairingKeyData:(id)a3;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFPairingKey

+ (void)setClassMappingForNSCoder
{
  [MEMORY[0x277CCAAB0] setClassName:@"HAPPairingKey" forClass:objc_opt_class()];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"HAPPairingKey"];
}

- (HMFPairingKey)init
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

- (HMFPairingKey)initWithPairingKeyData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] == 32)
  {
    v15.receiver = self;
    v15.super_class = HMFPairingKey;
    v5 = [(HMFPairingKey *)&v15 init];
    if (v5)
    {
      v6 = [v4 hmf_zeroingCopy];
      data = v5->_data;
      v5->_data = v6;
    }

    v8 = v5;
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier(v8);
      *buf = 138543618;
      v17 = v12;
      v18 = 2048;
      v19 = 32;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@The pairing key data must be %tu bytes long", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMFPairingKey *)self data];
  v3 = [v2 hash];

  return v3;
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
      v5 = [(HMFPairingKey *)v4 data];
      v6 = [(HMFPairingKey *)self data];
      v7 = [v5 isEqualToData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFPairingKey *)self data];
  v5 = CUPrintNSObjectMasked();
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"Hash" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMFPairingKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.data"];

  v6 = [(HMFPairingKey *)self initWithPairingKeyData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFPairingKey *)self data];
  [v4 encodeObject:v5 forKey:@"HAP.data"];
}

@end
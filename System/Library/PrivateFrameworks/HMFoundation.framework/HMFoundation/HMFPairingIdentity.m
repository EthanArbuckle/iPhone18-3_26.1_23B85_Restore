@interface HMFPairingIdentity
+ (id)pairingIdentity;
- (BOOL)isEqual:(id)a3;
- (HMFPairingIdentity)init;
- (HMFPairingIdentity)initWithCoder:(id)a3;
- (HMFPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5;
- (HMFPairingIdentity)publicPairingIdentity;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFPairingIdentity

+ (id)pairingIdentity
{
  v16 = *MEMORY[0x277D85DE8];
  cced25519_make_key_pair_compat();
  v2 = [HMFPairingKey alloc];
  v3 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:v15 length:32];
  v4 = [(HMFPairingKey *)v2 initWithPairingKeyData:v3];

  v5 = [HMFPairingKey alloc];
  v6 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:v14 length:32];
  v7 = [(HMFPairingKey *)v5 initWithPairingKeyData:v6];

  cc_clear();
  cc_clear();
  v8 = objc_alloc(objc_opt_class());
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 initWithIdentifier:v10 publicKey:v4 privateKey:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMFPairingIdentity)init
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

- (HMFPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(v18);
      *buf = 138543362;
      v28 = v22;
      v23 = "%{public}@The identifier is required";
LABEL_10:
      _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v20);
    v19 = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(v18);
      *buf = 138543362;
      v28 = v22;
      v23 = "%{public}@The public key is required";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v26.receiver = self;
  v26.super_class = HMFPairingIdentity;
  v11 = [(HMFPairingIdentity *)&v26 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    publicKey = v11->_publicKey;
    v11->_publicKey = v14;

    v16 = [v10 copy];
    privateKey = v11->_privateKey;
    v11->_privateKey = v16;
  }

  v18 = v11;
  v19 = v18;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)hash
{
  v3 = [(HMFPairingIdentity *)self identifier];
  v4 = [v3 hash];
  v5 = [(HMFPairingIdentity *)self publicKey];
  v6 = [v5 hash];

  return v6 ^ v4;
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
      v5 = [(HMFPairingIdentity *)v4 identifier];
      v6 = [(HMFPairingIdentity *)self identifier];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(HMFPairingIdentity *)v4 publicKey];
        v8 = [(HMFPairingIdentity *)self publicKey];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFPairingIdentity *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFPairingIdentity *)self identifier];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Identifier" value:v4];
  v6 = [HMFAttributeDescription alloc];
  v7 = [(HMFPairingIdentity *)self publicKey];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Public Key" value:v7];
  v16[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  v10 = [(HMFPairingIdentity *)self privateKey];
  v11 = +[HMFPrivateObjectFormatter defaultFormatter];
  v12 = [(HMFAttributeDescription *)v9 initWithName:@"Private Key" value:v10 options:2 formatter:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMFPairingIdentity)publicPairingIdentity
{
  v3 = [(HMFPairingIdentity *)self privateKey];

  if (v3)
  {
    v4 = [HMFPairingIdentity alloc];
    v5 = [(HMFPairingIdentity *)self identifier];
    v6 = [(HMFPairingIdentity *)self publicKey];
    v7 = [(HMFPairingIdentity *)v4 initWithIdentifier:v5 publicKey:v6 privateKey:0];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (HMFPairingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMFPairingIdentity;
  v5 = [(HMFPairingIdentity *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.privateKey"];
    privateKey = v5->_privateKey;
    v5->_privateKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFPairingIdentity *)self identifier];
  [v4 encodeObject:v5 forKey:@"HAP.identifier"];

  v6 = [(HMFPairingIdentity *)self publicKey];
  [v4 encodeObject:v6 forKey:@"HAP.publicKey"];

  v7 = [(HMFPairingIdentity *)self privateKey];
  [v4 encodeObject:v7 forKey:@"HAP.privateKey"];
}

@end
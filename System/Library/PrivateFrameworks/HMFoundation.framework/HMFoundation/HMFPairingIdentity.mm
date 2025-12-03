@interface HMFPairingIdentity
+ (id)pairingIdentity;
- (BOOL)isEqual:(id)equal;
- (HMFPairingIdentity)init;
- (HMFPairingIdentity)initWithCoder:(id)coder;
- (HMFPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey;
- (HMFPairingIdentity)publicPairingIdentity;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v11 = [v8 initWithIdentifier:uUIDString publicKey:v4 privateKey:v7];

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

- (HMFPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyCopy = key;
  privateKeyCopy = privateKey;
  if (!identifierCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(selfCopy2);
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

  if (!keyCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(selfCopy2);
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
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [keyCopy copy];
    publicKey = v11->_publicKey;
    v11->_publicKey = v14;

    v16 = [privateKeyCopy copy];
    privateKey = v11->_privateKey;
    v11->_privateKey = v16;
  }

  selfCopy2 = v11;
  v19 = selfCopy2;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (unint64_t)hash
{
  identifier = [(HMFPairingIdentity *)self identifier];
  v4 = [identifier hash];
  publicKey = [(HMFPairingIdentity *)self publicKey];
  v6 = [publicKey hash];

  return v6 ^ v4;
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
      identifier = [(HMFPairingIdentity *)equalCopy identifier];
      identifier2 = [(HMFPairingIdentity *)self identifier];
      if ([identifier isEqualToString:identifier2])
      {
        publicKey = [(HMFPairingIdentity *)equalCopy publicKey];
        publicKey2 = [(HMFPairingIdentity *)self publicKey];
        v9 = [publicKey isEqual:publicKey2];
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
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMFPairingIdentity *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, identifier];

  return v6;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  identifier = [(HMFPairingIdentity *)self identifier];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Identifier" value:identifier];
  v6 = [HMFAttributeDescription alloc];
  publicKey = [(HMFPairingIdentity *)self publicKey];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Public Key" value:publicKey];
  v16[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  privateKey = [(HMFPairingIdentity *)self privateKey];
  v11 = +[HMFPrivateObjectFormatter defaultFormatter];
  v12 = [(HMFAttributeDescription *)v9 initWithName:@"Private Key" value:privateKey options:2 formatter:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMFPairingIdentity)publicPairingIdentity
{
  privateKey = [(HMFPairingIdentity *)self privateKey];

  if (privateKey)
  {
    v4 = [HMFPairingIdentity alloc];
    identifier = [(HMFPairingIdentity *)self identifier];
    publicKey = [(HMFPairingIdentity *)self publicKey];
    selfCopy = [(HMFPairingIdentity *)v4 initWithIdentifier:identifier publicKey:publicKey privateKey:0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (HMFPairingIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMFPairingIdentity;
  v5 = [(HMFPairingIdentity *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.privateKey"];
    privateKey = v5->_privateKey;
    v5->_privateKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMFPairingIdentity *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HAP.identifier"];

  publicKey = [(HMFPairingIdentity *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"HAP.publicKey"];

  privateKey = [(HMFPairingIdentity *)self privateKey];
  [coderCopy encodeObject:privateKey forKey:@"HAP.privateKey"];
}

@end
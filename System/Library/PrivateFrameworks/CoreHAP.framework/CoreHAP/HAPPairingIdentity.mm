@interface HAPPairingIdentity
- (BOOL)isStrictlyEqual:(id)equal;
- (HAPPairingIdentity)initWithCoder:(id)coder;
- (HAPPairingIdentity)initWithIdentifier:(id)identifier controllerKeyIdentifier:(id)keyIdentifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions;
- (HAPPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions;
- (HAPPairingIdentity)initWithKeychainItem:(id)item;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPPairingIdentity

- (HAPPairingIdentity)initWithKeychainItem:(id)item
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  valueData = [itemCopy valueData];
  v6 = _deserializeDataToKeyPair(valueData, v29, __s);

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v22 = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = itemCopy;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize key for item %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = 0;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D0F8B0]);
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:32];
    v15 = [v13 initWithPairingKeyData:v14];

    v16 = objc_alloc(MEMORY[0x277D0F8B0]);
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
    v18 = [v16 initWithPairingKeyData:v17];

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
    account = [itemCopy account];
    selfCopy = [(HAPPairingIdentity *)self initWithIdentifier:account publicKey:v15 privateKey:v18];

    v12 = selfCopy;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)attributeDescriptions
{
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  attributeDescriptions = [(HMFObject *)&v9 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [v5 initWithName:@"controllerKeyIdentifier" value:controllerKeyIdentifier];
  [v4 addObject:v7];

  return v4;
}

- (BOOL)isStrictlyEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
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
    if (v6 && (v12.receiver = self, v12.super_class = HAPPairingIdentity, [(HAPPairingIdentity *)&v12 isEqual:equalCopy]) && (v7 = [(HAPPairingIdentity *)self permissions], v7 == [(HAPPairingIdentity *)self permissions]))
    {
      controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
      controllerKeyIdentifier2 = [(HAPPairingIdentity *)v6 controllerKeyIdentifier];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HAPPairingIdentity;
  coderCopy = coder;
  [(HAPPairingIdentity *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HAPPairingIdentity permissions](self forKey:{"permissions", v6.receiver, v6.super_class), @"HAP.permissions"}];
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  [coderCopy encodeObject:controllerKeyIdentifier forKey:@"HAP.ctrlId"];
}

- (HAPPairingIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v5 = [(HAPPairingIdentity *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_permissions = [coderCopy decodeIntegerForKey:@"HAP.permissions"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP.ctrlId"];
    controllerKeyIdentifier = v5->_controllerKeyIdentifier;
    v5->_controllerKeyIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPPairingIdentity allocWithZone:zone];
  identifier = [(HAPPairingIdentity *)self identifier];
  controllerKeyIdentifier = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  publicKey = [(HAPPairingIdentity *)self publicKey];
  privateKey = [(HAPPairingIdentity *)self privateKey];
  v9 = [(HAPPairingIdentity *)v4 initWithIdentifier:identifier controllerKeyIdentifier:controllerKeyIdentifier publicKey:publicKey privateKey:privateKey permissions:[(HAPPairingIdentity *)self permissions]];

  return v9;
}

- (HAPPairingIdentity)initWithIdentifier:(id)identifier controllerKeyIdentifier:(id)keyIdentifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions
{
  keyIdentifierCopy = keyIdentifier;
  v17.receiver = self;
  v17.super_class = HAPPairingIdentity;
  v14 = [(HAPPairingIdentity *)&v17 initWithIdentifier:identifier publicKey:key privateKey:privateKey];
  v15 = v14;
  if (v14)
  {
    v14->_permissions = permissions;
    objc_storeStrong(&v14->_controllerKeyIdentifier, keyIdentifier);
  }

  return v15;
}

- (HAPPairingIdentity)initWithIdentifier:(id)identifier publicKey:(id)key privateKey:(id)privateKey permissions:(unint64_t)permissions
{
  result = [(HAPPairingIdentity *)self initWithIdentifier:identifier controllerKeyIdentifier:0 publicKey:key privateKey:privateKey permissions:permissions];
  if (result)
  {
    result->_permissions = permissions;
  }

  return result;
}

@end
@interface HAPPairingIdentity
- (BOOL)isStrictlyEqual:(id)a3;
- (HAPPairingIdentity)initWithCoder:(id)a3;
- (HAPPairingIdentity)initWithIdentifier:(id)a3 controllerKeyIdentifier:(id)a4 publicKey:(id)a5 privateKey:(id)a6 permissions:(unint64_t)a7;
- (HAPPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5 permissions:(unint64_t)a6;
- (HAPPairingIdentity)initWithKeychainItem:(id)a3;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPPairingIdentity

- (HAPPairingIdentity)initWithKeychainItem:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueData];
  v6 = _deserializeDataToKeyPair(v5, v29, __s);

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v22 = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = v4;
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
    v19 = [v4 account];
    v8 = [(HAPPairingIdentity *)self initWithIdentifier:v19 publicKey:v15 privateKey:v18];

    v12 = v8;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)attributeDescriptions
{
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v3 = [(HMFObject *)&v9 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [v5 initWithName:@"controllerKeyIdentifier" value:v6];
  [v4 addObject:v7];

  return v4;
}

- (BOOL)isStrictlyEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
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
    if (v6 && (v12.receiver = self, v12.super_class = HAPPairingIdentity, [(HAPPairingIdentity *)&v12 isEqual:v4]) && (v7 = [(HAPPairingIdentity *)self permissions], v7 == [(HAPPairingIdentity *)self permissions]))
    {
      v8 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
      v9 = [(HAPPairingIdentity *)v6 controllerKeyIdentifier];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HAPPairingIdentity;
  v4 = a3;
  [(HAPPairingIdentity *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[HAPPairingIdentity permissions](self forKey:{"permissions", v6.receiver, v6.super_class), @"HAP.permissions"}];
  v5 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  [v4 encodeObject:v5 forKey:@"HAP.ctrlId"];
}

- (HAPPairingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPPairingIdentity;
  v5 = [(HAPPairingIdentity *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_permissions = [v4 decodeIntegerForKey:@"HAP.permissions"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HAP.ctrlId"];
    controllerKeyIdentifier = v5->_controllerKeyIdentifier;
    v5->_controllerKeyIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPPairingIdentity allocWithZone:a3];
  v5 = [(HAPPairingIdentity *)self identifier];
  v6 = [(HAPPairingIdentity *)self controllerKeyIdentifier];
  v7 = [(HAPPairingIdentity *)self publicKey];
  v8 = [(HAPPairingIdentity *)self privateKey];
  v9 = [(HAPPairingIdentity *)v4 initWithIdentifier:v5 controllerKeyIdentifier:v6 publicKey:v7 privateKey:v8 permissions:[(HAPPairingIdentity *)self permissions]];

  return v9;
}

- (HAPPairingIdentity)initWithIdentifier:(id)a3 controllerKeyIdentifier:(id)a4 publicKey:(id)a5 privateKey:(id)a6 permissions:(unint64_t)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = HAPPairingIdentity;
  v14 = [(HAPPairingIdentity *)&v17 initWithIdentifier:a3 publicKey:a5 privateKey:a6];
  v15 = v14;
  if (v14)
  {
    v14->_permissions = a7;
    objc_storeStrong(&v14->_controllerKeyIdentifier, a4);
  }

  return v15;
}

- (HAPPairingIdentity)initWithIdentifier:(id)a3 publicKey:(id)a4 privateKey:(id)a5 permissions:(unint64_t)a6
{
  result = [(HAPPairingIdentity *)self initWithIdentifier:a3 controllerKeyIdentifier:0 publicKey:a4 privateKey:a5 permissions:a6];
  if (result)
  {
    result->_permissions = a6;
  }

  return result;
}

@end
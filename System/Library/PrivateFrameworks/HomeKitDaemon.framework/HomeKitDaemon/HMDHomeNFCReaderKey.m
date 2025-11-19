@interface HMDHomeNFCReaderKey
+ (id)createRandomKey;
+ (id)createWithDictionaryRepresentation:(id)a3;
+ (id)createWithExternalRepresentation:(id)a3;
+ (id)createWithKeychainItem:(id)a3;
+ (id)identifierForKey:(id)a3;
+ (id)keychainItemAccountAttributeValueWithHome:(id)a3 keyIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMDHomeNFCReaderKey)initWithCoder:(id)a3;
- (HMDHomeNFCReaderKey)initWithIdentifier:(id)a3 privateKey:(id)a4 publicKeyExternalRepresentation:(id)a5;
- (NSData)externalRepresentation;
- (NSData)publicKey;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (id)createKeychainItemForHome:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDHomeNFCReaderKey

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDHomeNFCReaderKey *)self identifier];
  v5 = [v4 hmf_hexadecimalRepresentation];
  v6 = [v3 initWithName:@"Identifier" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDHomeNFCReaderKey *)self privateKey];
  v9 = HMFBooleanToString();
  v10 = [v7 initWithName:@"Has Private Key" value:v9];
  v18[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v13 = [v12 hmf_hexadecimalRepresentation];
  v14 = [v11 initWithName:@"Public Key External Representation" value:v13];
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKey *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];

  v6 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  [v4 encodeObject:v6 forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
}

- (HMDHomeNFCReaderKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
    if (v6)
    {
      self = [(HMDHomeNFCReaderKey *)self initWithIdentifier:v6 privateKey:0 publicKeyExternalRepresentation:v5];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v4 = [v3 hash];

  v5 = [(HMDHomeNFCReaderKey *)self privateKey];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDHomeNFCReaderKey *)self identifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 publicKeyExternalRepresentation];
    v9 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    if ([v8 isEqual:v9] && (objc_msgSend(v7, "privateKey"), v10 = objc_claimAutoreleasedReturnValue(), -[HMDHomeNFCReaderKey privateKey](self, "privateKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
    {
      v13 = [v7 identifier];
      v14 = [(HMDHomeNFCReaderKey *)self identifier];
      v15 = [v13 isEqualToData:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"HMDHomeNFCReaderIdentifierCodingKey";
  v3 = [(HMDHomeNFCReaderKey *)self identifier];
  v8[1] = @"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey";
  v9[0] = v3;
  v4 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSData)externalRepresentation
{
  v3 = [(HMDHomeNFCReaderKey *)self privateKey];
  if (v3)
  {
    v4 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    v5 = [v4 mutableCopy];

    [v5 appendData:v3];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)publicKey
{
  v2 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v3 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v2];

  return v3;
}

- (HMDHomeNFCReaderKey)initWithIdentifier:(id)a3 privateKey:(id)a4 publicKeyExternalRepresentation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDHomeNFCReaderKey;
  v12 = [(HMDHomeNFCReaderKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v14 = [v10 copy];
    privateKey = v13->_privateKey;
    v13->_privateKey = v14;

    v16 = [v11 copy];
    publicKeyExternalRepresentation = v13->_publicKeyExternalRepresentation;
    v13->_publicKeyExternalRepresentation = v16;
  }

  return v13;
}

+ (id)identifierForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  v3 = a3;
  CC_SHA256_Init(&v8);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v8.count, *&v8.hash[2], *&v8.hash[6], *&v8.wbuf[2], *&v8.wbuf[6], *&v8.wbuf[10], *&v8.wbuf[14]}];
  [v4 appendData:v3];

  CC_SHA256_Update(&v8, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v8);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)createWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 hmf_dataForKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
  if (v4)
  {
    v5 = [v3 hmf_dataForKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
    if (v5)
    {
      v6 = [[HMDHomeNFCReaderKey alloc] initWithIdentifier:v4 privateKey:0 publicKeyExternalRepresentation:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)createWithExternalRepresentation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] == 97)
  {
    v4 = [v3 subdataWithRange:{0, 65}];
    v5 = [v3 subdataWithRange:{65, 32}];
    v6 = [HMDHomeNFCReaderKey identifierForKey:v5];
    v7 = [[HMDHomeNFCReaderKey alloc] initWithIdentifier:v6 privateKey:v5 publicKeyExternalRepresentation:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = [v3 length];
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nfc reader key external representation length %lu", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)createRandomKey
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC040];
  v3 = *MEMORY[0x277CDC018];
  v24[0] = *MEMORY[0x277CDC028];
  v24[1] = v3;
  v25[0] = v2;
  v25[1] = &unk_283E728C0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  error = 0;
  v5 = SecKeyCreateRandomKey(v4, &error);
  v6 = v5;
  v7 = error;
  if (v5)
  {
    v8 = SecKeyCopyExternalRepresentation(v5, &error);
    v9 = error;

    if (v8)
    {
      v10 = [HMDHomeNFCReaderKey createWithExternalRepresentation:v8];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy nfc reader key external representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v10 = 0;
    }

    v7 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create nfc reader key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createKeychainItemForHome:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNFCReaderKey *)self externalRepresentation];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CFEBC8]);
    [v6 setLabel:@"Home NFC Reader Key"];
    [v6 setItemDescription:@"Per Home NFC Reader Key synced to HomeKit locks to protect device privacy over NFC transaction."];
    [v6 setAccessGroup:@"com.apple.hap.pairing"];
    [v6 setSyncable:1];
    [v6 setType:&unk_283E73778];
    v7 = MEMORY[0x277CFEC78];
    v8 = [v6 type];
    v9 = [v7 viewHintForType:v8];
    [v6 setViewHint:v9];

    [v6 setValueData:v5];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v6 setCreationDate:v10];

    v11 = objc_opt_class();
    v12 = [(HMDHomeNFCReaderKey *)self identifier];
    v13 = [v11 keychainItemAccountAttributeValueWithHome:v4 keyIdentifier:v12];
    [v6 setAccount:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create keychain item for home: %@ from: %@, external representation is nil", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v6 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)createWithKeychainItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessGroup];
  v6 = [v5 isEqualToString:@"com.apple.hap.pairing"];

  if (v6)
  {
    v7 = [v4 type];
    v8 = [v7 isEqualToNumber:&unk_283E73778];

    if (v8)
    {
      v9 = [v4 valueData];
      v10 = [HMDHomeNFCReaderKey createWithExternalRepresentation:v9];

      goto LABEL_10;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = &unk_283E73778;
      v15 = "%{public}@Failed to create nfc reader key from keychain item: %@ is not equal to: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = @"com.apple.hap.pairing";
      v15 = "%{public}@Failed to create nfc reader key from keychain item: %@ access group is not equal to: %@";
LABEL_8:
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)keychainItemAccountAttributeValueWithHome:(id)a3 keyIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a4;
  v7 = [a3 uuid];
  v8 = [v5 hmf_UUIDWithNamespace:v7 data:v6];

  v9 = [v8 UUIDString];

  return v9;
}

@end
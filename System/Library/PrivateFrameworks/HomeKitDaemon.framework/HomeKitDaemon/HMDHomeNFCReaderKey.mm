@interface HMDHomeNFCReaderKey
+ (id)createRandomKey;
+ (id)createWithDictionaryRepresentation:(id)representation;
+ (id)createWithExternalRepresentation:(id)representation;
+ (id)createWithKeychainItem:(id)item;
+ (id)identifierForKey:(id)key;
+ (id)keychainItemAccountAttributeValueWithHome:(id)home keyIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HMDHomeNFCReaderKey)initWithCoder:(id)coder;
- (HMDHomeNFCReaderKey)initWithIdentifier:(id)identifier privateKey:(id)key publicKeyExternalRepresentation:(id)representation;
- (NSData)externalRepresentation;
- (NSData)publicKey;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (id)createKeychainItemForHome:(id)home;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDHomeNFCReaderKey

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  hmf_hexadecimalRepresentation = [identifier hmf_hexadecimalRepresentation];
  v6 = [v3 initWithName:@"Identifier" value:hmf_hexadecimalRepresentation];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  v9 = HMFBooleanToString();
  v10 = [v7 initWithName:@"Has Private Key" value:v9];
  v18[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  hmf_hexadecimalRepresentation2 = [publicKeyExternalRepresentation hmf_hexadecimalRepresentation];
  v14 = [v11 initWithName:@"Public Key External Representation" value:hmf_hexadecimalRepresentation2];
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];

  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  [coderCopy encodeObject:publicKeyExternalRepresentation forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
}

- (HMDHomeNFCReaderKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
    if (v6)
    {
      self = [(HMDHomeNFCReaderKey *)self initWithIdentifier:v6 privateKey:0 publicKeyExternalRepresentation:v5];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v4 = [publicKeyExternalRepresentation hash];

  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  v6 = [privateKey hash] ^ v4;

  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  v8 = [identifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  v7 = v6;
  if (v6)
  {
    publicKeyExternalRepresentation = [v6 publicKeyExternalRepresentation];
    publicKeyExternalRepresentation2 = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    if ([publicKeyExternalRepresentation isEqual:publicKeyExternalRepresentation2] && (objc_msgSend(v7, "privateKey"), v10 = objc_claimAutoreleasedReturnValue(), -[HMDHomeNFCReaderKey privateKey](self, "privateKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12))
    {
      identifier = [v7 identifier];
      identifier2 = [(HMDHomeNFCReaderKey *)self identifier];
      v15 = [identifier isEqualToData:identifier2];
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
  identifier = [(HMDHomeNFCReaderKey *)self identifier];
  v8[1] = @"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey";
  v9[0] = identifier;
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v9[1] = publicKeyExternalRepresentation;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSData)externalRepresentation
{
  privateKey = [(HMDHomeNFCReaderKey *)self privateKey];
  if (privateKey)
  {
    publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
    v5 = [publicKeyExternalRepresentation mutableCopy];

    [v5 appendData:privateKey];
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
  publicKeyExternalRepresentation = [(HMDHomeNFCReaderKey *)self publicKeyExternalRepresentation];
  v3 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:publicKeyExternalRepresentation];

  return v3;
}

- (HMDHomeNFCReaderKey)initWithIdentifier:(id)identifier privateKey:(id)key publicKeyExternalRepresentation:(id)representation
{
  identifierCopy = identifier;
  keyCopy = key;
  representationCopy = representation;
  v19.receiver = self;
  v19.super_class = HMDHomeNFCReaderKey;
  v12 = [(HMDHomeNFCReaderKey *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v14 = [keyCopy copy];
    privateKey = v13->_privateKey;
    v13->_privateKey = v14;

    v16 = [representationCopy copy];
    publicKeyExternalRepresentation = v13->_publicKeyExternalRepresentation;
    v13->_publicKeyExternalRepresentation = v16;
  }

  return v13;
}

+ (id)identifierForKey:(id)key
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  keyCopy = key;
  CC_SHA256_Init(&v8);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v8.count, *&v8.hash[2], *&v8.hash[6], *&v8.wbuf[2], *&v8.wbuf[6], *&v8.wbuf[10], *&v8.wbuf[14]}];
  [v4 appendData:keyCopy];

  CC_SHA256_Update(&v8, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v8);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)createWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy hmf_dataForKey:@"HMDHomeNFCReaderIdentifierCodingKey"];
  if (v4)
  {
    v5 = [representationCopy hmf_dataForKey:@"HMDHomeNFCReaderPublicKeyExternalRepresentationCodingKey"];
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

+ (id)createWithExternalRepresentation:(id)representation
{
  v17 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length] == 97)
  {
    v4 = [representationCopy subdataWithRange:{0, 65}];
    v5 = [representationCopy subdataWithRange:{65, 32}];
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
      v16 = [representationCopy length];
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

- (id)createKeychainItemForHome:(id)home
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  externalRepresentation = [(HMDHomeNFCReaderKey *)self externalRepresentation];
  if (externalRepresentation)
  {
    v6 = objc_alloc_init(MEMORY[0x277CFEBC8]);
    [v6 setLabel:@"Home NFC Reader Key"];
    [v6 setItemDescription:@"Per Home NFC Reader Key synced to HomeKit locks to protect device privacy over NFC transaction."];
    [v6 setAccessGroup:@"com.apple.hap.pairing"];
    [v6 setSyncable:1];
    [v6 setType:&unk_283E73778];
    v7 = MEMORY[0x277CFEC78];
    type = [v6 type];
    v9 = [v7 viewHintForType:type];
    [v6 setViewHint:v9];

    [v6 setValueData:externalRepresentation];
    date = [MEMORY[0x277CBEAA8] date];
    [v6 setCreationDate:date];

    v11 = objc_opt_class();
    identifier = [(HMDHomeNFCReaderKey *)self identifier];
    v13 = [v11 keychainItemAccountAttributeValueWithHome:homeCopy keyIdentifier:identifier];
    [v6 setAccount:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = homeCopy;
      v24 = 2112;
      v25 = selfCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create keychain item for home: %@ from: %@, external representation is nil", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v6 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)createWithKeychainItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  accessGroup = [itemCopy accessGroup];
  v6 = [accessGroup isEqualToString:@"com.apple.hap.pairing"];

  if (v6)
  {
    type = [itemCopy type];
    v8 = [type isEqualToNumber:&unk_283E73778];

    if (v8)
    {
      valueData = [itemCopy valueData];
      v10 = [HMDHomeNFCReaderKey createWithExternalRepresentation:valueData];

      goto LABEL_10;
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = itemCopy;
      v22 = 2112;
      v23 = &unk_283E73778;
      v15 = "%{public}@Failed to create nfc reader key from keychain item: %@ is not equal to: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = itemCopy;
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

+ (id)keychainItemAccountAttributeValueWithHome:(id)home keyIdentifier:(id)identifier
{
  v5 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  uuid = [home uuid];
  v8 = [v5 hmf_UUIDWithNamespace:uuid data:identifierCopy];

  uUIDString = [v8 UUIDString];

  return uUIDString;
}

@end
@interface HMDLegacyModelContainer
- (Class)modelClassForTypeName:(id)name;
- (HMDLegacyModelContainer)initWithDataVersion:(id)version legacyDataVersion:(id)dataVersion pairingIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodePropertyValueFromData:(id)data forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error;
- (id)decryptData:(id)data decompress:(BOOL)decompress error:(id *)error;
- (id)encodePropertyValue:(id)value forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error;
- (id)encryptData:(id)data compress:(BOOL)compress error:(id *)error;
- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location type:(id)type error:(id *)error;
@end

@implementation HMDLegacyModelContainer

- (id)decodePropertyValueFromData:(id)data forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  propertyCopy = property;
  fieldCopy = field;
  if ([objc_msgSend(fieldCopy "classObj")])
  {
    error = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_msgSend(fieldCopy fromData:"classObj") error:{dataCopy, error}];
  }

  else if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D0F1A0];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"should conform to NSSecureCoding (but storage class for property %@ does not)", propertyCopy, @"message"];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:v14 code:3 userInfo:v16];

    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)encodePropertyValue:(id)value forProperty:(id)property field:(id)field storageLocation:(unint64_t)location error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valueCopy = value;
  if ([objc_opt_class() conformsToProtocol:&unk_283E85EF8])
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:error];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();

    propertyCopy = [v12 stringWithFormat:@"Cannot encode value of type %@ for property '%@' because it does not conform to NSSecureCoding", v13, propertyCopy];
    v15 = propertyCopy;
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D0F1A0];
      v21 = @"message";
      v22[0] = propertyCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v16 errorWithDomain:v17 code:3 userInfo:v18];
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HMDLegacyModelContainer;
  v4 = [(HMBModelContainer *)&v9 copyWithZone:zone];
  if (self)
  {
    pairingIdentity = [(HMDLegacyModelContainer *)self pairingIdentity];
    v6 = v4[12];
    v4[12] = pairingIdentity;
  }

  selfCopy = self;

  return selfCopy;
}

- (id)encryptData:(id)data compress:(BOOL)compress error:(id *)error
{
  compressCopy = compress;
  dataCopy = data;
  v9 = dataCopy;
  if (compressCopy)
  {
    hmbCompress = [dataCopy hmbCompress];

    v9 = hmbCompress;
  }

  pairingIdentity = [(HMDLegacyModelContainer *)self pairingIdentity];
  privateKey = [pairingIdentity privateKey];
  data = [privateKey data];
  v14 = [HMDPersistentStore encryptData:v9 withKey:data error:error];

  return v14;
}

- (id)decryptData:(id)data decompress:(BOOL)decompress error:(id *)error
{
  decompressCopy = decompress;
  dataCopy = data;
  pairingIdentity = [(HMDLegacyModelContainer *)self pairingIdentity];
  privateKey = [pairingIdentity privateKey];
  data = [privateKey data];
  v12 = [HMDPersistentStore decryptData:dataCopy withKey:data error:error];

  if (decompressCopy)
  {
    hmbUncompress = [v12 hmbUncompress];
  }

  else
  {
    hmbUncompress = v12;
  }

  v14 = hmbUncompress;

  return v14;
}

- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location type:(id)type error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  typeCopy = type;
  if (![dataCopy length])
  {
    goto LABEL_17;
  }

  if (encoding == 2)
  {
    v14 = [MEMORY[0x277D170A8] decodeAsOPACK:dataCopy error:error];
  }

  else
  {
    if (encoding != 1)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v23;
        v31 = 2048;
        encodingCopy = encoding;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot deserialize from unknown encoding: %lu", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        *error = v24 = 0;
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    v14 = [MEMORY[0x277D170A8] decodeAsNSDictionary:dataCopy error:error];
  }

  v15 = v14;
  if (!v14)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_24;
  }

  if (!typeCopy)
  {
    typeCopy = [v14 objectForKey:@"_t"];
    if (!typeCopy)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v19;
        v31 = 2112;
        encodingCopy = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine type for model %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        *error = typeCopy = 0;
      }

      else
      {
        typeCopy = 0;
      }
    }
  }

  v25 = [(HMDLegacyModelContainer *)self modelClassForTypeName:typeCopy];
  if ([(objc_class *)v25 isSubclassOfClass:objc_opt_class()])
  {
    v24 = [(HMBModelContainer *)self modelFromDictionary:v15 storageLocation:location typeName:typeCopy error:error];
  }

  else
  {
    if (([(objc_class *)v25 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _HMFPreconditionFailure();
    }

    v26 = NSStringFromClass([HMDLegacyV4Model hmbModelClassForHMDModelClass:v25]);
    v24 = [(HMBModelContainer *)self modelFromDictionary:v15 storageLocation:location typeName:v26 error:error];
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (Class)modelClassForTypeName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[HMDBackingStoreSingleton sharedInstance];
  nameToClassTransform = [v5 nameToClassTransform];
  v7 = [nameToClassTransform objectForKey:nameCopy];

  if (!v7)
  {
    nameToClassTransform2 = [(HMBModelContainer *)self nameToClassTransform];
    v7 = [nameToClassTransform2 objectForKey:nameCopy];

    if (!v7)
    {
      v7 = NSClassFromString(nameCopy);
      if (!v7)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          v16 = 138543618;
          v17 = v12;
          v18 = 2112;
          v19 = nameCopy;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to translate type name %@ to class", &v16, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }
    }
  }

  v13 = v7;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDLegacyModelContainer)initWithDataVersion:(id)version legacyDataVersion:(id)dataVersion pairingIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = HMDLegacyModelContainer;
  v10 = [(HMBModelContainer *)&v13 initWithDataVersion:version legacyDataVersion:dataVersion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pairingIdentity, identity);
  }

  return v11;
}

@end
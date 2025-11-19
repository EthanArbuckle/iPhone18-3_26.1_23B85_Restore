@interface HMDLegacyModelContainer
- (Class)modelClassForTypeName:(id)a3;
- (HMDLegacyModelContainer)initWithDataVersion:(id)a3 legacyDataVersion:(id)a4 pairingIdentity:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodePropertyValueFromData:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7;
- (id)decryptData:(id)a3 decompress:(BOOL)a4 error:(id *)a5;
- (id)encodePropertyValue:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7;
- (id)encryptData:(id)a3 compress:(BOOL)a4 error:(id *)a5;
- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 type:(id)a6 error:(id *)a7;
@end

@implementation HMDLegacyModelContainer

- (id)decodePropertyValueFromData:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([objc_msgSend(v12 "classObj")])
  {
    a7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_msgSend(v12 fromData:"classObj") error:{v10, a7}];
  }

  else if (a7)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D0F1A0];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"should conform to NSSecureCoding (but storage class for property %@ does not)", v11, @"message"];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a7 = [v13 errorWithDomain:v14 code:3 userInfo:v16];

    a7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return a7;
}

- (id)encodePropertyValue:(id)a3 forProperty:(id)a4 field:(id)a5 storageLocation:(unint64_t)a6 error:(id *)a7
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  if ([objc_opt_class() conformsToProtocol:&unk_283E85EF8])
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a7];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();

    v14 = [v12 stringWithFormat:@"Cannot encode value of type %@ for property '%@' because it does not conform to NSSecureCoding", v13, v9];
    v15 = v14;
    if (a7)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D0F1A0];
      v21 = @"message";
      v22[0] = v14;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a7 = [v16 errorWithDomain:v17 code:3 userInfo:v18];
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HMDLegacyModelContainer;
  v4 = [(HMBModelContainer *)&v9 copyWithZone:a3];
  if (self)
  {
    v5 = [(HMDLegacyModelContainer *)self pairingIdentity];
    v6 = v4[12];
    v4[12] = v5;
  }

  v7 = self;

  return v7;
}

- (id)encryptData:(id)a3 compress:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v10 = [v8 hmbCompress];

    v9 = v10;
  }

  v11 = [(HMDLegacyModelContainer *)self pairingIdentity];
  v12 = [v11 privateKey];
  v13 = [v12 data];
  v14 = [HMDPersistentStore encryptData:v9 withKey:v13 error:a5];

  return v14;
}

- (id)decryptData:(id)a3 decompress:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(HMDLegacyModelContainer *)self pairingIdentity];
  v10 = [v9 privateKey];
  v11 = [v10 data];
  v12 = [HMDPersistentStore decryptData:v8 withKey:v11 error:a5];

  if (v6)
  {
    v13 = [v12 hmbUncompress];
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

- (id)modelFromData:(id)a3 encoding:(unint64_t)a4 storageLocation:(unint64_t)a5 type:(id)a6 error:(id *)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  if (![v12 length])
  {
    goto LABEL_17;
  }

  if (a4 == 2)
  {
    v14 = [MEMORY[0x277D170A8] decodeAsOPACK:v12 error:a7];
  }

  else
  {
    if (a4 != 1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v23;
        v31 = 2048;
        v32 = a4;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot deserialize from unknown encoding: %lu", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (a7)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        *a7 = v24 = 0;
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    v14 = [MEMORY[0x277D170A8] decodeAsNSDictionary:v12 error:a7];
  }

  v15 = v14;
  if (!v14)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_24;
  }

  if (!v13)
  {
    v13 = [v14 objectForKey:@"_t"];
    if (!v13)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine type for model %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (a7)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        *a7 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  v25 = [(HMDLegacyModelContainer *)self modelClassForTypeName:v13];
  if ([(objc_class *)v25 isSubclassOfClass:objc_opt_class()])
  {
    v24 = [(HMBModelContainer *)self modelFromDictionary:v15 storageLocation:a5 typeName:v13 error:a7];
  }

  else
  {
    if (([(objc_class *)v25 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      _HMFPreconditionFailure();
    }

    v26 = NSStringFromClass([HMDLegacyV4Model hmbModelClassForHMDModelClass:v25]);
    v24 = [(HMBModelContainer *)self modelFromDictionary:v15 storageLocation:a5 typeName:v26 error:a7];
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (Class)modelClassForTypeName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDBackingStoreSingleton sharedInstance];
  v6 = [v5 nameToClassTransform];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v8 = [(HMBModelContainer *)self nameToClassTransform];
    v7 = [v8 objectForKey:v4];

    if (!v7)
    {
      v7 = NSClassFromString(v4);
      if (!v7)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          v16 = 138543618;
          v17 = v12;
          v18 = 2112;
          v19 = v4;
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

- (HMDLegacyModelContainer)initWithDataVersion:(id)a3 legacyDataVersion:(id)a4 pairingIdentity:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HMDLegacyModelContainer;
  v10 = [(HMBModelContainer *)&v13 initWithDataVersion:a3 legacyDataVersion:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pairingIdentity, a5);
  }

  return v11;
}

@end
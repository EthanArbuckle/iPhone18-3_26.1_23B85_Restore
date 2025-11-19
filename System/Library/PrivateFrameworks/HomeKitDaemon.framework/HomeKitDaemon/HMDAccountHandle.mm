@interface HMDAccountHandle
+ (id)accountHandleForDestination:(id)a3;
+ (id)logCategory;
- (BOOL)isBackingStorageEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateBackingModel:(id)a3 error:(id *)a4;
- (CKUserIdentityLookupInfo)cloudKitLookupInfo;
- (CNContact)contact;
- (HMDAccountHandle)init;
- (HMDAccountHandle)initWithBackingModel:(id)a3;
- (HMDAccountHandle)initWithCoder:(id)a3;
- (HMDAccountHandle)initWithObjectModel:(id)a3;
- (HMDAccountHandle)initWithURI:(id)a3 local:(BOOL)a4;
- (NSString)remoteDestinationString;
- (NSString)value;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)shortDescription;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setModelParentIdentifier:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAccountHandle

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDAccountHandle *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (id)logIdentifier
{
  v2 = [(HMDAccountHandle *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSString)remoteDestinationString
{
  v2 = [(HMDAccountHandle *)self URI];
  v3 = [v2 prefixedURI];

  return v3;
}

- (BOOL)isBackingStorageEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(HMDAccountHandle *)self isEqual:v4])
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [(HMDAccountHandle *)self isLocal];
      v9 = v8 ^ [(HMDAccountHandle *)v7 isLocal]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)modelBackedObjects
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccountHandle *)self modelObjectWithChangeType:a3 version:a4];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(HMDAccountHandle *)self modelParentIdentifier:a3];

  if (v6)
  {
    v7 = [HMDAccountHandleModel alloc];
    v8 = [(HMDAccountHandle *)self modelIdentifier];
    v9 = [(HMDAccountHandle *)self modelParentIdentifier];
    v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:a3 uuid:v8 parentUUID:v9];

    v11 = [(HMDAccountHandle *)self URI];
    v12 = [v11 copy];
    [(HMDAccountHandleModel *)v10 setIdsURI:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccountHandle isLocal](self, "isLocal")}];
    [(HMDAccountHandleModel *)v10 setLocal:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Account handle is missing parent identifier, returning nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setModelParentIdentifier:(id)a3
{
  v4 = a3;
  if (!self->_modelParentIdentifier)
  {
    v10 = v4;
    v5 = [v4 copy];
    modelParentIdentifier = self->_modelParentIdentifier;
    self->_modelParentIdentifier = v5;

    v4 = v10;
    if (!self->_modelIdentifier)
    {
      v7 = [(HMDAccountHandle *)self URI];
      v8 = __modelIdentifierForURI(v7, v10);
      modelIdentifier = self->_modelIdentifier;
      self->_modelIdentifier = v8;

      v4 = v10;
    }
  }
}

- (HMDAccountHandle)initWithObjectModel:(id)a3
{
  v4 = a3;
  v5 = [v4 idsURI];
  v6 = [v4 local];
  v7 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v5, [v6 BOOLValue]);

  if (v7)
  {
    v8 = [v4 uuid];
    v9 = [v8 copy];
    modelIdentifier = v7->_modelIdentifier;
    v7->_modelIdentifier = v9;

    v11 = [v4 parentUUID];
    v12 = [v11 copy];
    modelParentIdentifier = v7->_modelParentIdentifier;
    v7->_modelParentIdentifier = v12;
  }

  return v7;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v44 = v8;
    v14 = self;
    v15 = v13;
    v43 = v10;
    v16 = v10;
    v17 = [v16 transactionResult];
    if (![v17 source] && !-[HMDAccountHandle isLocallyTracked](v14, "isLocallyTracked"))
    {
      [(HMDAccountHandle *)v14 setLocallyTracked:1];
      [v17 markChanged];
    }

    v18 = [(HMDAccountHandle *)v14 modelObjectWithChangeType:0 version:4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      if ([v20 diff:v15 differingFields:0])
      {
        v41 = v15;
        v21 = objc_autoreleasePoolPush();
        v22 = v14;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v24 = v39 = v21;
          *buf = 138543362;
          v46 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating account handle", buf, 0xCu);

          v21 = v39;
        }

        objc_autoreleasePoolPop(v21);
        v25 = [v41 idsURI];
        URI = v22->_URI;
        v22->_URI = v25;

        v27 = [v41 local];
        v22->_local = [v27 BOOLValue];

        v15 = v41;
        [v17 markChanged];
      }
    }

    else
    {
      v42 = v15;
      v33 = objc_autoreleasePoolPush();
      v34 = v14;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v40 = v33;
        *buf = 138543362;
        v46 = v36;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve model for updated account handle", buf, 0xCu);

        v33 = v40;
      }

      objc_autoreleasePoolPop(v33);
      v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v16 respondWithError:v37];

      v15 = v42;
    }

    v10 = v43;
    v8 = v44;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v46 = v31;
      v47 = 2112;
      v48 = v11;
      v49 = 2112;
      v50 = objc_opt_class();
      v32 = v50;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v14];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HMDAccountHandle *)self URI];
  [v8 encodeObject:v4 forKey:@"HMD.URI"];

  [v8 encodeBool:-[HMDAccountHandle isLocal](self forKey:{"isLocal"), @"HMD.local"}];
  if ([v8 hmd_isForLocalStore])
  {
    [v8 encodeBool:-[HMDAccountHandle isLocallyTracked](self forKey:{"isLocallyTracked"), @"HMD.locallyTracked"}];
    v5 = [(HMDAccountHandle *)self modelIdentifier];
    [v8 encodeObject:v5 forKey:@"HMD.modelIdentifier"];

    v6 = [(HMDAccountHandle *)self modelParentIdentifier];

    if (v6)
    {
      v7 = [(HMDAccountHandle *)self modelParentIdentifier];
      [v8 encodeObject:v7 forKey:@"HMD.modelParentIdentifier"];
    }
  }
}

- (HMDAccountHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.URI"];
  v6 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v5, [v4 decodeBoolForKey:@"HMD.local"]);
  if (v6)
  {
    v6->_locallyTracked = [v4 decodeBoolForKey:@"HMD.locallyTracked"];
    if ([v4 containsValueForKey:@"HMD.modelParentIdentifier"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelParentIdentifier"];
      modelParentIdentifier = v6->_modelParentIdentifier;
      v6->_modelParentIdentifier = v7;
    }

    if ([v4 containsValueForKey:@"HMD.modelIdentifier"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelIdentifier"];
      modelIdentifier = v6->_modelIdentifier;
      v6->_modelIdentifier = v9;
    }

    else
    {
      modelIdentifier = [(HMDAccountHandle *)v6 URI];
      v11 = __modelIdentifierForURI(modelIdentifier, 0);
      v12 = v6->_modelIdentifier;
      v6->_modelIdentifier = v11;
    }
  }

  return v6;
}

- (CKUserIdentityLookupInfo)cloudKitLookupInfo
{
  v3 = [(HMDAccountHandle *)self type];
  if (v3 == 2)
  {
    v7 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v7 stringForObjectValue:self];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithPhoneNumber:v5];
      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v4 = +[HMDAccountHandleFormatter defaultFormatter];
  v5 = [v4 stringForObjectValue:self];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:v5];
LABEL_7:
  v8 = v6;
LABEL_10:

LABEL_11:

  return v8;
}

- (CNContact)contact
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__115632;
  v9 = __Block_byref_object_dispose__115633;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__HMDAccountHandle_contact__block_invoke;
  v4[3] = &unk_27868A688;
  v4[4] = self;
  v4[5] = &v5;
  [MEMORY[0x277D0F770] activityWithName:@"Account.Contact" parent:0 options:1 block:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __27__HMDAccountHandle_contact__block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_onceToken != -1)
  {
    dispatch_once(&HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_onceToken, &__block_literal_global_115638);
  }

  v19 = *(a1 + 32);
  v2 = [v19 type];
  if (v2 == 1)
  {
    v8 = MEMORY[0x277CBDA58];
    v6 = [v19 URI];
    v9 = [v6 unprefixedURI];
    v7 = [v8 predicateForContactsMatchingEmailAddress:v9];

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = MEMORY[0x277CBDB70];
    v4 = [v19 URI];
    v5 = [v4 unprefixedURI];
    v6 = [v3 phoneNumberWithStringValue:v5];

    v7 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v6];
LABEL_7:

    if (v7)
    {
      v10 = *MEMORY[0x277CBCFC0];
      v20[0] = *MEMORY[0x277CBD098];
      v20[1] = v10;
      v11 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
      v20[2] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

      v13 = [HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_store unifiedContactsMatchingPredicate:v7 keysToFetch:v12 error:0];
      if (([v13 hmf_isEmpty] & 1) == 0)
      {
        v14 = [v13 firstObject];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }
    }

    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __27__HMDAccountHandle_contact__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_store;
  HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_store = v0;
}

- (int64_t)type
{
  v3 = [(HMDAccountHandle *)self URI];
  v4 = [v3 unprefixedURI];
  v5 = [v4 _appearsToBeEmail];

  if (v5)
  {
    return 1;
  }

  v7 = [(HMDAccountHandle *)self URI];
  v8 = [v7 unprefixedURI];
  v9 = [v8 _appearsToBePhoneNumber];

  if (v9)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccountHandle *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithName:@"ID" value:v5];
  v22[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAccountHandle *)self type];
  v9 = @"Unknown";
  if (v8 == 2)
  {
    v9 = @"Phone";
  }

  if (v8 == 1)
  {
    v10 = @"Email";
  }

  else
  {
    v10 = v9;
  }

  v11 = [v7 initWithName:@"TP" value:v10];
  v22[1] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccountHandle *)self isLocal];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"LC" value:v13];
  v22[2] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDAccountHandle *)self value];
  v17 = +[HMDAccountHandleFormatter defaultFormatter];
  v18 = [v15 initWithName:@"VA" value:v16 options:0 formatter:v17];
  v22[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
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
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccountHandle *)self URI];
      v8 = [(HMDAccountHandle *)v6 URI];
      v9 = [v7 isEqualToURI:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccountHandle *)self URI];
  v3 = [v2 hash];

  return v3;
}

- (NSString)value
{
  v2 = [(HMDAccountHandle *)self URI];
  v3 = [v2 unprefixedURI];

  return v3;
}

- (BOOL)updateBackingModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 modelID];
  v7 = [(HMDAccountHandle *)self modelIdentifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(HMDAccountHandle *)self URI];
    v10 = [v5 idsURI];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      [v5 setIdsURI:v9];
    }

    v12 = [(HMDAccountHandle *)self isLocal];
    v13 = [v5 local];
    v14 = v13;
    if (!v13 || v12 != [v13 BOOLValue])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v12];
      [v5 setLocal:v15];
    }

    return 1;
  }

  else
  {
    v17 = _HMFPreconditionFailure();
    return [(HMDAccountHandle *)v17 backingModelType];
  }
}

- (HMDAccountHandle)initWithBackingModel:(id)a3
{
  v4 = a3;
  v5 = [v4 idsURI];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 idsURI];
  v7 = [v4 local];
  v8 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v6, [v7 BOOLValue]);

  if (!v8)
  {
LABEL_5:
    self = v8;
    v5 = self;
LABEL_6:

    return v5;
  }

  v9 = [v4 modelID];
  modelIdentifier = v8->_modelIdentifier;
  v8->_modelIdentifier = v9;

  if (v8->_modelIdentifier)
  {
    v11 = [v4 account];
    v12 = [v11 modelID];
    modelParentIdentifier = v8->_modelParentIdentifier;
    v8->_modelParentIdentifier = v12;

    if (v8->_modelParentIdentifier)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v15 = _HMFPreconditionFailure();
  return [(HMDAccountHandle *)v15 initWithURI:v16 local:v17, v18];
}

- (HMDAccountHandle)initWithURI:(id)a3 local:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v20.receiver = self;
    v20.super_class = HMDAccountHandle;
    v7 = [(HMDAccountHandle *)&v20 init];
    if (v7)
    {
      v8 = __identifierForURI_onceToken;
      v9 = v6;
      if (v8 != -1)
      {
        dispatch_once(&__identifierForURI_onceToken, &__block_literal_global_462);
      }

      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = __identifierForURI_namespace;
      v12 = [v9 prefixedURI];

      v13 = [v12 dataUsingEncoding:4];
      v14 = [v10 initWithNamespace:v11 data:v13];

      identifier = v7->_identifier;
      v7->_identifier = v14;

      v16 = [v9 copy];
      URI = v7->_URI;
      v7->_URI = v16;

      v7->_local = a4;
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HMDAccountHandle)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_115695 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_115695, &__block_literal_global_336_115696);
  }

  v3 = logCategory__hmf_once_v10_115697;

  return v3;
}

void __31__HMDAccountHandle_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_115697;
  logCategory__hmf_once_v10_115697 = v1;
}

+ (id)accountHandleForDestination:(id)a3
{
  v3 = IDSCopyAddressDestinationForDestination();
  if (v3)
  {
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 accountHandleFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
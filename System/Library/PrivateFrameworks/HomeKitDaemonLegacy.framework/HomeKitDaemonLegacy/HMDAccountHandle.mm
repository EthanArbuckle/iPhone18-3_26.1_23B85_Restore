@interface HMDAccountHandle
+ (id)accountHandleForDestination:(id)destination;
+ (id)logCategory;
- (BOOL)isBackingStorageEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (CKUserIdentityLookupInfo)cloudKitLookupInfo;
- (CNContact)contact;
- (HMDAccountHandle)init;
- (HMDAccountHandle)initWithCoder:(id)coder;
- (HMDAccountHandle)initWithObjectModel:(id)model;
- (HMDAccountHandle)initWithURI:(id)i local:(BOOL)local;
- (NSString)remoteDestinationString;
- (NSString)value;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)logIdentifier;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)shortDescription;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setModelParentIdentifier:(id)identifier;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAccountHandle

- (id)logIdentifier
{
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (NSString)remoteDestinationString
{
  v2 = [(HMDAccountHandle *)self URI];
  prefixedURI = [v2 prefixedURI];

  return prefixedURI;
}

- (BOOL)isBackingStorageEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(HMDAccountHandle *)self isEqual:equalCopy])
  {
    v5 = equalCopy;
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
      isLocal = [(HMDAccountHandle *)self isLocal];
      v9 = isLocal ^ [(HMDAccountHandle *)v7 isLocal]^ 1;
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

- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccountHandle *)self modelObjectWithChangeType:type version:version];
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

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(HMDAccountHandle *)self modelParentIdentifier:type];

  if (v6)
  {
    v7 = [HMDAccountHandleModel alloc];
    modelIdentifier = [(HMDAccountHandle *)self modelIdentifier];
    modelParentIdentifier = [(HMDAccountHandle *)self modelParentIdentifier];
    v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:modelIdentifier parentUUID:modelParentIdentifier];

    v11 = [(HMDAccountHandle *)self URI];
    v12 = [v11 copy];
    [(HMDAccountHandleModel *)v10 setIdsURI:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccountHandle isLocal](self, "isLocal")}];
    [(HMDAccountHandleModel *)v10 setLocal:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Account handle is missing parent identifier, returning nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setModelParentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!self->_modelParentIdentifier)
  {
    v10 = identifierCopy;
    v5 = [identifierCopy copy];
    modelParentIdentifier = self->_modelParentIdentifier;
    self->_modelParentIdentifier = v5;

    identifierCopy = v10;
    if (!self->_modelIdentifier)
    {
      v7 = [(HMDAccountHandle *)self URI];
      v8 = __modelIdentifierForURI(v7, v10);
      modelIdentifier = self->_modelIdentifier;
      self->_modelIdentifier = v8;

      identifierCopy = v10;
    }
  }
}

- (HMDAccountHandle)initWithObjectModel:(id)model
{
  modelCopy = model;
  idsURI = [modelCopy idsURI];
  local = [modelCopy local];
  v7 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", idsURI, [local BOOLValue]);

  if (v7)
  {
    uuid = [modelCopy uuid];
    v9 = [uuid copy];
    modelIdentifier = v7->_modelIdentifier;
    v7->_modelIdentifier = v9;

    parentUUID = [modelCopy parentUUID];
    v12 = [parentUUID copy];
    modelParentIdentifier = v7->_modelParentIdentifier;
    v7->_modelParentIdentifier = v12;
  }

  return v7;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v51 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    v44 = updatedCopy;
    selfCopy = self;
    v15 = v13;
    v43 = messageCopy;
    v16 = messageCopy;
    transactionResult = [v16 transactionResult];
    if (![transactionResult source] && !-[HMDAccountHandle isLocallyTracked](selfCopy, "isLocallyTracked"))
    {
      [(HMDAccountHandle *)selfCopy setLocallyTracked:1];
      [transactionResult markChanged];
    }

    v18 = [(HMDAccountHandle *)selfCopy modelObjectWithChangeType:0 version:4];
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
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v24 = v39 = v21;
          *buf = 138543362;
          v46 = v24;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating account handle", buf, 0xCu);

          v21 = v39;
        }

        objc_autoreleasePoolPop(v21);
        idsURI = [v41 idsURI];
        URI = v22->_URI;
        v22->_URI = idsURI;

        local = [v41 local];
        v22->_local = [local BOOLValue];

        v15 = v41;
        [transactionResult markChanged];
      }
    }

    else
    {
      v42 = v15;
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v40 = v33;
        *buf = 138543362;
        v46 = v36;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve model for updated account handle", buf, 0xCu);

        v33 = v40;
      }

      objc_autoreleasePoolPop(v33);
      v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v16 respondWithError:v37];

      v15 = v42;
    }

    messageCopy = v43;
    updatedCopy = v44;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    selfCopy = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:selfCopy];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = removedCopy;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(HMDAccountHandle *)self URI];
  [coderCopy encodeObject:v4 forKey:@"HMD.URI"];

  [coderCopy encodeBool:-[HMDAccountHandle isLocal](self forKey:{"isLocal"), @"HMD.local"}];
  if ([coderCopy hmd_isForLocalStore])
  {
    [coderCopy encodeBool:-[HMDAccountHandle isLocallyTracked](self forKey:{"isLocallyTracked"), @"HMD.locallyTracked"}];
    modelIdentifier = [(HMDAccountHandle *)self modelIdentifier];
    [coderCopy encodeObject:modelIdentifier forKey:@"HMD.modelIdentifier"];

    modelParentIdentifier = [(HMDAccountHandle *)self modelParentIdentifier];

    if (modelParentIdentifier)
    {
      modelParentIdentifier2 = [(HMDAccountHandle *)self modelParentIdentifier];
      [coderCopy encodeObject:modelParentIdentifier2 forKey:@"HMD.modelParentIdentifier"];
    }
  }
}

- (HMDAccountHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.URI"];
  v6 = -[HMDAccountHandle initWithURI:local:](self, "initWithURI:local:", v5, [coderCopy decodeBoolForKey:@"HMD.local"]);
  if (v6)
  {
    v6->_locallyTracked = [coderCopy decodeBoolForKey:@"HMD.locallyTracked"];
    if ([coderCopy containsValueForKey:@"HMD.modelParentIdentifier"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelParentIdentifier"];
      modelParentIdentifier = v6->_modelParentIdentifier;
      v6->_modelParentIdentifier = v7;
    }

    if ([coderCopy containsValueForKey:@"HMD.modelIdentifier"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.modelIdentifier"];
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
  type = [(HMDAccountHandle *)self type];
  if (type == 2)
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

  if (type != 1)
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
  v8 = __Block_byref_object_copy__76247;
  v9 = __Block_byref_object_dispose__76248;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__HMDAccountHandle_contact__block_invoke;
  v4[3] = &unk_279734898;
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
    dispatch_once(&HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_onceToken, &__block_literal_global_76253);
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

uint64_t __27__HMDAccountHandle_contact__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_store;
  HMDAccountHandleModelIdentifierNamespaceUUIDString_block_invoke_store = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (int64_t)type
{
  v3 = [(HMDAccountHandle *)self URI];
  unprefixedURI = [v3 unprefixedURI];
  _appearsToBeEmail = [unprefixedURI _appearsToBeEmail];

  if (_appearsToBeEmail)
  {
    return 1;
  }

  v7 = [(HMDAccountHandle *)self URI];
  unprefixedURI2 = [v7 unprefixedURI];
  _appearsToBePhoneNumber = [unprefixedURI2 _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber)
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
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v3 initWithName:@"ID" value:uUIDString];
  v22[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDAccountHandle *)self type];
  v9 = @"Unknown";
  if (type == 2)
  {
    v9 = @"Phone";
  }

  if (type == 1)
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
  value = [(HMDAccountHandle *)self value];
  v17 = +[HMDAccountHandleFormatter defaultFormatter];
  v18 = [v15 initWithName:@"VA" value:value options:0 formatter:v17];
  v22[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDAccountHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
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
      v5 = equalCopy;
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
  unprefixedURI = [v2 unprefixedURI];

  return unprefixedURI;
}

- (HMDAccountHandle)initWithURI:(id)i local:(BOOL)local
{
  iCopy = i;
  if (iCopy)
  {
    v20.receiver = self;
    v20.super_class = HMDAccountHandle;
    v7 = [(HMDAccountHandle *)&v20 init];
    if (v7)
    {
      v8 = __identifierForURI_onceToken;
      v9 = iCopy;
      if (v8 != -1)
      {
        dispatch_once(&__identifierForURI_onceToken, &__block_literal_global_219_76287);
      }

      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = __identifierForURI_namespace;
      prefixedURI = [v9 prefixedURI];

      v13 = [prefixedURI dataUsingEncoding:4];
      v14 = [v10 initWithNamespace:v11 data:v13];

      identifier = v7->_identifier;
      v7->_identifier = v14;

      v16 = [v9 copy];
      URI = v7->_URI;
      v7->_URI = v16;

      v7->_local = local;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  if (logCategory__hmf_once_t9_76303 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_76303, &__block_literal_global_59);
  }

  v3 = logCategory__hmf_once_v10_76304;

  return v3;
}

uint64_t __31__HMDAccountHandle_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_76304;
  logCategory__hmf_once_v10_76304 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)accountHandleForDestination:(id)destination
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
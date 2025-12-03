@interface HMBModel
+ (BOOL)hmbShouldLogPrivateInformation;
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (NSSet)hmbExternalProperties;
+ (NSSet)hmbExternalRecordFields;
+ (NSSet)hmbModelClassesWithQueries;
+ (NSSet)hmbPropertyNames;
+ (NSUUID)hmbSchemaHashRoot;
+ (id)formattedStringForValue:(id)value;
+ (id)hmbMutableModelClassesWithQueries;
+ (id)logCategory;
+ (void)hmbPrepareQueries;
- (BOOL)_validateType:(id)type error:(id *)error;
- (BOOL)hmbIsDifferentFromModel:(id)model differingFields:(id *)fields;
- (BOOL)hmbIsModelGenericRepresentation;
- (BOOL)hmbIsModelReadOnly;
- (BOOL)hmbPropertyIsAvailable:(id)available;
- (BOOL)hmbPropertyIsReadOnly:(id)only;
- (BOOL)hmbPropertyWasSet:(id)set;
- (BOOL)hmbValidForStorage:(id)storage;
- (BOOL)isEqual:(id)equal;
- (HMBModel)initWithModelID:(id)d parentModelID:(id)iD;
- (HMBModelContainer)hmbModelContainer;
- (HMFVersion)hmbContainerDataVersion;
- (HMFVersion)hmbMinimumSupportedVersion;
- (NSSet)hmbSetExternalProperties;
- (NSSet)hmbSetExternalRecordFields;
- (NSSet)hmbSetProperties;
- (NSString)debugDescription;
- (NSString)hmbCanonicalType;
- (NSString)hmbDescription;
- (NSString)hmbType;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hmbDefaultValueForPropertyNamed:(id)named;
- (id)hmbModelByMergingFromModel:(id)model isFromCloud:(BOOL)cloud error:(id *)error;
- (id)hmbModelByMergingSetPropertiesFromModel:(id)model;
- (id)hmbPrepareForStorageLocation:(unint64_t)location;
- (id)hmbPropertyNamed:(id)named isSet:(BOOL *)set;
- (id)populateModelWithDictionary:(id)dictionary fromStorageLocation:(unint64_t)location using:(id)using;
- (id)prepareForStorageLocation:(unint64_t)location using:(id)using updatedModelIDs:(id)ds error:(id *)error;
- (id)validateType:(id)type path:(id)path;
- (unint64_t)hash;
- (void)dumpDebug:(id)debug;
- (void)hmbAssociateWithContainer:(id)container;
- (void)hmbMergeSetPropertiesFromModel:(id)model;
- (void)hmbSetProperty:(id)property named:(id)named;
- (void)setHmbMinimumSupportedVersion:(id)version;
@end

@implementation HMBModel

- (HMBModelContainer)hmbModelContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_hmbModelContainer);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  hmbModelID = [(HMBModel *)self hmbModelID];
  v5 = [v3 initWithName:@"UUID" value:hmbModelID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)hmbDescription
{
  v3 = MEMORY[0x277CCACA8];
  hmbCanonicalType = [(HMBModel *)self hmbCanonicalType];
  hmbModelID = [(HMBModel *)self hmbModelID];
  v6 = [v3 stringWithFormat:@"%@.%@", hmbCanonicalType, hmbModelID];

  return v6;
}

- (void)dumpDebug:(id)debug
{
  v29 = *MEMORY[0x277D85DE8];
  debugCopy = debug;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(HMBModel *)self debugDescription];
  v5 = [v4 componentsSeparatedByString:@"\n"];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543874;
          v23 = v14;
          v24 = 2112;
          v25 = debugCopy;
          v26 = 2112;
          v27 = v10;
          _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@%@%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSSet)hmbSetExternalRecordFields
{
  hmbSetExternalProperties = [(HMBModel *)self hmbSetExternalProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HMBModel_hmbSetExternalRecordFields__block_invoke;
  v6[3] = &unk_2786E09C0;
  v6[4] = self;
  v4 = [hmbSetExternalProperties na_map:v6];

  return v4;
}

id __38__HMBModel_hmbSetExternalRecordFields__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() hmbProperties];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 externalRecordField];

  return v6;
}

- (NSSet)hmbSetExternalProperties
{
  hmbExternalProperties = [objc_opt_class() hmbExternalProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HMBModel_hmbSetExternalProperties__block_invoke;
  v6[3] = &unk_2786E1468;
  v6[4] = self;
  v4 = [hmbExternalProperties na_filter:v6];

  return v4;
}

BOOL __36__HMBModel_hmbSetExternalProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hmbReserved];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5 != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  hmbModelID = [(HMBModel *)self hmbModelID];
  hmbParentModelID = [(HMBModel *)self hmbParentModelID];
  v7 = [v4 initWithModelID:hmbModelID parentModelID:hmbParentModelID];

  v8 = [(NSMutableDictionary *)self->_hmbReserved mutableCopy];
  v9 = *(v7 + 16);
  *(v7 + 16) = v8;

  WeakRetained = objc_loadWeakRetained(&self->_hmbModelContainer);
  objc_storeWeak((v7 + 80), WeakRetained);

  objc_storeStrong((v7 + 48), self->_hmbDataVersion);
  objc_storeStrong((v7 + 40), self->_hmbType);
  objc_storeStrong((v7 + 64), self->_hmbUnavailableProperties);
  objc_storeStrong((v7 + 72), self->_hmbReadOnlyProperties);
  *(v7 + 56) = self->_hmbRecordRow;
  return v7;
}

- (NSString)debugDescription
{
  v40 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  hmbCanonicalType = [(HMBModel *)self hmbCanonicalType];
  v5 = hmbCanonicalType;
  v6 = &stru_283EAC008;
  if (self->_hmbType)
  {
    v7 = &stru_283EAC008;
  }

  else
  {
    v7 = @" (inferred)";
  }

  [string appendFormat:@"%@:%@", hmbCanonicalType, v7];

  hmbModelID = [(HMBModel *)self hmbModelID];
  uUIDString = [hmbModelID UUIDString];
  [string appendFormat:@"\n  uuid: %@", uUIDString];

  hmbParentModelID = [(HMBModel *)self hmbParentModelID];
  uUIDString2 = [hmbParentModelID UUIDString];
  [string appendFormat:@"\n  parent: %@", uUIDString2];

  if (self->_hmbDataVersion)
  {
    hmbDataVersion = self->_hmbDataVersion;
  }

  else
  {
    hmbDataVersion = @"<UNSET>";
  }

  hmbContainerDataVersion = [(HMBModel *)self hmbContainerDataVersion];
  v14 = "";
  if (!hmbContainerDataVersion)
  {
    v14 = " (override)";
  }

  v33 = string;
  [string appendFormat:@"\n  version: %@%s", hmbDataVersion, v14];

  hmbProperties = [objc_opt_class() hmbProperties];
  v31 = +[HMBModel hmbShouldLogPrivateInformation];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = hmbProperties;
  v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v34 = *v36;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        hmbProperties2 = [objc_opt_class() hmbProperties];
        v21 = [hmbProperties2 objectForKey:v19];

        hmbReserved = [(HMBModel *)self hmbReserved];
        defaultValue2 = [hmbReserved valueForKey:v19];

        if (defaultValue2)
        {
          v24 = [HMBModel formattedStringForValue:defaultValue2];
          v25 = v6;
          v26 = v6;
        }

        else
        {
          defaultValue = [v21 defaultValue];

          if (!defaultValue)
          {
            goto LABEL_27;
          }

          defaultValue2 = [v21 defaultValue];
          v24 = [HMBModel formattedStringForValue:defaultValue2];
          v25 = v6;
          v26 = @" (default)";
        }

        v6 = v25;
        if ([(HMBModel *)self hmbPropertyIsReadOnly:v19])
        {
          v28 = @" (read-only)";
        }

        else
        {
          v28 = v25;
        }

        if ([v21 loggingVisibility] == 3 || !v31 && (!v21 || objc_msgSend(v21, "loggingVisibility") == 1))
        {

          v24 = @"...";
        }

        [v33 appendFormat:@"\n  %@%@%@: %@", v19, v28, v26, v24];

LABEL_27:
      }

      v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v33;
}

- (NSString)hmbCanonicalType
{
  v2 = self->_hmbType;
  if (!v2)
  {
    v3 = objc_opt_class();
    v2 = NSStringFromClass(v3);
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSString *)v2 isEqual:v5];

  if (v6)
  {
    v7 = v2;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v7 = [v8 stringWithFormat:@"%@/%@", v10, v2];
  }

  return v7;
}

- (id)hmbDefaultValueForPropertyNamed:(id)named
{
  v21 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  hmbProperties = [objc_opt_class() hmbProperties];
  v6 = [hmbProperties objectForKey:namedCopy];

  if (v6)
  {
    defaultValue = [v6 defaultValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      hmbCanonicalType = [(HMBModel *)selfCopy hmbCanonicalType];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = namedCopy;
      v19 = 2112;
      v20 = hmbCanonicalType;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to get default value of property %@ from type %@ (no such property exists)", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    defaultValue = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return defaultValue;
}

- (id)hmbPropertyNamed:(id)named isSet:(BOOL *)set
{
  v24 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  hmbProperties = [objc_opt_class() hmbProperties];
  v8 = [hmbProperties objectForKey:namedCopy];

  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      hmbCanonicalType = [(HMBModel *)selfCopy hmbCanonicalType];
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = namedCopy;
      v22 = 2112;
      v23 = hmbCanonicalType;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to get value of property %@ from type %@ (no such property exists)", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  hmbReserved = [(HMBModel *)self hmbReserved];
  v10 = [hmbReserved objectForKey:namedCopy];

  if (set)
  {
    *set = v10 != 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_9:
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)hmbSetProperty:(id)property named:(id)named
{
  propertyCopy = property;
  namedCopy = named;
  if (propertyCopy)
  {
    null = propertyCopy;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v8 = null;
  __setProperty(self, namedCopy, null);
}

- (HMFVersion)hmbMinimumSupportedVersion
{
  hmbReserved = [(HMBModel *)self hmbReserved];
  v3 = [hmbReserved hmf_stringForKey:@"_i"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHmbMinimumSupportedVersion:(id)version
{
  versionCopy = version;
  hmbReserved = [(HMBModel *)self hmbReserved];

  if (!hmbReserved)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HMBModel *)self setHmbReserved:dictionary];
  }

  versionString = [versionCopy versionString];
  hmbReserved2 = [(HMBModel *)self hmbReserved];
  [hmbReserved2 setObject:versionString forKeyedSubscript:@"_i"];
}

- (NSString)hmbType
{
  v14 = *MEMORY[0x277D85DE8];
  hmbType = self->_hmbType;
  if (hmbType)
  {
    v3 = hmbType;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMBModel hmbType] called without having an associated id<HMBModelContainer>.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_opt_class();
    v3 = NSStringFromClass(v9);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hmbIsDifferentFromModel:(id)model differingFields:(id *)fields
{
  modelCopy = model;
  if (modelCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [MEMORY[0x277CBEB58] set];
    hmbPropertyNames = [objc_opt_class() hmbPropertyNames];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __52__HMBModel_hmbIsDifferentFromModel_differingFields___block_invoke;
    v16 = &unk_2786E0978;
    selfCopy = self;
    v18 = modelCopy;
    v9 = v7;
    v19 = v9;
    fieldsCopy = fields;
    [hmbPropertyNames hmf_enumerateWithAutoreleasePoolUsingBlock:&v13];

    if (fields)
    {
      v10 = v9;
      *fields = v9;
    }

    v11 = [v9 count] != 0;
  }

  else
  {
    if (fields)
    {
      *fields = [(HMBModel *)self hmbSetProperties];
    }

    v11 = 1;
  }

  return v11;
}

void __52__HMBModel_hmbIsDifferentFromModel_differingFields___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = 0;
  v6 = [*(a1 + 32) hmbPropertyNamed:v5 isSet:&v9];
  v8 = 0;
  v7 = [*(a1 + 40) hmbPropertyNamed:v5 isSet:&v8];
  if (v9 != v8 || (__isEqualDeepCompare(v6, v7) & 1) == 0)
  {
    [*(a1 + 48) addObject:v5];
    if (!*(a1 + 56))
    {
      *a3 = 1;
    }
  }
}

- (id)hmbModelByMergingSetPropertiesFromModel:(id)model
{
  modelCopy = model;
  v5 = [(HMBModel *)self copy];
  [v5 hmbMergeSetPropertiesFromModel:modelCopy];

  return v5;
}

- (void)hmbMergeSetPropertiesFromModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  hmbSetProperties = [modelCopy hmbSetProperties];
  v6 = [hmbSetProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(hmbSetProperties);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [modelCopy hmbPropertyNamed:v10 isSet:0];
        [(HMBModel *)self hmbSetProperty:v11 named:v10];
      }

      v7 = [hmbSetProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)hmbModelByMergingFromModel:(id)model isFromCloud:(BOOL)cloud error:(id *)error
{
  v100 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  selfCopy = self;
  if (modelCopy == self)
  {
    goto LABEL_52;
  }

  cloudCopy = cloud;
  v10 = modelCopy;
  if ([(HMBModel *)selfCopy hmbCanonicalTypeInferred])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v95 = v14;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@[HMBModel hmbMerge:from:] called with nil container on target (worrysome in production code).", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = objc_opt_class();
  }

  else
  {
    hmbType = [(HMBModel *)selfCopy hmbType];
    v15 = NSClassFromString(hmbType);
  }

  if ([(HMBModel *)v10 hmbCanonicalTypeInferred])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v95 = v20;
      _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_ERROR, "%{public}@[HMBModel hmbMerge:from:] called with nil container on source (worrysome in production code).", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = objc_opt_class();
    if (!v15)
    {
LABEL_18:
      if (!(v15 | v21))
      {
        hmbType2 = [(HMBModel *)selfCopy hmbType];
        hmbType3 = [(HMBModel *)v10 hmbType];
        v32 = [hmbType2 isEqualToString:hmbType3];

        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
        if (v32)
        {
          if (v36)
          {
            v37 = HMFGetLogIdentifier();
            hmbType4 = [(HMBModel *)v34 hmbType];
            *buf = 138543618;
            v95 = v37;
            v96 = 2112;
            v97 = hmbType4;
            _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@Merging two unknown model objects object using the default rules %@.", buf, 0x16u);
LABEL_32:
          }
        }

        else if (v36)
        {
          v37 = HMFGetLogIdentifier();
          hmbType4 = [(HMBModel *)v34 hmbType];
          hmbType5 = [(HMBModel *)v10 hmbType];
          *buf = 138543874;
          v95 = v37;
          v96 = 2112;
          v97 = hmbType4;
          v98 = 2112;
          v99 = hmbType5;
          _os_log_impl(&dword_22AD27000, v35, OS_LOG_TYPE_INFO, "%{public}@Merging two unknown model objects object using the default rules (%@ and %@)", buf, 0x20u);

          goto LABEL_32;
        }

        v49 = v33;
        goto LABEL_34;
      }

      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      v42 = v41;
      if (!v15 || v21)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          hmbType6 = [(HMBModel *)v40 hmbType];
          hmbType7 = [(HMBModel *)v10 hmbType];
          *buf = 138543874;
          v95 = v43;
          v96 = 2112;
          v97 = hmbType6;
          v98 = 2112;
          v99 = hmbType7;
          v46 = "%{public}@Going to merge, but things won't be better until our type flips. (%@ / %@)";
          v47 = v42;
          v48 = OS_LOG_TYPE_ERROR;
          goto LABEL_28;
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        hmbType6 = [(HMBModel *)v10 hmbType];
        hmbType7 = [(HMBModel *)v40 hmbType];
        *buf = 138543874;
        v95 = v43;
        v96 = 2112;
        v97 = hmbType6;
        v98 = 2112;
        v99 = hmbType7;
        v46 = "%{public}@Going to merge unknown (probably from future) model type %@ with %@.";
        v47 = v42;
        v48 = OS_LOG_TYPE_INFO;
LABEL_28:
        _os_log_impl(&dword_22AD27000, v47, v48, v46, buf, 0x20u);
      }

      v49 = v39;
LABEL_34:
      objc_autoreleasePoolPop(v49);
      goto LABEL_35;
    }
  }

  else
  {
    hmbType8 = [(HMBModel *)v10 hmbType];
    v21 = NSClassFromString(hmbType8);

    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  if (([v15 isSubclassOfClass:v21] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      v27 = NSStringFromClass(v15);
      v28 = NSStringFromClass(v21);
      *buf = 138543874;
      v95 = v26;
      v96 = 2112;
      v97 = v27;
      v98 = 2112;
      v99 = v28;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot merge. This object %@ is not a sub-class of %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    goto LABEL_36;
  }

LABEL_35:
  v29 = 0;
LABEL_36:

  if (v29)
  {
    if (error)
    {
      v51 = v29;
      selfCopy = 0;
      *error = v29;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    v79 = modelCopy;
    v52 = [(HMBModel *)selfCopy copy];
    hmbReserved = [v52 hmbReserved];
    v54 = [hmbReserved mutableCopy];

    v55 = objc_opt_class();
    hmbReserved2 = [(HMBModel *)v10 hmbReserved];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __57__HMBModel_hmbModelByMergingFromModel_isFromCloud_error___block_invoke;
    v82[3] = &unk_2786E0950;
    v57 = v52;
    v88 = cloudCopy;
    v87 = v55;
    v83 = v57;
    v84 = selfCopy;
    v58 = v10;
    v85 = v58;
    v59 = v54;
    v86 = v59;
    [hmbReserved2 enumerateKeysAndObjectsUsingBlock:v82];

    [v57 setHmbReserved:v59];
    v60 = v57;
    v61 = v58;
    if (!v60[6] || ([v60 hmbDataVersion], v62 = objc_claimAutoreleasedReturnValue(), -[HMBModel hmbDataVersion](v61, "hmbDataVersion"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v62, "isGreaterThanOrEqualTo:", v63), v63, v62, (v64 & 1) == 0))
    {
      v81 = v59;
      hmbDataVersion = [(HMBModel *)v61 hmbDataVersion];
      v66 = [hmbDataVersion copy];
      [v60 setHmbDataVersion:v66];

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v93[0] = @"_U";
      v93[1] = @"_R";
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      v68 = [v67 countByEnumeratingWithState:&v89 objects:buf count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v90;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v90 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = *(*(&v89 + 1) + 8 * i);
            hmbReserved3 = [(HMBModel *)v61 hmbReserved];
            v74 = [hmbReserved3 hmf_dictionaryForKey:v72];

            hmbReserved4 = [v60 hmbReserved];
            [hmbReserved4 setObject:v74 forKey:v72];
          }

          v69 = [v67 countByEnumeratingWithState:&v89 objects:buf count:16];
        }

        while (v69);
      }

      __calculateUnavailableReadOnly(v60, 0);
      v59 = v81;
    }

    v76 = v86;
    selfCopy = v60;

    modelCopy = v79;
  }

LABEL_52:
  v77 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

void __57__HMBModel_hmbModelByMergingFromModel_isFromCloud_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 characterAtIndex:0] == 95)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() hmbPropertyNames];
  v9 = [v8 containsObject:v5];

  if (!v9)
  {
    goto LABEL_14;
  }

  if (*(a1 + 72) == 1)
  {
    v10 = [*(a1 + 64) hmbProperties];
    v11 = [v10 valueForKey:v5];

    if ([v11 excludeFromCloudStorage])
    {
      v12 = [v11 externalRecordField];

      if (!v12)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 40);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [*(a1 + 48) hmbType];
          v28 = 138543874;
          v29 = v25;
          v30 = 2112;
          v31 = v26;
          v32 = 2112;
          v33 = v5;
          _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@Model %@ from cloud contained local only property %@, dropping", &v28, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
        goto LABEL_18;
      }
    }
  }

  if (![*(a1 + 32) hmbPropertyIsReadOnly:v5])
  {
    v19 = [*(a1 + 32) hmbReserved];
    v11 = [v19 objectForKeyedSubscript:v5];

    if (objc_opt_respondsToSelector())
    {
      v20 = *(a1 + 56);
      v21 = [v11 hmbObjectByMergingFromObject:v6];
      [v20 setValue:v21 forKey:v5];

LABEL_18:
      goto LABEL_19;
    }

LABEL_14:
    [*(a1 + 56) setValue:v6 forKey:v5];
    goto LABEL_19;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 40);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 32) hmbType];
    v18 = *(*(a1 + 32) + 48);
    v28 = 138544130;
    v29 = v16;
    v30 = 2112;
    v31 = v5;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@Unable to merge %@ property of model class %@ (marked readonly for %@).", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)hmbValidForStorage:(id)storage
{
  v55 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (storageCopy)
  {
    [(HMBModel *)self hmbAssociateWithContainer:storageCopy];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      hmbCanonicalType = [(HMBModel *)selfCopy hmbCanonicalType];
      hmbModelID = [(HMBModel *)selfCopy hmbModelID];
      uUIDString = [hmbModelID UUIDString];
      hmbParentModelID = [(HMBModel *)selfCopy hmbParentModelID];
      uUIDString2 = [hmbParentModelID UUIDString];
      *buf = 138544130;
      v48 = v8;
      v49 = 2112;
      v50 = hmbCanonicalType;
      v51 = 2112;
      v52 = uUIDString;
      v53 = 2112;
      v54 = uUIDString2;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Model %@.%@.%@ suppressing validity check due to HMDBackingStoreModelObject backport.", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v14 = 1;
  }

  else
  {
    hmbProperties = [objc_opt_class() hmbProperties];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    hmbModelID2 = [(HMBModel *)self hmbModelID];
    v17 = hmbModelID2 == 0;

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v38 = v18;
        v21 = HMFGetLogIdentifier();
        hmbCanonicalType2 = [(HMBModel *)selfCopy2 hmbCanonicalType];
        hmbModelID3 = [(HMBModel *)selfCopy2 hmbModelID];
        uUIDString3 = [hmbModelID3 UUIDString];
        hmbParentModelID2 = [(HMBModel *)selfCopy2 hmbParentModelID];
        uUIDString4 = [hmbParentModelID2 UUIDString];
        *buf = 138544130;
        v48 = v21;
        v49 = 2112;
        v50 = hmbCanonicalType2;
        v51 = 2112;
        v52 = uUIDString3;
        v53 = 2112;
        v54 = uUIDString4;
        _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_FAULT, "%{public}@Model %@.%@.%@ is not valid for storage (modelID is not set).", buf, 0x2Au);

        v18 = v38;
      }

      objc_autoreleasePoolPop(v18);
      *(v44 + 24) = 0;
    }

    hmbParentModelID3 = [(HMBModel *)self hmbParentModelID];
    v27 = hmbParentModelID3 == 0;

    if (v27)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v39 = v28;
        v31 = HMFGetLogIdentifier();
        hmbCanonicalType3 = [(HMBModel *)selfCopy3 hmbCanonicalType];
        hmbModelID4 = [(HMBModel *)selfCopy3 hmbModelID];
        uUIDString5 = [hmbModelID4 UUIDString];
        hmbParentModelID4 = [(HMBModel *)selfCopy3 hmbParentModelID];
        uUIDString6 = [hmbParentModelID4 UUIDString];
        *buf = 138544130;
        v48 = v31;
        v49 = 2112;
        v50 = hmbCanonicalType3;
        v51 = 2112;
        v52 = uUIDString5;
        v53 = 2112;
        v54 = uUIDString6;
        _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_FAULT, "%{public}@Model %@.%@.%@ is not valid for storage (parentModelID is not set).", buf, 0x2Au);

        v28 = v39;
      }

      objc_autoreleasePoolPop(v28);
      *(v44 + 24) = 0;
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __31__HMBModel_hmbValidForStorage___block_invoke;
    v42[3] = &unk_2786E0928;
    v42[4] = self;
    v42[5] = &v43;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:{v42, v39}];
    v14 = *(v44 + 24);
    _Block_object_dispose(&v43, 8);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __31__HMBModel_hmbValidForStorage___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (([v8 isOptional] & 1) == 0 && (objc_msgSend(*(a1 + 32), "hmbPropertyWasSet:", v7) & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) hmbCanonicalType];
      v18 = [*(a1 + 32) hmbModelID];
      [v18 UUIDString];
      v14 = v19 = v9;
      v17 = [*(a1 + 32) hmbParentModelID];
      v15 = [v17 UUIDString];
      *buf = 138544386;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_FAULT, "%{public}@Model %@.%@.%@ is not valid for storage (field %@ is not set).", buf, 0x34u);

      v9 = v19;
    }

    objc_autoreleasePoolPop(v9);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)hmbPropertyIsAvailable:(id)available
{
  availableCopy = available;
  hmbUnavailableProperties = [(HMBModel *)self hmbUnavailableProperties];
  v6 = [hmbUnavailableProperties containsObject:availableCopy];

  return v6 ^ 1;
}

- (BOOL)hmbPropertyIsReadOnly:(id)only
{
  onlyCopy = only;
  hmbReadOnlyProperties = [(HMBModel *)self hmbReadOnlyProperties];
  v6 = [hmbReadOnlyProperties containsObject:onlyCopy];

  return v6;
}

- (BOOL)hmbIsModelGenericRepresentation
{
  hmbGenericRepresentation = [objc_opt_class() hmbGenericRepresentation];
  if ([objc_opt_class() isEqual:hmbGenericRepresentation])
  {
    return 1;
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return [v4 isEqual:v5];
}

- (BOOL)hmbIsModelReadOnly
{
  if ([(HMBModel *)self hmbIsModelGenericRepresentation])
  {
    return 1;
  }

  hmbReadOnlyBefore = [objc_opt_class() hmbReadOnlyBefore];
  if (hmbReadOnlyBefore)
  {
    hmbContainerDataVersion = [(HMBModel *)self hmbContainerDataVersion];
    v3 = [hmbReadOnlyBefore isGreaterThanOrEqualTo:hmbContainerDataVersion];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hmbPropertyWasSet:(id)set
{
  setCopy = set;
  hmbReserved = [(HMBModel *)self hmbReserved];
  v6 = [hmbReserved valueForKey:setCopy];
  if (v6)
  {
    hmbUnavailableProperties = [(HMBModel *)self hmbUnavailableProperties];
    v8 = [hmbUnavailableProperties containsObject:setCopy] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (NSSet)hmbSetProperties
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  hmbReserved = [(HMBModel *)self hmbReserved];
  v5 = [v3 setWithCapacity:{objc_msgSend(hmbReserved, "count")}];

  hmbUnavailableProperties = [(HMBModel *)self hmbUnavailableProperties];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  hmbReserved2 = [(HMBModel *)self hmbReserved];
  v8 = [hmbReserved2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(hmbReserved2);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 characterAtIndex:0] != 95 && (objc_msgSend(hmbUnavailableProperties, "containsObject:", v12) & 1) == 0)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [hmbReserved2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
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
    hmbModelID = [v6 hmbModelID];
    hmbModelID2 = [(HMBModel *)self hmbModelID];
    v10 = [hmbModelID isEqual:hmbModelID2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  hmbModelID = [(HMBModel *)self hmbModelID];
  v3 = [hmbModelID hash];

  return v3;
}

- (id)prepareForStorageLocation:(unint64_t)location using:(id)using updatedModelIDs:(id)ds error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  usingCopy = using;
  dsCopy = ds;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__1993;
  v62 = __Block_byref_object_dispose__1994;
  v63 = 0;
  hmbModelID = [(HMBModel *)self hmbModelID];
  if (!hmbModelID || ([(HMBModel *)self hmbParentModelID], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, hmbModelID, v14))
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v34;
      v66 = 2112;
      v67 = selfCopy;
      _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare model for container because modelID or parentModelID are missing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    if (error)
    {
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:&unk_283EB9F30];
LABEL_13:
      v30 = 0;
      *error = v35;
      goto LABEL_28;
    }

LABEL_18:
    v30 = 0;
    goto LABEL_28;
  }

  if (!self->_hmbDataVersion)
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v39;
      v66 = 2112;
      v67 = selfCopy2;
      _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare model for container because hmbDataVersion is missing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    if (error)
    {
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:&unk_283EB9F58];
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v15 = [(HMBModel *)self hmbPrepareForStorageLocation:location];
  hmbDataVersion = [(HMBModel *)self hmbDataVersion];
  versionString = [hmbDataVersion versionString];
  [v15 setObject:versionString forKeyedSubscript:@"_V"];

  hmbType = [(HMBModel *)self hmbType];
  [v15 setObject:hmbType forKeyedSubscript:@"_T"];

  hmbModelID2 = [(HMBModel *)self hmbModelID];
  uUIDString = [hmbModelID2 UUIDString];
  [v15 setObject:uUIDString forKeyedSubscript:@"_u"];

  hmbParentModelID = [(HMBModel *)self hmbParentModelID];
  uUIDString2 = [hmbParentModelID UUIDString];
  [v15 setObject:uUIDString2 forKeyedSubscript:@"_P"];

  hmbMinimumSupportedVersion = [(HMBModel *)self hmbMinimumSupportedVersion];
  LODWORD(hmbParentModelID) = hmbMinimumSupportedVersion == 0;

  if (hmbParentModelID)
  {
    v24 = [v15 objectForKeyedSubscript:@"_T"];
    [v15 setObject:v24 forKeyedSubscript:@"_t"];
  }

  v25 = __modelReferenceFields(self);
  hmbProperties = [objc_opt_class() hmbProperties];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __66__HMBModel_prepareForStorageLocation_using_updatedModelIDs_error___block_invoke;
  v50[3] = &unk_2786E0900;
  v27 = v15;
  v56 = &v58;
  v51 = v27;
  selfCopy3 = self;
  v53 = dsCopy;
  v28 = v25;
  v54 = v28;
  v55 = usingCopy;
  locationCopy = location;
  [hmbProperties enumerateKeysAndObjectsUsingBlock:v50];

  v29 = v59[5];
  if (v29)
  {
    v30 = 0;
    if (error)
    {
      *error = v29;
    }
  }

  else
  {
    hmbReserved = [(HMBModel *)self hmbReserved];
    v41 = [hmbReserved hmf_dictionaryForKey:@"_R"];

    if ([v41 count])
    {
      v42 = [v41 na_dictionaryByMappingValues:&__block_literal_global_434];
      [v27 setObject:v42 forKeyedSubscript:@"_R"];
    }

    hmbReserved2 = [(HMBModel *)self hmbReserved];
    v44 = [hmbReserved2 hmf_dictionaryForKey:@"_U"];

    if ([v44 count])
    {
      v45 = [v44 na_dictionaryByMappingValues:&__block_literal_global_434];
      [v27 setObject:v45 forKeyedSubscript:@"_U"];
    }

    hmbGenericRepresentation = [objc_opt_class() hmbGenericRepresentation];
    if (hmbGenericRepresentation && ([(objc_class *)hmbGenericRepresentation isEqual:objc_opt_class()]& 1) == 0)
    {
      v47 = NSStringFromClass(hmbGenericRepresentation);
      [v27 setObject:v47 forKeyedSubscript:@"_G"];
    }

    v30 = v27;
  }

LABEL_28:
  _Block_object_dispose(&v58, 8);

  v48 = *MEMORY[0x277D85DE8];

  return v30;
}

void __66__HMBModel_prepareForStorageLocation_using_updatedModelIDs_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v9)
  {
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v13 = +[HMBModelContainer allowedTypes];
      v14 = [v13 countByEnumeratingWithState:&v58 objects:v72 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v59;
LABEL_8:
        v17 = 0;
        while (1)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v58 + 1) + 8 * v17);
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_33;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v58 objects:v72 count:16];
            if (v15)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      if ([objc_msgSend(v8 "classObj")])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode value of type %@ for property '%@' requring NSObject type", objc_opt_class(), v7];
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 40);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v23 = *(a1 + 40);
          *buf = 138543874;
          v67 = v22;
          v68 = 2112;
          v69 = v23;
          v70 = 2112;
          v71 = v13;
          _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare model %@ for container: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D0F1A0];
        v64 = @"message";
        v65 = v13;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v27 = [v24 errorWithDomain:v25 code:3 userInfo:v26];
        v28 = *(*(a1 + 72) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;

        *a4 = 1;
LABEL_33:

        goto LABEL_34;
      }

      if (*(a1 + 48) && [*(a1 + 56) containsObject:v7])
      {
        v30 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v13 = v31;

        v32 = [v13 isValidForContainer:*(a1 + 64) updatedModelIDs:*(a1 + 48)];
        v33 = *(*(a1 + 72) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v32;

        v35 = *(*(*(a1 + 72) + 8) + 40);
        if (v35)
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@ (property could not be validated): %@", v7, v35];
          v37 = objc_autoreleasePoolPush();
          v38 = *(a1 + 40);
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v56 = v37;
            *buf = 138543618;
            v67 = v40;
            v68 = 2112;
            v69 = v36;
            _os_log_impl(&dword_22AD27000, v39, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare model for container: %@", buf, 0x16u);

            v37 = v56;
          }

          objc_autoreleasePoolPop(v37);
          v41 = MEMORY[0x277CCA9B8];
          v42 = *MEMORY[0x277D0F1A0];
          v62 = @"message";
          v63 = v36;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v44 = [v41 errorWithDomain:v42 code:3 userInfo:v43];
          v45 = *(*(a1 + 72) + 8);
          v46 = *(v45 + 40);
          *(v45 + 40) = v44;

          *a4 = 1;
          goto LABEL_33;
        }
      }

      v47 = *(a1 + 80);
      v48 = *(a1 + 64);
      v49 = *(*(a1 + 72) + 8);
      obj = *(v49 + 40);
      v13 = [v48 encodePropertyValue:v9 forProperty:v7 field:v8 storageLocation:v47 error:&obj];
      objc_storeStrong((v49 + 40), obj);
      if (v13)
      {
        [*(a1 + 32) setObject:v13 forKeyedSubscript:v7];
      }

      else
      {
        v50 = objc_autoreleasePoolPush();
        v51 = *(a1 + 40);
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = HMFGetLogIdentifier();
          v54 = *(*(*(a1 + 72) + 8) + 40);
          *buf = 138543618;
          v67 = v53;
          v68 = 2112;
          v69 = v54;
          _os_log_impl(&dword_22AD27000, v52, OS_LOG_TYPE_ERROR, "%{public}@Cannot prepare model for container: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        *a4 = 1;
      }

      goto LABEL_33;
    }
  }

  v10 = [*(a1 + 40) validateType:v9 path:v7];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    *a4 = 1;
  }

LABEL_34:

  v55 = *MEMORY[0x277D85DE8];
}

- (id)hmbPrepareForStorageLocation:(unint64_t)location
{
  hmbReserved = [(HMBModel *)self hmbReserved];
  v5 = [hmbReserved mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  }

  v8 = v7;

  if (location == 1)
  {
    hmbProperties = [objc_opt_class() hmbProperties];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__HMBModel_hmbPrepareForStorageLocation___block_invoke;
    v11[3] = &unk_2786E0E00;
    v12 = v8;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v8;
}

void __41__HMBModel_hmbPrepareForStorageLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 excludeFromCloudStorage])
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v5];
  }
}

- (id)validateType:(id)type path:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v33 = 0;
  LODWORD(self) = [(HMBModel *)self _validateType:type error:&v33];
  v7 = v33;
  v8 = v7;
  v9 = 0;
  if (self)
  {
    userInfo = [v7 userInfo];
    v11 = [userInfo objectForKey:@"pathStack"];
    v12 = [v11 mutableCopy];

    string = [MEMORY[0x277CCAB68] string];
    [v12 addObject:pathCopy];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    reverseObjectEnumerator = [v12 reverseObjectEnumerator];
    v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [string appendFormat:@"/%@", *(*(&v29 + 1) + 8 * i)];
        }

        v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v16);
    }

    userInfo2 = [v8 userInfo];
    v20 = [userInfo2 objectForKey:@"errorText"];
    [string appendFormat:@" %@", v20];

    userInfo3 = [v8 userInfo];
    v22 = [userInfo3 objectForKey:@"message"];
    [v22 setString:string];

    v23 = MEMORY[0x277CCA9B8];
    domain = [v8 domain];
    code = [v8 code];
    v34 = @"message";
    v35 = string;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v9 = [v23 errorWithDomain:domain code:code userInfo:v26];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_validateType:(id)type error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (error)
  {
    *error = 0;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = +[HMBModelContainer allowedTypes];
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *v55;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v55 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v54 + 1) + 8 * i);
      if (objc_opt_isKindOfClass())
      {

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          string = typeCopy;
          v22 = [string countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = 0;
            v25 = *v51;
LABEL_16:
            v26 = 0;
            v27 = v24;
            v24 += v23;
            while (1)
            {
              if (*v51 != v25)
              {
                objc_enumerationMutation(string);
              }

              if ([(HMBModel *)self _validateType:*(*(&v50 + 1) + 8 * v26) error:error])
              {
                break;
              }

              ++v27;
              if (v23 == ++v26)
              {
                v23 = [string countByEnumeratingWithState:&v50 objects:v61 count:16];
                if (v23)
                {
                  goto LABEL_16;
                }

                goto LABEL_33;
              }
            }

            if (!error)
            {
              goto LABEL_39;
            }

            userInfo = [*error userInfo];
            userInfo2 = [userInfo objectForKey:@"pathStack"];
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%lu]", v27];
            v34 = userInfo2;
            v35 = v20;
            goto LABEL_36;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v33 = 0;
            goto LABEL_41;
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          string = typeCopy;
          v28 = [string countByEnumeratingWithState:&v46 objects:v60 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v47;
LABEL_26:
            v31 = 0;
            while (1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(string);
              }

              v32 = *(*(&v46 + 1) + 8 * v31);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  goto LABEL_39;
                }

                v45 = MEMORY[0x277CCA9B8];
                v38 = *MEMORY[0x277D0F1A0];
                v58[0] = @"message";
                userInfo = [MEMORY[0x277CCAB68] string];
                v59[0] = userInfo;
                v58[1] = @"pathStack";
                v39 = MEMORY[0x277CBEB18];
                userInfo2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v32];
                v20 = [v39 arrayWithObject:userInfo2];
                v59[1] = v20;
                v58[2] = @"errorText";
                v40 = MEMORY[0x277CCACA8];
                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                v43 = [v40 stringWithFormat:@"(key must be of string type (is %@))", v42];
                v59[2] = v43;
                v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
                *error = [v45 errorWithDomain:v38 code:3 userInfo:v44];

                goto LABEL_37;
              }

              userInfo = [string objectForKey:v32];
              if ([(HMBModel *)self _validateType:userInfo error:error])
              {
                break;
              }

              if (v29 == ++v31)
              {
                v29 = [string countByEnumeratingWithState:&v46 objects:v60 count:16];
                if (v29)
                {
                  goto LABEL_26;
                }

                goto LABEL_33;
              }
            }

            if (!error)
            {
              goto LABEL_38;
            }

            userInfo2 = [*error userInfo];
            v34 = [userInfo2 objectForKey:@"pathStack"];
            v20 = v34;
            v35 = v32;
LABEL_36:
            [v34 addObject:v35];
LABEL_37:

LABEL_38:
LABEL_39:
            v33 = 1;
LABEL_40:

            goto LABEL_41;
          }
        }

LABEL_33:
        v33 = 0;
        goto LABEL_40;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D0F1A0];
    v62[0] = @"message";
    string = [MEMORY[0x277CCAB68] string];
    v63[0] = string;
    v62[1] = @"pathStack";
    userInfo = [MEMORY[0x277CBEB18] array];
    v63[1] = userInfo;
    v62[2] = @"errorText";
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    userInfo2 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"(%@ not a valid type within an aggregate type)", userInfo2];
    v63[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
    *error = [v13 errorWithDomain:v14 code:3 userInfo:v21];

    goto LABEL_37;
  }

  v33 = 1;
LABEL_41:

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

- (HMFVersion)hmbContainerDataVersion
{
  hmbModelContainer = [(HMBModel *)self hmbModelContainer];
  dataVersion = [hmbModelContainer dataVersion];

  return dataVersion;
}

- (void)hmbAssociateWithContainer:(id)container
{
  v46 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (!containerCopy)
  {
    _HMFPreconditionFailureWithFormat();
  }

  v5 = containerCopy;
  hmbModelContainer = [(HMBModel *)self hmbModelContainer];
  if (hmbModelContainer)
  {
    v7 = hmbModelContainer;
    hmbContainerDataVersion = [(HMBModel *)self hmbContainerDataVersion];
    dataVersion = [v5 dataVersion];
    v10 = [hmbContainerDataVersion isEqual:dataVersion];

    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        hmbContainerDataVersion2 = [(HMBModel *)selfCopy hmbContainerDataVersion];
        dataVersion2 = [v5 dataVersion];
        *buf = 138543874;
        v41 = v14;
        v42 = 2112;
        v43 = hmbContainerDataVersion2;
        v44 = 2112;
        v45 = dataVersion2;
        _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Associating with a container with a different data version (%@ != %@).", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  [(HMBModel *)self setHmbModelContainer:v5];
  if (!self->_hmbType)
  {
    v17 = [v5 typeNameForModelClass:objc_opt_class()];
    hmbType = self->_hmbType;
    self->_hmbType = v17;
  }

  if (!self->_hmbDataVersion)
  {
    hmbContainerDataVersion3 = [(HMBModel *)self hmbContainerDataVersion];
    [(HMBModel *)self setHmbDataVersion:hmbContainerDataVersion3];

    hmbReserved = [(HMBModel *)self hmbReserved];

    if (!hmbReserved)
    {
      v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [(HMBModel *)self setHmbReserved:v21];
    }

    hmbReserved2 = [(HMBModel *)self hmbReserved];
    v23 = [v5 readOnlyVersionsForModelClass:objc_opt_class()];
    [hmbReserved2 setObject:v23 forKey:@"_R"];

    hmbReserved3 = [(HMBModel *)self hmbReserved];
    v25 = [v5 unavailableVersionsForModelClass:objc_opt_class()];
    [hmbReserved3 setObject:v25 forKey:@"_U"];
  }

  __calculateUnavailableReadOnly(self, v5);
  v26 = __modelReferenceFields(self);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [(HMBModel *)self hmbPropertyNamed:*(*(&v35 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;

        [v33 associateWithContainer:v5];
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (HMBModel)initWithModelID:(id)d parentModelID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = HMBModel;
  v9 = [(HMBModel *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hmbModelID, d);
    objc_storeStrong(&v10->_hmbParentModelID, iD);
    v11 = [MEMORY[0x277CBEB98] set];
    hmbUnavailableProperties = v10->_hmbUnavailableProperties;
    v10->_hmbUnavailableProperties = v11;

    v13 = [MEMORY[0x277CBEB98] set];
    hmbReadOnlyProperties = v10->_hmbReadOnlyProperties;
    v10->_hmbReadOnlyProperties = v13;

    v15 = v10;
  }

  return v10;
}

- (id)populateModelWithDictionary:(id)dictionary fromStorageLocation:(unint64_t)location using:(id)using
{
  v59[6] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  usingCopy = using;
  v41 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    _HMFPreconditionFailure();
  }

  v39 = usingCopy;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__1993;
  v55 = __Block_byref_object_dispose__1994;
  v56 = 0;
  context = objc_autoreleasePoolPush();
  v9 = [dictionaryCopy mutableCopy];
  [(HMBModel *)self setHmbReserved:v9];

  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = [dictionaryCopy valueForKey:@"_u"];
  v12 = [v10 initWithUUIDString:v11];
  [(HMBModel *)self setHmbModelID:v12];

  v13 = objc_alloc(MEMORY[0x277CCAD78]);
  v14 = [dictionaryCopy valueForKey:@"_P"];
  v15 = [v13 initWithUUIDString:v14];
  [(HMBModel *)self setHmbParentModelID:v15];

  v16 = [dictionaryCopy valueForKey:@"_T"];
  [(HMBModel *)self setHmbType:v16];

  v17 = objc_alloc(MEMORY[0x277D0F940]);
  v18 = [dictionaryCopy valueForKey:@"_V"];
  v19 = [v17 initWithString:v18];
  [(HMBModel *)self setHmbDataVersion:v19];

  hmbReserved = [(HMBModel *)self hmbReserved];
  v59[0] = @"_P";
  v59[1] = @"_u";
  v59[2] = @"_v";
  v59[3] = @"_T";
  v59[4] = @"_G";
  v59[5] = @"_V";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:6];
  [hmbReserved removeObjectsForKeys:v21];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v57[0] = @"_R";
  v57[1] = @"_U";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v23 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v23)
  {
    v24 = *v48;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v47 + 1) + 8 * i);
        hmbReserved2 = [(HMBModel *)self hmbReserved];
        v28 = [hmbReserved2 hmf_dictionaryForKey:v26];

        if (v28)
        {
          hmbReserved3 = [(HMBModel *)self hmbReserved];
          v30 = [v28 na_dictionaryByMappingValues:&__block_literal_global_431];
          [hmbReserved3 setObject:v30 forKey:v26];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v23);
  }

  v31 = +[HMBModelContainer allowedTypes];
  hmbProperties = [objc_opt_class() hmbProperties];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __66__HMBModel_populateModelWithDictionary_fromStorageLocation_using___block_invoke;
  v42[3] = &unk_2786E08D8;
  v42[4] = self;
  v33 = v31;
  v43 = v33;
  v45 = &v51;
  v34 = v39;
  v44 = v34;
  locationCopy = location;
  [hmbProperties enumerateKeysAndObjectsUsingBlock:v42];

  objc_autoreleasePoolPop(context);
  v35 = v52[5];
  _Block_object_dispose(&v51, 8);

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __66__HMBModel_populateModelWithDictionary_fromStorageLocation_using___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) hmbReserved];
  v10 = [v9 valueForKey:v7];

  if (v8 && v10)
  {
    if ([objc_msgSend(v8 "classObj")])
    {
      v11 = [*(a1 + 32) hmbReserved];
      [v11 removeObjectForKey:v7];
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = *(a1 + 40);
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v13)
      {
        v14 = *v39;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v38 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              LODWORD(v13) = 1;
              goto LABEL_15;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && (!v13 || ([*(a1 + 40) containsObject:{objc_msgSend(v8, "classObj")}] & 1) == 0 && (objc_msgSend(objc_msgSend(v8, "classObj"), "isEqual:", objc_opt_class()) & 1) == 0))
      {
        v10 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v10;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v18)
        {
          v19 = *(a1 + 64);
          v20 = *(a1 + 48);
          v21 = *(*(a1 + 56) + 8);
          obj = *(v21 + 40);
          v22 = [v20 decodePropertyValueFromData:v18 forProperty:v7 field:v8 storageLocation:v19 error:&obj];
          objc_storeStrong((v21 + 40), obj);

          if (v22)
          {
            v23 = [*(a1 + 32) hmbReserved];
            [v23 setValue:v22 forKey:v7];

            v10 = v22;
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            v32 = *(a1 + 32);
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = HMFGetLogIdentifier();
              v35 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 138543874;
              v43 = v34;
              v44 = 2112;
              v45 = v7;
              v46 = 2112;
              v47 = v35;
              _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode value for %@ property: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v31);
            v10 = 0;
            *a4 = 1;
          }
        }

        else
        {
          v24 = MEMORY[0x277CCA9B8];
          v25 = *MEMORY[0x277D0F1A0];
          v48 = @"message";
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"expecting internal storage to be a NSData, but it's a %@", objc_opt_class()];
          v49 = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v28 = [v24 errorWithDomain:v25 code:3 userInfo:v27];
          v29 = *(*(a1 + 56) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          *a4 = 1;
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = keyFromSelector(method);
  if (v5 && ([objc_opt_class() hmbProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = NSStringFromSelector(method);
    v9 = [v8 isEqualToString:v5];

    v10 = objc_opt_class();
    if (v9)
    {
      v11 = "@@:";
      v12 = propertyIMP;
    }

    else
    {
      v11 = "v@:@";
      v12 = setPropertyIMP;
    }

    class_addMethod(v10, method, v12, v11);
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___HMBModel;
    v13 = objc_msgSendSuper2(&v15, sel_resolveInstanceMethod_, method);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t38 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t38, &__block_literal_global_188);
  }

  v3 = logCategory__hmf_once_v39;

  return v3;
}

uint64_t __23__HMBModel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v39;
  logCategory__hmf_once_v39 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSSet)hmbExternalRecordFields
{
  hmbExternalProperties = [self hmbExternalProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__HMBModel_hmbExternalRecordFields__block_invoke;
  v6[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  v6[4] = self;
  v4 = [hmbExternalProperties na_map:v6];

  return v4;
}

id __35__HMBModel_hmbExternalRecordFields__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hmbProperties];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 externalRecordField];

  return v6;
}

+ (NSSet)hmbExternalProperties
{
  if (__modelExternalStorageFields_onceToken != -1)
  {
    dispatch_once(&__modelExternalStorageFields_onceToken, &__block_literal_global_436);
  }

  os_unfair_lock_lock_with_options();
  v3 = [__modelExternalStorageFields_externalStorageFields objectForKey:self];
  if (!v3)
  {
    if ([self isSubclassOfClass:objc_opt_class()])
    {
      v4 = [MEMORY[0x277CBEB58] set];
      hmbProperties = [self hmbProperties];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ____modelExternalStorageFields_block_invoke_2;
      v8[3] = &unk_2786E0E00;
      v6 = v4;
      v9 = v6;
      [hmbProperties enumerateKeysAndObjectsUsingBlock:v8];
      v3 = v6;
      [__modelExternalStorageFields_externalStorageFields setObject:v3 forKey:self];
    }

    else
    {
      v3 = [MEMORY[0x277CBEB98] set];
      [__modelExternalStorageFields_externalStorageFields setObject:v3 forKey:self];
    }
  }

  os_unfair_lock_unlock(&__modelExternalStorageFields_lock);

  return v3;
}

+ (id)formattedStringForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = @"<NULL>";
    goto LABEL_24;
  }

  v7 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<NSDictionary: %lu items>", objc_msgSend(v12, "count")];
    }

    else
    {
      v14 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        v17 = MEMORY[0x277CCACA8];
        hmbDescription = [v16 hmbDescription];

        v6 = [v17 stringWithFormat:@"<NSData: %@>", hmbDescription];

        goto LABEL_22;
      }

      v13 = [v14 description];
    }

    v6 = v13;
LABEL_22:

    goto LABEL_23;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<NSArray: %lu items>", objc_msgSend(v9, "count")];
LABEL_23:

LABEL_24:

  return v6;
}

+ (NSUUID)hmbSchemaHashRoot
{
  if (hmbSchemaHashRoot_onceToken != -1)
  {
    dispatch_once(&hmbSchemaHashRoot_onceToken, &__block_literal_global_46);
  }

  v3 = hmbSchemaHashRoot__schemaHashRoot;

  return v3;
}

uint64_t __29__HMBModel_hmbSchemaHashRoot__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"551E3F88-0C11-4402-A486-6D1EB759AADD"];
  v1 = hmbSchemaHashRoot__schemaHashRoot;
  hmbSchemaHashRoot__schemaHashRoot = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)hmbPrepareQueries
{
  hmbQueries = [self hmbQueries];
  v4 = [hmbQueries count];

  if (v4)
  {
    hmbMutableModelClassesWithQueries = [self hmbMutableModelClassesWithQueries];
    [hmbMutableModelClassesWithQueries addObject:self];
  }

  else
  {
    hmbProperties = [self hmbProperties];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__HMBModel_hmbPrepareQueries__block_invoke;
    v7[3] = &__block_descriptor_40_e40_v32__0__NSString_8__HMBModelField_16_B24l;
    v7[4] = self;
    [hmbProperties enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __29__HMBModel_hmbPrepareQueries__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 encodeBlock];

  if (v6)
  {
    v7 = [*(a1 + 32) hmbMutableModelClassesWithQueries];
    [v7 addObject:*(a1 + 32)];

    *a4 = 1;
  }
}

+ (NSSet)hmbModelClassesWithQueries
{
  hmbMutableModelClassesWithQueries = [self hmbMutableModelClassesWithQueries];
  v3 = [hmbMutableModelClassesWithQueries copy];

  return v3;
}

+ (id)hmbMutableModelClassesWithQueries
{
  if (hmbMutableModelClassesWithQueries_onceToken != -1)
  {
    dispatch_once(&hmbMutableModelClassesWithQueries_onceToken, &__block_literal_global_2073);
  }

  v3 = hmbMutableModelClassesWithQueries__hmbMutableModelClassesWithQueries;

  return v3;
}

uint64_t __45__HMBModel_hmbMutableModelClassesWithQueries__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = hmbMutableModelClassesWithQueries__hmbMutableModelClassesWithQueries;
  hmbMutableModelClassesWithQueries__hmbMutableModelClassesWithQueries = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (NSSet)hmbPropertyNames
{
  v2 = MEMORY[0x277CBEB98];
  hmbProperties = [self hmbProperties];
  allKeys = [hmbProperties allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

+ (BOOL)hmbShouldLogPrivateInformation
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"shouldLogPrivateInformation"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end
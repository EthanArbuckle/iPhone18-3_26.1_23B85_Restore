@interface HMBModelCloudReference
+ (void)applyNativeCKValue:(id)value fromSource:(unint64_t)source associatingWith:(id)with toModel:(id)model propertyNamed:(id)named;
- (BOOL)isEqual:(id)equal;
- (HMBCloudZone)cloudZone;
- (HMBModelCloudReference)initWithCoder:(id)coder;
- (HMBModelCloudReference)initWithModelID:(id)d action:(unint64_t)action;
- (id)attributeDescriptions;
- (id)nativeCKValueWithEncodingContext:(id)context error:(id *)error;
- (id)referencedModelOfType:(Class)type fromCloudZone:(id)zone allowExternalFetch:(BOOL)fetch;
- (unint64_t)action;
- (unint64_t)hash;
- (void)associateWithContainer:(id)container;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBModelCloudReference

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (id)nativeCKValueWithEncodingContext:(id)context error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_26;
  }

  v7 = contextCopy;
  objc_opt_class();
  v8 = objc_opt_isKindOfClass() & 1;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v8)
  {
LABEL_26:
    _HMFPreconditionFailure();
  }

  createdRecords = [v7 createdRecords];
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  v13 = [createdRecords objectForKey:hmbModelID];

  if (v13)
  {
LABEL_7:
    v14 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v13 action:{-[HMBModelCloudReference action](self, "action")}];
    reference = self->_reference;
    self->_reference = v14;

    reference = [(HMBModelCloudReference *)self reference];
    goto LABEL_15;
  }

  localZone = [(HMBModelReference *)self localZone];
  hmbModelID2 = [(HMBModelReference *)self hmbModelID];
  v36 = 0;
  v19 = [localZone externalIDForModelID:hmbModelID2 error:&v36];
  v20 = v36;

  if (!v19)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      hmbModelID3 = [(HMBModelReference *)selfCopy hmbModelID];
      uUIDString = [hmbModelID3 UUIDString];
      *buf = 138543874;
      v38 = v32;
      v39 = 2112;
      v40 = uUIDString;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine CKRecordID for model ID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v13 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v35 = v20;
  v13 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v19 error:&v35];
  v21 = v35;

  if (!v21)
  {

    goto LABEL_7;
  }

  v20 = v21;
  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v25;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v20;
    _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode CKRecordID from external ID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  if (error)
  {
LABEL_13:
    v26 = v20;
    *error = v20;
  }

LABEL_14:

  reference = 0;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];

  return reference;
}

- (id)attributeDescriptions
{
  v13.receiver = self;
  v13.super_class = HMBModelCloudReference;
  attributeDescriptions = [(HMBModelReference *)&v13 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  reference = [(HMBModelCloudReference *)self reference];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  if (reference)
  {
    reference2 = [(HMBModelCloudReference *)self reference];
    v8 = @"Reference";
  }

  else
  {
    action = [(HMBModelCloudReference *)self action];
    if (*MEMORY[0x277CBC070] == action)
    {
      reference2 = @"validate";
    }

    else if (action)
    {
      if (action == 1)
      {
        reference2 = @"delete";
      }

      else
      {
        reference2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown %lu>", action];
      }
    }

    else
    {
      reference2 = @"none";
    }

    v8 = @"Action";
  }

  v10 = [v6 initWithName:v8 value:reference2];
  [v4 addObject:v10];

  v11 = [v4 copy];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMBModelCloudReference;
  coderCopy = coder;
  [(HMBModelReference *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HMBModelCloudReference action](self forKey:{"action", v7.receiver, v7.super_class), @"HMB.a"}];
  reference = [(HMBModelCloudReference *)self reference];
  recordID = [reference recordID];
  [coderCopy encodeObject:recordID forKey:@"HMB.r"];
}

- (HMBModelCloudReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMB.r"];
  v6 = [coderCopy decodeIntegerForKey:@"HMB.a"];
  v10.receiver = self;
  v10.super_class = HMBModelCloudReference;
  v7 = [(HMBModelReference *)&v10 initWithCoder:coderCopy];

  if (v7)
  {
    [(HMBModelCloudReference *)v7 setAction:v6];
    if (v5)
    {
      v8 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v5 action:v6];
      [(HMBModelCloudReference *)v7 setReference:v8];
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HMBModelCloudReference;
  v3 = [(HMBModelReference *)&v5 hash];
  return [(HMBModelCloudReference *)self action]^ v3;
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
  if (v6)
  {
    reference = [(HMBModelCloudReference *)self reference];

    if (reference && ([v6 reference], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      reference2 = [v6 reference];
      reference3 = [(HMBModelCloudReference *)self reference];
      v11 = [reference2 isEqual:reference3];
    }

    else
    {
      reference2 = [(HMBModelReference *)self hmbModelID];
      reference3 = [v6 hmbModelID];
      if ([reference2 isEqual:reference3])
      {
        action = [(HMBModelCloudReference *)self action];
        v11 = action == [v6 action];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)referencedModelOfType:(Class)type fromCloudZone:(id)zone allowExternalFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v48 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  localZone = [zoneCopy localZone];
  if (localZone)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      hmbModelID = [(HMBModelReference *)selfCopy hmbModelID];
      *buf = 138543874;
      v43 = v13;
      v44 = 2112;
      v45 = hmbModelID;
      v46 = 2112;
      v47 = localZone;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Looking for referenced model %@ in localZone %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v41 = 0;
    v15 = [(HMBModelReference *)selfCopy referencedModelOfType:type fromLocalZone:localZone error:&v41];
    v16 = v41;
    reference3 = v16;
    if (v15)
    {
      v18 = [MEMORY[0x277D2C900] futureWithResult:v15];
LABEL_10:

      goto LABEL_19;
    }

    if (v16)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        hmbModelID2 = [(HMBModelReference *)v20 hmbModelID];
        *buf = 138543618;
        v43 = v22;
        v44 = 2112;
        v45 = hmbModelID2;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error fetching model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277D2C900];
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      v18 = [v24 futureWithError:v25];

      goto LABEL_10;
    }
  }

  reference = [(HMBModelCloudReference *)self reference];
  recordID = [reference recordID];

  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  v31 = v30;
  if (recordID && fetchCopy)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      hmbModelID3 = [(HMBModelReference *)selfCopy2 hmbModelID];
      reference2 = [(HMBModelCloudReference *)selfCopy2 reference];
      *buf = 138543874;
      v43 = v32;
      v44 = 2112;
      v45 = hmbModelID3;
      v46 = 2112;
      v47 = reference2;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_INFO, "%{public}@No local model for %@, fetching via CKReference %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    reference3 = [(HMBModelCloudReference *)selfCopy2 reference];
    recordID2 = [reference3 recordID];
    v18 = [zoneCopy fetchCompleteModelForRecordID:recordID2];
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      hmbModelID4 = [(HMBModelReference *)selfCopy2 hmbModelID];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = hmbModelID4;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find referenced model %@, no local model and no CKReference to fetch", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v38 = MEMORY[0x277D2C900];
    reference3 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = [v38 futureWithError:reference3];
  }

LABEL_19:

  v39 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)associateWithContainer:(id)container
{
  containerCopy = container;
  if (containerCopy)
  {
    v5 = containerCopy;
    v12.receiver = self;
    v12.super_class = HMBModelCloudReference;
    [(HMBModelReference *)&v12 associateWithContainer:containerCopy];
    mirror = [v5 mirror];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = mirror;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    cloudZone = [(HMBModelCloudReference *)self cloudZone];
    if (!cloudZone)
    {
      cloudZone = v8;
    }
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMBModelCloudReference *)v10 action];
  }
}

- (unint64_t)action
{
  reference = [(HMBModelCloudReference *)self reference];

  if (!reference)
  {
    return self->_action;
  }

  reference2 = [(HMBModelCloudReference *)self reference];
  referenceAction = [reference2 referenceAction];

  return referenceAction;
}

- (HMBModelCloudReference)initWithModelID:(id)d action:(unint64_t)action
{
  v6.receiver = self;
  v6.super_class = HMBModelCloudReference;
  result = [(HMBModelReference *)&v6 initWithModelID:d];
  if (result)
  {
    result->_action = action;
  }

  return result;
}

+ (void)applyNativeCKValue:(id)value fromSource:(unint64_t)source associatingWith:(id)with toModel:(id)model propertyNamed:(id)named
{
  v66 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  withCopy = with;
  modelCopy = model;
  namedCopy = named;
  v15 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [modelCopy hmbPropertyNamed:namedCopy];
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

    selfCopy = self;
    if (v20)
    {
      v50 = v18;
      v52 = namedCopy;
      v53 = withCopy;
      v54 = modelCopy;
      [v20 associateWithContainer:withCopy];
      v51 = v17;
      recordID = [v17 recordID];
      zoneID = [recordID zoneID];
      zoneName = [zoneID zoneName];
      reference = [v20 reference];
      recordID2 = [reference recordID];
      zoneID2 = [recordID2 zoneID];
      zoneName2 = [zoneID2 zoneName];
      v28 = [zoneName isEqualToString:zoneName2];

      if (v28)
      {
        modelCopy = v54;
        namedCopy = v52;
        [v54 hmbSetProperty:v20 named:v52];

        withCopy = v53;
        v17 = v51;
        goto LABEL_22;
      }

      v36 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v38 = HMFGetOSLogHandle();
      modelCopy = v54;
      namedCopy = v52;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        hmbDescription = [v54 hmbDescription];
        v17 = v51;
        [v51 hmbDescription];
        v44 = v49 = v36;
        reference2 = [v20 reference];
        hmbDescription2 = [reference2 hmbDescription];
        *buf = 138544386;
        v57 = v42;
        v58 = 2112;
        v59 = hmbDescription;
        v60 = 2112;
        v61 = v52;
        v62 = 2112;
        v63 = v44;
        v64 = 2112;
        v65 = hmbDescription2;
        _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Received CKRecord with a HMBModelCloudReference field (%@/%@) where zone name for reference stored in the CKRecord field does not match the zone name in the HMBModel field (%@!=%@)", buf, 0x34u);

        modelCopy = v54;
        v36 = v49;

        withCopy = v53;
      }

      else
      {
        withCopy = v53;
        v17 = v51;
      }

      v18 = v50;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        [modelCopy hmbDescription];
        v40 = v48 = v36;
        *buf = 138544130;
        v57 = v39;
        v58 = 2112;
        v59 = v40;
        v60 = 2112;
        v61 = namedCopy;
        v62 = 2112;
        v63 = v15;
        _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Received CKRecord with a HMBModelCloudReference field (%@/%@) where the corresponding CKRecord field is not set or not of the expected type (got %@)", buf, 0x2Au);

        v36 = v48;
      }
    }

    objc_autoreleasePoolPop(v36);
    goto LABEL_22;
  }

  if (v15)
  {
    v29 = namedCopy;
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      [modelCopy hmbDescription];
      v35 = v34 = modelCopy;
      *buf = 138544130;
      v57 = v33;
      v58 = 2112;
      v59 = v15;
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = v29;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found %@ in CKRecord field for wrapped model value %@/%@ which we expected to be a CKReference (ignoring).", buf, 0x2Au);

      modelCopy = v34;
      v17 = 0;
    }

    objc_autoreleasePoolPop(v30);
    namedCopy = v29;
  }

LABEL_22:

  v47 = *MEMORY[0x277D85DE8];
}

@end
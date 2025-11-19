@interface HMBModelCloudReference
+ (void)applyNativeCKValue:(id)a3 fromSource:(unint64_t)a4 associatingWith:(id)a5 toModel:(id)a6 propertyNamed:(id)a7;
- (BOOL)isEqual:(id)a3;
- (HMBCloudZone)cloudZone;
- (HMBModelCloudReference)initWithCoder:(id)a3;
- (HMBModelCloudReference)initWithModelID:(id)a3 action:(unint64_t)a4;
- (id)attributeDescriptions;
- (id)nativeCKValueWithEncodingContext:(id)a3 error:(id *)a4;
- (id)referencedModelOfType:(Class)a3 fromCloudZone:(id)a4 allowExternalFetch:(BOOL)a5;
- (unint64_t)action;
- (unint64_t)hash;
- (void)associateWithContainer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBModelCloudReference

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (id)nativeCKValueWithEncodingContext:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_26;
  }

  v7 = v6;
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

  v11 = [v7 createdRecords];
  v12 = [(HMBModelReference *)self hmbModelID];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
LABEL_7:
    v14 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v13 action:{-[HMBModelCloudReference action](self, "action")}];
    reference = self->_reference;
    self->_reference = v14;

    v16 = [(HMBModelCloudReference *)self reference];
    goto LABEL_15;
  }

  v17 = [(HMBModelReference *)self localZone];
  v18 = [(HMBModelReference *)self hmbModelID];
  v36 = 0;
  v19 = [v17 externalIDForModelID:v18 error:&v36];
  v20 = v36;

  if (!v19)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HMBModelReference *)v30 hmbModelID];
      v34 = [v33 UUIDString];
      *buf = 138543874;
      v38 = v32;
      v39 = 2112;
      v40 = v34;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine CKRecordID for model ID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v13 = 0;
    if (!a4)
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
  v23 = self;
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
  if (a4)
  {
LABEL_13:
    v26 = v20;
    *a4 = v20;
  }

LABEL_14:

  v16 = 0;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)attributeDescriptions
{
  v13.receiver = self;
  v13.super_class = HMBModelCloudReference;
  v3 = [(HMBModelReference *)&v13 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = [(HMBModelCloudReference *)self reference];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  if (v5)
  {
    v7 = [(HMBModelCloudReference *)self reference];
    v8 = @"Reference";
  }

  else
  {
    v9 = [(HMBModelCloudReference *)self action];
    if (*MEMORY[0x277CBC070] == v9)
    {
      v7 = @"validate";
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        v7 = @"delete";
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown %lu>", v9];
      }
    }

    else
    {
      v7 = @"none";
    }

    v8 = @"Action";
  }

  v10 = [v6 initWithName:v8 value:v7];
  [v4 addObject:v10];

  v11 = [v4 copy];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMBModelCloudReference;
  v4 = a3;
  [(HMBModelReference *)&v7 encodeWithCoder:v4];
  [v4 encodeInteger:-[HMBModelCloudReference action](self forKey:{"action", v7.receiver, v7.super_class), @"HMB.a"}];
  v5 = [(HMBModelCloudReference *)self reference];
  v6 = [v5 recordID];
  [v4 encodeObject:v6 forKey:@"HMB.r"];
}

- (HMBModelCloudReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMB.r"];
  v6 = [v4 decodeIntegerForKey:@"HMB.a"];
  v10.receiver = self;
  v10.super_class = HMBModelCloudReference;
  v7 = [(HMBModelReference *)&v10 initWithCoder:v4];

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
  if (v6)
  {
    v7 = [(HMBModelCloudReference *)self reference];

    if (v7 && ([v6 reference], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v6 reference];
      v10 = [(HMBModelCloudReference *)self reference];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v9 = [(HMBModelReference *)self hmbModelID];
      v10 = [v6 hmbModelID];
      if ([v9 isEqual:v10])
      {
        v12 = [(HMBModelCloudReference *)self action];
        v11 = v12 == [v6 action];
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

- (id)referencedModelOfType:(Class)a3 fromCloudZone:(id)a4 allowExternalFetch:(BOOL)a5
{
  v5 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 localZone];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMBModelReference *)v11 hmbModelID];
      *buf = 138543874;
      v43 = v13;
      v44 = 2112;
      v45 = v14;
      v46 = 2112;
      v47 = v9;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Looking for referenced model %@ in localZone %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v41 = 0;
    v15 = [(HMBModelReference *)v11 referencedModelOfType:a3 fromLocalZone:v9 error:&v41];
    v16 = v41;
    v17 = v16;
    if (v15)
    {
      v18 = [MEMORY[0x277D2C900] futureWithResult:v15];
LABEL_10:

      goto LABEL_19;
    }

    if (v16)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v11;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMBModelReference *)v20 hmbModelID];
        *buf = 138543618;
        v43 = v22;
        v44 = 2112;
        v45 = v23;
        _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error fetching model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277D2C900];
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      v18 = [v24 futureWithError:v25];

      goto LABEL_10;
    }
  }

  v26 = [(HMBModelCloudReference *)self reference];
  v27 = [v26 recordID];

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  v31 = v30;
  if (v27 && v5)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HMBModelReference *)v29 hmbModelID];
      v34 = [(HMBModelCloudReference *)v29 reference];
      *buf = 138543874;
      v43 = v32;
      v44 = 2112;
      v45 = v33;
      v46 = 2112;
      v47 = v34;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_INFO, "%{public}@No local model for %@, fetching via CKReference %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v17 = [(HMBModelCloudReference *)v29 reference];
    v35 = [v17 recordID];
    v18 = [v8 fetchCompleteModelForRecordID:v35];
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [(HMBModelReference *)v29 hmbModelID];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find referenced model %@, no local model and no CKReference to fetch", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v38 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = [v38 futureWithError:v17];
  }

LABEL_19:

  v39 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)associateWithContainer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v12.receiver = self;
    v12.super_class = HMBModelCloudReference;
    [(HMBModelReference *)&v12 associateWithContainer:v4];
    v6 = [v5 mirror];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [(HMBModelCloudReference *)self cloudZone];
    if (!v9)
    {
      v9 = v8;
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
  v3 = [(HMBModelCloudReference *)self reference];

  if (!v3)
  {
    return self->_action;
  }

  v4 = [(HMBModelCloudReference *)self reference];
  v5 = [v4 referenceAction];

  return v5;
}

- (HMBModelCloudReference)initWithModelID:(id)a3 action:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = HMBModelCloudReference;
  result = [(HMBModelReference *)&v6 initWithModelID:a3];
  if (result)
  {
    result->_action = a4;
  }

  return result;
}

+ (void)applyNativeCKValue:(id)a3 fromSource:(unint64_t)a4 associatingWith:(id)a5 toModel:(id)a6 propertyNamed:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v11;
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
    v18 = [v13 hmbPropertyNamed:v14];
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

    v55 = a1;
    if (v20)
    {
      v50 = v18;
      v52 = v14;
      v53 = v12;
      v54 = v13;
      [v20 associateWithContainer:v12];
      v51 = v17;
      v21 = [v17 recordID];
      v22 = [v21 zoneID];
      v23 = [v22 zoneName];
      v24 = [v20 reference];
      v25 = [v24 recordID];
      v26 = [v25 zoneID];
      v27 = [v26 zoneName];
      v28 = [v23 isEqualToString:v27];

      if (v28)
      {
        v13 = v54;
        v14 = v52;
        [v54 hmbSetProperty:v20 named:v52];

        v12 = v53;
        v17 = v51;
        goto LABEL_22;
      }

      v36 = objc_autoreleasePoolPush();
      v41 = v55;
      v38 = HMFGetOSLogHandle();
      v13 = v54;
      v14 = v52;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v54 hmbDescription];
        v17 = v51;
        [v51 hmbDescription];
        v44 = v49 = v36;
        v45 = [v20 reference];
        v46 = [v45 hmbDescription];
        *buf = 138544386;
        v57 = v42;
        v58 = 2112;
        v59 = v43;
        v60 = 2112;
        v61 = v52;
        v62 = 2112;
        v63 = v44;
        v64 = 2112;
        v65 = v46;
        _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@Received CKRecord with a HMBModelCloudReference field (%@/%@) where zone name for reference stored in the CKRecord field does not match the zone name in the HMBModel field (%@!=%@)", buf, 0x34u);

        v13 = v54;
        v36 = v49;

        v12 = v53;
      }

      else
      {
        v12 = v53;
        v17 = v51;
      }

      v18 = v50;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = a1;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        [v13 hmbDescription];
        v40 = v48 = v36;
        *buf = 138544130;
        v57 = v39;
        v58 = 2112;
        v59 = v40;
        v60 = 2112;
        v61 = v14;
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
    v29 = v14;
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      [v13 hmbDescription];
      v35 = v34 = v13;
      *buf = 138544130;
      v57 = v33;
      v58 = 2112;
      v59 = v15;
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = v29;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found %@ in CKRecord field for wrapped model value %@/%@ which we expected to be a CKReference (ignoring).", buf, 0x2Au);

      v13 = v34;
      v17 = 0;
    }

    objc_autoreleasePoolPop(v30);
    v14 = v29;
  }

LABEL_22:

  v47 = *MEMORY[0x277D85DE8];
}

@end
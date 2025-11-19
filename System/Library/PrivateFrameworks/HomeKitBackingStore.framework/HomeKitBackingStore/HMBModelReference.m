@interface HMBModelReference
+ (id)hmbDescriptionForEncodedQueryableVariable:(id)a3;
+ (id)hmbEncodeQueryableParameter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMBLocalZone)localZone;
- (HMBModelReference)initWithCoder:(id)a3;
- (HMBModelReference)initWithModelID:(id)a3;
- (id)attributeDescriptions;
- (id)isValidForContainer:(id)a3 updatedModelIDs:(id)a4;
- (id)referencedModelOfType:(Class)a3 fromLocalZone:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)associateWithContainer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBModelReference

- (HMBLocalZone)localZone
{
  WeakRetained = objc_loadWeakRetained(&self->_localZone);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBModelReference *)self hmbModelID];
  v5 = [v3 initWithName:@"Model ID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelReference *)self hmbModelID];
  [v4 encodeObject:v5 forKey:@"HMB.m"];
}

- (HMBModelReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMB.m"];

  v6 = [(HMBModelReference *)self initWithModelID:v5];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMBModelReference *)self hmbModelID];
  v3 = [v2 hash];

  return v3;
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
  v7 = [(HMBModelReference *)self hmbModelID];
  v8 = [v6 hmbModelID];

  LOBYTE(v6) = [v7 isEqual:v8];
  return v6;
}

- (id)referencedModelOfType:(Class)a3 fromLocalZone:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HMBModelReference *)self hmbModelID];
  v9 = [v7 fetchModelWithModelID:v8 error:a5];

  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model had unexpected type: %@", objc_opt_class()];
      *a5 = [v10 hmfErrorWithCode:15 reason:v11];

      a5 = 0;
    }
  }

  else
  {
    a5 = v9;
  }

  return a5;
}

- (id)isValidForContainer:(id)a3 updatedModelIDs:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMBModelReference *)self hmbModelID];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v6 localZone];
    v12 = [(HMBModelReference *)self hmbModelID];
    v21 = 0;
    v13 = [v11 fetchRecordRowWithModelID:v12 returning:0 error:&v21];
    v14 = v21;

    v10 = 0;
    if (!v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot validate reference %@ because the referenced model can't be found: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)associateWithContainer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMBModelReference *)self localZone];

  if (!v6)
  {
    v7 = [v5 localZone];
    if (v7)
    {
      [(HMBModelReference *)self setLocalZone:v7];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Local zone for associated container is nil: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMBModelReference)initWithModelID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMBModelReference;
  v6 = [(HMBModelReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hmbModelID, a3);
  }

  return v7;
}

+ (id)hmbDescriptionForEncodedQueryableVariable:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] hmbUUIDFromData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UUIDString];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v3 hmbDescription];
    v6 = [v7 stringWithFormat:@"<MALFORMED UUID: %@>", v8];
  }

  return v6;
}

+ (id)hmbEncodeQueryableParameter:(id)a3
{
  v3 = [a3 hmbModelID];
  v4 = [v3 data];

  return v4;
}

@end
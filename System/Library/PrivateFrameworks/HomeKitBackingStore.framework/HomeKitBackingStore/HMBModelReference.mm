@interface HMBModelReference
+ (id)hmbDescriptionForEncodedQueryableVariable:(id)variable;
+ (id)hmbEncodeQueryableParameter:(id)parameter;
- (BOOL)isEqual:(id)equal;
- (HMBLocalZone)localZone;
- (HMBModelReference)initWithCoder:(id)coder;
- (HMBModelReference)initWithModelID:(id)d;
- (id)attributeDescriptions;
- (id)isValidForContainer:(id)container updatedModelIDs:(id)ds;
- (id)referencedModelOfType:(Class)type fromLocalZone:(id)zone error:(id *)error;
- (unint64_t)hash;
- (void)associateWithContainer:(id)container;
- (void)encodeWithCoder:(id)coder;
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
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  v5 = [v3 initWithName:@"Model ID" value:hmbModelID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  [coderCopy encodeObject:hmbModelID forKey:@"HMB.m"];
}

- (HMBModelReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMB.m"];

  v6 = [(HMBModelReference *)self initWithModelID:v5];
  return v6;
}

- (unint64_t)hash
{
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  v3 = [hmbModelID hash];

  return v3;
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
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  hmbModelID2 = [v6 hmbModelID];

  LOBYTE(v6) = [hmbModelID isEqual:hmbModelID2];
  return v6;
}

- (id)referencedModelOfType:(Class)type fromLocalZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  v9 = [zoneCopy fetchModelWithModelID:hmbModelID error:error];

  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model had unexpected type: %@", objc_opt_class()];
      *error = [v10 hmfErrorWithCode:15 reason:v11];

      error = 0;
    }
  }

  else
  {
    error = v9;
  }

  return error;
}

- (id)isValidForContainer:(id)container updatedModelIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  dsCopy = ds;
  hmbModelID = [(HMBModelReference *)self hmbModelID];
  v9 = [dsCopy containsObject:hmbModelID];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    localZone = [containerCopy localZone];
    hmbModelID2 = [(HMBModelReference *)self hmbModelID];
    v21 = 0;
    v13 = [localZone fetchRecordRowWithModelID:hmbModelID2 returning:0 error:&v21];
    v14 = v21;

    v10 = 0;
    if (!v13)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = selfCopy;
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

- (void)associateWithContainer:(id)container
{
  v17 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (!containerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = containerCopy;
  localZone = [(HMBModelReference *)self localZone];

  if (!localZone)
  {
    localZone2 = [v5 localZone];
    if (localZone2)
    {
      [(HMBModelReference *)self setLocalZone:localZone2];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
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

- (HMBModelReference)initWithModelID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMBModelReference;
  v6 = [(HMBModelReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hmbModelID, d);
  }

  return v7;
}

+ (id)hmbDescriptionForEncodedQueryableVariable:(id)variable
{
  variableCopy = variable;
  v4 = [MEMORY[0x277CCAD78] hmbUUIDFromData:variableCopy];
  v5 = v4;
  if (v4)
  {
    uUIDString = [v4 UUIDString];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    hmbDescription = [variableCopy hmbDescription];
    uUIDString = [v7 stringWithFormat:@"<MALFORMED UUID: %@>", hmbDescription];
  }

  return uUIDString;
}

+ (id)hmbEncodeQueryableParameter:(id)parameter
{
  hmbModelID = [parameter hmbModelID];
  data = [hmbModelID data];

  return data;
}

@end
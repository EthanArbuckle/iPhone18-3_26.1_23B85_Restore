@interface MKFCKHomeObject
+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
- (BOOL)_exportSiblingRelationshipsFromLocalModel:(void *)model localRelationship:(void *)relationship context:;
- (BOOL)_importSiblingRelationshipsIntoLocalModel:(void *)model localRelationship:(void *)relationship context:;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (BOOL)validateHome:(id *)home error:(id *)error;
- (BOOL)validateHomeModelID:(id *)d error:(id *)error;
- (id)_accessoryWithModelID:(void *)d context:;
- (uint64_t)_validateConstraints:(uint64_t)result;
- (void)_exportSiblingRelationshipsFromLocalModel:(void *)model localRelationship:(void *)relationship cloudRelationship:(void *)cloudRelationship context:;
- (void)_importSiblingRelationshipsIntoLocalModel:(void *)model localRelationship:(void *)relationship cloudRelationship:(void *)cloudRelationship context:;
- (void)willSave;
@end

@implementation MKFCKHomeObject

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = MKFCKHomeObject;
  v5 = [(HMDManagedObject *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(MKFCKHomeObject *)self _validateConstraints:update];
  }

  return v5;
}

- (uint64_t)_validateConstraints:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (([result shouldSkipValidationDuringImport] & 1) == 0)
    {
      home = [v3 home];
      if (home)
      {
        v5 = home;
        homeModelID = [v3 homeModelID];
        if (homeModelID)
        {
          v7 = homeModelID;
          home2 = [v3 home];
          modelID = [home2 modelID];
          homeModelID2 = [v3 homeModelID];
          v11 = [modelID isEqual:homeModelID2];

          if ((v11 & 1) == 0)
          {
            if (!a2)
            {
              return 0;
            }

            v12 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"homeModelID must match home.modelID"];
            v13 = v12;
            result = 0;
            *a2 = v12;
            return result;
          }
        }

        else
        {
        }
      }
    }

    return 1;
  }

  return result;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = MKFCKHomeObject;
  v5 = [(HMDManagedObject *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(MKFCKHomeObject *)self _validateConstraints:insert];
  }

  return v5;
}

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = MKFCKHomeObject;
  [(MKFCKModel *)&v7 willSave];
  homeModelID = [(MKFCKHomeObject *)self homeModelID];

  if (!homeModelID)
  {
    home = [(MKFCKHomeObject *)self home];
    v5 = home;
    if (home)
    {
      modelID = [home modelID];
      [(MKFCKHomeObject *)self setHomeModelID:modelID];
    }
  }
}

+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    hmd_debugIdentifier = [dCopy hmd_debugIdentifier];
    v21 = 138544130;
    v22 = v17;
    v23 = 2112;
    v24 = hmd_debugIdentifier;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2112;
    v28 = iDCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Local model deleted: %@::%{mask.hash}@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  v14 = [contextCopy objectWithID:dCopy];
  v15 = MKFPropertyNamesFromDescriptions(propertiesCopy);
  v16 = [self fetchWithLocalModel:v14 context:contextCopy];
  v17 = v16;
  if (!v16)
  {
    v39 = v15;
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v33;
      v42 = 2112;
      v43 = v14;
      v44 = 2114;
      v45 = v39;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Local model updated but no cloud model exists: %@ (%{public}@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if ([v16 exportFromLocalModel:v14 updatedProperties:propertiesCopy context:contextCopy])
  {
    v38 = updatesCopy;
    v39 = v15;
    hasPersistentChangedValues = [v17 hasPersistentChangedValues];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (hasPersistentChangedValues)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v23;
        v42 = 2112;
        v43 = v17;
        v44 = 2114;
        v45 = v39;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during export: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy2;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v27 = v37 = v24;
        v28 = [v17 debugDescription];
        *buf = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

        v24 = v37;
      }

      objc_autoreleasePoolPop(v24);
      v19 = objc_autoreleasePoolPush();
      v29 = v25;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v30 = HMFGetLogIdentifier();
      v31 = [v14 debugDescription];
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        updatesCopy = v38;
LABEL_17:

        objc_autoreleasePoolPop(v19);
        v34 = 1;
        v15 = v39;
        goto LABEL_18;
      }

      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during export: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v34 = 0;
LABEL_18:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  contextCopy = context;
  v11 = [contextCopy objectWithID:dCopy];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Local model inserted, waiting for home update to insert cloud model: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)importDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    hmd_debugIdentifier = [dCopy hmd_debugIdentifier];
    v21 = 138544130;
    v22 = v17;
    v23 = 2112;
    v24 = hmd_debugIdentifier;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2112;
    v28 = iDCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Cloud model deleted: %@::%{mask.hash}@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  v14 = [contextCopy objectWithID:dCopy];
  v15 = MKFPropertyNamesFromDescriptions(propertiesCopy);
  v16 = [v14 fetchLocalModelWithContext:contextCopy];
  if (!v16)
  {
    v38 = v15;
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v32;
      v41 = 2112;
      v42 = v14;
      v43 = 2114;
      v44 = v38;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Cloud model updated, waiting for home update to insert local model: %@ (%{public}@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if ([v14 importIntoLocalModel:v16 updatedProperties:propertiesCopy context:contextCopy])
  {
    v37 = updatesCopy;
    v38 = v15;
    hasPersistentChangedValues = [v16 hasPersistentChangedValues];
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    v21 = v20;
    if (hasPersistentChangedValues)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v22;
        v41 = 2112;
        v42 = v16;
        v43 = 2114;
        v44 = v38;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during import: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy2;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v36 = v23;
        v27 = [v16 debugDescription];
        *buf = 138543618;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

        v23 = v36;
      }

      objc_autoreleasePoolPop(v23);
      v18 = objc_autoreleasePoolPush();
      v28 = v24;
      v21 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v29 = HMFGetLogIdentifier();
      v30 = [v14 debugDescription];
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        updatesCopy = v37;
LABEL_17:

        objc_autoreleasePoolPop(v18);
        v33 = 1;
        v15 = v38;
        goto LABEL_18;
      }

      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during import: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v33 = 0;
LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  contextCopy = context;
  v11 = [contextCopy objectWithID:dCopy];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Cloud model inserted, waiting for home update to insert local model: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)validateHomeModelID:(id *)d error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (-[MKFCKModel shouldSkipValidationDuringImport](self, "shouldSkipValidationDuringImport") || !*d || ([objc_opt_class() hmd_validateUUID:*d key:@"homeModelID" error:error] & 1) != 0)
  {
    result = 1;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *d;
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = @"homeModelID";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [objc_opt_class() hmd_errorForInvalidValue:*d key:@"homeModelID"];
    v15 = v14;
    result = 0;
    *error = v14;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)validateHome:(id *)home error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(MKFCKModel *)self shouldSkipValidationDuringImport]|| (v7 = *home, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0) && v7)
  {
    result = 1;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *home;
      v18 = 138543874;
      v19 = v13;
      v20 = 2114;
      v21 = @"home";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [objc_opt_class() hmd_errorForInvalidValue:*home key:@"home"];
    v16 = v15;
    result = 0;
    *error = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_accessoryWithModelID:(void *)d context:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dCopy = d;
  if (self)
  {
    v7 = +[MKFCKAccessory fetchRequest];
    v8 = MEMORY[0x277CCAC30];
    home = [self home];
    v10 = [v8 predicateWithFormat:@"%K == %@ && %K == %@", @"home", home, @"modelID", v5];
    [v7 setPredicate:v10];

    v19 = 0;
    v11 = [dCopy executeFetchRequest:v7 error:&v19];
    v12 = v19;
    if (v11)
    {
      self = [v11 firstObject];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138544130;
        v21 = v16;
        v22 = 2160;
        v23 = 1752392040;
        v24 = 2112;
        v25 = v5;
        v26 = 2114;
        v27 = v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessories for modelID %{mask.hash}@: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
      self = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return self;
}

- (BOOL)_importSiblingRelationshipsIntoLocalModel:(void *)model localRelationship:(void *)relationship context:
{
  if (self)
  {
    relationshipCopy = relationship;
    modelCopy = model;
    v9 = a2;
    entity = [v9 entity];
    relationshipsByName = [entity relationshipsByName];
    v12 = [relationshipsByName objectForKeyedSubscript:modelCopy];

    v13 = [self relationshipForLocalName:modelCopy localModel:v9];

    [(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v9 localRelationship:v12 cloudRelationship:v13 context:relationshipCopy];
  }

  return self != 0;
}

- (void)_importSiblingRelationshipsIntoLocalModel:(void *)model localRelationship:(void *)relationship cloudRelationship:(void *)cloudRelationship context:
{
  cloudRelationshipCopy = cloudRelationship;
  relationshipCopy = relationship;
  v11 = a2;
  name = [model name];
  v13 = [v11 mutableSetValueForKey:name];

  name2 = [relationshipCopy name];

  v15 = [self valueForKey:name2];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke;
  v29[3] = &unk_278680DB0;
  v17 = v16;
  v30 = v17;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_2;
  v24[3] = &unk_278673528;
  v25 = v17;
  v18 = cloudRelationshipCopy;
  v26 = v18;
  selfCopy = self;
  v19 = v13;
  v28 = v19;
  v20 = v17;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_11;
  v22[3] = &unk_278673550;
  v23 = v19;
  v21 = v19;
  [v20 enumerateKeysAndObjectsUsingBlock:v22];
}

void __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 modelID];
  [*(a1 + 32) setObject:0 forKeyedSubscript:v4];
  v5 = [v3 fetchLocalModelWithContext:*(a1 + 40)];
  if (v5)
  {
    if (([*(a1 + 56) containsObject:v5] & 1) == 0)
    {
      [*(a1 + 56) addObject:v5];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No local sibling found, home import will fix it later: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __105__MKFCKHomeObject__importSiblingRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 32) removeObject:v4];
  }
}

void __98__MKFCKHomeObject__importRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __98__MKFCKHomeObject__importRelationshipsIntoLocalModel_localRelationship_cloudRelationship_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![v5 isDeletedLocallyWithContext:*(a1 + 32)])
  {
    v10 = [v5 modelID];
    v11 = [*(a1 + 48) objectForKeyedSubscript:v10];
    if (v11)
    {
      [*(a1 + 48) setObject:0 forKeyedSubscript:v10];
      v12 = v11;
    }

    else
    {
      v12 = [v5 createLocalModelWithContext:*(a1 + 32)];
    }

    v13 = [MEMORY[0x277CBEB98] set];
    v14 = [v5 importIntoLocalModel:v12 updatedProperties:v13 context:*(a1 + 32)];

    if ((v14 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a3 = 1;
LABEL_29:

      goto LABEL_30;
    }

    if (v11)
    {
      v15 = [v12 hasPersistentChangedValues];
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (!v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v41;
          v46 = 2112;
          v47 = v12;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during import: %@", buf, 0x16u);
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v43 = [v12 changedValues];
        v21 = [v43 allKeys];
        v22 = [v21 sortedArrayUsingSelector:sel_compare_];
        *buf = 138543874;
        v45 = v20;
        v46 = 2112;
        v47 = v12;
        v48 = 2114;
        v49 = v22;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during import: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 40);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v12 debugDescription];
        *buf = 138543618;
        v45 = v26;
        v46 = 2112;
        v47 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v16 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
LABEL_24:

LABEL_28:
        objc_autoreleasePoolPop(v16);
        goto LABEL_29;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v33;
        v46 = 2112;
        v47 = v12;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during import: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 40);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v12 debugDescription];
        *buf = 138543618;
        v45 = v37;
        v46 = 2112;
        v47 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v16 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }
    }

    v39 = HMFGetLogIdentifier();
    v40 = [v5 debugDescription];
    *buf = 138543618;
    v45 = v39;
    v46 = 2112;
    v47 = v40;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);

    goto LABEL_24;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v9;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Skip create/update since model is already deleted locally: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
LABEL_30:

  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)_exportSiblingRelationshipsFromLocalModel:(void *)model localRelationship:(void *)relationship context:
{
  if (self)
  {
    relationshipCopy = relationship;
    modelCopy = model;
    v9 = a2;
    entity = [v9 entity];
    relationshipsByName = [entity relationshipsByName];
    v12 = [relationshipsByName objectForKeyedSubscript:modelCopy];

    v13 = [self relationshipForLocalName:modelCopy localModel:v9];

    [(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v9 localRelationship:v12 cloudRelationship:v13 context:relationshipCopy];
  }

  return self != 0;
}

- (void)_exportSiblingRelationshipsFromLocalModel:(void *)model localRelationship:(void *)relationship cloudRelationship:(void *)cloudRelationship context:
{
  cloudRelationshipCopy = cloudRelationship;
  relationshipCopy = relationship;
  v11 = a2;
  name = [model name];
  v13 = [v11 valueForKey:name];

  name2 = [relationshipCopy name];

  v15 = [self mutableSetValueForKey:name2];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke;
  v29[3] = &unk_2786735A0;
  v17 = v16;
  v30 = v17;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke_2;
  v24[3] = &unk_2786735C8;
  v25 = v17;
  v18 = cloudRelationshipCopy;
  v26 = v18;
  selfCopy = self;
  v19 = v15;
  v28 = v19;
  v20 = v17;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke_15;
  v22[3] = &unk_2786735F0;
  v23 = v19;
  v21 = v19;
  [v20 enumerateKeysAndObjectsUsingBlock:v22];
}

void __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 entity];
  v5 = [HMDCoreDataCloudTransform exportTransformableClassFromEntity:v4];

  v6 = [v3 modelID];
  [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
  v7 = [(objc_class *)v5 fetchWithLocalModel:v3 context:*(a1 + 40)];
  if (v7)
  {
    if (([*(a1 + 56) containsObject:v7] & 1) == 0)
    {
      [*(a1 + 56) addObject:v7];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 48);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@No cloud sibling found, home export will fix it later: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __105__MKFCKHomeObject__exportSiblingRelationshipsFromLocalModel_localRelationship_cloudRelationship_context___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 32) removeObject:v4];
  }
}

@end
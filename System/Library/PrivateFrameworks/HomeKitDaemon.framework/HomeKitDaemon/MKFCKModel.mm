@interface MKFCKModel
+ (NSArray)defaultPreloadedProperties;
+ (NSString)rootKeyPath;
+ (id)appendDefaultPreloadedPropertiesTo:(id)a3;
+ (id)canonicalModelForModels:(id)a3 context:(id)a4;
+ (id)createWithLocalModel:(id)a3 context:(id)a4;
+ (id)fetchWithLocalModel:(id)a3 context:(id)a4;
+ (id)mergedDictionaryFromCloud:(id)a3 localModifications:(id)a4;
+ (id)modelWithModelID:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)modelWithObjectID:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)copyPropertiesFromLocalModel:(id)a3 context:(id)a4;
- (BOOL)copyPropertiesIntoLocalModel:(id)a3 context:(id)a4;
- (BOOL)isDeletedLocallyWithContext:(id)a3;
- (BOOL)isFake;
- (BOOL)shouldExportUpdatedPropertyInSet:(id)a3 name:(id)a4;
- (BOOL)shouldSkipValidationDuringImport;
- (BOOL)validateFlags:(id *)a3 error:(id *)a4;
- (BOOL)validateModelID:(id *)a3 error:(id *)a4;
- (BOOL)validateWriterTimestamp:(id *)a3 error:(id *)a4;
- (BOOL)validateWriterVersion:(id *)a3 error:(id *)a4;
- (id)createLocalModelWithContext:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)fetchEquivalentModels:(id *)a3;
- (id)fetchLocalModelWithContext:(id)a3;
- (id)hmd_debugIdentifier;
- (id)predicateMatchingEquivalentModels;
- (id)redactedDescription;
- (id)relationshipForLocalName:(id)a3 localModel:(id)a4;
- (int64_t)ensureCanonicalModel;
- (void)awakeFromInsert;
- (void)convertToFakeModel;
- (void)didTurnIntoFault;
- (void)willSave;
@end

@implementation MKFCKModel

- (id)fetchEquivalentModels:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() fetchRequest];
  v6 = [(MKFCKModel *)self predicateMatchingEquivalentModels];
  [v5 setPredicate:v6];

  v7 = [objc_opt_class() defaultPreloadedProperties];
  [v5 setPropertiesToFetch:v7];

  v8 = [(MKFCKModel *)self objectID];
  v9 = [v8 persistentStore];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v5 setAffectedStores:v10];

  v11 = [v5 execute:a3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)predicateMatchingEquivalentModels
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(MKFCKModel *)self modelID];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"modelID", v3];
  v5 = [objc_opt_class() rootKeyPath];
  if (v5)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = [(MKFCKModel *)self valueForKeyPath:v5];
    v8 = [v6 predicateWithFormat:@"%K = %@", v5, v7];

    v9 = MEMORY[0x277CCA920];
    v14[0] = v4;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v4;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int64_t)ensureCanonicalModel
{
  v2 = self;
  v100 = *MEMORY[0x277D85DE8];
  v3 = 64;
  canonical = self->_canonical;
  if (!canonical)
  {
    v5 = MEMORY[0x277CCABB0];
    if (([(MKFCKModel *)v2 isDeleted]& 1) != 0)
    {
      v6 = -2;
LABEL_64:
      v68 = [v5 numberWithInteger:v6];
      v69 = *(&v2->super.super.super.isa + v3);
      *(&v2->super.super.super.isa + v3) = v68;

      canonical = *(&v2->super.super.super.isa + v3);
      goto LABEL_65;
    }

    v7 = [(MKFCKModel *)v2 objectID];
    v8 = [v7 persistentStore];

    v82 = [(MKFCKModel *)v2 managedObjectContext];
    v9 = [v82 hmd_coreData];
    v10 = [objc_opt_class() cloudStoreTypes];
    v11 = [v9 cloudPrivateStore];
    if (v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      v12 = [v9 cloudSharedStore];
      v13 = 2 * (v8 == v12);
    }

    v79 = v2;
    if ((v13 & v10) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v2;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        v27 = off_27867D3E0[v13];
        v28 = off_27867D3F8[v10 & 3];
        *buf = 138544130;
        v89 = v26;
        v90 = 2114;
        v91 = v27;
        v92 = 2114;
        v93 = v28;
        v94 = 2112;
        v95 = v24;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring model in %{public}@ store, should be in %{public}@ store: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
      v6 = -2;
      v2 = v79;
      goto LABEL_63;
    }

    v14 = [objc_opt_class() rootKeyPath];
    v81 = v14;
    if (v14)
    {
      v15 = [(MKFCKModel *)v2 valueForKeyPath:v14];
      if (!v15)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v2;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v32;
          v90 = 2112;
          v91 = v30;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring model without an associated root: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v33 = 0;
        v6 = 0;
        goto LABEL_62;
      }

      v78 = v15;
      v16 = [(MKFCKModel *)v15 ensureCanonicalModel];
      v6 = v16;
      if (v16 >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (([(MKFCKModel *)v2 isDeleted]& 1) == 0 && v13 == 1)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = v2;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v20 = v73 = v5;
            [(MKFCKModel *)v18 debugDescription];
            v22 = v21 = v9;
            *buf = 138544130;
            v89 = v20;
            v90 = 2112;
            v91 = v78;
            v92 = 2112;
            v93 = v18;
            v94 = 2112;
            v95 = v22;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Deleting model associated with non-canonical root %@: %@\n%@", buf, 0x2Au);

            v9 = v21;
            v5 = v73;
          }

          objc_autoreleasePoolPop(v17);
          [v82 deleteObject:v18];
        }

LABEL_61:
        v33 = v78;
LABEL_62:

LABEL_63:
        goto LABEL_64;
      }

      if (!v16)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v2;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v89 = v37;
          v90 = 2112;
          v91 = v78;
          v92 = 2112;
          v93 = v35;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring model while status of associated root %@ is not known: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        v6 = 0;
        goto LABEL_61;
      }
    }

    v87 = 0;
    v38 = [(MKFCKModel *)v2 fetchEquivalentModels:&v87];
    v77 = v38;
    v78 = v87;
    if (v38)
    {
      if ([v38 count] == 1 && (objc_msgSend(v38, "firstObject"), v39 = objc_claimAutoreleasedReturnValue(), v39, v40 = v39 == v2, v38 = v77, v40))
      {
        v6 = 1;
      }

      else
      {
        v75 = v9;
        v76 = v8;
        v41 = [MKFCKModel canonicalModelForModels:v38 context:v82];
        if (v13 == 1)
        {
          v72 = 64;
          v74 = v5;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          obj = v77;
          v42 = [obj countByEnumeratingWithState:&v83 objects:buf count:16];
          v43 = v81;
          if (v42)
          {
            v44 = v42;
            v45 = *v84;
            do
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v84 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v47 = *(*(&v83 + 1) + 8 * i);
                if (v47 != v41)
                {
                  [*(*(&v83 + 1) + 8 * i) willAccessValueForKey:0];
                  v48 = objc_autoreleasePoolPush();
                  v49 = v2;
                  v50 = HMFGetOSLogHandle();
                  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
                  if (v43)
                  {
                    if (v51)
                    {
                      v52 = HMFGetLogIdentifier();
                      v53 = [(MKFCKModel *)v47 debugDescription];
                      *v96 = 138543874;
                      *&v96[4] = v52;
                      *&v96[12] = 2112;
                      *&v96[14] = v47;
                      *&v96[22] = 2112;
                      v97 = v53;
                      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Merging model with non-unique modelID: %@\n%@", v96, 0x20u);

                      v2 = v79;
                    }

                    objc_autoreleasePoolPop(v48);
                    v54 = v47;
                    if (v41)
                    {
                      v55 = [(MKFCKModel *)v41 entity];
                      v56 = [v55 relationshipsByName];
                      *v96 = MEMORY[0x277D85DD0];
                      *&v96[8] = 3221225472;
                      *&v96[16] = __46__MKFCKModel_mergeRelationshipsFromDuplicate___block_invoke;
                      v97 = &unk_27867D378;
                      v98 = v41;
                      v99 = v54;
                      [v56 enumerateKeysAndObjectsUsingBlock:v96];
                    }

                    v43 = v81;
                  }

                  else
                  {
                    if (v51)
                    {
                      v57 = HMFGetLogIdentifier();
                      v58 = [(MKFCKModel *)v47 debugDescription];
                      *v96 = 138543874;
                      *&v96[4] = v57;
                      *&v96[12] = 2112;
                      *&v96[14] = v47;
                      *&v96[22] = 2112;
                      v97 = v58;
                      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Deleting model with non-unique modelID: %@\n%@", v96, 0x20u);

                      v2 = v79;
                      v43 = v81;
                    }

                    objc_autoreleasePoolPop(v48);
                  }

                  [v82 deleteObject:{v47, v72}];
                }
              }

              v44 = [obj countByEnumeratingWithState:&v83 objects:buf count:16];
            }

            while (v44);
          }

          v3 = v72;
          v5 = v74;
        }

        [(MKFCKModel *)v41 willAccessValueForKey:0, v72];
        v59 = objc_autoreleasePoolPush();
        v60 = v2;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = HMFGetLogIdentifier();
          v63 = [(MKFCKModel *)v41 debugDescription];
          *v96 = 138543874;
          *&v96[4] = v62;
          *&v96[12] = 2112;
          *&v96[14] = v41;
          *&v96[22] = 2112;
          v97 = v63;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@Determined canonical model: %@\n%@", v96, 0x20u);

          v2 = v79;
        }

        objc_autoreleasePoolPop(v59);
        if (v41 == v60)
        {
          v6 = 1;
        }

        else
        {
          v6 = -1;
        }

        v9 = v75;
        v8 = v76;
      }
    }

    else
    {
      v64 = objc_autoreleasePoolPush();
      v65 = v2;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543874;
        v89 = v67;
        v90 = 2112;
        v91 = v65;
        v92 = 2114;
        v93 = v78;
        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch equivalent models for %@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v64);
      v6 = 0;
    }

    goto LABEL_61;
  }

LABEL_65:
  v70 = *MEMORY[0x277D85DE8];

  return [(NSNumber *)canonical integerValue];
}

void __46__MKFCKModel_mergeRelationshipsFromDuplicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v5 isToMany])
  {
    v6 = [v5 isOrdered];
    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 mutableOrderedSetValueForKey:v13];
      v9 = [*(a1 + 40) valueForKey:v13];
      [v9 array];
    }

    else
    {
      v8 = [v7 mutableSetValueForKey:v13];
      v9 = [*(a1 + 40) valueForKey:v13];
      [v9 allObjects];
    }
    v12 = ;
    [v8 addObjectsFromArray:v12];
  }

  else
  {
    v10 = [*(a1 + 32) valueForKey:v13];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = *(a1 + 32);
    v8 = [*(a1 + 40) valueForKey:v13];
    [v11 setValue:v8 forKey:v13];
  }

LABEL_9:
}

- (BOOL)isDeletedLocallyWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 hmd_coreData];
  v6 = [v5 workingStore];

  v7 = [(MKFCKModel *)self entity];
  v8 = [HMDCoreDataCloudTransform localTransformableEntityFromEntity:v7];

  v9 = [(MKFCKModel *)self modelID];
  LOBYTE(v7) = [v6 hmd_modelWasDeletedWithID:v9 modelIDKey:@"modelID" entity:v8 duration:v4 context:0.0];

  return v7;
}

- (id)createLocalModelWithContext:(id)a3
{
  v4 = a3;
  v5 = [(MKFCKModel *)self entity];
  v6 = [HMDCoreDataCloudTransform localTransformableEntityFromEntity:v5];

  v7 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v6 insertIntoManagedObjectContext:v4];
  v8 = v7;
  v9 = [(MKFCKModel *)self modelID];
  [v8 setModelID:v9];

  v10 = [(MKFCKModel *)self writerTimestamp];
  [v8 setWriterTimestamp:v10];

  return v8;
}

- (id)fetchLocalModelWithContext:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MKFCKModel *)self entity];
  v6 = [HMDCoreDataCloudTransform localTransformableEntityFromEntity:v5];

  v7 = MEMORY[0x277CBE428];
  v8 = [v6 name];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = objc_opt_class();
  v11 = [(MKFCKModel *)self modelID];
  v12 = [v10 predicateWithModelID:v11];
  [v9 setPredicate:v12];

  v28[0] = @"modelID";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v9 setPropertiesToFetch:v13];

  v23 = 0;
  v14 = [v4 executeFetchRequest:v9 error:&v23];
  v15 = v23;
  if (v14)
  {
    if ([v14 count])
    {
      v16 = [v14 firstObject];
      goto LABEL_8;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local models: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v16 = 0;
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)willSave
{
  v11.receiver = self;
  v11.super_class = MKFCKModel;
  [(MKFCKModel *)&v11 willSave];
  v3 = [(MKFCKModel *)self writerTimestamp];
  if (([(MKFCKModel *)self isDeleted]& 1) == 0 && (!v3 || [(MKFCKModel *)self hasChanges]))
  {
    v4 = [(MKFCKModel *)self writerVersion];
    v5 = [(MKFCKModel *)self changedValues];
    v6 = [v5 count];
    if (!v3 || v6 || !v4)
    {
      if (!v3 || ([v5 objectForKeyedSubscript:@"writerTimestamp"], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
      {
        v8 = [MEMORY[0x277CBEAA8] now];
        [(MKFCKModel *)self setWriterTimestamp:v8];
      }

      if (!v4 || ([v5 objectForKeyedSubscript:@"writerVersion"], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
      {
        v10 = MKFCKModelCurrentWriterVersionString();
        if (([v4 isEqualToString:v10] & 1) == 0)
        {
          [(MKFCKModel *)self setWriterVersion:v10];
        }
      }
    }
  }
}

- (void)didTurnIntoFault
{
  v4.receiver = self;
  v4.super_class = MKFCKModel;
  [(MKFCKModel *)&v4 didTurnIntoFault];
  canonical = self->_canonical;
  self->_canonical = 0;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = MKFCKModel;
  [(MKFCKModel *)&v4 awakeFromInsert];
  v3 = _generateFlags(0);
  [(MKFCKModel *)self setPrimitiveFlags:v3];
}

- (id)hmd_debugIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MKFCKModel;
  v4 = [(NSManagedObject *)&v8 hmd_debugIdentifier];
  v5 = [(MKFCKModel *)self modelID];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MKFCKModel *)self objectID];
  v5 = [v4 hmd_debugIdentifier];
  v6 = [(MKFCKModel *)self modelID];
  v7 = [v6 hash];
  v8 = [(MKFCKModel *)self isFake];
  v9 = "";
  if (v8)
  {
    v9 = " [FAKE]";
  }

  v10 = [v3 stringWithFormat:@"<%@: %lu%s>", v5, v7, v9];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MKFCKModel;
  v4 = [(HMDManagedObject *)&v9 debugDescription];
  v5 = [(MKFCKModel *)self isFake];
  v6 = "";
  if (v5)
  {
    v6 = " [FAKE]";
  }

  v7 = [v3 stringWithFormat:@"%@%s", v4, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MKFCKModel *)self objectID];
  v5 = [v4 hmd_debugIdentifier];
  v6 = [(MKFCKModel *)self modelID];
  v7 = [(MKFCKModel *)self isFake];
  v8 = "";
  if (v7)
  {
    v8 = " [FAKE]";
  }

  v9 = [v3 stringWithFormat:@"<%@: %@%s>", v5, v6, v8];

  return v9;
}

- (id)relationshipForLocalName:(id)a3 localModel:(id)a4
{
  v6 = a3;
  v7 = [a4 entity];
  v8 = [v7 relationshipsByName];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"cloudSyncKey"];
  if (!v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"cloudSyncInclude"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      v11 = [v9 name];
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = [(MKFCKModel *)self entity];
  v15 = [v14 relationshipsByName];
  v16 = [v15 objectForKeyedSubscript:v11];

  return v16;
}

- (BOOL)copyPropertiesFromLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 entity];
  v7 = [v6 attributesByName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__MKFCKModel_copyPropertiesFromLocalModel_context___block_invoke;
  v10[3] = &unk_27867E278;
  v11 = v5;
  v12 = self;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  return 1;
}

void __51__MKFCKModel_copyPropertiesFromLocalModel_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"cloudSyncKey"];
  if (v6 || ([v5 objectForKeyedSubscript:@"cloudSyncInclude"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v17) && (v6 = v18) != 0)
  {
    v7 = v6;
    v8 = [*(a1 + 32) valueForKey:v18];
    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"cloudSyncTransformer"];
      if (v9)
      {
        v10 = [MEMORY[0x277CCAE68] valueTransformerForName:v9];
        v11 = [v10 transformedValue:v8];

        v8 = v11;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"cloudSyncSkipIfNil"];
    v13 = [v12 BOOLValue];

    if (!v13 || v8)
    {
      v14 = [*(a1 + 40) valueForKey:v7];
      v15 = HMFEqualObjects();

      if ((v15 & 1) == 0)
      {
        [*(a1 + 40) setValue:v8 forKey:v7];
      }
    }
  }
}

- (BOOL)shouldExportUpdatedPropertyInSet:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hmf_isEmpty])
  {
    v7 = 1;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__MKFCKModel_shouldExportUpdatedPropertyInSet_name___block_invoke;
    v9[3] = &unk_278687A70;
    v10 = v6;
    v11 = &v12;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v7 & 1;
}

void __52__MKFCKModel_shouldExportUpdatedPropertyInSet_name___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 name];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (BOOL)copyPropertiesIntoLocalModel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 entity];
  v7 = [v6 attributesByName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__MKFCKModel_copyPropertiesIntoLocalModel_context___block_invoke;
  v10[3] = &unk_27867E278;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  return 1;
}

void __51__MKFCKModel_copyPropertiesIntoLocalModel_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"cloudSyncKey"];
  if (v6 || ([v5 objectForKeyedSubscript:@"cloudSyncInclude"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v17) && (v6 = v18) != 0)
  {
    v7 = v6;
    v8 = [*(a1 + 32) valueForKey:v6];
    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"cloudSyncTransformer"];
      if (v9)
      {
        v10 = [MEMORY[0x277CCAE68] valueTransformerForName:v9];
        v11 = [v10 reverseTransformedValue:v8];

        v8 = v11;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"cloudSyncSkipIfNil"];
    v13 = [v12 BOOLValue];

    if (!v13 || v8)
    {
      v14 = [*(a1 + 40) valueForKey:v18];
      v15 = HMFEqualObjects();

      if ((v15 & 1) == 0)
      {
        [*(a1 + 40) setValue:v8 forKey:v18];
      }
    }
  }
}

- (void)convertToFakeModel
{
  if (![(MKFCKModel *)self isFake])
  {
    v3 = _generateFlags(1);
    [(MKFCKModel *)self setFlags:v3];
  }
}

- (BOOL)isFake
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(MKFCKModel *)self flags];
  v7 = 0;
  v8 = 0;
  [v2 getUUIDBytes:&v7];
  v3 = BYTE5(v8);

  v4 = *MEMORY[0x277D85DE8];
  return (v3 >> 3) & 1;
}

- (BOOL)shouldSkipValidationDuringImport
{
  v2 = [(MKFCKModel *)self managedObjectContext];
  v3 = [v2 hmd_transactionAuthor] == 0;

  return v3;
}

+ (id)mergedDictionaryFromCloud:(id)a3 localModifications:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if ([v5 count])
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v5, "count")}];
    [v8 addEntriesFromDictionary:v5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__MKFCKModel_mergedDictionaryFromCloud_localModifications___block_invoke;
    v12[3] = &unk_2786866F8;
    v13 = v8;
    v9 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = [v9 copy];
  }

  else
  {
    v10 = v6;
  }

  objc_autoreleasePoolPop(v7);

  return v10;
}

+ (id)canonicalModelForModels:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 hmd_coreData];
  v9 = [v8 container];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__180188;
  v24 = __Block_byref_object_dispose__180189;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__180188;
  v18[4] = __Block_byref_object_dispose__180189;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__MKFCKModel_canonicalModelForModels_context___block_invoke;
  v13[3] = &unk_27867D3A0;
  v10 = v9;
  v14 = v10;
  v15 = &v20;
  v16 = v18;
  v17 = a1;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  v11 = v21[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __46__MKFCKModel_canonicalModelForModels_context___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v4 objectID];
  v7 = [v5 recordIDForManagedObjectID:v6];

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_12;
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v9 = [v8 compareToRecordID:v7];
    if (v9 == 1)
    {
      goto LABEL_13;
    }

    if (!v9)
    {
      v23 = *(*(*(a1 + 40) + 8) + 40);
      v25 = *(*(*(a1 + 48) + 8) + 40);
      _HMFPreconditionFailureWithFormat();
      goto LABEL_7;
    }

LABEL_12:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
LABEL_13:

    v18 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_7:
  if (v7)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543874;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Comparing multiple candidate models without a CKRecordID: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(*(*(a1 + 40) + 8) + 40) objectID];
  v16 = [v4 objectID];
  v17 = [v15 compare:v16];

  if (v17 == 1)
  {
    goto LABEL_13;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  v24 = *(*(*(a1 + 40) + 8) + 40);
  v19 = _HMFPreconditionFailureWithFormat();
  [(MKFCKModel *)v19 createWithLocalModel:v20 context:v21, v22];
}

+ (id)createWithLocalModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 modelID];
  v9 = [[a1 alloc] initWithContext:v7];

  [v9 setModelID:v8];

  return v9;
}

+ (id)fetchWithLocalModel:(id)a3 context:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 fetchRequest];
  v9 = [v6 modelID];
  v10 = [a1 predicateWithModelID:v9];
  [v8 setPredicate:v10];

  v11 = [a1 defaultPreloadedProperties];
  [v8 setPropertiesToFetch:v11];

  v21 = 0;
  v12 = [v7 executeFetchRequest:v8 error:&v21];
  v13 = v21;
  if (v12)
  {
    if ([v12 count])
    {
      v14 = [v12 firstObject];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud models: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v14 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)modelWithModelID:(id)a3 context:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [a1 fetchRequest];
  v11 = [a1 predicateWithModelID:v8];
  [v10 setPredicate:v11];

  v12 = [a1 defaultPreloadedProperties];
  [v10 setPropertiesToFetch:v12];

  [v10 setFetchBatchSize:1];
  v23 = 0;
  v13 = [v9 executeFetchRequest:v10 error:&v23];
  v14 = v23;
  if (v13)
  {
    v15 = [v13 firstObject];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138544130;
      v25 = v19;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 2112;
      v29 = v8;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch model with ID %{mask.hash}@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    if (a5)
    {
      v20 = v14;
      v15 = 0;
      *a5 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)modelWithObjectID:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 defaultPreloadedProperties];
  v11 = [v8 hmd_fetchExistingObjectWithID:v9 propertiesToFetch:v10 error:a5];

  if (!v11)
  {
    goto LABEL_6;
  }

  if (objc_opt_isKindOfClass())
  {
    a5 = v11;
    goto LABEL_7;
  }

  if (a5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetched object is not of the expected type: %@", v11];
    *a5 = [v12 hmErrorWithCode:22 description:0 reason:v13 suggestion:0];

LABEL_6:
    a5 = 0;
  }

LABEL_7:

  return a5;
}

+ (id)appendDefaultPreloadedPropertiesTo:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultPreloadedProperties];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v5, "count")}];
  [v6 addObjectsFromArray:v5];
  [v6 addObjectsFromArray:v4];

  v7 = [v6 allObjects];

  return v7;
}

+ (NSArray)defaultPreloadedProperties
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"modelID";
  v5[1] = @"flags";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (NSString)rootKeyPath
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)validateFlags:(id *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (-[MKFCKModel shouldSkipValidationDuringImport](self, "shouldSkipValidationDuringImport") || ([objc_opt_class() hmd_validateUUID:*a3 key:@"flags" error:a4] & 1) != 0)
  {
    result = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *a3;
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = @"flags";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)validateWriterVersion:(id *)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(MKFCKModel *)self shouldSkipValidationDuringImport])
  {
    goto LABEL_2;
  }

  v8 = *a3;
  if (!*a3)
  {
    if (([(MKFCKModel *)self isInserted]& 1) != 0)
    {
LABEL_2:
      v7 = 1;
      goto LABEL_19;
    }

    v8 = *a3;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = MKFCKModelCurrentWriterVersionString();
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(MKFCKModel *)v15 modelID];
    v29 = v14;
    v19 = *a3;
    v20 = MKFCKModelCurrentWriterVersionString();
    *buf = 138544130;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    v14 = v29;
    v36 = 2112;
    v37 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Object with modelID %@ has writerVersion %@ that doesn't match current writer version %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v21 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:*a3];

  if (v21)
  {
LABEL_14:
    v7 = 1;
  }

  else
  {
LABEL_15:
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *a3;
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = @"writerVersion";
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    [objc_opt_class() hmd_errorForInvalidValue:*a3 key:@"writerVersion"];
    *a4 = v7 = 0;
  }

LABEL_19:
  v27 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)validateWriterTimestamp:(id *)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(MKFCKModel *)self shouldSkipValidationDuringImport])
  {
    goto LABEL_2;
  }

  v8 = *a3;
  if (!*a3)
  {
    if (([(MKFCKModel *)self isInserted]& 1) != 0)
    {
LABEL_2:
      v7 = 1;
      goto LABEL_14;
    }

    v8 = *a3;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v7 = v11 != 0;
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *a3;
      v19 = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = @"writerTimestamp";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *a4 = [objc_opt_class() hmd_errorForInvalidValue:*a3 key:@"writerTimestamp"];
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)validateModelID:(id *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (-[MKFCKModel shouldSkipValidationDuringImport](self, "shouldSkipValidationDuringImport") || ([objc_opt_class() hmd_validateUUID:*a3 key:@"modelID" error:a4] & 1) != 0)
  {
    result = 1;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *a3;
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = @"modelID";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %{public}@: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

@end
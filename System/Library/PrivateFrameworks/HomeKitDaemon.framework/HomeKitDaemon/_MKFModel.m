@interface _MKFModel
+ (id)modelWithModelID:(id)a3 context:(id)a4;
+ (id)modelWithModelID:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (BOOL)validateForInsertOrUpdateWithParentKey:(id)a3 error:(id *)a4;
- (BOOL)validateModelID:(id *)a3 error:(id *)a4;
- (BOOL)validateWriterTimestamp:(id *)a3 error:(id *)a4;
- (MKFModelDatabaseID)databaseID;
- (NSString)description;
- (id)hmd_debugIdentifier;
- (id)redactedDescription;
- (void)deleteObjects:(id)a3;
- (void)willSave;
@end

@implementation _MKFModel

- (id)redactedDescription
{
  v3 = [(_MKFModel *)self modelID];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(_MKFModel *)self objectID];
    v6 = [v5 hmd_debugIdentifier];
    v7 = [v4 stringWithFormat:@"<%@: %lu>", v6, objc_msgSend(v3, "hash")];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MKFModel;
    v7 = [(HMDManagedObject *)&v9 redactedDescription];
  }

  return v7;
}

- (NSString)description
{
  v3 = [(_MKFModel *)self modelID];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(_MKFModel *)self objectID];
    v6 = [v5 hmd_debugIdentifier];
    v7 = [v4 stringWithFormat:@"<%@: %@>", v6, v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MKFModel;
    v7 = [(HMDManagedObject *)&v9 description];
  }

  return v7;
}

- (id)hmd_debugIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _MKFModel;
  v4 = [(NSManagedObject *)&v8 hmd_debugIdentifier];
  v5 = [(_MKFModel *)self modelID];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (BOOL)validateWriterTimestamp:(id *)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (!*a3)
  {
    if (([(_MKFModel *)self isInserted]& 1) != 0)
    {
      v8 = 1;
      goto LABEL_13;
    }

    v7 = *a3;
  }

  v9 = v7;
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

  v8 = v11 != 0;
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
      v21 = 2112;
      v22 = @"writerTimestamp";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *a4 = [objc_opt_class() hmd_errorForInvalidValue:*a3 key:@"writerTimestamp"];
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)validateModelID:(id *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() hmd_validateUUID:*a3 key:@"modelID" error:a4];
  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *a3;
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = @"modelID";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %@: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)validateForInsertOrUpdateWithParentKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _MKFModel;
  if (![(HMDManagedObject *)&v11 validateForInsertOrUpdate:a4])
  {
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(_MKFModel *)self valueForKey:v6];

    if (!v7)
    {
      if (!a4)
      {
        goto LABEL_8;
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is required", v6];
      *a4 = [v8 hmd_validationErrorWithDescription:v9 managedObject:self attributeName:v6];

LABEL_7:
      LOBYTE(a4) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(a4) = 1;
LABEL_8:

  return a4;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v5 = [(_MKFModel *)self entity];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"parent"];

  LOBYTE(a3) = [(_MKFModel *)self validateForInsertOrUpdateWithParentKey:v7 error:a3];
  return a3;
}

- (void)willSave
{
  v22.receiver = self;
  v22.super_class = _MKFModel;
  [(_MKFModel *)&v22 willSave];
  if (([(_MKFModel *)self isDeleted]& 1) == 0)
  {
    if ([(_MKFModel *)self isInserted])
    {
      v3 = [(_MKFModel *)self writerTimestamp];

      if (v3)
      {
        return;
      }

      v4 = [MEMORY[0x277CBEAA8] now];
      [(_MKFModel *)self setWriterTimestamp:v4];
      goto LABEL_12;
    }

    if ([(_MKFModel *)self hasChanges])
    {
      v5 = [(_MKFModel *)self managedObjectContext];
      v6 = [v5 hmd_transactionAuthor];

      if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        v4 = [(_MKFModel *)self changedValues];
        if ([v4 count])
        {
          v7 = [v4 objectForKeyedSubscript:@"writerTimestamp"];

          if (!v7)
          {
            v18 = 0;
            v19 = &v18;
            v20 = 0x2020000000;
            v21 = 0;
            v8 = [(_MKFModel *)self entity];
            v9 = [v8 attributesByName];

            v12 = MEMORY[0x277D85DD0];
            v13 = 3221225472;
            v14 = __21___MKFModel_willSave__block_invoke;
            v15 = &unk_278680DD8;
            v10 = v9;
            v16 = v10;
            v17 = &v18;
            [v4 enumerateKeysAndObjectsUsingBlock:&v12];
            if (*(v19 + 24) == 1)
            {
              v11 = [MEMORY[0x277CBEAA8] now];
              [(_MKFModel *)self setWriterTimestamp:v11];
            }

            _Block_object_dispose(&v18, 8);
          }
        }

LABEL_12:
      }
    }
  }
}

- (MKFModelDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFModelDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)deleteObjects:(id)a3
{
  v4 = a3;
  v5 = [(_MKFModel *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27___MKFModel_deleteObjects___block_invoke;
  v7[3] = &unk_278680DB0;
  v8 = v5;
  v6 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

+ (id)modelWithModelID:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [a1 modelWithModelID:v6 context:v7 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch model with modelID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)modelWithModelID:(id)a3 context:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [a1 fetchRequest];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"modelID", v9];

  [v10 setPredicate:v11];
  [v10 setFetchBatchSize:1];
  v17[0] = @"modelID";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v10 setPropertiesToFetch:v12];

  v13 = [v8 executeFetchRequest:v10 error:a5];

  if (v13)
  {
    v14 = [v13 firstObject];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end
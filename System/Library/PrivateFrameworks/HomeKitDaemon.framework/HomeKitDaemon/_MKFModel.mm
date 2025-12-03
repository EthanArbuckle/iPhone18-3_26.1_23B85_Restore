@interface _MKFModel
+ (id)modelWithModelID:(id)d context:(id)context;
+ (id)modelWithModelID:(id)d context:(id)context error:(id *)error;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (BOOL)validateForInsertOrUpdateWithParentKey:(id)key error:(id *)error;
- (BOOL)validateModelID:(id *)d error:(id *)error;
- (BOOL)validateWriterTimestamp:(id *)timestamp error:(id *)error;
- (MKFModelDatabaseID)databaseID;
- (NSString)description;
- (id)hmd_debugIdentifier;
- (id)redactedDescription;
- (void)deleteObjects:(id)objects;
- (void)willSave;
@end

@implementation _MKFModel

- (id)redactedDescription
{
  modelID = [(_MKFModel *)self modelID];
  if (modelID)
  {
    v4 = MEMORY[0x277CCACA8];
    objectID = [(_MKFModel *)self objectID];
    hmd_debugIdentifier = [objectID hmd_debugIdentifier];
    redactedDescription = [v4 stringWithFormat:@"<%@: %lu>", hmd_debugIdentifier, objc_msgSend(modelID, "hash")];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MKFModel;
    redactedDescription = [(HMDManagedObject *)&v9 redactedDescription];
  }

  return redactedDescription;
}

- (NSString)description
{
  modelID = [(_MKFModel *)self modelID];
  if (modelID)
  {
    v4 = MEMORY[0x277CCACA8];
    objectID = [(_MKFModel *)self objectID];
    hmd_debugIdentifier = [objectID hmd_debugIdentifier];
    v7 = [v4 stringWithFormat:@"<%@: %@>", hmd_debugIdentifier, modelID];
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
  hmd_debugIdentifier = [(NSManagedObject *)&v8 hmd_debugIdentifier];
  modelID = [(_MKFModel *)self modelID];
  v6 = [v3 stringWithFormat:@"%@/%@", hmd_debugIdentifier, modelID];

  return v6;
}

- (BOOL)validateWriterTimestamp:(id *)timestamp error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *timestamp;
  if (!*timestamp)
  {
    if (([(_MKFModel *)self isInserted]& 1) != 0)
    {
      v8 = 1;
      goto LABEL_13;
    }

    v7 = *timestamp;
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
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *timestamp;
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = @"writerTimestamp";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid value for %@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *error = [objc_opt_class() hmd_errorForInvalidValue:*timestamp key:@"writerTimestamp"];
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)validateModelID:(id *)d error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() hmd_validateUUID:*d key:@"modelID" error:error];
  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *d;
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

- (BOOL)validateForInsertOrUpdateWithParentKey:(id)key error:(id *)error
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = _MKFModel;
  if (![(HMDManagedObject *)&v11 validateForInsertOrUpdate:error])
  {
    goto LABEL_7;
  }

  if (keyCopy)
  {
    v7 = [(_MKFModel *)self valueForKey:keyCopy];

    if (!v7)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      v8 = MEMORY[0x277CCA9B8];
      keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is required", keyCopy];
      *error = [v8 hmd_validationErrorWithDescription:keyCopy managedObject:self attributeName:keyCopy];

LABEL_7:
      LOBYTE(error) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  entity = [(_MKFModel *)self entity];
  userInfo = [entity userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"parent"];

  LOBYTE(update) = [(_MKFModel *)self validateForInsertOrUpdateWithParentKey:v7 error:update];
  return update;
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
      writerTimestamp = [(_MKFModel *)self writerTimestamp];

      if (writerTimestamp)
      {
        return;
      }

      changedValues = [MEMORY[0x277CBEAA8] now];
      [(_MKFModel *)self setWriterTimestamp:changedValues];
      goto LABEL_12;
    }

    if ([(_MKFModel *)self hasChanges])
    {
      managedObjectContext = [(_MKFModel *)self managedObjectContext];
      hmd_transactionAuthor = [managedObjectContext hmd_transactionAuthor];

      if ((hmd_transactionAuthor & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        changedValues = [(_MKFModel *)self changedValues];
        if ([changedValues count])
        {
          v7 = [changedValues objectForKeyedSubscript:@"writerTimestamp"];

          if (!v7)
          {
            v18 = 0;
            v19 = &v18;
            v20 = 0x2020000000;
            v21 = 0;
            entity = [(_MKFModel *)self entity];
            attributesByName = [entity attributesByName];

            v12 = MEMORY[0x277D85DD0];
            v13 = 3221225472;
            v14 = __21___MKFModel_willSave__block_invoke;
            v15 = &unk_278680DD8;
            v10 = attributesByName;
            v16 = v10;
            v17 = &v18;
            [changedValues enumerateKeysAndObjectsUsingBlock:&v12];
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

- (void)deleteObjects:(id)objects
{
  objectsCopy = objects;
  managedObjectContext = [(_MKFModel *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27___MKFModel_deleteObjects___block_invoke;
  v7[3] = &unk_278680DB0;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
  [objectsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

+ (id)modelWithModelID:(id)d context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v16 = 0;
  v8 = [self modelWithModelID:dCopy context:contextCopy error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch model with modelID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)modelWithModelID:(id)d context:(id)context error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"modelID", dCopy];

  [fetchRequest setPredicate:dCopy];
  [fetchRequest setFetchBatchSize:1];
  v17[0] = @"modelID";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [fetchRequest setPropertiesToFetch:v12];

  v13 = [contextCopy executeFetchRequest:fetchRequest error:error];

  if (v13)
  {
    firstObject = [v13 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end
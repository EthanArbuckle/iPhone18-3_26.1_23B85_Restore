@interface _MKFApplicationData
+ (id)appDataDictionaryForContainer:(id)container;
+ (id)castIfApplicationDataContainer:(id)container;
+ (id)hmd_parentAttributeKeyPaths;
+ (id)modelIDForContainerUUID:(id)d;
+ (id)modelIDForParentRelationshipTo:(id)to;
+ (void)setAppDataDictionary:(id)dictionary forContainer:(id)container;
- (BOOL)hasValidContainer;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFApplicationDataDatabaseID)databaseID;
- (NSUUID)hmd_parentModelID;
@end

@implementation _MKFApplicationData

- (NSUUID)hmd_parentModelID
{
  v3 = objc_opt_class();
  if ((HMDManagedObjectClassIsBSORepresentable(v3) & 1) == 0)
  {
    v8 = _HMFPreconditionFailure();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  hmd_parentAttributeKeyPaths = [objc_opt_class() hmd_parentAttributeKeyPaths];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__143900;
  v14 = __Block_byref_object_dispose__143901;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68___MKFApplicationData_HMDBackingStoreModelObject__hmd_parentModelID__block_invoke;
  v9[3] = &unk_27867AFA8;
  v9[4] = self;
  v9[5] = &v10;
  [hmd_parentAttributeKeyPaths hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  v5 = v11[5];
  if (v5)
  {
    hmd_modelID = [v5 hmd_modelID];
  }

  else
  {
    hmd_modelID = 0;
  }

  _Block_object_dispose(&v10, 8);

  return hmd_modelID;
}

- (MKFApplicationDataDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFApplicationDataDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)hasValidContainer
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = +[_MKFApplicationData hmd_parentAttributeKeyPaths];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(_MKFApplicationData *)self valueForKeyPath:*(*(&v13 + 1) + 8 * i)];

        if (v9)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    v10 = v6 == 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v8.receiver = self;
  v8.super_class = _MKFApplicationData;
  LODWORD(v5) = [(_MKFModel *)&v8 validateForInsertOrUpdate:?];
  if (v5)
  {
    if ([(_MKFApplicationData *)self hasValidContainer])
    {
      LOBYTE(v5) = 1;
    }

    else if (update)
    {
      v6 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"Must have exactly one container"];
      v5 = v6;
      LOBYTE(v5) = 0;
      *update = v6;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (id)hmd_parentAttributeKeyPaths
{
  if (hmd_parentAttributeKeyPaths__hmf_once_t3 != -1)
  {
    dispatch_once(&hmd_parentAttributeKeyPaths__hmf_once_t3, &__block_literal_global_261);
  }

  v3 = hmd_parentAttributeKeyPaths__hmf_once_v4;

  return v3;
}

+ (id)castIfApplicationDataContainer:(id)container
{
  v3 = castIfApplicationDataContainer___hmf_once_t0;
  containerCopy = container;
  if (v3 != -1)
  {
    dispatch_once(&castIfApplicationDataContainer___hmf_once_t0, &__block_literal_global_214689);
  }

  if ([castIfApplicationDataContainer___hmf_once_v1 objectConforms:containerCopy])
  {
    v5 = containerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)modelIDForParentRelationshipTo:(id)to
{
  modelID = [to modelID];
  v5 = [self modelIDForContainerUUID:modelID];

  return v5;
}

+ (id)modelIDForContainerUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [@"AppData" dataUsingEncoding:4];
  v6 = [v3 hmf_UUIDWithNamespace:dCopy data:v5];

  return v6;
}

+ (void)setAppDataDictionary:(id)dictionary forContainer:(id)container
{
  dictionaryCopy = dictionary;
  containerCopy = container;
  applicationData = [containerCopy applicationData];
  if ([dictionaryCopy count])
  {
    if (applicationData)
    {
      appDataDictionary = [(_MKFApplicationData *)applicationData appDataDictionary];
      v9 = HMFEqualObjects();

      if (v9)
      {
        goto LABEL_9;
      }

      managedObjectContext = [dictionaryCopy copy];
      [(_MKFApplicationData *)applicationData setAppDataDictionary:managedObjectContext];
    }

    else
    {
      managedObjectContext = [containerCopy managedObjectContext];
      applicationData = [[_MKFApplicationData alloc] initWithContext:managedObjectContext];
      v11 = [self modelIDForParentRelationshipTo:containerCopy];
      [(_MKFApplicationData *)applicationData setModelID:v11];

      v12 = [dictionaryCopy copy];
      [(_MKFApplicationData *)applicationData setAppDataDictionary:v12];

      [containerCopy setApplicationData:applicationData];
    }
  }

  else
  {
    if (!applicationData)
    {
      goto LABEL_9;
    }

    [containerCopy setApplicationData:0];
    managedObjectContext = [(_MKFApplicationData *)applicationData managedObjectContext];
    [managedObjectContext deleteObject:applicationData];
  }

LABEL_9:
}

+ (id)appDataDictionaryForContainer:(id)container
{
  applicationData = [container applicationData];
  appDataDictionary = [applicationData appDataDictionary];

  return appDataDictionary;
}

@end
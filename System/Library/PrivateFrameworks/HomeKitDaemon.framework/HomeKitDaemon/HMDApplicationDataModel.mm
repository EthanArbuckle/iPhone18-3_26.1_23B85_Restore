@interface HMDApplicationDataModel
+ (id)cd_modelWithMKFHomeManager:(id)manager;
+ (id)modelWithAppDataPayload:(id)payload existingAppData:(id)data parentUUID:(id)d;
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_currentManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDApplicationDataModel

+ (id)properties
{
  if (properties_onceToken_16032 != -1)
  {
    dispatch_once(&properties_onceToken_16032, &__block_literal_global_128);
  }

  v3 = properties__properties_16033;

  return v3;
}

void __37__HMDApplicationDataModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"appDataDictionary";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_16033;
  properties__properties_16033 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)modelWithAppDataPayload:(id)payload existingAppData:(id)data parentUUID:(id)d
{
  payloadCopy = payload;
  dataCopy = data;
  dCopy = d;
  if ([payloadCopy count])
  {
    if (!dataCopy)
    {
      v10 = [[HMDApplicationData alloc] initWithParentUUID:dCopy];
      [(HMDApplicationData *)v10 setApplicationData:payloadCopy forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
      v11 = v10;
      v12 = 1;
      goto LABEL_8;
    }

    v10 = [dataCopy copy];
    [(HMDApplicationData *)v10 setApplicationData:payloadCopy forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
LABEL_6:
    v11 = v10;
    v12 = 2;
LABEL_8:
    v13 = [(HMDApplicationData *)v11 modelObjectWithChangeType:v12];

    goto LABEL_9;
  }

  if (dataCopy)
  {
    v10 = [dataCopy copy];
    [(HMDApplicationData *)v10 removeApplicationDataForIdentifier:@"com.apple.homekit-entitledclient.identifer"];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"appDataDictionary"])
  {
    appDataDictionary = [objectCopy appDataDictionary];

    v12 = wrapAppDataDictionary(appDataDictionary);
    v13 = v12;
    v14 = *MEMORY[0x277CBEEE8];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDApplicationDataModel;
    v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v15;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v7 initWithUUIDString:*MEMORY[0x277CD23C8]];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  v10 = [parentUUID isEqual:v8];

  if (v10)
  {
    v11 = [(_MKFModel *)_MKFHomeManager modelWithModelID:v8 context:contextCopy];
    appDataDictionary = [(HMDApplicationDataModel *)self appDataDictionary];
    v13 = [appDataDictionary objectForKeyedSubscript:@"com.apple.homekit-entitledclient.identifer"];
    [v11 setAppDataDictionary:v13];

    v14 = 1;
  }

  else
  {
    v47.receiver = self;
    v47.super_class = HMDApplicationDataModel;
    v15 = [(HMDBackingStoreModelObject *)&v47 cd_currentManagedObjectInContext:contextCopy error:error];
    v14 = v15 != 0;
    if (v15)
    {
      errorCopy = error;
      appDataDictionary2 = [(HMDApplicationDataModel *)self appDataDictionary];
      v17 = [appDataDictionary2 objectForKeyedSubscript:@"com.apple.homekit-entitledclient.identifer"];
      [v15 setAppDataDictionary:v17];

      parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = +[_MKFApplicationData hmd_parentAttributeKeyPaths];
      v19 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v44;
        v39 = v8;
        v40 = contextCopy;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = [v15 valueForKeyPath:v23];
            if (v24)
            {
              v27 = v24;
LABEL_22:

              v8 = v39;
              contextCopy = v40;
              v14 = v15 != 0;
              goto LABEL_23;
            }

            entity = [v15 entity];
            relationshipsByName = [entity relationshipsByName];
            v27 = [relationshipsByName objectForKeyedSubscript:v23];

            if (!v27)
            {
              _HMFPreconditionFailure();
LABEL_27:
              _HMFPreconditionFailure();
            }

            destinationEntity = [v27 destinationEntity];
            managedObjectClassName = [destinationEntity managedObjectClassName];
            v30 = NSClassFromString(managedObjectClassName);

            if (!v30)
            {
              goto LABEL_27;
            }

            v31 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:parentUUID2 ofManagedObjectType:v30 error:errorCopy];
            if (v31)
            {
              v36 = v31;
              [v15 setValue:v31 forKey:v23];

              goto LABEL_22;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
          v8 = v39;
          contextCopy = v40;
          v14 = v15 != 0;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    else if (!error)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v35;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Could not find current application data model to update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)cd_currentManagedObjectInContext:(id)context error:(id *)error
{
  contextCopy = context;
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v8 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v10 = [parentUUID isEqual:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDApplicationDataModel;
    v11 = [(HMDBackingStoreModelObject *)&v13 cd_currentManagedObjectInContext:contextCopy error:error];
  }

  return v11;
}

+ (id)cd_modelWithMKFHomeManager:(id)manager
{
  managerCopy = manager;
  appDataDictionary = [managerCopy appDataDictionary];
  if ([appDataDictionary count])
  {
    modelID = [managerCopy modelID];
    v6 = [_MKFApplicationData modelIDForContainerUUID:modelID];
    v7 = [(HMDBackingStoreModelObject *)[HMDApplicationDataModel alloc] initWithUUID:v6 parentUUID:modelID];
    v8 = wrapAppDataDictionary(appDataDictionary);
    [(HMDApplicationDataModel *)v7 setAppDataDictionary:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
@interface HMDApplicationDataModel
+ (id)cd_modelWithMKFHomeManager:(id)a3;
+ (id)modelWithAppDataPayload:(id)a3 existingAppData:(id)a4 parentUUID:(id)a5;
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)a3 error:(id *)a4;
- (id)cd_currentManagedObjectInContext:(id)a3 error:(id *)a4;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
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

+ (id)modelWithAppDataPayload:(id)a3 existingAppData:(id)a4 parentUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    if (!v8)
    {
      v10 = [[HMDApplicationData alloc] initWithParentUUID:v9];
      [(HMDApplicationData *)v10 setApplicationData:v7 forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
      v11 = v10;
      v12 = 1;
      goto LABEL_8;
    }

    v10 = [v8 copy];
    [(HMDApplicationData *)v10 setApplicationData:v7 forIdentifier:@"com.apple.homekit-entitledclient.identifer"];
LABEL_6:
    v11 = v10;
    v12 = 2;
LABEL_8:
    v13 = [(HMDApplicationData *)v11 modelObjectWithChangeType:v12];

    goto LABEL_9;
  }

  if (v8)
  {
    v10 = [v8 copy];
    [(HMDApplicationData *)v10 removeApplicationDataForIdentifier:@"com.apple.homekit-entitledclient.identifer"];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"appDataDictionary"])
  {
    v11 = [v10 appDataDictionary];

    v12 = wrapAppDataDictionary(v11);
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
    v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v15;
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)cd_updateManagedObjectInContext:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v7 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v9 = [(HMDBackingStoreModelObject *)self parentUUID];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11 = [(_MKFModel *)_MKFHomeManager modelWithModelID:v8 context:v6];
    v12 = [(HMDApplicationDataModel *)self appDataDictionary];
    v13 = [v12 objectForKeyedSubscript:@"com.apple.homekit-entitledclient.identifer"];
    [v11 setAppDataDictionary:v13];

    v14 = 1;
  }

  else
  {
    v47.receiver = self;
    v47.super_class = HMDApplicationDataModel;
    v15 = [(HMDBackingStoreModelObject *)&v47 cd_currentManagedObjectInContext:v6 error:a4];
    v14 = v15 != 0;
    if (v15)
    {
      v42 = a4;
      v16 = [(HMDApplicationDataModel *)self appDataDictionary];
      v17 = [v16 objectForKeyedSubscript:@"com.apple.homekit-entitledclient.identifer"];
      [v15 setAppDataDictionary:v17];

      v18 = [(HMDBackingStoreModelObject *)self parentUUID];
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
        v40 = v6;
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
              v6 = v40;
              v14 = v15 != 0;
              goto LABEL_23;
            }

            v25 = [v15 entity];
            v26 = [v25 relationshipsByName];
            v27 = [v26 objectForKeyedSubscript:v23];

            if (!v27)
            {
              _HMFPreconditionFailure();
LABEL_27:
              _HMFPreconditionFailure();
            }

            v28 = [v27 destinationEntity];
            v29 = [v28 managedObjectClassName];
            v30 = NSClassFromString(v29);

            if (!v30)
            {
              goto LABEL_27;
            }

            v31 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v18 ofManagedObjectType:v30 error:v42];
            if (v31)
            {
              v36 = v31;
              [v15 setValue:v31 forKey:v23];

              goto LABEL_22;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
          v8 = v39;
          v6 = v40;
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

    else if (!a4)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
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

- (id)cd_currentManagedObjectInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMDBackingStoreModelObject *)self parentUUID];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v8 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDApplicationDataModel;
    v11 = [(HMDBackingStoreModelObject *)&v13 cd_currentManagedObjectInContext:v6 error:a4];
  }

  return v11;
}

+ (id)cd_modelWithMKFHomeManager:(id)a3
{
  v3 = a3;
  v4 = [v3 appDataDictionary];
  if ([v4 count])
  {
    v5 = [v3 modelID];
    v6 = [_MKFApplicationData modelIDForContainerUUID:v5];
    v7 = [(HMDBackingStoreModelObject *)[HMDApplicationDataModel alloc] initWithUUID:v6 parentUUID:v5];
    v8 = wrapAppDataDictionary(v4);
    [(HMDApplicationDataModel *)v7 setAppDataDictionary:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
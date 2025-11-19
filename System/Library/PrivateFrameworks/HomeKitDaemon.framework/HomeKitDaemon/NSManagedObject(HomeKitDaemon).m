@interface NSManagedObject(HomeKitDaemon)
+ (id)hmd_errorForInvalidValue:()HomeKitDaemon key:;
+ (uint64_t)hmd_validateCharacteristicValue:()HomeKitDaemon key:error:;
+ (uint64_t)hmd_validateNumber:()HomeKitDaemon key:error:;
+ (uint64_t)hmd_validateUUID:()HomeKitDaemon key:error:;
- (id)hmd_debugIdentifier;
- (id)mkf_createRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:relationship:relation:;
- (id)mkf_findRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:;
- (id)mkf_materializeOrCreateRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:createdNew:;
- (uint64_t)hmd_validateCharacteristicValue:()HomeKitDaemon key:error:;
- (uint64_t)hmd_validateNumber:()HomeKitDaemon key:error:;
- (uint64_t)hmd_validateUUID:()HomeKitDaemon key:error:;
- (uint64_t)mkf_synchronizeRelation:()HomeKitDaemon items:allowCreation:;
- (void)mkf_addToRelationship:()HomeKitDaemon object:;
- (void)mkf_removeFromRelationship:()HomeKitDaemon object:;
@end

@implementation NSManagedObject(HomeKitDaemon)

- (id)mkf_findRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSProtocolFromString(v9);
  v12 = [HMCContext managedObjectClassFromProtocol:v11];
  v13 = [(objc_class *)v12 entity];
  v14 = __keyNameForEntity(v13);

  v15 = [a1 valueForKey:v8];
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

  if (v15 && !v17)
  {
    v20 = _HMFPreconditionFailure();
    return __findObjectInSet(v20, v21, v22, v23);
  }

  else
  {
    v18 = __findObjectInSet(v17, v14, v10, v12);

    return v18;
  }
}

- (void)mkf_removeFromRelationship:()HomeKitDaemon object:
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v9];
  v8 = [v7 mutableCopy];

  if (v8)
  {
    [v8 removeObject:v6];
    [a1 setValue:v8 forKey:v9];
  }
}

- (void)mkf_addToRelationship:()HomeKitDaemon object:
{
  v21 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v21];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB58] set];
  }

  v11 = v10;

  v12 = v11;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || !v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = [a1 entity];
  v15 = [v14 relationshipsByName];
  v16 = [v15 objectForKey:v21];

  v17 = [v16 destinationEntity];
  v18 = [v17 managedObjectClassName];
  NSClassFromString(v18);
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v20 = _HMFPreconditionFailure();
    [NSManagedObject(HomeKitDaemon) mkf_synchronizeRelation:v20 items:? allowCreation:?];
    return;
  }

  [v12 addObject:v6];
  [a1 setValue:v12 forKey:v21];
}

- (uint64_t)mkf_synchronizeRelation:()HomeKitDaemon items:allowCreation:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 entity];
  v11 = [v10 relationshipsByName];
  v12 = [v11 objectForKey:v8];

  if (!v12 || ([v12 isToMany] & 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v13 = [a1 valueForKey:v8];
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
LABEL_14:
    v26 = _HMFPreconditionFailure();
    _Block_object_dispose(&v37, 8);
    _Unwind_Resume(v26);
  }

  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke;
  v41[3] = &unk_27867D4B0;
  v19 = v18;
  v42 = v19;
  [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __78__NSManagedObject_HomeKitDaemon__mkf_synchronizeRelation_items_allowCreation___block_invoke_2;
  v30 = &unk_278674100;
  v20 = v19;
  v36 = a5;
  v31 = v20;
  v32 = a1;
  v21 = v12;
  v33 = v21;
  v35 = &v37;
  v22 = v17;
  v34 = v22;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];
  v23 = *(v38 + 24);
  if (*(v38 + 24))
  {
    v24 = [v20 allValues];
    [v24 hmf_enumerateWithAutoreleasePoolUsingBlock:&__block_literal_global_53324];

    if (([v22 isEqualToSet:v16] & 1) == 0)
    {
      [a1 setValue:v22 forKey:v8];
    }
  }

  _Block_object_dispose(&v37, 8);
  return v23;
}

- (id)mkf_materializeOrCreateRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:createdNew:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 entity];
  v14 = [v13 relationshipsByName];
  v15 = [v14 objectForKey:v10];

  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_32;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v16 = NSProtocolFromString(v11);
  v17 = [HMCContext managedObjectClassFromProtocol:v16];
  v18 = [a1 valueForKey:v10];
  if (![v15 isToMany])
  {
    if (!v12)
    {
      if (!v18)
      {
        if (objc_opt_respondsToSelector())
        {
          v32 = [(objc_class *)v17 modelIDForParentRelationshipTo:a1];
          if (v32)
          {
            v12 = v32;
            v18 = 0;
            if (!a6)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

LABEL_35:
        v33 = _HMFPreconditionFailure();
        return [NSManagedObject(HomeKitDaemon) mkf_createRelationOnProperty:v33 modelProtocol:? keyValue:?];
      }

      if ([objc_opt_class() isSubclassOfClass:v17])
      {
        v18 = v18;
        v25 = v18;
        goto LABEL_24;
      }

LABEL_34:
      _HMFPreconditionFailure();
      goto LABEL_35;
    }

    if (!v18)
    {
      goto LABEL_21;
    }

    v26 = v16;
    v27 = [v18 entity];
    v28 = __keyNameForEntity(v27);

    v29 = [v18 valueForKey:v28];
    v30 = [v29 isEqual:v12];

    if (v30)
    {
      v18 = v18;

      v25 = v18;
      v16 = v26;
      goto LABEL_24;
    }

LABEL_33:
    _HMFPreconditionFailure();
    goto LABEL_34;
  }

  v35 = v11;
  if (!v18)
  {
    v18 = [MEMORY[0x277CBEB98] set];
  }

  v18 = v18;
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

  if (!v20)
  {
LABEL_32:
    _HMFPreconditionFailure();
    goto LABEL_33;
  }

  v34 = a6;
  v21 = v10;
  v22 = v16;
  v23 = [(objc_class *)v17 entity];
  v24 = __keyNameForEntity(v23);
  v25 = __findObjectInSet(v20, v24, v12, v17);

  if (!v25)
  {
    v16 = v22;
    v10 = v21;
    a6 = v34;
    v11 = v35;
LABEL_21:
    if (!a6)
    {
LABEL_23:
      v25 = [a1 mkf_createRelationOnProperty:v10 modelProtocol:v11 keyValue:v12 relationship:v15 relation:v18];

      goto LABEL_24;
    }

LABEL_22:
    *a6 = 1;
    goto LABEL_23;
  }

  v11 = v35;
  v16 = v22;
  v10 = v21;
LABEL_24:

  return v25;
}

- (id)mkf_createRelationOnProperty:()HomeKitDaemon modelProtocol:keyValue:relationship:relation:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [a1 entity];
    v23 = [v22 relationshipsByName];
    v15 = [v23 objectForKey:v12];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v17 = [a1 valueForKey:v12];
LABEL_3:
  v18 = NSProtocolFromString(v13);
  v19 = __createNewObject(a1, [HMCContext managedObjectClassFromProtocol:v18], v15, v14);
  if ([v15 isToMany])
  {
    if (!v17)
    {
      v17 = [MEMORY[0x277CBEB98] set];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = _HMFPreconditionFailure();
      return [(NSManagedObject(HomeKitDaemon) *)v24 hmd_debugIdentifier];
    }

    v20 = [v17 mutableCopy];
    [v20 addObject:v19];
    [a1 setValue:v20 forKey:v12];
  }

  else
  {
    [a1 setValue:v19 forKey:v12];
  }

  return v19;
}

- (id)hmd_debugIdentifier
{
  v1 = [a1 objectID];
  v2 = [v1 hmd_debugIdentifier];

  return v2;
}

- (uint64_t)hmd_validateCharacteristicValue:()HomeKitDaemon key:error:
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() hmd_validateCharacteristicValue:v8 key:v7 error:a5];

  return v9;
}

- (uint64_t)hmd_validateNumber:()HomeKitDaemon key:error:
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() hmd_validateNumber:v8 key:v7 error:a5];

  return v9;
}

- (uint64_t)hmd_validateUUID:()HomeKitDaemon key:error:
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() hmd_validateUUID:v8 key:v7 error:a5];

  return v9;
}

+ (uint64_t)hmd_validateCharacteristicValue:()HomeKitDaemon key:error:
{
  v8 = a3;
  v9 = a4;
  v10 = isAllowedCharType();
  v11 = v10;
  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [a1 hmd_errorForInvalidValue:v8 key:v9];
  }

  return v11;
}

+ (uint64_t)hmd_validateNumber:()HomeKitDaemon key:error:
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = objc_opt_isKindOfClass() & (v8 != 0);
  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [a1 hmd_errorForInvalidValue:v8 key:v9];
  }

  return v10;
}

+ (uint64_t)hmd_validateUUID:()HomeKitDaemon key:error:
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = objc_opt_isKindOfClass() & (v8 != 0);
  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [a1 hmd_errorForInvalidValue:v8 key:v9];
  }

  return v10;
}

+ (id)hmd_errorForInvalidValue:()HomeKitDaemon key:
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = NSStringFromClass(a1);
  v10 = [v6 stringWithFormat:@"%@.%@ is invalid: %@", v9, v7, v8];

  v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:v10];

  return v11;
}

@end
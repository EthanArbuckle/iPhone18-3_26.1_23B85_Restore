@interface MCMEntitlements
+ (id)appGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4;
+ (id)copyAppMigrationDataContainerAccessEntitlementForIdentifier:(id)a3 entitlements:(id)a4;
+ (id)copyGroupEntitlementForIdentifier:(id)a3 entitlements:(id)a4 groupKey:(id)a5;
+ (id)noReferenceAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4;
+ (id)publicAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4;
+ (id)publicEntitlementForGroupContainerClass:(unint64_t)a3;
+ (id)restrictedAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4;
+ (id)systemGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4;
- (BOOL)allowed;
- (BOOL)canCheckAuthorization;
- (BOOL)canControlCaches;
- (BOOL)canDelete;
- (BOOL)canDeleteContainerContent;
- (BOOL)canManageUserManagedAssets;
- (BOOL)canPerformDataMigration;
- (BOOL)canReadReferences;
- (BOOL)canReadWriteReferences;
- (BOOL)canRepair;
- (BOOL)canStageSharedContent;
- (BOOL)hasDaemonContainer;
- (BOOL)hasSystemContainer;
- (BOOL)isAllowedToAccessCodesignMapping;
- (BOOL)isAllowedToAccessInfoMetadata;
- (BOOL)isAllowedToAccessUserAssets;
- (BOOL)isAllowedToChangeReferences;
- (BOOL)isAllowedToCheckAuthorization;
- (BOOL)isAllowedToControlCaches;
- (BOOL)isAllowedToDelete;
- (BOOL)isAllowedToReadReferences;
- (BOOL)isAllowedToRecreateContainerStructure;
- (BOOL)isAllowedToRegenerateDirectoryUUIDs;
- (BOOL)isAllowedToReplaceContainers;
- (BOOL)isAllowedToRestoreContainer;
- (BOOL)isAllowedToSetDataProtection;
- (BOOL)isAllowedToStageSharedContent;
- (BOOL)isAllowedToStartDataMigration;
- (BOOL)isAllowedToStartUserDataMigration;
- (BOOL)isAllowedToTest;
- (BOOL)isAllowedToWipePlugInDataContainerWithIdentifier:(id)a3;
- (BOOL)isEntitledForAppMigrationWithClass:(unint64_t)a3 identifier:(id)a4;
- (BOOL)isEntitledWithBoolEntitlement:(id)a3;
- (BOOL)isOwnerOfContainerWithClass:(unint64_t)a3 identifier:(id)a4;
- (BOOL)isOwnerOfProtectedAppGroupContainerWithIdentifier:(id)a3;
- (BOOL)negatesReferenceToAppGroupIdentifier:(id)a3;
- (BOOL)otherIDLookup;
- (BOOL)privileged;
- (BOOL)proxyAllowed;
- (BOOL)requestsNoContainer;
- (BOOL)testabilityAllowed;
- (MCMEntitlementAllows)access;
- (MCMEntitlementAllows)lookup;
- (MCMEntitlements)initWithEntitlements:(id)a3 clientIdentifier:(id)a4 containerConfigMap:(id)a5;
- (NSDictionary)containerConfigMap;
- (NSDictionary)rawEntitlements;
- (NSString)identifier;
- (id)_arrayOfStringsFromArray:(id)a3;
- (id)_setOfStringsFromArray:(id)a3;
- (id)appGroupIdentifiers;
- (id)containerRequiredIdentifier;
- (id)contributingIdentifiersForContainerConfig:(id)a3;
- (id)copyEntitlementsDictionaryByAddingGroupContainerOfClass:(unint64_t)a3 groupIdentifier:(id)a4;
- (id)copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:(id)a3;
- (id)copyEntitlementsDictionaryByRemovingGroupContainerOfClass:(unint64_t)a3 groupIdentifier:(id)a4;
- (id)copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:(id)a3;
- (id)noReferenceAppGroupIdentifiers;
- (id)publicAppGroupIdentifiers;
- (id)restrictedAppGroupIdentifiers;
- (id)systemGroupIdentifiers;
- (int)_dataProtectionClassFromString:(id)a3;
- (int)dataProtectionClassIfAvailable;
- (int)intendedDataProtectionClass;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 containerIdentity:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 forAllContainersOfContainerConfig:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7;
- (void)prune;
- (void)setRawEntitlements:(id)a3;
@end

@implementation MCMEntitlements

- (NSDictionary)rawEntitlements
{
  result = self->_rawEntitlements;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)allowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.allowed"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMEntitlementAllows)access
{
  v14 = *MEMORY[0x1E69E9840];
  access = self->_access;
  if (!access)
  {
    v4 = [(MCMEntitlements *)self rawEntitlements];
    v5 = [v4 objectForKeyedSubscript:@"com.apple.private.container.access"];
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [MCMEntitlementAccess alloc];
      v9 = [(MCMEntitlements *)self containerConfigMap];
      v10 = [(MCMEntitlementAccess *)v8 initWithEntitlementData:v7 containerConfigMap:v9];
      v11 = self->_access;
      self->_access = v10;
    }

    access = self->_access;
  }

  v12 = *MEMORY[0x1E69E9840];

  return access;
}

- (BOOL)otherIDLookup
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.otherIdLookup"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)publicAppGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMEntitlements *)self identifier];
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 publicAppGroupIdentifiersForIdentifier:v4 entitlements:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)appGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMEntitlements *)self identifier];
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 appGroupIdentifiersForIdentifier:v4 entitlements:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)restrictedAppGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMEntitlements *)self identifier];
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 restrictedAppGroupIdentifiersForIdentifier:v4 entitlements:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)noReferenceAppGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMEntitlements *)self identifier];
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 noReferenceAppGroupIdentifiersForIdentifier:v4 entitlements:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMEntitlementAllows)lookup
{
  v14 = *MEMORY[0x1E69E9840];
  lookup = self->_lookup;
  if (!lookup)
  {
    v4 = [(MCMEntitlements *)self rawEntitlements];
    v5 = [v4 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.lookup"];
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [MCMEntitlementLookup alloc];
      v9 = [(MCMEntitlements *)self containerConfigMap];
      v10 = [(MCMEntitlementLookup *)v8 initWithEntitlementData:v7 containerConfigMap:v9];
      v11 = self->_lookup;
      self->_lookup = v10;
    }

    lookup = self->_lookup;
  }

  v12 = *MEMORY[0x1E69E9840];

  return lookup;
}

- (id)systemGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMEntitlements *)self identifier];
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 systemGroupIdentifiersForIdentifier:v4 entitlements:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)prune
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMEntitlements *)self rawEntitlements];
  v4 = [v3 allKeys];
  v8 = [v4 arrayByExcludingToObjectsInArray:&unk_1F5A77068];

  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v5 dictionaryWithValuesForKeys:v8];
  [(MCMEntitlements *)self setRawEntitlements:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSystemContainer
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.security.system-container"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)hasDaemonContainer
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.security.daemon-container"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSDictionary)containerConfigMap
{
  result = self->_containerConfigMap;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)privileged
{
  result = self->_privileged;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setRawEntitlements:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_rawEntitlements = &self->_rawEntitlements;

  objc_storeStrong(p_rawEntitlements, a3);
}

- (int)_dataProtectionClassFromString:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E696A378]])
  {
    v4 = 1;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A380]])
  {
LABEL_4:
    v4 = 2;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A388]])
  {
    goto LABEL_6;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A3A8]])
  {
    v4 = 4;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A3B0]])
  {
    goto LABEL_4;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A390]])
  {
LABEL_6:
    v4 = 3;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E696A398]])
  {
    v4 = 7;
  }

  else
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Unrecognized value for data protection entitlement: [%@]", &v8, 0xCu);
    }

    v4 = 0;
  }

LABEL_9:

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_arrayOfStringsFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __44__MCMEntitlements__arrayOfStringsFromArray___block_invoke;
  v13 = &unk_1E86B08E0;
  v14 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v10];

  v7 = [v6 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __44__MCMEntitlements__arrayOfStringsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (id)_setOfStringsFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__MCMEntitlements__setOfStringsFromArray___block_invoke;
  v13 = &unk_1E86B08E0;
  v14 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v10];

  v7 = [v6 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __42__MCMEntitlements__setOfStringsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEntitledWithBoolEntitlement:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 BOOLValue];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)copyEntitlementsDictionaryByAddingGroupContainerOfClass:(unint64_t)a3 groupIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MCMEntitlements *)self rawEntitlements];
  v8 = [v7 mutableCopy];

  v9 = [objc_opt_class() publicEntitlementForGroupContainerClass:a3];
  if (v9)
  {
    if (a3 == 13)
    {
      v15 = [(MCMEntitlements *)self systemGroupIdentifiers];
      v16 = [v15 mutableCopy];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [MEMORY[0x1E695DFA8] set];
      }

      v19 = v18;

      [v8 removeObjectForKey:@"com.apple.security.system-group-containers"];
    }

    else if (a3 == 7)
    {
      v10 = [(MCMEntitlements *)self publicAppGroupIdentifiers];
      v11 = [v10 mutableCopy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x1E695DFA8] set];
      }

      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    [v19 addObject:v6];
    v20 = [v19 allObjects];
    [v8 setObject:v20 forKeyedSubscript:v9];

    v14 = [v8 copy];
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v5 mutableCopy];

  v7 = [(MCMEntitlements *)self systemGroupIdentifiers];
  v8 = [v7 mutableCopy];

  [v6 removeObjectForKey:@"com.apple.security.system-group-containers"];
  if (v8)
  {
    [v8 removeObject:v4];
    v9 = [v8 allObjects];
    [v6 setObject:v9 forKeyedSubscript:@"com.apple.security.system-groups"];
  }

  else
  {
    [v6 removeObjectForKey:@"com.apple.security.system-groups"];
  }

  v10 = [v6 copy];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v5 mutableCopy];

  v7 = [(MCMEntitlements *)self publicAppGroupIdentifiers];
  v8 = [v7 mutableCopy];

  v9 = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
  v10 = [v9 mutableCopy];

  if (!v8)
  {
    [v6 removeObjectForKey:@"com.apple.security.application-groups"];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v6 removeObjectForKey:@"com.apple.private.security.restricted-application-groups"];
    goto LABEL_6;
  }

  [v8 removeObject:v4];
  v11 = [v8 allObjects];
  [v6 setObject:v11 forKeyedSubscript:@"com.apple.security.application-groups"];

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v10 removeObject:v4];
  v12 = [v10 allObjects];
  [v6 setObject:v12 forKeyedSubscript:@"com.apple.private.security.restricted-application-groups"];

LABEL_6:
  v13 = [v6 copy];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyEntitlementsDictionaryByRemovingGroupContainerOfClass:(unint64_t)a3 groupIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 13)
  {
    v7 = [(MCMEntitlements *)self copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:v6];
  }

  else
  {
    if (a3 != 7)
    {
      v9 = [(MCMEntitlements *)self rawEntitlements];
      v8 = [v9 copy];

      goto LABEL_7;
    }

    v7 = [(MCMEntitlements *)self copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:v6];
  }

  v8 = v7;
LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)contributingIdentifiersForContainerConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(MCMEntitlements *)self access];

  if (v6)
  {
    v7 = [(MCMEntitlements *)self access];
    v8 = [v7 contributingIdentifiersForContainerConfig:v4];
    [v5 unionSet:v8];
  }

  v9 = [(MCMEntitlements *)self lookup];

  if (v9)
  {
    v10 = [(MCMEntitlements *)self lookup];
    v11 = [v10 contributingIdentifiersForContainerConfig:v4];
    [v5 unionSet:v11];
  }

  v12 = [v5 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isAllowedToCheckAuthorization
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self canCheckAuthorization];
}

- (BOOL)isAllowedToChangeReferences
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self canReadWriteReferences];
}

- (BOOL)isAllowedToReadReferences
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(MCMEntitlements *)self canReadReferences])
  {
    v3 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(MCMEntitlements *)self canReadWriteReferences];
  }
}

- (BOOL)isAllowedToAccessUserAssets
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(MCMEntitlements *)self allowed])
  {
    v3 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(MCMEntitlements *)self canManageUserManagedAssets];
  }
}

- (BOOL)isAllowedToStageSharedContent
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(MCMEntitlements *)self allowed])
  {
    v3 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(MCMEntitlements *)self canStageSharedContent];
  }
}

- (BOOL)isAllowedToStartUserDataMigration
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToStartDataMigration
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(MCMEntitlements *)self allowed])
  {
    v3 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(MCMEntitlements *)self canPerformDataMigration];
  }
}

- (BOOL)isAllowedToRestoreContainer
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToSetDataProtection
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToAccessCodesignMapping
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToTest
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self testabilityAllowed];
}

- (BOOL)isAllowedToDelete
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToRegenerateDirectoryUUIDs
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToRecreateContainerStructure
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToAccessInfoMetadata
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToReplaceContainers
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMEntitlements *)self allowed];
}

- (BOOL)isAllowedToWipePlugInDataContainerWithIdentifier:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (!v5->_sanitizedWipe)
    {
      v6 = [(MCMEntitlements *)v5 rawEntitlements];
      v7 = [v6 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.wipeContainer"];
      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
        for (i = 0; i < [v9 count]; ++i)
        {
          v14 = [v9 objectAtIndexedSubscript:i];
          objc_opt_class();
          v15 = v14;
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            [v12 addObject:v16];
          }
        }

        v17 = [v12 copy];
        sanitizedWipe = v5->_sanitizedWipe;
        v5->_sanitizedWipe = v17;
      }
    }

    objc_sync_exit(v5);

    v11 = [(NSSet *)v5->_sanitizedWipe containsObject:v4];
  }

  else
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v21 = 136446466;
      v22 = "[MCMEntitlements isAllowedToWipePlugInDataContainerWithIdentifier:]";
      v23 = 1024;
      v24 = 572;
      _os_log_fault_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_FAULT, "Invalid nil parameter passed to %{public}s; %d", &v21, 0x12u);
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isAllowedToControlCaches
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(MCMEntitlements *)self allowed])
  {
    v3 = *MEMORY[0x1E69E9840];
    return 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    return [(MCMEntitlements *)self canControlCaches];
  }
}

- (BOOL)negatesReferenceToAppGroupIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMEntitlements *)self noReferenceAppGroupIdentifiers];
  v6 = v5;
  v7 = v5 && ([v5 containsObject:v4] & 1) != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)containerRequiredIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(MCMEntitlements *)self rawEntitlements];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.private.security.container-required"];

  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      if (![v4 BOOLValue])
      {
        goto LABEL_6;
      }
    }

    else if (!v4)
    {
      goto LABEL_6;
    }

    v7 = [(MCMEntitlements *)self identifier];
    goto LABEL_9;
  }

  if ([v4 isEqual:&stru_1F5A5B2B8])
  {
LABEL_6:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v4;
LABEL_9:
  v10 = v7;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (int)dataProtectionClassIfAvailable
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(MCMEntitlements *)self rawEntitlements];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.developer.default-data-protection-if-available"];

  if (v4)
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;

      v7 = [(MCMEntitlements *)self _dataProtectionClassFromString:v6];
LABEL_18:

      goto LABEL_19;
    }

    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      [(MCMEntitlements *)self _arrayOfStringsFromArray:v6];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v20 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(MCMEntitlements *)self _dataProtectionClassFromString:*(*(&v17 + 1) + 8 * i)];
            if (v13)
            {
              v7 = v13;
              goto LABEL_17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v7 = 0;
LABEL_19:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int)intendedDataProtectionClass
{
  v17 = *MEMORY[0x1E69E9840];
  result = [(MCMEntitlements *)self dataProtectionClassIfAvailable];
  if (result)
  {
    goto LABEL_2;
  }

  v5 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v5 objectForKeyedSubscript:@"com.apple.developer.default-data-protection"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = [(MCMEntitlements *)self rawEntitlements];
    v10 = [v9 objectForKeyedSubscript:@"data-protection-class"];
    objc_opt_class();
    v11 = v10;
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (!v8)
    {
      v12 = [(MCMEntitlements *)self rawEntitlements];
      v13 = [v12 objectForKeyedSubscript:@"DataProtectionClass"];
      objc_opt_class();
      v14 = v13;
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;

      if (!v8)
      {
        result = 0;
LABEL_2:
        v4 = *MEMORY[0x1E69E9840];
        return result;
      }
    }
  }

  v15 = [(MCMEntitlements *)self _dataProtectionClassFromString:v8];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isOwnerOfProtectedAppGroupContainerWithIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
  LOBYTE(self) = [v5 containsObject:v4];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isOwnerOfContainerWithClass:(unint64_t)a3 identifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 13)
  {
    v7 = [(MCMEntitlements *)self systemGroupIdentifiers];
  }

  else
  {
    if (a3 != 7)
    {
      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        if (![(MCMEntitlements *)self hasSystemContainer])
        {
          goto LABEL_13;
        }
      }

      else if (a3 == 10 && ![(MCMEntitlements *)self hasDaemonContainer])
      {
        goto LABEL_13;
      }

      v11 = [(MCMEntitlements *)self identifier];
      v10 = [v6 isEqualToString:v11];

      goto LABEL_14;
    }

    v7 = [(MCMEntitlements *)self appGroupIdentifiers];
  }

  v8 = v7;
  v9 = [v7 containsObject:v6];

  if ((v9 & 1) == 0)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 1;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEntitledForAppMigrationWithClass:(unint64_t)a3 identifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 4 || a3 == 2)
  {
    v7 = objc_opt_class();
    v8 = [(MCMEntitlements *)self identifier];
    v9 = [(MCMEntitlements *)self rawEntitlements];
    v10 = [v7 copyAppMigrationDataContainerAccessEntitlementForIdentifier:v8 entitlements:v9];

    if (v10)
    {
      v11 = [v10 containsObject:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 forAllContainersOfContainerConfig:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  if (a3 >= 2)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v24 = 134217984;
      v25 = a3;
      _os_log_fault_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_FAULT, "Unsupported operation for all of class; operation = %lu", &v24, 0xCu);
    }

    goto LABEL_13;
  }

  if (!self->_isSimulatorTestClient && ![(MCMEntitlements *)self allowed]&& ![(MCMEntitlements *)self otherIDLookup])
  {
    v14 = [(MCMEntitlements *)self access];

    if (!v14 || (-[MCMEntitlements access](self, "access"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isAllowedWithContainerConfig:v12 part:a5 partDomain:v13 operation:a3 access:a7], v15, (v16 & 1) == 0))
    {
      v17 = [(MCMEntitlements *)self lookup];

      if (!v17 || (-[MCMEntitlements lookup](self, "lookup"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isAllowedWithContainerConfig:v12 part:a5 partDomain:v13 operation:a3 access:a7], v18, (v19 & 1) == 0))
      {
LABEL_13:
        v20 = 0;
        goto LABEL_14;
      }
    }
  }

  v20 = 3;
LABEL_14:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)a3 containerIdentity:(id)a4 part:(unint64_t)a5 partDomain:(id)a6 access:(unint64_t)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = [v12 containerConfig];
  v15 = [v12 identifier];
  v16 = [v14 containerClass];
  if (self->_isSimulatorTestClient)
  {
    goto LABEL_50;
  }

  v17 = v16;
  if ([(MCMEntitlements *)self allowed])
  {
    goto LABEL_50;
  }

  v42 = a7;
  v18 = [(MCMEntitlements *)self access];

  if (v18)
  {
    v19 = [(MCMEntitlements *)self access];
    v20 = [v19 isAllowedWithContainerConfig:v14 identifier:v15 part:a5 partDomain:v13 operation:a3 access:a7];

    if (v20)
    {
      goto LABEL_50;
    }
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_48;
      }

LABEL_18:
      if ([(MCMEntitlements *)self otherIDLookup])
      {
        goto LABEL_50;
      }

      if (v17 == 12)
      {
        v24 = +[MCMEntitlementBypassList sharedBypassList];
        v25 = [v24 systemContainerIdIsWellknown:v15];
      }

      else
      {
        if (v17 != 13)
        {
LABEL_28:
          if ([v14 singleOwner])
          {
            v27 = [(MCMEntitlements *)self identifier];
            v28 = [v15 isEqualToString:v27];

            if (v28)
            {
              if (v17 == 12)
              {
                if ([(MCMEntitlements *)self hasSystemContainer])
                {
                  goto LABEL_50;
                }
              }

              else if (v17 == 10)
              {
                if ([(MCMEntitlements *)self hasDaemonContainer])
                {
                  goto LABEL_50;
                }
              }

              else if (!v42 || ([v14 ownerIssuedSandboxExtension] & 1) != 0)
              {
                v23 = 1;
                goto LABEL_51;
              }
            }

LABEL_46:
            v34 = +[MCMEntitlementBypassList sharedBypassList];
            v35 = [(MCMEntitlements *)self identifier];
            v36 = [v34 isLookupAllowedToBypassEntitlementFromCodeSignIdentifier:v35 forContainerClass:v17 containerIdentifier:v15];

            if (v36)
            {
              goto LABEL_47;
            }

LABEL_48:
            v37 = [(MCMEntitlements *)self lookup];

            if (!v37)
            {
              goto LABEL_52;
            }

            v38 = [(MCMEntitlements *)self lookup];
            v39 = [v38 isAllowedWithContainerConfig:v14 identifier:v15 part:a5 partDomain:v13 operation:0 access:v42];

            if ((v39 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          if (![v14 containsUserGeneratedData])
          {
            v30 = [(MCMEntitlements *)self systemGroupIdentifiers];
            v31 = [v30 containsObject:v15];

            if (v31)
            {
              goto LABEL_50;
            }

            goto LABEL_46;
          }

          v29 = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
          if (![v29 containsObject:v15])
          {
            v32 = [(MCMEntitlements *)self publicAppGroupIdentifiers];
            v33 = [v32 containsObject:v15];

            if (v33)
            {
              v23 = 2;
              goto LABEL_51;
            }

            goto LABEL_46;
          }

LABEL_50:
          v23 = 3;
          goto LABEL_51;
        }

        v24 = +[MCMEntitlementBypassList sharedBypassList];
        v25 = [v24 systemGroupContainerIdIsWellknown:v15];
      }

      v26 = v25;

      if (v26)
      {
LABEL_47:
        v23 = 5;
        goto LABEL_51;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (a3 == 6)
    {
      goto LABEL_18;
    }

    if (a3 == 3)
    {
      if ([v14 honorsWipeEntitlement] && -[MCMEntitlements isAllowedToWipePlugInDataContainerWithIdentifier:](self, "isAllowedToWipePlugInDataContainerWithIdentifier:", v15) || -[MCMEntitlements canDeleteContainerContent](self, "canDeleteContainerContent"))
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if (a3 != 2)
    {
      goto LABEL_48;
    }

    if (![(MCMEntitlements *)self canDelete])
    {
LABEL_52:
      v23 = 0;
      goto LABEL_51;
    }
  }

  if (a5)
  {
    goto LABEL_18;
  }

  v21 = [v12 containerConfig];
  v22 = [v21 trustAppMigrationEntitlement];

  if (!v22 || ![(MCMEntitlements *)self isEntitledForAppMigrationWithClass:v17 identifier:v15])
  {
    goto LABEL_18;
  }

  v23 = 4;
LABEL_51:

  v40 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)canCheckAuthorization
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.checkAuthorization"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canReadWriteReferences
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.references.read-write"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canReadReferences
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.references.read-only"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)requestsNoContainer
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.security.no-container"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canDeleteContainerContent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.deleteContainerContent"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canPerformDataMigration
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.dataMigration"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canStageSharedContent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.stageSharedContent"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canRepair
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.repair"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canControlCaches
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.cacheControl"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canManageUserManagedAssets
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.userManagedAssets"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)canDelete
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.delete"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)testabilityAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.testability"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)proxyAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMEntitlements *)self rawEntitlements];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.proxy"];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMEntitlements)initWithEntitlements:(id)a3 clientIdentifier:(id)a4 containerConfigMap:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MCMEntitlements;
  v11 = [(MCMEntitlements *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSimulatorTestClient = 0;
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v11->_rawEntitlements, v13);
    objc_storeStrong(&v12->_identifier, a4);
    v12->_privileged = 0;
    lookup = v12->_lookup;
    v12->_lookup = 0;

    access = v12->_access;
    v12->_access = 0;

    objc_storeStrong(&v12->_containerConfigMap, a5);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)publicEntitlementForGroupContainerClass:(unint64_t)a3
{
  v3 = @"com.apple.security.system-groups";
  if (a3 != 13)
  {
    v3 = 0;
  }

  if (a3 == 7)
  {
    result = @"com.apple.security.application-groups";
  }

  else
  {
    result = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)systemGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 copyGroupEntitlementForIdentifier:v6 entitlements:v7 groupKey:@"com.apple.security.system-groups"];
  v9 = v8;
  if (v8 && [v8 count] || (v10 = objc_msgSend(a1, "copyGroupEntitlementForIdentifier:entitlements:groupKey:", v6, v7, @"com.apple.security.system-group-containers"), v9, (v9 = v10) != 0))
  {
    if ([v9 count])
    {
      v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_10923];
      v10 = [v9 filteredSetUsingPredicate:v11];
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __68__MCMEntitlements_systemGroupIdentifiersForIdentifier_entitlements___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 hasPrefix:@"systemgroup."];
  if ((v3 & 1) == 0)
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "System group ID %@ does not have proper prefix, ignoring.", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)noReferenceAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 copyGroupEntitlementForIdentifier:a3 entitlements:a4 groupKey:@"com.apple.private.MobileContainerManager.appGroup.noReference"];
  v5 = v4;
  if (v4 && ![v4 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)appGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [a1 publicAppGroupIdentifiersForIdentifier:v8 entitlements:v7];
  v11 = [a1 restrictedAppGroupIdentifiersForIdentifier:v8 entitlements:v7];

  [v9 unionSet:v10];
  [v9 unionSet:v11];
  if ([v9 count])
  {
    v12 = [v9 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)restrictedAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 copyGroupEntitlementForIdentifier:a3 entitlements:a4 groupKey:@"com.apple.private.security.restricted-application-groups"];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)publicAppGroupIdentifiersForIdentifier:(id)a3 entitlements:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 copyGroupEntitlementForIdentifier:a3 entitlements:a4 groupKey:@"com.apple.security.application-groups"];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)copyGroupEntitlementForIdentifier:(id)a3 entitlements:(id)a4 groupKey:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForKeyedSubscript:v8];
  if (!v9)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if ((isKindOfClass & 1) == 0)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
      goto LABEL_7;
    }

    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    v14 = "Entitlement %@ for %@ does not contain supported types; ignoring.";
    goto LABEL_15;
  }

  if ((MCMArrayContainsOnlyClass(v9) & 1) == 0)
  {
    v13 = container_log_handle_for_category();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    v14 = "Entitlement %@ for %@ contains non-string values; ignoring.";
LABEL_15:
    _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v14, &v17, 0x16u);
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v9];
LABEL_7:
  v12 = v11;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)copyAppMigrationDataContainerAccessEntitlementForIdentifier:(id)a3 entitlements:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"com.apple.developer.app-migration.data-container-access"];
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if ((isKindOfClass & 1) == 0)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E695DFD8] setWithObject:v6];
      goto LABEL_7;
    }

    v10 = container_log_handle_for_category();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v14 = 138412290;
    v15 = v5;
    v11 = "Entitlement com.apple.developer.app-migration.data-container-access for %@ does not contain supported types; ignoring.";
    goto LABEL_15;
  }

  if ((MCMArrayContainsOnlyClass(v6) & 1) == 0)
  {
    v10 = container_log_handle_for_category();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    v14 = 138412290;
    v15 = v5;
    v11 = "Entitlement com.apple.developer.app-migration.data-container-access for %@ contains non-string values; ignoring.";
LABEL_15:
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 0xCu);
    goto LABEL_11;
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
LABEL_7:
  v9 = v8;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

@end
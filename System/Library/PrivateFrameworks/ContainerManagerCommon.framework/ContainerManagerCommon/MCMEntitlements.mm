@interface MCMEntitlements
+ (id)appGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements;
+ (id)copyAppMigrationDataContainerAccessEntitlementForIdentifier:(id)identifier entitlements:(id)entitlements;
+ (id)copyGroupEntitlementForIdentifier:(id)identifier entitlements:(id)entitlements groupKey:(id)key;
+ (id)noReferenceAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements;
+ (id)publicAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements;
+ (id)publicEntitlementForGroupContainerClass:(unint64_t)class;
+ (id)restrictedAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements;
+ (id)systemGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements;
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
- (BOOL)isAllowedToWipePlugInDataContainerWithIdentifier:(id)identifier;
- (BOOL)isEntitledForAppMigrationWithClass:(unint64_t)class identifier:(id)identifier;
- (BOOL)isEntitledWithBoolEntitlement:(id)entitlement;
- (BOOL)isOwnerOfContainerWithClass:(unint64_t)class identifier:(id)identifier;
- (BOOL)isOwnerOfProtectedAppGroupContainerWithIdentifier:(id)identifier;
- (BOOL)negatesReferenceToAppGroupIdentifier:(id)identifier;
- (BOOL)otherIDLookup;
- (BOOL)privileged;
- (BOOL)proxyAllowed;
- (BOOL)requestsNoContainer;
- (BOOL)testabilityAllowed;
- (MCMEntitlementAllows)access;
- (MCMEntitlementAllows)lookup;
- (MCMEntitlements)initWithEntitlements:(id)entitlements clientIdentifier:(id)identifier containerConfigMap:(id)map;
- (NSDictionary)containerConfigMap;
- (NSDictionary)rawEntitlements;
- (NSString)identifier;
- (id)_arrayOfStringsFromArray:(id)array;
- (id)_setOfStringsFromArray:(id)array;
- (id)appGroupIdentifiers;
- (id)containerRequiredIdentifier;
- (id)contributingIdentifiersForContainerConfig:(id)config;
- (id)copyEntitlementsDictionaryByAddingGroupContainerOfClass:(unint64_t)class groupIdentifier:(id)identifier;
- (id)copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:(id)identifier;
- (id)copyEntitlementsDictionaryByRemovingGroupContainerOfClass:(unint64_t)class groupIdentifier:(id)identifier;
- (id)copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:(id)identifier;
- (id)noReferenceAppGroupIdentifiers;
- (id)publicAppGroupIdentifiers;
- (id)restrictedAppGroupIdentifiers;
- (id)systemGroupIdentifiers;
- (int)_dataProtectionClassFromString:(id)string;
- (int)dataProtectionClassIfAvailable;
- (int)intendedDataProtectionClass;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type containerIdentity:(id)identity part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type forAllContainersOfContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access;
- (void)prune;
- (void)setRawEntitlements:(id)entitlements;
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
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.allowed"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (MCMEntitlementAllows)access
{
  v14 = *MEMORY[0x1E69E9840];
  access = self->_access;
  if (!access)
  {
    rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
    v5 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.container.access"];
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
      containerConfigMap = [(MCMEntitlements *)self containerConfigMap];
      v10 = [(MCMEntitlementAccess *)v8 initWithEntitlementData:v7 containerConfigMap:containerConfigMap];
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
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.otherIdLookup"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)publicAppGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  identifier = [(MCMEntitlements *)self identifier];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 publicAppGroupIdentifiersForIdentifier:identifier entitlements:rawEntitlements];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)appGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  identifier = [(MCMEntitlements *)self identifier];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 appGroupIdentifiersForIdentifier:identifier entitlements:rawEntitlements];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)restrictedAppGroupIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  identifier = [(MCMEntitlements *)self identifier];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 restrictedAppGroupIdentifiersForIdentifier:identifier entitlements:rawEntitlements];

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
  identifier = [(MCMEntitlements *)self identifier];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 noReferenceAppGroupIdentifiersForIdentifier:identifier entitlements:rawEntitlements];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMEntitlementAllows)lookup
{
  v14 = *MEMORY[0x1E69E9840];
  lookup = self->_lookup;
  if (!lookup)
  {
    rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
    v5 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.lookup"];
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
      containerConfigMap = [(MCMEntitlements *)self containerConfigMap];
      v10 = [(MCMEntitlementLookup *)v8 initWithEntitlementData:v7 containerConfigMap:containerConfigMap];
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
  identifier = [(MCMEntitlements *)self identifier];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [v3 systemGroupIdentifiersForIdentifier:identifier entitlements:rawEntitlements];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)prune
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  allKeys = [rawEntitlements allKeys];
  v8 = [allKeys arrayByExcludingToObjectsInArray:&unk_1F5A77068];

  rawEntitlements2 = [(MCMEntitlements *)self rawEntitlements];
  v6 = [rawEntitlements2 dictionaryWithValuesForKeys:v8];
  [(MCMEntitlements *)self setRawEntitlements:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSystemContainer
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.security.system-container"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)hasDaemonContainer
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.security.daemon-container"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
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

- (void)setRawEntitlements:(id)entitlements
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_rawEntitlements = &self->_rawEntitlements;

  objc_storeStrong(p_rawEntitlements, entitlements);
}

- (int)_dataProtectionClassFromString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E696A378]])
  {
    v4 = 1;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A380]])
  {
LABEL_4:
    v4 = 2;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A388]])
  {
    goto LABEL_6;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A3A8]])
  {
    v4 = 4;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A3B0]])
  {
    goto LABEL_4;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A390]])
  {
LABEL_6:
    v4 = 3;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696A398]])
  {
    v4 = 7;
  }

  else
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = stringCopy;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Unrecognized value for data protection entitlement: [%@]", &v8, 0xCu);
    }

    v4 = 0;
  }

LABEL_9:

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_arrayOfStringsFromArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  arrayCopy = array;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __44__MCMEntitlements__arrayOfStringsFromArray___block_invoke;
  v13 = &unk_1E86B08E0;
  v14 = v5;
  v6 = v5;
  [arrayCopy enumerateObjectsUsingBlock:&v10];

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

- (id)_setOfStringsFromArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  arrayCopy = array;
  v5 = [v3 setWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__MCMEntitlements__setOfStringsFromArray___block_invoke;
  v13 = &unk_1E86B08E0;
  v14 = v5;
  v6 = v5;
  [arrayCopy enumerateObjectsUsingBlock:&v10];

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

- (BOOL)isEntitledWithBoolEntitlement:(id)entitlement
{
  v12 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [rawEntitlements objectForKeyedSubscript:entitlementCopy];

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

  bOOLValue = [v8 BOOLValue];
  v10 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)copyEntitlementsDictionaryByAddingGroupContainerOfClass:(unint64_t)class groupIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v8 = [rawEntitlements mutableCopy];

  v9 = [objc_opt_class() publicEntitlementForGroupContainerClass:class];
  if (v9)
  {
    if (class == 13)
    {
      systemGroupIdentifiers = [(MCMEntitlements *)self systemGroupIdentifiers];
      v16 = [systemGroupIdentifiers mutableCopy];
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

    else if (class == 7)
    {
      publicAppGroupIdentifiers = [(MCMEntitlements *)self publicAppGroupIdentifiers];
      v11 = [publicAppGroupIdentifiers mutableCopy];
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

    [v19 addObject:identifierCopy];
    allObjects = [v19 allObjects];
    [v8 setObject:allObjects forKeyedSubscript:v9];

    v14 = [v8 copy];
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [rawEntitlements mutableCopy];

  systemGroupIdentifiers = [(MCMEntitlements *)self systemGroupIdentifiers];
  v8 = [systemGroupIdentifiers mutableCopy];

  [v6 removeObjectForKey:@"com.apple.security.system-group-containers"];
  if (v8)
  {
    [v8 removeObject:identifierCopy];
    allObjects = [v8 allObjects];
    [v6 setObject:allObjects forKeyedSubscript:@"com.apple.security.system-groups"];
  }

  else
  {
    [v6 removeObjectForKey:@"com.apple.security.system-groups"];
  }

  v10 = [v6 copy];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [rawEntitlements mutableCopy];

  publicAppGroupIdentifiers = [(MCMEntitlements *)self publicAppGroupIdentifiers];
  v8 = [publicAppGroupIdentifiers mutableCopy];

  restrictedAppGroupIdentifiers = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
  v10 = [restrictedAppGroupIdentifiers mutableCopy];

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

  [v8 removeObject:identifierCopy];
  allObjects = [v8 allObjects];
  [v6 setObject:allObjects forKeyedSubscript:@"com.apple.security.application-groups"];

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v10 removeObject:identifierCopy];
  allObjects2 = [v10 allObjects];
  [v6 setObject:allObjects2 forKeyedSubscript:@"com.apple.private.security.restricted-application-groups"];

LABEL_6:
  v13 = [v6 copy];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyEntitlementsDictionaryByRemovingGroupContainerOfClass:(unint64_t)class groupIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (class == 13)
  {
    v7 = [(MCMEntitlements *)self copyEntitlementsDictionaryByRemovingSystemGroupContainerWithIdentifier:identifierCopy];
  }

  else
  {
    if (class != 7)
    {
      rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
      v8 = [rawEntitlements copy];

      goto LABEL_7;
    }

    v7 = [(MCMEntitlements *)self copyEntitlementsDictionaryByRemovingAppGroupContainerWithIdentifier:identifierCopy];
  }

  v8 = v7;
LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)contributingIdentifiersForContainerConfig:(id)config
{
  v15 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = [MEMORY[0x1E695DFA8] set];
  access = [(MCMEntitlements *)self access];

  if (access)
  {
    access2 = [(MCMEntitlements *)self access];
    v8 = [access2 contributingIdentifiersForContainerConfig:configCopy];
    [v5 unionSet:v8];
  }

  lookup = [(MCMEntitlements *)self lookup];

  if (lookup)
  {
    lookup2 = [(MCMEntitlements *)self lookup];
    v11 = [lookup2 contributingIdentifiersForContainerConfig:configCopy];
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

- (BOOL)isAllowedToWipePlugInDataContainerWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_sanitizedWipe)
    {
      rawEntitlements = [(MCMEntitlements *)selfCopy rawEntitlements];
      v7 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.wipeContainer"];
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
        sanitizedWipe = selfCopy->_sanitizedWipe;
        selfCopy->_sanitizedWipe = v17;
      }
    }

    objc_sync_exit(selfCopy);

    v11 = [(NSSet *)selfCopy->_sanitizedWipe containsObject:identifierCopy];
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

- (BOOL)negatesReferenceToAppGroupIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  noReferenceAppGroupIdentifiers = [(MCMEntitlements *)self noReferenceAppGroupIdentifiers];
  v6 = noReferenceAppGroupIdentifiers;
  v7 = noReferenceAppGroupIdentifiers && ([noReferenceAppGroupIdentifiers containsObject:identifierCopy] & 1) != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)containerRequiredIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v4 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.security.container-required"];

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

    identifier = [(MCMEntitlements *)self identifier];
    goto LABEL_9;
  }

  if ([v4 isEqual:&stru_1F5A5B2B8])
  {
LABEL_6:
    v10 = 0;
    goto LABEL_10;
  }

  identifier = v4;
LABEL_9:
  v10 = identifier;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (int)dataProtectionClassIfAvailable
{
  v21 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v4 = [rawEntitlements objectForKeyedSubscript:@"com.apple.developer.default-data-protection-if-available"];

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

  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v6 = [rawEntitlements objectForKeyedSubscript:@"com.apple.developer.default-data-protection"];
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
    rawEntitlements2 = [(MCMEntitlements *)self rawEntitlements];
    v10 = [rawEntitlements2 objectForKeyedSubscript:@"data-protection-class"];
    objc_opt_class();
    v11 = v10;
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;

    if (!v8)
    {
      rawEntitlements3 = [(MCMEntitlements *)self rawEntitlements];
      v13 = [rawEntitlements3 objectForKeyedSubscript:@"DataProtectionClass"];
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

- (BOOL)isOwnerOfProtectedAppGroupContainerWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  restrictedAppGroupIdentifiers = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
  LOBYTE(self) = [restrictedAppGroupIdentifiers containsObject:identifierCopy];

  v6 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isOwnerOfContainerWithClass:(unint64_t)class identifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (class == 13)
  {
    systemGroupIdentifiers = [(MCMEntitlements *)self systemGroupIdentifiers];
  }

  else
  {
    if (class != 7)
    {
      if ((class & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        if (![(MCMEntitlements *)self hasSystemContainer])
        {
          goto LABEL_13;
        }
      }

      else if (class == 10 && ![(MCMEntitlements *)self hasDaemonContainer])
      {
        goto LABEL_13;
      }

      identifier = [(MCMEntitlements *)self identifier];
      v10 = [identifierCopy isEqualToString:identifier];

      goto LABEL_14;
    }

    systemGroupIdentifiers = [(MCMEntitlements *)self appGroupIdentifiers];
  }

  v8 = systemGroupIdentifiers;
  v9 = [systemGroupIdentifiers containsObject:identifierCopy];

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

- (BOOL)isEntitledForAppMigrationWithClass:(unint64_t)class identifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (class == 4 || class == 2)
  {
    v7 = objc_opt_class();
    identifier = [(MCMEntitlements *)self identifier];
    rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
    v10 = [v7 copyAppMigrationDataContainerAccessEntitlementForIdentifier:identifier entitlements:rawEntitlements];

    if (v10)
    {
      v11 = [v10 containsObject:identifierCopy];
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

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type forAllContainersOfContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access
{
  v26 = *MEMORY[0x1E69E9840];
  configCopy = config;
  domainCopy = domain;
  if (type >= 2)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v24 = 134217984;
      typeCopy = type;
      _os_log_fault_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_FAULT, "Unsupported operation for all of class; operation = %lu", &v24, 0xCu);
    }

    goto LABEL_13;
  }

  if (!self->_isSimulatorTestClient && ![(MCMEntitlements *)self allowed]&& ![(MCMEntitlements *)self otherIDLookup])
  {
    access = [(MCMEntitlements *)self access];

    if (!access || (-[MCMEntitlements access](self, "access"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isAllowedWithContainerConfig:configCopy part:part partDomain:domainCopy operation:type access:access], v15, (v16 & 1) == 0))
    {
      lookup = [(MCMEntitlements *)self lookup];

      if (!lookup || (-[MCMEntitlements lookup](self, "lookup"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isAllowedWithContainerConfig:configCopy part:part partDomain:domainCopy operation:type access:access], v18, (v19 & 1) == 0))
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

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type containerIdentity:(id)identity part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access
{
  v43 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  domainCopy = domain;
  containerConfig = [identityCopy containerConfig];
  identifier = [identityCopy identifier];
  containerClass = [containerConfig containerClass];
  if (self->_isSimulatorTestClient)
  {
    goto LABEL_50;
  }

  v17 = containerClass;
  if ([(MCMEntitlements *)self allowed])
  {
    goto LABEL_50;
  }

  accessCopy = access;
  access = [(MCMEntitlements *)self access];

  if (access)
  {
    access2 = [(MCMEntitlements *)self access];
    v20 = [access2 isAllowedWithContainerConfig:containerConfig identifier:identifier part:part partDomain:domainCopy operation:type access:access];

    if (v20)
    {
      goto LABEL_50;
    }
  }

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
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
        v25 = [v24 systemContainerIdIsWellknown:identifier];
      }

      else
      {
        if (v17 != 13)
        {
LABEL_28:
          if ([containerConfig singleOwner])
          {
            identifier2 = [(MCMEntitlements *)self identifier];
            v28 = [identifier isEqualToString:identifier2];

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

              else if (!accessCopy || ([containerConfig ownerIssuedSandboxExtension] & 1) != 0)
              {
                v23 = 1;
                goto LABEL_51;
              }
            }

LABEL_46:
            v34 = +[MCMEntitlementBypassList sharedBypassList];
            identifier3 = [(MCMEntitlements *)self identifier];
            v36 = [v34 isLookupAllowedToBypassEntitlementFromCodeSignIdentifier:identifier3 forContainerClass:v17 containerIdentifier:identifier];

            if (v36)
            {
              goto LABEL_47;
            }

LABEL_48:
            lookup = [(MCMEntitlements *)self lookup];

            if (!lookup)
            {
              goto LABEL_52;
            }

            lookup2 = [(MCMEntitlements *)self lookup];
            v39 = [lookup2 isAllowedWithContainerConfig:containerConfig identifier:identifier part:part partDomain:domainCopy operation:0 access:accessCopy];

            if ((v39 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }

          if (![containerConfig containsUserGeneratedData])
          {
            systemGroupIdentifiers = [(MCMEntitlements *)self systemGroupIdentifiers];
            v31 = [systemGroupIdentifiers containsObject:identifier];

            if (v31)
            {
              goto LABEL_50;
            }

            goto LABEL_46;
          }

          restrictedAppGroupIdentifiers = [(MCMEntitlements *)self restrictedAppGroupIdentifiers];
          if (![restrictedAppGroupIdentifiers containsObject:identifier])
          {
            publicAppGroupIdentifiers = [(MCMEntitlements *)self publicAppGroupIdentifiers];
            v33 = [publicAppGroupIdentifiers containsObject:identifier];

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
        v25 = [v24 systemGroupContainerIdIsWellknown:identifier];
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
    if (type == 6)
    {
      goto LABEL_18;
    }

    if (type == 3)
    {
      if ([containerConfig honorsWipeEntitlement] && -[MCMEntitlements isAllowedToWipePlugInDataContainerWithIdentifier:](self, "isAllowedToWipePlugInDataContainerWithIdentifier:", identifier) || -[MCMEntitlements canDeleteContainerContent](self, "canDeleteContainerContent"))
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if (type != 2)
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

  if (part)
  {
    goto LABEL_18;
  }

  containerConfig2 = [identityCopy containerConfig];
  trustAppMigrationEntitlement = [containerConfig2 trustAppMigrationEntitlement];

  if (!trustAppMigrationEntitlement || ![(MCMEntitlements *)self isEntitledForAppMigrationWithClass:v17 identifier:identifier])
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
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.checkAuthorization"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canReadWriteReferences
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.references.read-write"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canReadReferences
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.references.read-only"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)requestsNoContainer
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.security.no-container"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canDeleteContainerContent
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.deleteContainerContent"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canPerformDataMigration
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.dataMigration"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canStageSharedContent
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.stageSharedContent"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canRepair
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.repair"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canControlCaches
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.cacheControl"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canManageUserManagedAssets
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.userManagedAssets"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)canDelete
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.delete"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)testabilityAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.testability"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (BOOL)proxyAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  rawEntitlements = [(MCMEntitlements *)self rawEntitlements];
  v3 = [rawEntitlements objectForKeyedSubscript:@"com.apple.private.MobileContainerManager.proxy"];
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

  bOOLValue = [v5 BOOLValue];
  v7 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (MCMEntitlements)initWithEntitlements:(id)entitlements clientIdentifier:(id)identifier containerConfigMap:(id)map
{
  v19 = *MEMORY[0x1E69E9840];
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  mapCopy = map;
  v18.receiver = self;
  v18.super_class = MCMEntitlements;
  v11 = [(MCMEntitlements *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSimulatorTestClient = 0;
    if (entitlementsCopy)
    {
      v13 = entitlementsCopy;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v11->_rawEntitlements, v13);
    objc_storeStrong(&v12->_identifier, identifier);
    v12->_privileged = 0;
    lookup = v12->_lookup;
    v12->_lookup = 0;

    access = v12->_access;
    v12->_access = 0;

    objc_storeStrong(&v12->_containerConfigMap, map);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)publicEntitlementForGroupContainerClass:(unint64_t)class
{
  v3 = @"com.apple.security.system-groups";
  if (class != 13)
  {
    v3 = 0;
  }

  if (class == 7)
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

+ (id)systemGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  v8 = [self copyGroupEntitlementForIdentifier:identifierCopy entitlements:entitlementsCopy groupKey:@"com.apple.security.system-groups"];
  v9 = v8;
  if (v8 && [v8 count] || (v10 = objc_msgSend(self, "copyGroupEntitlementForIdentifier:entitlements:groupKey:", identifierCopy, entitlementsCopy, @"com.apple.security.system-group-containers"), v9, (v9 = v10) != 0))
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

+ (id)noReferenceAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [self copyGroupEntitlementForIdentifier:identifier entitlements:entitlements groupKey:@"com.apple.private.MobileContainerManager.appGroup.noReference"];
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

+ (id)appGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  v9 = [v6 set];
  v10 = [self publicAppGroupIdentifiersForIdentifier:identifierCopy entitlements:entitlementsCopy];
  v11 = [self restrictedAppGroupIdentifiersForIdentifier:identifierCopy entitlements:entitlementsCopy];

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

+ (id)restrictedAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [self copyGroupEntitlementForIdentifier:identifier entitlements:entitlements groupKey:@"com.apple.private.security.restricted-application-groups"];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)publicAppGroupIdentifiersForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [self copyGroupEntitlementForIdentifier:identifier entitlements:entitlements groupKey:@"com.apple.security.application-groups"];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)copyGroupEntitlementForIdentifier:(id)identifier entitlements:(id)entitlements groupKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  v9 = [entitlements objectForKeyedSubscript:keyCopy];
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
    v18 = keyCopy;
    v19 = 2112;
    v20 = identifierCopy;
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
    v18 = keyCopy;
    v19 = 2112;
    v20 = identifierCopy;
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

+ (id)copyAppMigrationDataContainerAccessEntitlementForIdentifier:(id)identifier entitlements:(id)entitlements
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [entitlements objectForKeyedSubscript:@"com.apple.developer.app-migration.data-container-access"];
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
    v15 = identifierCopy;
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
    v15 = identifierCopy;
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
@interface MCMCommandQuery
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_checkIfSecureContainer:(id)container prefixes:(id)prefixes error:(id *)error;
- (BOOL)_checkIfSecureContainers:(id)containers error:(id *)error;
- (BOOL)_checkIfSecureURL:(id)l error:(id *)error;
- (BOOL)_executeQueryPlan:(id)plan resultContainers:(id)containers error:(id *)error;
- (BOOL)createIfNecessary;
- (BOOL)expectSingleResult;
- (BOOL)extensionsPolicyUsesProxiedClient;
- (BOOL)extensionsUseProxiedClient;
- (BOOL)fuzzyMatchInternalUUID;
- (BOOL)fuzzyMatchTransient;
- (BOOL)includeCreator;
- (BOOL)includeInfoInResult;
- (BOOL)includePathInResult;
- (BOOL)includeUnowned;
- (BOOL)includeUserManagedAssetsRelPath;
- (BOOL)isAboutSelf;
- (BOOL)legacyExtensionPolicy;
- (BOOL)legacyPersonaPolicy;
- (BOOL)preflightClientAllowed;
- (BOOL)requireSecureByPlatformPolicy;
- (BOOL)restrictivePersonaPolicy;
- (BOOL)transient;
- (MCMCommandQuery)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMContainerConfiguration)containerConfig;
- (MCMUserIdentity)userIdentity;
- (NSSet)groupIdentifiers;
- (NSSet)identifiers;
- (NSString)partDomain;
- (NSUUID)internalUUID;
- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)config canAccessAllContainers:(BOOL *)containers error:(id *)error;
- (id)_executeQueryForContainerIdentity:(id)identity error:(id *)error;
- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config error:(id *)error;
- (id)_queryPlanWithIdentifiers:(id)identifiers containerConfig:(id)config clientIdentity:(id)identity error:(id *)error;
- (id)_setOfAvailableUserIdentitiesWithError:(id *)error;
- (id)_setOfUserIdentities;
- (unint64_t)explicitFlags;
- (unint64_t)generation;
- (unint64_t)part;
- (unint64_t)privateFlags;
- (unint64_t)sandboxExtensionType;
- (unsigned)expectedPersonaKernelID;
- (unsigned)platform;
- (unsigned)uid;
- (void)_finalizeWithContainers:(id)containers error:(id)error;
- (void)execute;
- (void)setGeneration:(unint64_t)generation;
@end

@implementation MCMCommandQuery

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

- (NSSet)identifiers
{
  result = self->_identifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(MCMCommandQuery *)self includeUserManagedAssetsRelPath])
  {
    context = [(MCMCommand *)self context];
    clientIdentity = [context clientIdentity];
    isAllowedToAccessUserAssets = [clientIdentity isAllowedToAccessUserAssets];

    v6 = *MEMORY[0x1E69E9840];
    return isAllowedToAccessUserAssets;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    return 1;
  }
}

- (void)execute
{
  v92 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerConfig = [(MCMCommandQuery *)self containerConfig];
  containerClass = [containerConfig containerClass];

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  if (containerClass == 7 || containerClass == 13)
  {
    groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];
  }

  else
  {
    groupIdentifiers = [(MCMCommandQuery *)self identifiers];
  }

  v7 = groupIdentifiers;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__10026;
  v78 = __Block_byref_object_dispose__10027;
  v79 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v73 = 0;
  codeSignInfo = [clientIdentity codeSignInfo];
  if (([codeSignInfo isSigned] & 1) == 0)
  {
    v13 = [[MCMError alloc] initWithErrorType:98 category:3];
LABEL_12:
    identifier = v75[5];
    v75[5] = v13;
LABEL_13:

LABEL_14:
    [(MCMCommandQuery *)self _finalizeWithContainers:array error:v75[5]];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  if (containerClass != 13 && containerClass != 7 || (-[MCMCommandQuery identifiers](self, "identifiers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count] == 0, v16, v17))
  {
    if ([(MCMCommandQuery *)self includeUnowned])
    {
      containerConfig2 = [(MCMCommandQuery *)self containerConfig];
      v32 = (v75 + 5);
      v71 = v75[5];
      v7 = [(MCMCommandQuery *)self _containerIdentifiersIncludingUnownedForContainerConfig:containerConfig2 canAccessAllContainers:&v73 error:&v71];
      objc_storeStrong(v32, v71);

      if (!v7)
      {
        goto LABEL_14;
      }

      if (![v7 count])
      {

        goto LABEL_41;
      }
    }

    else
    {
      if (containerClass != 13 && containerClass != 7)
      {
        v36 = MEMORY[0x1E695DFD8];
        identifier = [codeSignInfo identifier];
        v30 = [v36 setWithObject:identifier];
        goto LABEL_40;
      }

      v33 = +[MCMGroupManager defaultManager];
      identifier2 = [codeSignInfo identifier];
      v35 = (v75 + 5);
      v70 = v75[5];
      v7 = [v33 groupContainerIdentifiersForOwnerIdentifier:identifier2 groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v70];
      objc_storeStrong(v35, v70);

      if (!v7)
      {
        goto LABEL_14;
      }
    }

LABEL_7:
    if ([v7 count])
    {
      v8 = objc_autoreleasePoolPush();
      containerConfig3 = [(MCMCommandQuery *)self containerConfig];
      v10 = (v75 + 5);
      obj = v75[5];
      v11 = [(MCMCommandQuery *)self _queryPlanWithIdentifiers:v7 containerConfig:containerConfig3 clientIdentity:clientIdentity error:&obj];
      objc_storeStrong(v10, obj);

      if (v11)
      {
        v12 = (v75 + 5);
        v68 = v75[5];
        [(MCMCommandQuery *)self _executeQueryPlan:v11 resultContainers:array error:&v68];
        objc_storeStrong(v12, v68);
      }

      objc_autoreleasePoolPop(v8);
    }

    goto LABEL_14;
  }

  containerConfig4 = [(MCMCommandQuery *)self containerConfig];
  part = [(MCMCommandQuery *)self part];
  partDomain = [(MCMCommandQuery *)self partDomain];
  v21 = [clientIdentity isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:containerConfig4 part:part partDomain:partDomain access:0];

  if (!v21 && ![(MCMCommandQuery *)self isAboutSelf])
  {
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      context2 = [(MCMCommand *)self context];
      clientIdentity2 = [context2 clientIdentity];
      codeSignInfo2 = [clientIdentity2 codeSignInfo];
      identifier3 = [codeSignInfo2 identifier];
      *buf = 138412290;
      v91 = identifier3;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Client [%@] doesn't have permission to look up containers for at least one identifier in the query set.", buf, 0xCu);
    }

    v13 = +[MCMError notEntitled];
    v7 = 0;
    goto LABEL_12;
  }

  identifier = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  identifiers = [(MCMCommandQuery *)self identifiers];
  v23 = [identifiers countByEnumeratingWithState:&v86 objects:v85 count:16];
  if (v23)
  {
    v24 = *v87;
    while (2)
    {
      v25 = 0;
      do
      {
        if (*v87 != v24)
        {
          objc_enumerationMutation(identifiers);
        }

        v26 = *(*(&v86 + 1) + 8 * v25);
        v27 = +[MCMGroupManager defaultManager];
        v28 = (v75 + 5);
        v72 = v75[5];
        v29 = [v27 groupContainerIdentifiersForOwnerIdentifier:v26 groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v72];
        objc_storeStrong(v28, v72);

        if (!v29)
        {

          goto LABEL_43;
        }

        [identifier unionSet:v29];

        ++v25;
      }

      while (v23 != v25);
      v23 = [identifiers countByEnumeratingWithState:&v86 objects:v85 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v30 = [identifier copy];
LABEL_40:
  v7 = v30;

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_41:
  groupIdentifiers2 = [(MCMCommandQuery *)self groupIdentifiers];
  if (groupIdentifiers2)
  {
    identifier = groupIdentifiers2;
LABEL_43:
    v7 = 0;
    goto LABEL_13;
  }

  if (v73 != 1 || (v39 = (v75 + 5), v67 = v75[5], [(MCMCommandQuery *)self _setOfAvailableUserIdentitiesWithError:&v67], identifier = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v39, v67), !identifier))
  {
    v7 = 0;
    goto LABEL_14;
  }

  context3 = [(MCMCommand *)self context];
  containerCache = [context3 containerCache];
  transient = [(MCMCommandQuery *)self transient];
  v43 = (v75 + 5);
  v66 = v75[5];
  v44 = [containerCache entriesForUserIdentities:identifier contentClass:containerClass transient:transient error:&v66];
  objc_storeStrong(v43, v66);

  -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v44 generation]);
  if (![(MCMCommandQuery *)self includeInfoInResult]&& ![(MCMCommandQuery *)self includeUserManagedAssetsRelPath]&& ![(MCMCommandQuery *)self includeCreator])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v52 = v44;
    v53 = [v52 countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v53)
    {
      v54 = *v82;
      do
      {
        v55 = 0;
        do
        {
          if (*v82 != v54)
          {
            objc_enumerationMutation(v52);
          }

          metadataMinimal = [*(*(&v81 + 1) + 8 * v55) metadataMinimal];
          [array addObject:metadataMinimal];

          ++v55;
        }

        while (v53 != v55);
        v53 = [v52 countByEnumeratingWithState:&v81 objects:v80 count:16];
      }

      while (v53);
    }

    goto LABEL_43;
  }

  v45 = container_log_handle_for_category();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v91 = clientIdentity;
    _os_log_debug_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_DEBUG, "Query split into per-container ops since info or user managed assets path requested for all containers by client [%@]", buf, 0xCu);
  }

  reply = [(MCMCommand *)self reply];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __26__MCMCommandQuery_execute__block_invoke;
  v61[3] = &unk_1E86B0870;
  v47 = v44;
  v62 = v47;
  selfCopy = self;
  v64 = array;
  v65 = &v74;
  [reply handoffToSlowWorkloopforClientIdentity:clientIdentity withBlock:v61];

  v7 = 0;
LABEL_15:

  _Block_object_dispose(&v74, 8);
  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x1E69E9840];
}

- (NSUUID)internalUUID
{
  result = self->_internalUUID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)partDomain
{
  result = self->_partDomain;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeUserManagedAssetsRelPath
{
  result = self->_includeUserManagedAssetsRelPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerConfiguration)containerConfig
{
  result = self->_containerConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)platform
{
  result = self->_platform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)part
{
  result = self->_part;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)groupIdentifiers
{
  result = self->_groupIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeInfoInResult
{
  result = self->_includeInfoInResult;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeCreator
{
  result = self->_includeCreator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)expectSingleResult
{
  result = self->_expectSingleResult;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)sandboxExtensionType
{
  result = self->_sandboxExtensionType;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includePathInResult
{
  result = self->_includePathInResult;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)legacyPersonaPolicy
{
  result = self->_legacyPersonaPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)legacyExtensionPolicy
{
  result = self->_legacyExtensionPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)extensionsUseProxiedClient
{
  result = self->_extensionsUseProxiedClient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)extensionsPolicyUsesProxiedClient
{
  result = self->_extensionsPolicyUsesProxiedClient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)generation
{
  result = self->_generation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)fuzzyMatchTransient
{
  result = self->_fuzzyMatchTransient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setGeneration:(unint64_t)generation
{
  v4 = *MEMORY[0x1E69E9840];
  self->_generation = generation;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)requireSecureByPlatformPolicy
{
  result = self->_requireSecureByPlatformPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)expectedPersonaKernelID
{
  result = self->_expectedPersonaKernelID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)restrictivePersonaPolicy
{
  result = self->_restrictivePersonaPolicy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)privateFlags
{
  result = self->_privateFlags;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)fuzzyMatchInternalUUID
{
  result = self->_fuzzyMatchInternalUUID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)includeUnowned
{
  result = self->_includeUnowned;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)uid
{
  result = self->_uid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)explicitFlags
{
  result = self->_explicitFlags;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)config canAccessAllContainers:(BOOL *)containers error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  configCopy = config;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  containerClass = [configCopy containerClass];
  if (([entitlements allowed] & 1) == 0 && !objc_msgSend(entitlements, "otherIDLookup"))
  {
    part = [(MCMCommandQuery *)self part];
    partDomain = [(MCMCommandQuery *)self partDomain];
    v16 = [entitlements isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:configCopy part:part partDomain:partDomain access:0];

    if (!v16)
    {
      v35 = [entitlements contributingIdentifiersForContainerConfig:configCopy];
      switch(containerClass)
      {
        case 13:
          goto LABEL_14;
        case 12:
          if (([entitlements hasSystemContainer] & 1) == 0)
          {
            v17 = 0;
            goto LABEL_21;
          }

          break;
        case 7:
LABEL_14:
          v32 = +[MCMGroupManager defaultManager];
          identifier = [codeSignInfo identifier];
          v36 = 0;
          v17 = [v32 groupContainerIdentifiersForOwnerIdentifier:identifier groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v36];
          v18 = v36;

          if (![v17 count])
          {

            v17 = 0;
          }

          v23 = v35;
          if (v18)
          {
            goto LABEL_33;
          }

LABEL_22:
          if (v23)
          {
            if (![v23 count])
            {
              v23 = v35;
              if (v17)
              {
                goto LABEL_28;
              }

              goto LABEL_30;
            }

            if (!v17)
            {
              v17 = [MEMORY[0x1E695DFD8] set];
            }

            v26 = [v35 mutableCopy];
            [v26 unionSet:v17];
            v33 = [v26 copy];

            v17 = v33;
            v23 = v35;
          }

          if (v17)
          {
LABEL_28:
            v18 = 0;
LABEL_33:

            v19 = 0;
            goto LABEL_5;
          }

LABEL_30:
          v27 = container_log_handle_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            context2 = [(MCMCommand *)self context];
            clientIdentity2 = [context2 clientIdentity];
            codeSignInfo2 = [clientIdentity2 codeSignInfo];
            identifier2 = [codeSignInfo2 identifier];
            *buf = 138412546;
            v38 = identifier2;
            v39 = 2048;
            v40 = containerClass;
            _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up unowned containers; containerClass = %llu", buf, 0x16u);
          }

          v18 = +[MCMError notEntitled];
          v17 = 0;
          v23 = v35;
          goto LABEL_33;
      }

      v24 = MEMORY[0x1E695DFD8];
      identifier3 = [codeSignInfo identifier];
      v17 = [v24 setWithObject:identifier3];

LABEL_21:
      v23 = v35;
      goto LABEL_22;
    }
  }

  v17 = [MEMORY[0x1E695DFD8] set];
  v18 = 0;
  v19 = 1;
LABEL_5:
  *containers = v19;
  if (error && !v17)
  {
    v20 = v18;
    *error = v18;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_setOfAvailableUserIdentitiesWithError:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  userIdentity = [clientIdentity userIdentity];
  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    userIdentity2 = [(MCMCommandQuery *)self userIdentity];
    v38 = [userIdentity2 debugDescription];
    v47 = 138412290;
    v48 = v38;
    _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v47, 0xCu);
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  usesGlobalBundleUserIdentity = [containerConfig usesGlobalBundleUserIdentity];

  if (usesGlobalBundleUserIdentity)
  {
    v11 = MEMORY[0x1E695DFD8];
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    globalBundleUserIdentity = [userIdentityCache globalBundleUserIdentity];
LABEL_7:
    shortDescription3 = globalBundleUserIdentity;
    allAccessibleUserIdentities = [v11 setWithObject:globalBundleUserIdentity];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  usesGlobalSystemUserIdentity = [containerConfig2 usesGlobalSystemUserIdentity];

  if (usesGlobalSystemUserIdentity)
  {
    v11 = MEMORY[0x1E695DFD8];
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    globalBundleUserIdentity = [userIdentityCache globalSystemUserIdentity];
    goto LABEL_7;
  }

  v47 = 0;
  v23 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v23, &v47) && (v47 & 0x80000000) != 0)
  {
    context3 = [(MCMCommand *)self context];
    clientIdentity2 = [context3 clientIdentity];
    userIdentity3 = [clientIdentity2 userIdentity];
    context2 = [userIdentity3 posixUser];

    context4 = [(MCMCommand *)self context];
    userIdentityCache2 = [context4 userIdentityCache];
    userIdentityCache = [userIdentityCache2 userIdentityForPersonalPersonaWithPOSIXUser:context2];

    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentityCache];
    shortDescription3 = container_log_handle_for_category();
    if (!os_log_type_enabled(shortDescription3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v47 = 138412290;
    v48 = userIdentityCache;
    v29 = "Using client persona: %@";
    v30 = shortDescription3;
LABEL_20:
    _os_log_debug_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEBUG, v29, &v47, 0xCu);
    goto LABEL_8;
  }

  userIdentity4 = [(MCMCommandQuery *)self userIdentity];
  if (userIdentity4 && (v32 = userIdentity4, -[MCMCommandQuery userIdentity](self, "userIdentity"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isNoSpecificPersona], v33, v32, !v34))
  {
    if (([userIdentity isNoSpecificPersona] & 1) == 0)
    {
      userIdentity5 = [(MCMCommandQuery *)self userIdentity];
      v40 = [userIdentity isEqual:userIdentity5];

      if (!v40)
      {
        v43 = container_log_handle_for_category();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          shortDescription = [userIdentity shortDescription];
          userIdentity6 = [(MCMCommandQuery *)self userIdentity];
          shortDescription2 = [userIdentity6 shortDescription];
          v47 = 138412546;
          v48 = shortDescription;
          v49 = 2112;
          v50 = shortDescription2;
          _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &v47, 0x16u);
        }

        v19 = [[MCMError alloc] initWithErrorType:76 category:3];
        goto LABEL_12;
      }
    }

    v41 = MEMORY[0x1E695DFD8];
    userIdentity7 = [(MCMCommandQuery *)self userIdentity];
    allAccessibleUserIdentities = [v41 setWithObject:userIdentity7];

    context2 = container_log_handle_for_category();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
    {
      userIdentityCache = [(MCMCommandQuery *)self userIdentity];
      shortDescription3 = [userIdentityCache shortDescription];
      v47 = 138412290;
      v48 = shortDescription3;
      v29 = "Using explicit persona: %@";
      v30 = context2;
      goto LABEL_20;
    }
  }

  else
  {
    if ([userIdentity isNoSpecificPersona])
    {
      context5 = [(MCMCommand *)self context];
      userIdentityCache3 = [context5 userIdentityCache];
      allAccessibleUserIdentities = [userIdentityCache3 allAccessibleUserIdentities];

      context2 = container_log_handle_for_category();
      if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
      {
        v47 = 138412290;
        v48 = allAccessibleUserIdentities;
        _os_log_debug_impl(&dword_1DF2C3000, context2, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v47, 0xCu);
      }

      goto LABEL_10;
    }

    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    context2 = container_log_handle_for_category();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
    {
      userIdentityCache = [userIdentity shortDescription];
      v47 = 138412290;
      v48 = userIdentityCache;
      _os_log_debug_impl(&dword_1DF2C3000, context2, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &v47, 0xCu);
      goto LABEL_9;
    }
  }

LABEL_10:

  if (allAccessibleUserIdentities)
  {
    goto LABEL_13;
  }

  v19 = 0;
LABEL_12:
  v20 = v19;
  *error = v20;

  allAccessibleUserIdentities = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];

  return allAccessibleUserIdentities;
}

- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identityCopy = identity;
  configCopy = config;
  if (![(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  context2 = [(MCMCommand *)self context];
  userIdentityCache = [context2 userIdentityCache];
  warnings = [(MCMCommand *)self warnings];
  v18 = [MCMXPCMessageBase legacySetOfUserIdentitiesForIdentifiers:identifiersCopy targetUserIdentity:identityCopy containerConfig:configCopy clientIdentity:clientIdentity userIdentityCache:userIdentityCache warnings:warnings error:error];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_setOfUserIdentities
{
  v32 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  userIdentity = [clientIdentity userIdentity];
  userIdentity2 = [(MCMCommandQuery *)self userIdentity];
  context2 = [(MCMCommand *)self context];
  userIdentityCache = [context2 userIdentityCache];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v23 = [userIdentity2 debugDescription];
    v28 = 138412290;
    v29 = v23;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v28, 0xCu);
  }

  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  usesGlobalBundleUserIdentity = [containerConfig usesGlobalBundleUserIdentity];

  if (usesGlobalBundleUserIdentity)
  {
    v12 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [userIdentityCache globalBundleUserIdentity];
LABEL_8:
    posixUser = globalBundleUserIdentity;
    allAccessibleUserIdentities = [v12 setWithObject:globalBundleUserIdentity];
    goto LABEL_9;
  }

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  usesGlobalSystemUserIdentity = [containerConfig2 usesGlobalSystemUserIdentity];

  if (usesGlobalSystemUserIdentity)
  {
    v12 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [userIdentityCache globalSystemUserIdentity];
    goto LABEL_8;
  }

  v28 = 0;
  v20 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v20, &v28) && (v28 & 0x80000000) != 0)
  {
    posixUser = [userIdentity posixUser];
    shortDescription = [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:shortDescription];
    v21ShortDescription = container_log_handle_for_category();
    if (!os_log_type_enabled(v21ShortDescription, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

LABEL_16:
      goto LABEL_9;
    }

    v28 = 138412290;
    v29 = shortDescription;
    v24 = "Using client-based userIdentity: %@";
    v25 = v21ShortDescription;
LABEL_32:
    _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, v24, &v28, 0xCu);
    goto LABEL_15;
  }

  if (userIdentity2 && ![userIdentity2 isNoSpecificPersona])
  {
    if (([userIdentity isNoSpecificPersona] & 1) != 0 || objc_msgSend(userIdentity, "isEqual:", userIdentity2))
    {
      allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity2];
      posixUser = container_log_handle_for_category();
      if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [userIdentity2 shortDescription];
        v28 = 138412290;
        v29 = shortDescription;
        _os_log_debug_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &v28, 0xCu);
        goto LABEL_16;
      }
    }

    else
    {
      posixUser = container_log_handle_for_category();
      if (os_log_type_enabled(posixUser, OS_LOG_TYPE_ERROR))
      {
        shortDescription2 = [userIdentity shortDescription];
        shortDescription3 = [userIdentity2 shortDescription];
        v28 = 138412546;
        v29 = shortDescription2;
        v30 = 2112;
        v31 = shortDescription3;
        _os_log_error_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_ERROR, "Ambiguous persona, client has adopted %@ but asks for %@", &v28, 0x16u);
      }

      allAccessibleUserIdentities = 0;
    }
  }

  else if ([userIdentity isNoSpecificPersona])
  {
    allAccessibleUserIdentities = [userIdentityCache allAccessibleUserIdentities];
    posixUser = container_log_handle_for_category();
    if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = allAccessibleUserIdentities;
      _os_log_debug_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v28, 0xCu);
    }
  }

  else
  {
    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    posixUser = container_log_handle_for_category();
    if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [clientIdentity userIdentity];
      v21ShortDescription = [shortDescription shortDescription];
      v28 = 138412290;
      v29 = v21ShortDescription;
      v24 = "Using client implicit persona: %@";
      v25 = posixUser;
      goto LABEL_32;
    }
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return allAccessibleUserIdentities;
}

- (id)_queryPlanWithIdentifiers:(id)identifiers containerConfig:(id)config clientIdentity:(id)identity error:(id *)error
{
  v99 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  configCopy = config;
  identityCopy = identity;
  v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    userIdentity = [(MCMCommandQuery *)self userIdentity];
    v79 = 0;
    v13 = [(MCMCommandQuery *)self _legacySetOfUserIdentitiesForIdentifiers:identifiersCopy targetUserIdentity:userIdentity containerConfig:configCopy error:&v79];
    v74 = v79;

    if (!v13)
    {
      v70 = 0;
      errorCopy2 = error;
      v15 = v73;
      v16 = v74;
      if (!v74)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v17 = objc_opt_new();
    _setOfUserIdentities = [(MCMCommandQuery *)self _setOfUserIdentities];
    if (_setOfUserIdentities)
    {
      v19 = configCopy;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v20 = identifiersCopy;
      v21 = identifiersCopy;
      v22 = [v21 countByEnumeratingWithState:&v95 objects:v94 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v96;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v96 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [v17 setObject:_setOfUserIdentities forKeyedSubscript:*(*(&v95 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v95 objects:v94 count:16];
        }

        while (v23);
      }

      identifiersCopy = v20;
      configCopy = v19;
    }

    v13 = [v17 copy];

    v74 = 0;
  }

  v70 = v13;
  if ([v13 count])
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v13;
    v65 = [(MCMError *)obj countByEnumeratingWithState:&v90 objects:v89 count:16];
    if (v65)
    {
      v26 = *v91;
      v67 = configCopy;
      v68 = identifiersCopy;
      v64 = *v91;
      do
      {
        v27 = 0;
        do
        {
          if (*v91 != v26)
          {
            v28 = v27;
            objc_enumerationMutation(obj);
            v27 = v28;
          }

          v66 = v27;
          v76 = *(*(&v90 + 1) + 8 * v27);
          v29 = [(MCMError *)obj objectForKeyedSubscript:?];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v72 = v29;
          v77 = [v72 countByEnumeratingWithState:&v85 objects:v84 count:16];
          if (v77)
          {
            v75 = *v86;
            while (2)
            {
              for (j = 0; j != v77; ++j)
              {
                if (*v86 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v31 = *(*(&v85 + 1) + 8 * j);
                v78 = 1;
                internalUUID = [(MCMCommandQuery *)self internalUUID];
                if (internalUUID && (v33 = internalUUID, v34 = [(MCMCommandQuery *)self fuzzyMatchInternalUUID], v33, !v34))
                {
                  internalUUID2 = [(MCMCommandQuery *)self internalUUID];
                  containerConfig = [(MCMCommandQuery *)self containerConfig];
                  v41 = identityCopy;
                  platform = [(MCMCommandQuery *)self platform];
                  transient = [(MCMCommandQuery *)self transient];
                  context = [(MCMCommand *)self context];
                  userIdentityCache = [context userIdentityCache];
                  v45 = platform;
                  identityCopy = v41;
                  v40 = [MCMConcreteContainerIdentity containerIdentityWithUUID:internalUUID2 userIdentity:v31 identifier:v76 containerConfig:containerConfig platform:v45 transient:transient userIdentityCache:userIdentityCache error:&v78];
                }

                else
                {
                  internalUUID2 = [(MCMCommandQuery *)self containerConfig];
                  platform2 = [(MCMCommandQuery *)self platform];
                  transient2 = [(MCMCommandQuery *)self transient];
                  containerConfig = [(MCMCommand *)self context];
                  context = [containerConfig userIdentityCache];
                  v40 = [MCMContainerIdentity containerIdentityWithUserIdentity:v31 identifier:v76 containerConfig:internalUUID2 platform:platform2 transient:transient2 userIdentityCache:context error:&v78];
                }

                if (v40)
                {
                  createIfNecessary = [(MCMCommandQuery *)self createIfNecessary];
                  part = [(MCMCommandQuery *)self part];
                  partDomain = [(MCMCommandQuery *)self partDomain];
                  v49 = [identityCopy isAllowedToPerformOperationType:createIfNecessary containerIdentity:v40 part:part partDomain:partDomain access:0];

                  if (!v49)
                  {
                    v54 = container_log_handle_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      context2 = [(MCMCommand *)self context];
                      clientIdentity = [context2 clientIdentity];
                      codeSignInfo = [clientIdentity codeSignInfo];
                      identifier = [codeSignInfo identifier];
                      *buf = 138412546;
                      selfCopy = identifier;
                      v82 = 2112;
                      v83 = v40;
                      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up container; identity = %@", buf, 0x16u);
                    }

                    v16 = +[MCMError notEntitled];

                    configCopy = v67;
                    identifiersCopy = v68;
                    goto LABEL_44;
                  }

                  [v73 addObject:v40];
                }

                else
                {
                  v50 = [MCMError alloc];
                  v51 = [(MCMError *)v50 initWithErrorType:v78];

                  v52 = container_log_handle_for_category();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy = self;
                    v82 = 2048;
                    v83 = v78;
                    _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Could not construct container identity from query; query = %@, error = %llu", buf, 0x16u);
                  }

                  v74 = v51;
                }
              }

              v77 = [v72 countByEnumeratingWithState:&v85 objects:v84 count:16];
              if (v77)
              {
                continue;
              }

              break;
            }
          }

          v27 = v66 + 1;
          configCopy = v67;
          identifiersCopy = v68;
          v26 = v64;
        }

        while (v66 + 1 != v65);
        v53 = [(MCMError *)obj countByEnumeratingWithState:&v90 objects:v89 count:16];
        v26 = v64;
        v65 = v53;
      }

      while (v53);
    }

    v16 = v74;
LABEL_44:
    v55 = obj;
  }

  else
  {
    v16 = [[MCMError alloc] initWithErrorType:115 category:3];
    v55 = v74;
  }

  errorCopy2 = error;
  v15 = v73;
  if (v16)
  {
LABEL_47:

    if (errorCopy2)
    {
      v56 = v16;
      v15 = 0;
      *errorCopy2 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_50:
  v57 = v15;

  v58 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_executeQueryPlan:(id)plan resultContainers:(id)containers error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  containersCopy = containers;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if (![planCopy count])
  {
    v14 = 0;
    v24 = 1;
    goto LABEL_21;
  }

  errorCopy = error;
  v14 = 0;
  while (1)
  {
    firstObject = [planCopy firstObject];
    [planCopy removeObjectAtIndex:0];
    v30[0] = v14;
    v16 = [(MCMCommandQuery *)self _executeQueryForContainerIdentity:firstObject error:v30];
    v17 = v30[0];

    if (v16)
    {
      break;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    if ([(MCMCommandQuery *)self fuzzyMatchTransient])
    {
      transient = [firstObject transient];
      if (transient == [(MCMCommandQuery *)self transient])
      {
        v23 = [firstObject identityByChangingTransient:{objc_msgSend(firstObject, "transient") ^ 1}];
        [planCopy addObject:v23];
      }
    }

    v14 = 0;
LABEL_13:

    if (![planCopy count])
    {
      v24 = 1;
      goto LABEL_18;
    }
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  registerDynamicProtectionWithRestrictedEntitlement = [containerConfig registerDynamicProtectionWithRestrictedEntitlement];

  if (!registerDynamicProtectionWithRestrictedEntitlement)
  {
LABEL_7:
    [containersCopy addObject:v16];
    v14 = v17;
    goto LABEL_13;
  }

  v29 = v17;
  v20 = [MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier secureRestrictedContainerIfNeededWithMetadata:v16 entitlements:entitlements error:&v29];
  v21 = v29;

  if (v20)
  {
    v17 = v21;
    goto LABEL_7;
  }

  v17 = v21;
LABEL_17:

  v24 = 0;
  v14 = v17;
LABEL_18:
  if (errorCopy && v14)
  {
    v25 = v14;
    *errorCopy = v14;
  }

LABEL_21:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)_executeQueryForContainerIdentity:(id)identity error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  context = [(MCMCommand *)self context];
  containerFactory = [context containerFactory];
  v22 = 0;
  v9 = [containerFactory containerForContainerIdentity:identityCopy createIfNecessary:-[MCMCommandQuery createIfNecessary](self error:{"createIfNecessary"), &v22}];
  v10 = v22;

  if (!v9)
  {
    if (!v10 || [v10 type] == 21)
    {
      context2 = [(MCMCommand *)self context];
      containerCache = [context2 containerCache];
      v17 = [containerCache classCacheForContainerIdentity:identityCopy];
      -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v17 generation]);

      v13 = 0;
      metadataMinimal = 0;
      goto LABEL_21;
    }

    metadataMinimal = 0;
LABEL_18:
    v13 = v10;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v9 generation]);
  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Found %@", buf, 0xCu);
  }

  if (![(MCMCommandQuery *)self includeInfoInResult]&& ![(MCMCommandQuery *)self includeUserManagedAssetsRelPath]&& ![(MCMCommandQuery *)self includeCreator])
  {
    metadataMinimal = [v9 metadataMinimal];
    goto LABEL_18;
  }

  v21 = v10;
  metadataMinimal = [v9 metadataWithError:&v21];
  v13 = v21;

  if (!metadataMinimal)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch metadata; container = %@, error = %@", buf, 0x16u);
    }

    metadataMinimal = 0;
  }

  if (error)
  {
LABEL_19:
    if (v13)
    {
      v18 = v13;
      *error = v13;
    }
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];

  return metadataMinimal;
}

- (BOOL)_checkIfSecureURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = [MCMFileHandle alloc];
  path = [lCopy path];
  LOBYTE(v17) = 1;
  v8 = [(MCMFileHandle *)v6 initWithPath:path relativeToFileHandle:0 direction:0 symlinks:0 createMode:0 createDPClass:0 openLazily:v17];

  v19 = 0;
  v18 = 0;
  v9 = [(MCMFileHandle *)v8 checkAppContainerProtection:&v19 error:&v18];
  v10 = v18;
  if (v9)
  {
    if (v19)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_9;
    }

    v13 = [[MCMError alloc] initWithErrorType:161 category:6];
  }

  else
  {
    v13 = [[MCMError alloc] initWithNSError:v10 url:lCopy defaultErrorType:144];
  }

  v11 = v13;
  if (error)
  {
    v14 = v13;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_checkIfSecureContainer:(id)container prefixes:(id)prefixes error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  prefixesCopy = prefixes;
  v10 = prefixesCopy;
  if (prefixesCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = prefixesCopy;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          identifier = [containerCopy identifier];
          LOBYTE(v16) = [identifier hasPrefix:v16];

          if (v16)
          {

            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
    goto LABEL_13;
  }

LABEL_12:
  containerPath = [containerCopy containerPath];
  containerDataURL = [containerPath containerDataURL];

  v25 = 0;
  LOBYTE(containerPath) = [(MCMCommandQuery *)self _checkIfSecureURL:containerDataURL error:&v25];
  v18 = v25;

  if (containerPath)
  {
LABEL_13:
    v21 = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v22 = v18;
    v21 = 0;
    *error = v18;
  }

  else
  {
    v21 = 0;
  }

LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_checkIfSecureContainers:(id)containers error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  containerConfig = [(MCMCommandQuery *)self containerConfig];
  hasDynamicProtection = [containerConfig hasDynamicProtection];

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  v10 = containerConfig2;
  if (hasDynamicProtection)
  {
    identifierPrefixesExemptFromAutomaticProtection = [containerConfig2 identifierPrefixesExemptFromAutomaticProtection];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = containersCopy;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      errorCopy = error;
      v15 = 0;
      v16 = *v30;
LABEL_4:
      v17 = 0;
      v18 = v15;
      while (1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * v17);
        v27 = v18;
        errorCopy = [(MCMCommandQuery *)self _checkIfSecureContainer:v19 prefixes:identifierPrefixesExemptFromAutomaticProtection error:&v27, errorCopy];
        v15 = v27;

        if (!errorCopy)
        {
          break;
        }

        ++v17;
        v18 = v15;
        if (v14 == v17)
        {
          v14 = [v12 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      error = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v15 = 0;
LABEL_18:

LABEL_19:
    v23 = 1;
    goto LABEL_20;
  }

  securedByPlatformPolicy = [containerConfig2 securedByPlatformPolicy];

  if (securedByPlatformPolicy)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = [[MCMError alloc] initWithErrorType:161 category:6];
  if (!error)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_20;
  }

LABEL_14:
  v22 = v15;
  v23 = 0;
  *error = v15;
LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_finalizeWithContainers:(id)containers error:(id)error
{
  v95 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  errorCopy = error;
  v8 = errorCopy;
  if ([(MCMCommandQuery *)self expectSingleResult])
  {
    v8 = errorCopy;
    if ([containersCopy count] >= 2)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v86 = [containersCopy count];
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Query expects single result but found %lu; returning CONTAINER_ERROR_AMBIGUOUS_RESULT", buf, 0xCu);
      }

      [containersCopy removeAllObjects];
      v8 = [[MCMError alloc] initWithErrorType:114 category:3];
    }
  }

  v10 = [containersCopy count];
  v11 = container_log_handle_for_category();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [containersCopy count];
      *buf = 134218242;
      v86 = v13;
      v87 = 2112;
      v88 = v8;
      _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Query result: count = %lu, error = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v86 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Query result: count = 0, error = %@", buf, 0xCu);
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];
  if (([identifier isEqual:@"com.apple.ContainerManagerTest"] & 1) == 0)
  {
    v18 = errorCopy;
    containerConfig = [(MCMCommandQuery *)self containerConfig];
    if (([containerConfig containerClass] & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      createIfNecessary = [(MCMCommandQuery *)self createIfNecessary];

      errorCopy = v18;
      if (createIfNecessary && v8)
      {
        if ([(MCMError *)v8 type]!= 55)
        {
          log = container_log_handle_for_category();
          if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
          {
            containerConfig2 = [(MCMCommandQuery *)self containerConfig];
            name = [containerConfig2 name];
            groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];
            type = [(MCMError *)v8 type];
            context2 = [(MCMCommand *)self context];
            [context2 clientIdentity];
            v27 = v26 = containersCopy;
            *buf = 138413314;
            v86 = name;
            v87 = 2114;
            v88 = groupIdentifiers;
            v89 = 2048;
            v90 = type;
            errorCopy = v18;
            v91 = 2114;
            v92 = v8;
            v93 = 2114;
            v94 = v27;
            _os_log_fault_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_FAULT, "System container lookup failed, class = %@, identifier = %{public}@, error = (%llu)%{public}@, client = %{public}@", buf, 0x34u);

            containersCopy = v26;
          }

LABEL_48:
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    errorCopy = v18;
  }

LABEL_20:
  if (v8)
  {
    goto LABEL_21;
  }

  if (![(MCMCommandQuery *)self part]|| [(MCMCommandQuery *)self part]== 1 || [(MCMCommandQuery *)self part]== 2 || ([(MCMCommandQuery *)self partDomain], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v8 = 0;
    goto LABEL_37;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  log = containersCopy;
  v73 = [log countByEnumeratingWithState:&v81 objects:v80 count:16];
  v8 = 0;
  if (!v73)
  {
    goto LABEL_35;
  }

  v71 = *v82;
  v63 = errorCopy;
  while (2)
  {
    v30 = 0;
    v31 = v8;
    do
    {
      if (*v82 != v71)
      {
        objc_enumerationMutation(log);
      }

      v32 = *(*(&v81 + 1) + 8 * v30);
      containerPath = [v32 containerPath];
      part = [(MCMCommandQuery *)self part];
      partDomain = [(MCMCommandQuery *)self partDomain];
      v79 = v31;
      v36 = [containerPath urlForPart:part partDomain:partDomain error:&v79];
      v8 = v79;

      if (!v36)
      {
        v56 = container_log_handle_for_category();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          containerPath2 = [v32 containerPath];
          v60 = gContainerPartNames[[(MCMCommandQuery *)self part]];
          partDomain2 = [(MCMCommandQuery *)self partDomain];
          *buf = 138413058;
          v86 = containerPath2;
          v87 = 2112;
          v88 = v60;
          v89 = 2112;
          v90 = partDomain2;
          v91 = 2112;
          v92 = v8;
          _os_log_error_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_ERROR, "Couldn't get part path; containerPath = %@, part = %@, partDomain = %@, error = %@", buf, 0x2Au);
        }

        goto LABEL_47;
      }

      v37 = containersCopy;
      v38 = +[MCMFileManager defaultManager];
      v39 = containermanager_copy_global_configuration();
      defaultUser = [v39 defaultUser];
      v78 = 0;
      v41 = [v38 createDirectoryAtURL:v36 withIntermediateDirectories:0 mode:493 owner:defaultUser dataProtectionClass:0xFFFFFFFFLL fsNode:0 error:&v78];
      v42 = v78;

      if ((v41 & 1) == 0)
      {
        v57 = [[MCMError alloc] initWithNSError:v42 url:v36 defaultErrorType:160];

        v58 = container_log_handle_for_category();
        containersCopy = v37;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v86 = v36;
          v87 = 2112;
          v88 = v42;
          _os_log_error_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_ERROR, "Couldn't create part subdirectory; partDirectoryURL = %@, error = %@", buf, 0x16u);
        }

        v8 = v57;
LABEL_47:
        errorCopy = v63;
        goto LABEL_48;
      }

      ++v30;
      v31 = v8;
      containersCopy = v37;
    }

    while (v73 != v30);
    errorCopy = v63;
    v73 = [log countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_35:

LABEL_37:
  if (!-[MCMCommandQuery requireSecureByPlatformPolicy](self, "requireSecureByPlatformPolicy") || (v43 = [containersCopy copy], v77 = v8, v44 = -[MCMCommandQuery _checkIfSecureContainers:error:](self, "_checkIfSecureContainers:error:", v43, &v77), v45 = v77, v8, v43, v8 = v45, v44))
  {
    v74 = [MCMResultQuery alloc];
    v72 = [containersCopy copy];
    loga = [(MCMCommand *)self context];
    clientIdentity2 = [loga clientIdentity];
    sandboxExtensionType = [(MCMCommandQuery *)self sandboxExtensionType];
    includePathInResult = [(MCMCommandQuery *)self includePathInResult];
    includeInfoInResult = [(MCMCommandQuery *)self includeInfoInResult];
    legacyPersonaPolicy = [(MCMCommandQuery *)self legacyPersonaPolicy];
    legacyExtensionPolicy = [(MCMCommandQuery *)self legacyExtensionPolicy];
    includeUserManagedAssetsRelPath = [(MCMCommandQuery *)self includeUserManagedAssetsRelPath];
    v46 = errorCopy;
    v47 = containersCopy;
    includeCreator = [(MCMCommandQuery *)self includeCreator];
    extensionsUseProxiedClient = [(MCMCommandQuery *)self extensionsUseProxiedClient];
    extensionsPolicyUsesProxiedClient = [(MCMCommandQuery *)self extensionsPolicyUsesProxiedClient];
    generation = [(MCMCommandQuery *)self generation];
    part2 = [(MCMCommandQuery *)self part];
    partDomain3 = [(MCMCommandQuery *)self partDomain];
    BYTE4(v62) = extensionsPolicyUsesProxiedClient;
    BYTE3(v62) = extensionsUseProxiedClient;
    BYTE2(v62) = includeCreator;
    containersCopy = v47;
    errorCopy = v46;
    BYTE1(v62) = includeUserManagedAssetsRelPath;
    LOBYTE(v62) = legacyExtensionPolicy;
    v28 = [MCMResultQuery initWithContainers:v74 clientIdentity:"initWithContainers:clientIdentity:sandboxExtensionType:includePath:includeInfo:legacyPersonaPolicy:legacyExtensionPolicy:includeUserManagedAssetsRelPath:includeCreator:extensionsUseProxiedClient:extensionsPolicyUsesProxiedClient:generation:part:partDomain:" sandboxExtensionType:v72 includePath:clientIdentity2 includeInfo:sandboxExtensionType legacyPersonaPolicy:includePathInResult legacyExtensionPolicy:includeInfoInResult includeUserManagedAssetsRelPath:legacyPersonaPolicy includeCreator:v62 extensionsUseProxiedClient:generation extensionsPolicyUsesProxiedClient:part2 generation:partDomain3 part:? partDomain:?];

    goto LABEL_40;
  }

LABEL_21:
  v28 = [(MCMResultBase *)[MCMResultQuery alloc] initWithError:v8];
LABEL_40:
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v28];

  v55 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAboutSelf
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  codeSignInfo = [clientIdentity codeSignInfo];
  identifiers = [(MCMCommandQuery *)self identifiers];
  if (identifiers)
  {
  }

  else
  {
    groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];

    if (!groupIdentifiers)
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  identifiers2 = [(MCMCommandQuery *)self identifiers];
  if ([identifiers2 count] == 1)
  {
    identifiers3 = [(MCMCommandQuery *)self identifiers];
    anyObject = [identifiers3 anyObject];
    identifier = [codeSignInfo identifier];
    v12 = [anyObject isEqualToString:identifier];
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __26__MCMCommandQuery_execute__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:14];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v3)
  {
    v14 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * v4);
        v25 = 0;
        v26 = &v25;
        v27 = 0x3032000000;
        v28 = __Block_byref_object_copy__10026;
        v29 = __Block_byref_object_dispose__10027;
        v30 = 0;
        v6 = v5;
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__10026;
        v23 = __Block_byref_object_dispose__10027;
        v24 = 0;
        v7 = [*(a1 + 40) reply];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __26__MCMCommandQuery_execute__block_invoke_2;
        v15[3] = &unk_1E86B0848;
        v15[4] = v6;
        v17 = &v19;
        v8 = v6;
        v16 = v8;
        v18 = &v25;
        [v7 dispatchSyncToFastWorkloopWithBlock:v15];

        if (v20[5])
        {
          [*(a1 + 48) addObject:?];
        }

        else
        {
          v9 = container_log_handle_for_category();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = v26[5];
            *buf = 138412546;
            v32 = v8;
            v33 = 2112;
            v34 = v10;
            _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Could not resolve metadata for %@: error = %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(&v19, 8);
        _Block_object_dispose(&v25, 8);

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v3);
  }

  result = [*(a1 + 40) _finalizeWithContainers:*(a1 + 48) error:*(*(*(a1 + 56) + 8) + 40)];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __26__MCMCommandQuery_execute__block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    *buf = 138412290;
    v14 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "Fetching metadata for container [%@]", buf, 0xCu);
  }

  v3 = a1[5];
  v12 = 0;
  v4 = [v3 metadataWithError:&v12];
  v5 = v12;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x1E69E9840];
}

- (MCMCommandQuery)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v25.receiver = self;
  v25.super_class = MCMCommandQuery;
  v9 = [(MCMCommand *)&v25 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_platform = [messageCopy platform];
    v9->_explicitFlags = [messageCopy explicitFlags];
    identifiers = [messageCopy identifiers];
    identifiers = v9->_identifiers;
    v9->_identifiers = identifiers;

    containerConfig = [messageCopy containerConfig];
    containerConfig = v9->_containerConfig;
    v9->_containerConfig = containerConfig;

    groupIdentifiers = [messageCopy groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = groupIdentifiers;

    internalUUID = [messageCopy internalUUID];
    internalUUID = v9->_internalUUID;
    v9->_internalUUID = internalUUID;

    v9->_extensionsUseProxiedClient = [messageCopy extensionsUseProxiedClient];
    v9->_extensionsPolicyUsesProxiedClient = [messageCopy extensionsPolicyUsesProxiedClient];
    v9->_createIfNecessary = [messageCopy createIfNecessary];
    v9->_includeInfoInResult = [messageCopy includeInfoInResult];
    v9->_includePathInResult = [messageCopy includePathInResult];
    v9->_uid = [messageCopy uid];
    userIdentity = [messageCopy userIdentity];
    userIdentity = v9->_userIdentity;
    v9->_userIdentity = userIdentity;

    v9->_transient = [messageCopy transient];
    v9->_fuzzyMatchTransient = [messageCopy fuzzyMatchTransient];
    v9->_fuzzyMatchInternalUUID = [messageCopy fuzzyMatchInternalUUID];
    v9->_includeUnowned = [messageCopy includeUnowned];
    v9->_expectSingleResult = [messageCopy expectSingleResult];
    v9->_legacyPersonaPolicy = [messageCopy legacyPersonaPolicy];
    v9->_legacyExtensionPolicy = [messageCopy legacyExtensionPolicy];
    v9->_includeUserManagedAssetsRelPath = [messageCopy includeUserManagedAssetsRelPath];
    v9->_requireSecureByPlatformPolicy = [messageCopy requireSecureByPlatformPolicy];
    v9->_includeCreator = [messageCopy includeCreator];
    v9->_generation = *MEMORY[0x1E69E9968];
    v9->_part = [messageCopy part];
    partDomain = [messageCopy partDomain];
    partDomain = v9->_partDomain;
    v9->_partDomain = partDomain;

    if (!v9->_legacyExtensionPolicy || !v9->_includeUnowned || [(NSSet *)v9->_identifiers count]|| (sandboxExtensionType = [(NSSet *)v9->_groupIdentifiers count]) != 0)
    {
      sandboxExtensionType = [messageCopy sandboxExtensionType];
    }

    v9->_sandboxExtensionType = sandboxExtensionType;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 39;
}

@end
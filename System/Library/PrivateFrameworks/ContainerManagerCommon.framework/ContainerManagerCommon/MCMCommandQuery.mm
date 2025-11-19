@interface MCMCommandQuery
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)_checkIfSecureContainer:(id)a3 prefixes:(id)a4 error:(id *)a5;
- (BOOL)_checkIfSecureContainers:(id)a3 error:(id *)a4;
- (BOOL)_checkIfSecureURL:(id)a3 error:(id *)a4;
- (BOOL)_executeQueryPlan:(id)a3 resultContainers:(id)a4 error:(id *)a5;
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
- (MCMCommandQuery)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerConfiguration)containerConfig;
- (MCMUserIdentity)userIdentity;
- (NSSet)groupIdentifiers;
- (NSSet)identifiers;
- (NSString)partDomain;
- (NSUUID)internalUUID;
- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)a3 canAccessAllContainers:(BOOL *)a4 error:(id *)a5;
- (id)_executeQueryForContainerIdentity:(id)a3 error:(id *)a4;
- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 error:(id *)a6;
- (id)_queryPlanWithIdentifiers:(id)a3 containerConfig:(id)a4 clientIdentity:(id)a5 error:(id *)a6;
- (id)_setOfAvailableUserIdentitiesWithError:(id *)a3;
- (id)_setOfUserIdentities;
- (unint64_t)explicitFlags;
- (unint64_t)generation;
- (unint64_t)part;
- (unint64_t)privateFlags;
- (unint64_t)sandboxExtensionType;
- (unsigned)expectedPersonaKernelID;
- (unsigned)platform;
- (unsigned)uid;
- (void)_finalizeWithContainers:(id)a3 error:(id)a4;
- (void)execute;
- (void)setGeneration:(unint64_t)a3;
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
    v3 = [(MCMCommand *)self context];
    v4 = [v3 clientIdentity];
    v5 = [v4 isAllowedToAccessUserAssets];

    v6 = *MEMORY[0x1E69E9840];
    return v5;
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
  v3 = [(MCMCommandQuery *)self containerConfig];
  v4 = [v3 containerClass];

  v5 = [(MCMCommand *)self context];
  v58 = [v5 clientIdentity];

  if (v4 == 7 || v4 == 13)
  {
    v6 = [(MCMCommandQuery *)self groupIdentifiers];
  }

  else
  {
    v6 = [(MCMCommandQuery *)self identifiers];
  }

  v7 = v6;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__10026;
  v78 = __Block_byref_object_dispose__10027;
  v79 = 0;
  v59 = [MEMORY[0x1E695DF70] array];
  v73 = 0;
  v60 = [v58 codeSignInfo];
  if (([v60 isSigned] & 1) == 0)
  {
    v13 = [[MCMError alloc] initWithErrorType:98 category:3];
LABEL_12:
    v14 = v75[5];
    v75[5] = v13;
LABEL_13:

LABEL_14:
    [(MCMCommandQuery *)self _finalizeWithContainers:v59 error:v75[5]];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  if (v4 != 13 && v4 != 7 || (-[MCMCommandQuery identifiers](self, "identifiers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count] == 0, v16, v17))
  {
    if ([(MCMCommandQuery *)self includeUnowned])
    {
      v31 = [(MCMCommandQuery *)self containerConfig];
      v32 = (v75 + 5);
      v71 = v75[5];
      v7 = [(MCMCommandQuery *)self _containerIdentifiersIncludingUnownedForContainerConfig:v31 canAccessAllContainers:&v73 error:&v71];
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
      if (v4 != 13 && v4 != 7)
      {
        v36 = MEMORY[0x1E695DFD8];
        v14 = [v60 identifier];
        v30 = [v36 setWithObject:v14];
        goto LABEL_40;
      }

      v33 = +[MCMGroupManager defaultManager];
      v34 = [v60 identifier];
      v35 = (v75 + 5);
      v70 = v75[5];
      v7 = [v33 groupContainerIdentifiersForOwnerIdentifier:v34 groupContainerClass:v4 codeSignInfo:v60 withError:&v70];
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
      v9 = [(MCMCommandQuery *)self containerConfig];
      v10 = (v75 + 5);
      obj = v75[5];
      v11 = [(MCMCommandQuery *)self _queryPlanWithIdentifiers:v7 containerConfig:v9 clientIdentity:v58 error:&obj];
      objc_storeStrong(v10, obj);

      if (v11)
      {
        v12 = (v75 + 5);
        v68 = v75[5];
        [(MCMCommandQuery *)self _executeQueryPlan:v11 resultContainers:v59 error:&v68];
        objc_storeStrong(v12, v68);
      }

      objc_autoreleasePoolPop(v8);
    }

    goto LABEL_14;
  }

  v18 = [(MCMCommandQuery *)self containerConfig];
  v19 = [(MCMCommandQuery *)self part];
  v20 = [(MCMCommandQuery *)self partDomain];
  v21 = [v58 isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:v18 part:v19 partDomain:v20 access:0];

  if (!v21 && ![(MCMCommandQuery *)self isAboutSelf])
  {
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v48 = [(MCMCommand *)self context];
      v49 = [v48 clientIdentity];
      v50 = [v49 codeSignInfo];
      v51 = [v50 identifier];
      *buf = 138412290;
      v91 = v51;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Client [%@] doesn't have permission to look up containers for at least one identifier in the query set.", buf, 0xCu);
    }

    v13 = +[MCMError notEntitled];
    v7 = 0;
    goto LABEL_12;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v22 = [(MCMCommandQuery *)self identifiers];
  v23 = [v22 countByEnumeratingWithState:&v86 objects:v85 count:16];
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
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v86 + 1) + 8 * v25);
        v27 = +[MCMGroupManager defaultManager];
        v28 = (v75 + 5);
        v72 = v75[5];
        v29 = [v27 groupContainerIdentifiersForOwnerIdentifier:v26 groupContainerClass:v4 codeSignInfo:v60 withError:&v72];
        objc_storeStrong(v28, v72);

        if (!v29)
        {

          goto LABEL_43;
        }

        [v14 unionSet:v29];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v86 objects:v85 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v30 = [v14 copy];
LABEL_40:
  v7 = v30;

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_41:
  v37 = [(MCMCommandQuery *)self groupIdentifiers];
  if (v37)
  {
    v14 = v37;
LABEL_43:
    v7 = 0;
    goto LABEL_13;
  }

  if (v73 != 1 || (v39 = (v75 + 5), v67 = v75[5], [(MCMCommandQuery *)self _setOfAvailableUserIdentitiesWithError:&v67], v14 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v39, v67), !v14))
  {
    v7 = 0;
    goto LABEL_14;
  }

  v40 = [(MCMCommand *)self context];
  v41 = [v40 containerCache];
  v42 = [(MCMCommandQuery *)self transient];
  v43 = (v75 + 5);
  v66 = v75[5];
  v44 = [v41 entriesForUserIdentities:v14 contentClass:v4 transient:v42 error:&v66];
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

          v56 = [*(*(&v81 + 1) + 8 * v55) metadataMinimal];
          [v59 addObject:v56];

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
    v91 = v58;
    _os_log_debug_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_DEBUG, "Query split into per-container ops since info or user managed assets path requested for all containers by client [%@]", buf, 0xCu);
  }

  v46 = [(MCMCommand *)self reply];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __26__MCMCommandQuery_execute__block_invoke;
  v61[3] = &unk_1E86B0870;
  v47 = v44;
  v62 = v47;
  v63 = self;
  v64 = v59;
  v65 = &v74;
  [v46 handoffToSlowWorkloopforClientIdentity:v58 withBlock:v61];

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

- (void)setGeneration:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_generation = a3;
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

- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)a3 canAccessAllContainers:(BOOL *)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(MCMCommand *)self context];
  v10 = [v9 clientIdentity];

  v11 = [v10 codeSignInfo];
  v12 = [v11 entitlements];
  v13 = [v8 containerClass];
  if (([v12 allowed] & 1) == 0 && !objc_msgSend(v12, "otherIDLookup"))
  {
    v14 = [(MCMCommandQuery *)self part];
    v15 = [(MCMCommandQuery *)self partDomain];
    v16 = [v12 isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:v8 part:v14 partDomain:v15 access:0];

    if (!v16)
    {
      v35 = [v12 contributingIdentifiersForContainerConfig:v8];
      switch(v13)
      {
        case 13:
          goto LABEL_14;
        case 12:
          if (([v12 hasSystemContainer] & 1) == 0)
          {
            v17 = 0;
            goto LABEL_21;
          }

          break;
        case 7:
LABEL_14:
          v32 = +[MCMGroupManager defaultManager];
          v30 = [v11 identifier];
          v36 = 0;
          v17 = [v32 groupContainerIdentifiersForOwnerIdentifier:v30 groupContainerClass:v13 codeSignInfo:v11 withError:&v36];
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
            v34 = [(MCMCommand *)self context];
            v31 = [v34 clientIdentity];
            v28 = [v31 codeSignInfo];
            v29 = [v28 identifier];
            *buf = 138412546;
            v38 = v29;
            v39 = 2048;
            v40 = v13;
            _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up unowned containers; containerClass = %llu", buf, 0x16u);
          }

          v18 = +[MCMError notEntitled];
          v17 = 0;
          v23 = v35;
          goto LABEL_33;
      }

      v24 = MEMORY[0x1E695DFD8];
      v25 = [v11 identifier];
      v17 = [v24 setWithObject:v25];

LABEL_21:
      v23 = v35;
      goto LABEL_22;
    }
  }

  v17 = [MEMORY[0x1E695DFD8] set];
  v18 = 0;
  v19 = 1;
LABEL_5:
  *a4 = v19;
  if (a5 && !v17)
  {
    v20 = v18;
    *a5 = v18;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_setOfAvailableUserIdentitiesWithError:(id *)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [(MCMCommand *)self context];
  v6 = [v5 clientIdentity];

  v7 = [v6 userIdentity];
  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v37 = [(MCMCommandQuery *)self userIdentity];
    v38 = [v37 debugDescription];
    v47 = 138412290;
    v48 = v38;
    _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v47, 0xCu);
  }

  v9 = [(MCMCommandQuery *)self containerConfig];
  v10 = [v9 usesGlobalBundleUserIdentity];

  if (v10)
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = [(MCMCommand *)self context];
    v13 = [v12 userIdentityCache];
    v14 = [v13 globalBundleUserIdentity];
LABEL_7:
    v17 = v14;
    v18 = [v11 setWithObject:v14];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v15 = [(MCMCommandQuery *)self containerConfig];
  v16 = [v15 usesGlobalSystemUserIdentity];

  if (v16)
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = [(MCMCommand *)self context];
    v13 = [v12 userIdentityCache];
    v14 = [v13 globalSystemUserIdentity];
    goto LABEL_7;
  }

  v47 = 0;
  v23 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v23, &v47) && (v47 & 0x80000000) != 0)
  {
    v24 = [(MCMCommand *)self context];
    v25 = [v24 clientIdentity];
    v26 = [v25 userIdentity];
    v12 = [v26 posixUser];

    v27 = [(MCMCommand *)self context];
    v28 = [v27 userIdentityCache];
    v13 = [v28 userIdentityForPersonalPersonaWithPOSIXUser:v12];

    v18 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    v17 = container_log_handle_for_category();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v47 = 138412290;
    v48 = v13;
    v29 = "Using client persona: %@";
    v30 = v17;
LABEL_20:
    _os_log_debug_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEBUG, v29, &v47, 0xCu);
    goto LABEL_8;
  }

  v31 = [(MCMCommandQuery *)self userIdentity];
  if (v31 && (v32 = v31, -[MCMCommandQuery userIdentity](self, "userIdentity"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isNoSpecificPersona], v33, v32, !v34))
  {
    if (([v7 isNoSpecificPersona] & 1) == 0)
    {
      v39 = [(MCMCommandQuery *)self userIdentity];
      v40 = [v7 isEqual:v39];

      if (!v40)
      {
        v43 = container_log_handle_for_category();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = [v7 shortDescription];
          v45 = [(MCMCommandQuery *)self userIdentity];
          v46 = [v45 shortDescription];
          v47 = 138412546;
          v48 = v44;
          v49 = 2112;
          v50 = v46;
          _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &v47, 0x16u);
        }

        v19 = [[MCMError alloc] initWithErrorType:76 category:3];
        goto LABEL_12;
      }
    }

    v41 = MEMORY[0x1E695DFD8];
    v42 = [(MCMCommandQuery *)self userIdentity];
    v18 = [v41 setWithObject:v42];

    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(MCMCommandQuery *)self userIdentity];
      v17 = [v13 shortDescription];
      v47 = 138412290;
      v48 = v17;
      v29 = "Using explicit persona: %@";
      v30 = v12;
      goto LABEL_20;
    }
  }

  else
  {
    if ([v7 isNoSpecificPersona])
    {
      v35 = [(MCMCommand *)self context];
      v36 = [v35 userIdentityCache];
      v18 = [v36 allAccessibleUserIdentities];

      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v47 = 138412290;
        v48 = v18;
        _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v47, 0xCu);
      }

      goto LABEL_10;
    }

    v18 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v7 shortDescription];
      v47 = 138412290;
      v48 = v13;
      _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &v47, 0xCu);
      goto LABEL_9;
    }
  }

LABEL_10:

  if (v18)
  {
    goto LABEL_13;
  }

  v19 = 0;
LABEL_12:
  v20 = v19;
  *a3 = v20;

  v18 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 error:(id *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  v13 = [(MCMCommand *)self context];
  v14 = [v13 clientIdentity];
  v15 = [(MCMCommand *)self context];
  v16 = [v15 userIdentityCache];
  v17 = [(MCMCommand *)self warnings];
  v18 = [MCMXPCMessageBase legacySetOfUserIdentitiesForIdentifiers:v10 targetUserIdentity:v11 containerConfig:v12 clientIdentity:v14 userIdentityCache:v16 warnings:v17 error:a6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_setOfUserIdentities
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v5 = [v4 userIdentity];
  v6 = [(MCMCommandQuery *)self userIdentity];
  v7 = [(MCMCommand *)self context];
  v8 = [v7 userIdentityCache];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v6 debugDescription];
    v28 = 138412290;
    v29 = v23;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v28, 0xCu);
  }

  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  v10 = [(MCMCommandQuery *)self containerConfig];
  v11 = [v10 usesGlobalBundleUserIdentity];

  if (v11)
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = [v8 globalBundleUserIdentity];
LABEL_8:
    v16 = v13;
    v17 = [v12 setWithObject:v13];
    goto LABEL_9;
  }

  v14 = [(MCMCommandQuery *)self containerConfig];
  v15 = [v14 usesGlobalSystemUserIdentity];

  if (v15)
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = [v8 globalSystemUserIdentity];
    goto LABEL_8;
  }

  v28 = 0;
  v20 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v20, &v28) && (v28 & 0x80000000) != 0)
  {
    v16 = [v5 posixUser];
    v21 = [v8 userIdentityForPersonalPersonaWithPOSIXUser:v16];
    v17 = [MEMORY[0x1E695DFD8] setWithObject:v21];
    v22 = container_log_handle_for_category();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

LABEL_16:
      goto LABEL_9;
    }

    v28 = 138412290;
    v29 = v21;
    v24 = "Using client-based userIdentity: %@";
    v25 = v22;
LABEL_32:
    _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, v24, &v28, 0xCu);
    goto LABEL_15;
  }

  if (v6 && ![v6 isNoSpecificPersona])
  {
    if (([v5 isNoSpecificPersona] & 1) != 0 || objc_msgSend(v5, "isEqual:", v6))
    {
      v17 = [MEMORY[0x1E695DFD8] setWithObject:v6];
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = [v6 shortDescription];
        v28 = 138412290;
        v29 = v21;
        _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &v28, 0xCu);
        goto LABEL_16;
      }
    }

    else
    {
      v16 = container_log_handle_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = [v5 shortDescription];
        v27 = [v6 shortDescription];
        v28 = 138412546;
        v29 = v26;
        v30 = 2112;
        v31 = v27;
        _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Ambiguous persona, client has adopted %@ but asks for %@", &v28, 0x16u);
      }

      v17 = 0;
    }
  }

  else if ([v5 isNoSpecificPersona])
  {
    v17 = [v8 allAccessibleUserIdentities];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = v17;
      _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v28, 0xCu);
    }
  }

  else
  {
    v17 = [MEMORY[0x1E695DFD8] setWithObject:v5];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v4 userIdentity];
      v22 = [v21 shortDescription];
      v28 = 138412290;
      v29 = v22;
      v24 = "Using client implicit persona: %@";
      v25 = v16;
      goto LABEL_32;
    }
  }

LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_queryPlanWithIdentifiers:(id)a3 containerConfig:(id)a4 clientIdentity:(id)a5 error:(id *)a6
{
  v99 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    v12 = [(MCMCommandQuery *)self userIdentity];
    v79 = 0;
    v13 = [(MCMCommandQuery *)self _legacySetOfUserIdentitiesForIdentifiers:v9 targetUserIdentity:v12 containerConfig:v10 error:&v79];
    v74 = v79;

    if (!v13)
    {
      v70 = 0;
      v14 = a6;
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
    v18 = [(MCMCommandQuery *)self _setOfUserIdentities];
    if (v18)
    {
      v19 = v10;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v20 = v9;
      v21 = v9;
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

            [v17 setObject:v18 forKeyedSubscript:*(*(&v95 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v95 objects:v94 count:16];
        }

        while (v23);
      }

      v9 = v20;
      v10 = v19;
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
      v67 = v10;
      v68 = v9;
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
                v32 = [(MCMCommandQuery *)self internalUUID];
                if (v32 && (v33 = v32, v34 = [(MCMCommandQuery *)self fuzzyMatchInternalUUID], v33, !v34))
                {
                  v35 = [(MCMCommandQuery *)self internalUUID];
                  v38 = [(MCMCommandQuery *)self containerConfig];
                  v41 = v11;
                  v42 = [(MCMCommandQuery *)self platform];
                  v43 = [(MCMCommandQuery *)self transient];
                  v39 = [(MCMCommand *)self context];
                  v44 = [v39 userIdentityCache];
                  v45 = v42;
                  v11 = v41;
                  v40 = [MCMConcreteContainerIdentity containerIdentityWithUUID:v35 userIdentity:v31 identifier:v76 containerConfig:v38 platform:v45 transient:v43 userIdentityCache:v44 error:&v78];
                }

                else
                {
                  v35 = [(MCMCommandQuery *)self containerConfig];
                  v36 = [(MCMCommandQuery *)self platform];
                  v37 = [(MCMCommandQuery *)self transient];
                  v38 = [(MCMCommand *)self context];
                  v39 = [v38 userIdentityCache];
                  v40 = [MCMContainerIdentity containerIdentityWithUserIdentity:v31 identifier:v76 containerConfig:v35 platform:v36 transient:v37 userIdentityCache:v39 error:&v78];
                }

                if (v40)
                {
                  v46 = [(MCMCommandQuery *)self createIfNecessary];
                  v47 = [(MCMCommandQuery *)self part];
                  v48 = [(MCMCommandQuery *)self partDomain];
                  v49 = [v11 isAllowedToPerformOperationType:v46 containerIdentity:v40 part:v47 partDomain:v48 access:0];

                  if (!v49)
                  {
                    v54 = container_log_handle_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      v60 = [(MCMCommand *)self context];
                      v61 = [v60 clientIdentity];
                      v62 = [v61 codeSignInfo];
                      v63 = [v62 identifier];
                      *buf = 138412546;
                      v81 = v63;
                      v82 = 2112;
                      v83 = v40;
                      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up container; identity = %@", buf, 0x16u);
                    }

                    v16 = +[MCMError notEntitled];

                    v10 = v67;
                    v9 = v68;
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
                    v81 = self;
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
          v10 = v67;
          v9 = v68;
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

  v14 = a6;
  v15 = v73;
  if (v16)
  {
LABEL_47:

    if (v14)
    {
      v56 = v16;
      v15 = 0;
      *v14 = v16;
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

- (BOOL)_executeQueryPlan:(id)a3 resultContainers:(id)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MCMCommand *)self context];
  v11 = [v10 clientIdentity];
  v12 = [v11 codeSignInfo];
  v13 = [v12 entitlements];

  if (![v8 count])
  {
    v14 = 0;
    v24 = 1;
    goto LABEL_21;
  }

  v28 = a5;
  v14 = 0;
  while (1)
  {
    v15 = [v8 firstObject];
    [v8 removeObjectAtIndex:0];
    v30[0] = v14;
    v16 = [(MCMCommandQuery *)self _executeQueryForContainerIdentity:v15 error:v30];
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
      v22 = [v15 transient];
      if (v22 == [(MCMCommandQuery *)self transient])
      {
        v23 = [v15 identityByChangingTransient:{objc_msgSend(v15, "transient") ^ 1}];
        [v8 addObject:v23];
      }
    }

    v14 = 0;
LABEL_13:

    if (![v8 count])
    {
      v24 = 1;
      goto LABEL_18;
    }
  }

  v18 = [(MCMCommandQuery *)self containerConfig];
  v19 = [v18 registerDynamicProtectionWithRestrictedEntitlement];

  if (!v19)
  {
LABEL_7:
    [v9 addObject:v16];
    v14 = v17;
    goto LABEL_13;
  }

  v29 = v17;
  v20 = [MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier secureRestrictedContainerIfNeededWithMetadata:v16 entitlements:v13 error:&v29];
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
  if (v28 && v14)
  {
    v25 = v14;
    *v28 = v14;
  }

LABEL_21:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)_executeQueryForContainerIdentity:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMCommand *)self context];
  v8 = [v7 containerFactory];
  v22 = 0;
  v9 = [v8 containerForContainerIdentity:v6 createIfNecessary:-[MCMCommandQuery createIfNecessary](self error:{"createIfNecessary"), &v22}];
  v10 = v22;

  if (!v9)
  {
    if (!v10 || [v10 type] == 21)
    {
      v15 = [(MCMCommand *)self context];
      v16 = [v15 containerCache];
      v17 = [v16 classCacheForContainerIdentity:v6];
      -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v17 generation]);

      v13 = 0;
      v12 = 0;
      goto LABEL_21;
    }

    v12 = 0;
LABEL_18:
    v13 = v10;
    if (!a4)
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
    v12 = [v9 metadataMinimal];
    goto LABEL_18;
  }

  v21 = v10;
  v12 = [v9 metadataWithError:&v21];
  v13 = v21;

  if (!v12)
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

    v12 = 0;
  }

  if (a4)
  {
LABEL_19:
    if (v13)
    {
      v18 = v13;
      *a4 = v13;
    }
  }

LABEL_21:

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_checkIfSecureURL:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MCMFileHandle alloc];
  v7 = [v5 path];
  LOBYTE(v17) = 1;
  v8 = [(MCMFileHandle *)v6 initWithPath:v7 relativeToFileHandle:0 direction:0 symlinks:0 createMode:0 createDPClass:0 openLazily:v17];

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
    v13 = [[MCMError alloc] initWithNSError:v10 url:v5 defaultErrorType:144];
  }

  v11 = v13;
  if (a4)
  {
    v14 = v13;
    v12 = 0;
    *a4 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_checkIfSecureContainer:(id)a3 prefixes:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v9;
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
          v17 = [v8 identifier];
          LOBYTE(v16) = [v17 hasPrefix:v16];

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
  v19 = [v8 containerPath];
  v20 = [v19 containerDataURL];

  v25 = 0;
  LOBYTE(v19) = [(MCMCommandQuery *)self _checkIfSecureURL:v20 error:&v25];
  v18 = v25;

  if (v19)
  {
LABEL_13:
    v21 = 1;
    goto LABEL_17;
  }

  if (a5)
  {
    v22 = v18;
    v21 = 0;
    *a5 = v18;
  }

  else
  {
    v21 = 0;
  }

LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_checkIfSecureContainers:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMCommandQuery *)self containerConfig];
  v8 = [v7 hasDynamicProtection];

  v9 = [(MCMCommandQuery *)self containerConfig];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 identifierPrefixesExemptFromAutomaticProtection];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v26 = a4;
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
        v20 = [(MCMCommandQuery *)self _checkIfSecureContainer:v19 prefixes:v11 error:&v27, v26];
        v15 = v27;

        if (!v20)
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

      a4 = v26;
      if (!v26)
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

  v21 = [v9 securedByPlatformPolicy];

  if (v21)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = [[MCMError alloc] initWithErrorType:161 category:6];
  if (!a4)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_20;
  }

LABEL_14:
  v22 = v15;
  v23 = 0;
  *a4 = v15;
LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_finalizeWithContainers:(id)a3 error:(id)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ([(MCMCommandQuery *)self expectSingleResult])
  {
    v8 = v7;
    if ([v6 count] >= 2)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v86 = [v6 count];
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Query expects single result but found %lu; returning CONTAINER_ERROR_AMBIGUOUS_RESULT", buf, 0xCu);
      }

      [v6 removeAllObjects];
      v8 = [[MCMError alloc] initWithErrorType:114 category:3];
    }
  }

  v10 = [v6 count];
  v11 = container_log_handle_for_category();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v6 count];
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

  v14 = [(MCMCommand *)self context];
  v15 = [v14 clientIdentity];
  v16 = [v15 codeSignInfo];
  v17 = [v16 identifier];
  if (([v17 isEqual:@"com.apple.ContainerManagerTest"] & 1) == 0)
  {
    v18 = v7;
    v19 = [(MCMCommandQuery *)self containerConfig];
    if (([v19 containerClass] & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      v20 = [(MCMCommandQuery *)self createIfNecessary];

      v7 = v18;
      if (v20 && v8)
      {
        if ([(MCMError *)v8 type]!= 55)
        {
          log = container_log_handle_for_category();
          if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
          {
            v21 = [(MCMCommandQuery *)self containerConfig];
            v22 = [v21 name];
            v23 = [(MCMCommandQuery *)self groupIdentifiers];
            v24 = [(MCMError *)v8 type];
            v25 = [(MCMCommand *)self context];
            [v25 clientIdentity];
            v27 = v26 = v6;
            *buf = 138413314;
            v86 = v22;
            v87 = 2114;
            v88 = v23;
            v89 = 2048;
            v90 = v24;
            v7 = v18;
            v91 = 2114;
            v92 = v8;
            v93 = 2114;
            v94 = v27;
            _os_log_fault_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_FAULT, "System container lookup failed, class = %@, identifier = %{public}@, error = (%llu)%{public}@, client = %{public}@", buf, 0x34u);

            v6 = v26;
          }

LABEL_48:
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v7 = v18;
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
  log = v6;
  v73 = [log countByEnumeratingWithState:&v81 objects:v80 count:16];
  v8 = 0;
  if (!v73)
  {
    goto LABEL_35;
  }

  v71 = *v82;
  v63 = v7;
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
      v33 = [v32 containerPath];
      v34 = [(MCMCommandQuery *)self part];
      v35 = [(MCMCommandQuery *)self partDomain];
      v79 = v31;
      v36 = [v33 urlForPart:v34 partDomain:v35 error:&v79];
      v8 = v79;

      if (!v36)
      {
        v56 = container_log_handle_for_category();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v59 = [v32 containerPath];
          v60 = gContainerPartNames[[(MCMCommandQuery *)self part]];
          v61 = [(MCMCommandQuery *)self partDomain];
          *buf = 138413058;
          v86 = v59;
          v87 = 2112;
          v88 = v60;
          v89 = 2112;
          v90 = v61;
          v91 = 2112;
          v92 = v8;
          _os_log_error_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_ERROR, "Couldn't get part path; containerPath = %@, part = %@, partDomain = %@, error = %@", buf, 0x2Au);
        }

        goto LABEL_47;
      }

      v37 = v6;
      v38 = +[MCMFileManager defaultManager];
      v39 = containermanager_copy_global_configuration();
      v40 = [v39 defaultUser];
      v78 = 0;
      v41 = [v38 createDirectoryAtURL:v36 withIntermediateDirectories:0 mode:493 owner:v40 dataProtectionClass:0xFFFFFFFFLL fsNode:0 error:&v78];
      v42 = v78;

      if ((v41 & 1) == 0)
      {
        v57 = [[MCMError alloc] initWithNSError:v42 url:v36 defaultErrorType:160];

        v58 = container_log_handle_for_category();
        v6 = v37;
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
        v7 = v63;
        goto LABEL_48;
      }

      ++v30;
      v31 = v8;
      v6 = v37;
    }

    while (v73 != v30);
    v7 = v63;
    v73 = [log countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_35:

LABEL_37:
  if (!-[MCMCommandQuery requireSecureByPlatformPolicy](self, "requireSecureByPlatformPolicy") || (v43 = [v6 copy], v77 = v8, v44 = -[MCMCommandQuery _checkIfSecureContainers:error:](self, "_checkIfSecureContainers:error:", v43, &v77), v45 = v77, v8, v43, v8 = v45, v44))
  {
    v74 = [MCMResultQuery alloc];
    v72 = [v6 copy];
    loga = [(MCMCommand *)self context];
    v70 = [loga clientIdentity];
    v69 = [(MCMCommandQuery *)self sandboxExtensionType];
    v68 = [(MCMCommandQuery *)self includePathInResult];
    v67 = [(MCMCommandQuery *)self includeInfoInResult];
    v66 = [(MCMCommandQuery *)self legacyPersonaPolicy];
    v65 = [(MCMCommandQuery *)self legacyExtensionPolicy];
    v64 = [(MCMCommandQuery *)self includeUserManagedAssetsRelPath];
    v46 = v7;
    v47 = v6;
    v48 = [(MCMCommandQuery *)self includeCreator];
    v49 = [(MCMCommandQuery *)self extensionsUseProxiedClient];
    v50 = [(MCMCommandQuery *)self extensionsPolicyUsesProxiedClient];
    v51 = [(MCMCommandQuery *)self generation];
    v52 = [(MCMCommandQuery *)self part];
    v53 = [(MCMCommandQuery *)self partDomain];
    BYTE4(v62) = v50;
    BYTE3(v62) = v49;
    BYTE2(v62) = v48;
    v6 = v47;
    v7 = v46;
    BYTE1(v62) = v64;
    LOBYTE(v62) = v65;
    v28 = [MCMResultQuery initWithContainers:v74 clientIdentity:"initWithContainers:clientIdentity:sandboxExtensionType:includePath:includeInfo:legacyPersonaPolicy:legacyExtensionPolicy:includeUserManagedAssetsRelPath:includeCreator:extensionsUseProxiedClient:extensionsPolicyUsesProxiedClient:generation:part:partDomain:" sandboxExtensionType:v72 includePath:v70 includeInfo:v69 legacyPersonaPolicy:v68 legacyExtensionPolicy:v67 includeUserManagedAssetsRelPath:v66 includeCreator:v62 extensionsUseProxiedClient:v51 extensionsPolicyUsesProxiedClient:v52 generation:v53 part:? partDomain:?];

    goto LABEL_40;
  }

LABEL_21:
  v28 = [(MCMResultBase *)[MCMResultQuery alloc] initWithError:v8];
LABEL_40:
  v54 = [(MCMCommand *)self resultPromise];
  [v54 completeWithResult:v28];

  v55 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAboutSelf
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];

  v5 = [v4 codeSignInfo];
  v6 = [(MCMCommandQuery *)self identifiers];
  if (v6)
  {
  }

  else
  {
    v7 = [(MCMCommandQuery *)self groupIdentifiers];

    if (!v7)
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  v8 = [(MCMCommandQuery *)self identifiers];
  if ([v8 count] == 1)
  {
    v9 = [(MCMCommandQuery *)self identifiers];
    v10 = [v9 anyObject];
    v11 = [v5 identifier];
    v12 = [v10 isEqualToString:v11];
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

- (MCMCommandQuery)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v25.receiver = self;
  v25.super_class = MCMCommandQuery;
  v9 = [(MCMCommand *)&v25 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v9->_platform = [v8 platform];
    v9->_explicitFlags = [v8 explicitFlags];
    v10 = [v8 identifiers];
    identifiers = v9->_identifiers;
    v9->_identifiers = v10;

    v12 = [v8 containerConfig];
    containerConfig = v9->_containerConfig;
    v9->_containerConfig = v12;

    v14 = [v8 groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = v14;

    v16 = [v8 internalUUID];
    internalUUID = v9->_internalUUID;
    v9->_internalUUID = v16;

    v9->_extensionsUseProxiedClient = [v8 extensionsUseProxiedClient];
    v9->_extensionsPolicyUsesProxiedClient = [v8 extensionsPolicyUsesProxiedClient];
    v9->_createIfNecessary = [v8 createIfNecessary];
    v9->_includeInfoInResult = [v8 includeInfoInResult];
    v9->_includePathInResult = [v8 includePathInResult];
    v9->_uid = [v8 uid];
    v18 = [v8 userIdentity];
    userIdentity = v9->_userIdentity;
    v9->_userIdentity = v18;

    v9->_transient = [v8 transient];
    v9->_fuzzyMatchTransient = [v8 fuzzyMatchTransient];
    v9->_fuzzyMatchInternalUUID = [v8 fuzzyMatchInternalUUID];
    v9->_includeUnowned = [v8 includeUnowned];
    v9->_expectSingleResult = [v8 expectSingleResult];
    v9->_legacyPersonaPolicy = [v8 legacyPersonaPolicy];
    v9->_legacyExtensionPolicy = [v8 legacyExtensionPolicy];
    v9->_includeUserManagedAssetsRelPath = [v8 includeUserManagedAssetsRelPath];
    v9->_requireSecureByPlatformPolicy = [v8 requireSecureByPlatformPolicy];
    v9->_includeCreator = [v8 includeCreator];
    v9->_generation = *MEMORY[0x1E69E9968];
    v9->_part = [v8 part];
    v20 = [v8 partDomain];
    partDomain = v9->_partDomain;
    v9->_partDomain = v20;

    if (!v9->_legacyExtensionPolicy || !v9->_includeUnowned || [(NSSet *)v9->_identifiers count]|| (v22 = [(NSSet *)v9->_groupIdentifiers count]) != 0)
    {
      v22 = [v8 sandboxExtensionType];
    }

    v9->_sandboxExtensionType = v22;
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
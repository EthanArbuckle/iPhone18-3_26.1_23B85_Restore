@interface MCMXPCMessageBase
+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)identities error:(id *)error;
+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error;
+ (id)legacyUserIdentityForIdentifier:(id)identifier targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error;
+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)identifier containerConfig:(id)config userIdentityCache:(id)cache error:(id *)error;
+ (id)xpcMessageFromXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (MCMCommandContext)context;
- (MCMXPCMessageBase)initWithContext:(id)context;
- (MCMXPCMessageBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSMutableArray)warnings;
- (OS_xpc_object)xpcObject;
- (container_client)proxy;
- (id)identifierFromXPCObject:(id)object elseClientIdentifier:(id)identifier;
- (id)nsObjectFromXPCObject:(id)object key:(const char *)key error:(unint64_t *)error;
- (id)nsStringValueFromXPCObject:(id)object key:(const char *)key;
- (id)nsUUIDValueFromXPCObject:(id)object key:(const char *)key;
- (id)userIdentityFromClientPersonaUniqueString:(id)string clientIdentity:(id)identity error:(id *)error;
- (unint64_t)command;
- (unsigned)disposition;
- (unsigned)platform;
- (void)dealloc;
@end

@implementation MCMXPCMessageBase

- (MCMCommandContext)context
{
  result = self->_context;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)disposition
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (unsigned)platform
{
  result = self->_platform;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  proxy = self->_proxy;
  container_free_client();
  v5.receiver = self;
  v5.super_class = MCMXPCMessageBase;
  [(MCMXPCMessageBase *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NSMutableArray)warnings
{
  result = self->_warnings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)command
{
  result = self->_command;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_xpc_object)xpcObject
{
  result = self->_xpcObject;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (container_client)proxy
{
  result = self->_proxy;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v9 = [(MCMXPCMessageBase *)self initWithContext:context];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcObject, object);
    uint64 = xpc_dictionary_get_uint64(objectCopy, "Platform");
    v12 = xpc_dictionary_get_dictionary(objectCopy, "ProxyForClient");
    v13 = v12;
    if (v12)
    {
      v12 = container_client_copy_decoded_from_xpc_object();
    }

    v10->_proxy = v12;
    v10->_platform = uint64;
    v10->_command = xpc_dictionary_get_uint64(objectCopy, "Command");
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MCMXPCMessageBase)initWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageBase;
  v6 = [(MCMXPCMessageBase *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    warnings = v7->_warnings;
    v7->_warnings = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)xpcMessageFromXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  objectCopy = object;
  v10 = [[self alloc] initWithXPCObject:objectCopy context:contextCopy error:error];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)userIdentityFromClientPersonaUniqueString:(id)string clientIdentity:(id)identity error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identityCopy = identity;
  v33 = 0;
  v10 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v10, &v33) && (v33 & 0x80000000) != 0)
  {
    userIdentity = [identityCopy userIdentity];
    goto LABEL_12;
  }

  context = [(MCMXPCMessageBase *)self context];
  userIdentityCache = [context userIdentityCache];
  personasAreSupported = [objc_opt_class() personasAreSupported];

  context2 = [(MCMXPCMessageBase *)self context];
  userIdentityCache2 = [context2 userIdentityCache];
  v17 = userIdentityCache2;
  if (!personasAreSupported)
  {
    posixUser = [identityCopy posixUser];
    userIdentity = [v17 userIdentityForPersonalPersonaWithPOSIXUser:posixUser];

LABEL_12:
    v23 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v18 = [userIdentityCache2 userIdentityForCurrentUserWithPersonaUniqueString:stringCopy];

  if (v18)
  {
    userIdentity2 = [identityCopy userIdentity];
    isNoSpecificPersona = [userIdentity2 isNoSpecificPersona];
    v21 = [userIdentity2 isEqual:v18];
    if ((isNoSpecificPersona & 1) != 0 || v21)
    {
      userIdentity = v18;
      v23 = 0;
    }

    else
    {
      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        codeSignInfo = [identityCopy codeSignInfo];
        identifier = [codeSignInfo identifier];
        v33 = 138413058;
        v34 = identifier;
        v35 = 2112;
        v36 = stringCopy;
        v37 = 1024;
        v38 = 0;
        v39 = 1024;
        v40 = 0;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Persona unique string is not valid for this client; client = [%@], personaUniqueString = [%@], nonspecific = %d, sameAsClient = %d", &v33, 0x22u);
      }

      v23 = [[MCMError alloc] initWithErrorType:76 category:3];
      userIdentity = 0;
    }
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      codeSignInfo2 = [identityCopy codeSignInfo];
      identifier2 = [codeSignInfo2 identifier];
      v33 = 138412546;
      v34 = identifier2;
      v35 = 2112;
      v36 = stringCopy;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Cannot reconstitute a user identity from provided persona unique string; client = [%@], personaUniqueString = [%@]", &v33, 0x16u);
    }

    v23 = [[MCMError alloc] initWithErrorType:76 category:3];
    userIdentity = 0;
  }

  if (error)
  {
LABEL_20:
    if (!userIdentity)
    {
      v26 = v23;
      *error = v23;
    }
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];

  return userIdentity;
}

- (id)nsObjectFromXPCObject:(id)object key:(const char *)key error:(unint64_t *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = xpc_dictionary_get_value(object, key);
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = v7;
    if (error && !v7)
    {
      *error = 38;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)nsUUIDValueFromXPCObject:(id)object key:(const char *)key
{
  v7 = *MEMORY[0x1E69E9840];
  uuid = xpc_dictionary_get_uuid(object, key);
  if (uuid)
  {
    uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
  }

  v5 = *MEMORY[0x1E69E9840];

  return uuid;
}

- (id)identifierFromXPCObject:(id)object elseClientIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(MCMXPCMessageBase *)self nsStringValueFromXPCObject:object key:"Identifier"];
  if (!v7)
  {
    v7 = identifierCopy;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)nsStringValueFromXPCObject:(id)object key:(const char *)key
{
  v7 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(object, key);
  if (string)
  {
    string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  v5 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)identities error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  if ([identitiesCopy count] == 1)
  {
    anyObject = [identitiesCopy anyObject];
    v7 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = identitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    anyObject = 0;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 isDataSeparated] & 1) == 0 && (objc_msgSend(v13, "isNoSpecificPersona") & 1) == 0)
        {
          if (anyObject)
          {

            goto LABEL_18;
          }

          anyObject = v13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (anyObject)
    {
      v7 = 0;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

  v7 = [[MCMError alloc] initWithErrorType:115 category:3];
  anyObject = 0;
  if (error)
  {
LABEL_20:
    if (!anyObject)
    {
      v7 = v7;
      *error = v7;
    }
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];

  return anyObject;
}

+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error
{
  v133 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identityCopy = identity;
  configCopy = config;
  clientIdentityCopy = clientIdentity;
  cacheCopy = cache;
  warningsCopy = warnings;
  userIdentity = [clientIdentityCopy userIdentity];
  v20 = identityCopy;
  v21 = containermanager_copy_global_configuration();
  staticConfig = [v21 staticConfig];

  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v50 = [v20 debugDescription];
    multiuser_flags = 138412290;
    v118 = v50;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &multiuser_flags, 0xCu);
  }

  v105 = clientIdentityCopy;
  v103 = userIdentity;
  v104 = warningsCopy;
  if ([configCopy usesGlobalBundleUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [cacheCopy globalBundleUserIdentity];
LABEL_7:
    v26 = globalBundleUserIdentity;
    v27 = [v24 setWithObject:globalBundleUserIdentity];

    v28 = 0;
    v106 = 0;
LABEL_8:
    v29 = v20;
    goto LABEL_9;
  }

  if ([configCopy usesGlobalSystemUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [cacheCopy globalSystemUserIdentity];
    goto LABEL_7;
  }

  multiuser_flags = 0;
  v44 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v44, &multiuser_flags) && (multiuser_flags & 0x80000000) != 0)
  {
    v101 = staticConfig;
    posixUser = [userIdentity posixUser];
    v46 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
    v27 = [MEMORY[0x1E695DFD8] setWithObject:v46];
    v47 = container_log_handle_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      multiuser_flags = 138412290;
      v118 = v46;
      _os_log_debug_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEBUG, "Using client-based userIdentity: %@", &multiuser_flags, 0xCu);
    }

    v28 = 0;
    v106 = 0;
    v29 = v20;
    staticConfig = v101;
    goto LABEL_9;
  }

  if ([userIdentity isNoSpecificPersona])
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"It is undefined behavior to look up a container with a persona other than personal or data separated. Please adopt a persona first. Assuming personal. given persona = (%@)", userIdentity];
    v106 = [[MCMError alloc] initWithErrorType:76 category:3 message:v48];
    if ([staticConfig requireDataBackedPersona])
    {
      v49 = container_log_handle_for_category();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [userIdentity shortDescription];
        v81 = v80 = cacheCopy;
        multiuser_flags = 138412290;
        v118 = v81;
        _os_log_error_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_ERROR, "Client has not adopted an unambiguous persona; client = %@", &multiuser_flags, 0xCu);

        cacheCopy = v80;
      }

LABEL_45:
      v27 = 0;
      v28 = 0;
      goto LABEL_8;
    }

    if ([staticConfig warnIfNotDataBackedPersona])
    {
      [warningsCopy addObject:v106];
    }
  }

  v51 = userIdentity;
  if (v20)
  {
    isNoSpecificPersona = [v20 isNoSpecificPersona];
    v51 = v20;
    if (isNoSpecificPersona)
    {
      v53 = container_log_handle_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        shortDescription = [v20 shortDescription];
        multiuser_flags = 138412290;
        v118 = shortDescription;
        _os_log_error_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_ERROR, "Client requested an ambiguous persona; target = %@", &multiuser_flags, 0xCu);
      }

      v106 = [[MCMError alloc] initWithErrorType:115 category:3];
      goto LABEL_45;
    }
  }

  v54 = v51;

  if (([userIdentity isNoSpecificPersona] & 1) == 0 && (objc_msgSend(userIdentity, "isEqual:", v54) & 1) == 0)
  {
    v64 = container_log_handle_for_category();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      shortDescription2 = [userIdentity shortDescription];
      [v54 shortDescription];
      v87 = v86 = staticConfig;
      multiuser_flags = 138412546;
      v118 = shortDescription2;
      v119 = 2112;
      v120 = v87;
      _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &multiuser_flags, 0x16u);

      staticConfig = v86;
    }

    v106 = [[MCMError alloc] initWithErrorType:76 category:3];
    v27 = 0;
    v28 = 0;
    v29 = v54;
    goto LABEL_9;
  }

  if (![v54 isNoSpecificPersona])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithObject:v54];
    v63 = container_log_handle_for_category();
    v29 = v54;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      shortDescription3 = [v54 shortDescription];
      multiuser_flags = 138412290;
      v118 = shortDescription3;
      _os_log_debug_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &multiuser_flags, 0xCu);
    }

    v28 = 0;
    v106 = 0;
    goto LABEL_9;
  }

  v98 = v54;
  if (![userIdentity isNoSpecificPersona])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    v65 = container_log_handle_for_category();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      userIdentity2 = [clientIdentityCopy userIdentity];
      [userIdentity2 shortDescription];
      v90 = v89 = staticConfig;
      multiuser_flags = 138412290;
      v118 = v90;
      _os_log_debug_impl(&dword_1DF2C3000, v65, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &multiuser_flags, 0xCu);

      staticConfig = v89;
    }

    v28 = 0;
    v106 = 0;
    goto LABEL_92;
  }

  v28 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  if (([configCopy singleOwner] & 1) == 0)
  {
    codeSignInfo = [clientIdentityCopy codeSignInfo];
    identifier = [codeSignInfo identifier];

    userIdentityForPersonalPersona = [cacheCopy userIdentityForPersonalPersona];
    v91 = cacheCopy;
    v96 = identifier;
    if (identifier)
    {
      v111 = 0;
      v69 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:identifier containerConfig:configCopy userIdentityCache:cacheCopy error:&v111];
      v70 = v111;
      v71 = v70;
      if (v69)
      {
        v110 = v70;
        v72 = [self _userIdentityDisambiguatedFromUserIdentities:v69 error:&v110];
        v106 = v110;

        if (v72)
        {

          userIdentityForPersonalPersona = v72;
          identifier = v96;
LABEL_76:
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v69 = identifiersCopy;
          v73 = [v69 countByEnumeratingWithState:&v129 objects:v128 count:16];
          if (!v73)
          {
            v29 = v98;
LABEL_101:

            v27 = 0;
            cacheCopy = v91;
            goto LABEL_9;
          }

          v74 = v73;
          v94 = v20;
          v102 = configCopy;
          v75 = *v130;
          do
          {
            for (i = 0; i != v74; ++i)
            {
              if (*v130 != v75)
              {
                objc_enumerationMutation(v69);
              }

              v77 = *(*(&v129 + 1) + 8 * i);
              v78 = [MEMORY[0x1E695DFD8] setWithObject:userIdentityForPersonalPersona];
              [v28 setObject:v78 forKeyedSubscript:v77];
            }

            v74 = [v69 countByEnumeratingWithState:&v129 objects:v128 count:16];
          }

          while (v74);
          v29 = v98;
          configCopy = v102;
          v20 = v94;
LABEL_100:
          identifier = v96;
          goto LABEL_101;
        }

        v84 = container_log_handle_for_category();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v118 = v96;
          v119 = 2112;
          v120 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v84, OS_LOG_TYPE_ERROR, "Requested owned container has multiple persona; client = %@, class = %@", &multiuser_flags, 0x16u);
        }

        userIdentityForPersonalPersona = 0;
        v71 = v106;
      }

      else
      {
        v84 = container_log_handle_for_category();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v118 = v96;
          v119 = 2112;
          v120 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v84, OS_LOG_TYPE_ERROR, "Could not resolve user identities; client = %@, class = %@", &multiuser_flags, 0x16u);
        }
      }

      v29 = v98;

      v106 = v71;
      goto LABEL_100;
    }

    v106 = 0;
    goto LABEL_76;
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = identifiersCopy;
  v95 = [obj countByEnumeratingWithState:&v124 objects:v123 count:16];
  if (!v95)
  {
    v106 = 0;
    goto LABEL_91;
  }

  v106 = 0;
  v93 = *v125;
  while (2)
  {
    for (j = 0; j != v95; ++j)
    {
      if (*v125 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(*(&v124 + 1) + 8 * j);
      v109 = v106;
      v57 = cacheCopy;
      v58 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:v56 containerConfig:configCopy userIdentityCache:cacheCopy error:&v109];
      v59 = v109;

      if (!v58)
      {
        v79 = container_log_handle_for_category();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v118 = v56;
          v119 = 2112;
          v120 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v79, OS_LOG_TYPE_ERROR, "Could not resolve user identities; identifier = %@, class = %@", &multiuser_flags, 0x16u);
        }

        v58 = 0;
        goto LABEL_90;
      }

      v60 = v20;
      v108 = v59;
      v61 = [self _userIdentityDisambiguatedFromUserIdentities:v58 error:&v108];
      v106 = v108;

      if (!v61)
      {
        v79 = container_log_handle_for_category();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412802;
          v118 = v56;
          v119 = 2112;
          v120 = configCopy;
          v121 = 2112;
          v122 = v58;
          _os_log_error_impl(&dword_1DF2C3000, v79, OS_LOG_TYPE_ERROR, "Requested container has multiple persona; client = %@, class = %@, personas = %@", &multiuser_flags, 0x20u);
        }

        v59 = v106;
        v20 = v60;
LABEL_90:

        v106 = v59;
        cacheCopy = v57;
        goto LABEL_91;
      }

      v62 = [MEMORY[0x1E695DFD8] setWithObject:v61];
      [v28 setObject:v62 forKeyedSubscript:v56];

      cacheCopy = v57;
      v20 = v60;
    }

    v95 = [obj countByEnumeratingWithState:&v124 objects:v123 count:16];
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_91:

  v27 = 0;
LABEL_92:
  v29 = v98;
LABEL_9:
  v30 = configCopy;
  if ([v28 count])
  {
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_20:
    v33 = v28;
    errorCopy2 = error;
  }

  else
  {

    v28 = 0;
    if (!v27)
    {
      goto LABEL_20;
    }

LABEL_11:
    v97 = v29;
    v100 = staticConfig;
    v31 = v20;
    v32 = cacheCopy;
    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v34 = identifiersCopy;
    v35 = [v34 countByEnumeratingWithState:&v113 objects:v112 count:16];
    errorCopy2 = error;
    if (v35)
    {
      v37 = v35;
      v38 = *v114;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v114 != v38)
          {
            objc_enumerationMutation(v34);
          }

          [v33 setObject:v27 forKeyedSubscript:*(*(&v113 + 1) + 8 * k)];
        }

        v37 = [v34 countByEnumeratingWithState:&v113 objects:v112 count:16];
      }

      while (v37);
    }

    cacheCopy = v32;
    v20 = v31;
    v29 = v97;
    staticConfig = v100;
  }

  if (errorCopy2 && !v33)
  {
    v40 = v106;
    *errorCopy2 = v106;
  }

  v41 = [v33 copy];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)legacyUserIdentityForIdentifier:(id)identifier targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = MEMORY[0x1E695DFD8];
  warningsCopy = warnings;
  cacheCopy = cache;
  clientIdentityCopy = clientIdentity;
  configCopy = config;
  identityCopy = identity;
  v22 = [v16 setWithObject:identifierCopy];
  v35[0] = 0;
  v23 = [self legacySetOfUserIdentitiesForIdentifiers:v22 targetUserIdentity:identityCopy containerConfig:configCopy clientIdentity:clientIdentityCopy userIdentityCache:cacheCopy warnings:warningsCopy error:v35];

  v24 = v35[0];
  if (v23)
  {
    v25 = [v23 objectForKeyedSubscript:identifierCopy];
    v26 = v25;
    if (v25)
    {
      if ([v25 count] == 1)
      {
        anyObject = [v26 anyObject];
        if (!error)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v28 = [MCMError alloc];
      v29 = 115;
    }

    else
    {
      v28 = [MCMError alloc];
      v29 = 76;
    }

    v30 = [(MCMError *)v28 initWithErrorType:v29 category:4];

    anyObject = 0;
    v24 = v30;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  anyObject = 0;
  v26 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!anyObject)
  {
    v31 = v24;
    *error = v24;
  }

LABEL_13:
  v32 = anyObject;

  v33 = *MEMORY[0x1E69E9840];
  return anyObject;
}

+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)identifier containerConfig:(id)config userIdentityCache:(id)cache error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configCopy = config;
  cacheCopy = cache;
  if ([configCopy personaAndUserSpecific])
  {
    v12 = identifierCopy;
    if ([configCopy associatedWithParent] && objc_msgSend(configCopy, "containsUserGeneratedData"))
    {
      childParentMapCache = [gCodeSigningMapping childParentMapCache];

      if (childParentMapCache)
      {
        childParentMapCache2 = [gCodeSigningMapping childParentMapCache];
        v15 = [childParentMapCache2 parentIdentifierForChildIdentifier:v12];

        v12 = v15;
      }

      else
      {
        v21 = container_log_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v26 = 138543362;
          v27 = v12;
          _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "Warning: not remapping plugin identifier '%{public}@ to parent identifier [3]", &v26, 0xCu);
        }
      }
    }

    v22 = [cacheCopy userIdentitiesForBundleIdentifier:v12];
    v19 = v22;
    if (v22 && [v22 count])
    {
      v20 = 0;
    }

    else
    {

      v20 = [[MCMError alloc] initWithErrorType:164 category:4];
      v19 = 0;
    }
  }

  else
  {
    if ([configCopy usesGlobalBundleUserIdentity])
    {
      v16 = MEMORY[0x1E695DFD8];
      globalBundleUserIdentity = [cacheCopy globalBundleUserIdentity];
    }

    else
    {
      if (![configCopy usesGlobalSystemUserIdentity])
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_20;
      }

      v16 = MEMORY[0x1E695DFD8];
      globalBundleUserIdentity = [cacheCopy globalSystemUserIdentity];
    }

    v18 = globalBundleUserIdentity;
    v19 = [v16 setWithObject:globalBundleUserIdentity];

    v20 = 0;
  }

LABEL_20:
  if (error && !v19)
  {
    v23 = v20;
    *error = v20;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
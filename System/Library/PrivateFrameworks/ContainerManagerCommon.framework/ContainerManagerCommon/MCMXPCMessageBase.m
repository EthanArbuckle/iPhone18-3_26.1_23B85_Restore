@interface MCMXPCMessageBase
+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)a3 error:(id *)a4;
+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 clientIdentity:(id)a6 userIdentityCache:(id)a7 warnings:(id)a8 error:(id *)a9;
+ (id)legacyUserIdentityForIdentifier:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 clientIdentity:(id)a6 userIdentityCache:(id)a7 warnings:(id)a8 error:(id *)a9;
+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)a3 containerConfig:(id)a4 userIdentityCache:(id)a5 error:(id *)a6;
+ (id)xpcMessageFromXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (MCMCommandContext)context;
- (MCMXPCMessageBase)initWithContext:(id)a3;
- (MCMXPCMessageBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSMutableArray)warnings;
- (OS_xpc_object)xpcObject;
- (container_client)proxy;
- (id)identifierFromXPCObject:(id)a3 elseClientIdentifier:(id)a4;
- (id)nsObjectFromXPCObject:(id)a3 key:(const char *)a4 error:(unint64_t *)a5;
- (id)nsStringValueFromXPCObject:(id)a3 key:(const char *)a4;
- (id)nsUUIDValueFromXPCObject:(id)a3 key:(const char *)a4;
- (id)userIdentityFromClientPersonaUniqueString:(id)a3 clientIdentity:(id)a4 error:(id *)a5;
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

- (MCMXPCMessageBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(MCMXPCMessageBase *)self initWithContext:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcObject, a3);
    uint64 = xpc_dictionary_get_uint64(v8, "Platform");
    v12 = xpc_dictionary_get_dictionary(v8, "ProxyForClient");
    v13 = v12;
    if (v12)
    {
      v12 = container_client_copy_decoded_from_xpc_object();
    }

    v10->_proxy = v12;
    v10->_platform = uint64;
    v10->_command = xpc_dictionary_get_uint64(v8, "Command");
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (MCMXPCMessageBase)initWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageBase;
  v6 = [(MCMXPCMessageBase *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    warnings = v7->_warnings;
    v7->_warnings = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)xpcMessageFromXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithXPCObject:v9 context:v8 error:a5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)userIdentityFromClientPersonaUniqueString:(id)a3 clientIdentity:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v33 = 0;
  v10 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v10, &v33) && (v33 & 0x80000000) != 0)
  {
    v11 = [v9 userIdentity];
    goto LABEL_12;
  }

  v12 = [(MCMXPCMessageBase *)self context];
  v13 = [v12 userIdentityCache];
  v14 = [objc_opt_class() personasAreSupported];

  v15 = [(MCMXPCMessageBase *)self context];
  v16 = [v15 userIdentityCache];
  v17 = v16;
  if (!v14)
  {
    v24 = [v9 posixUser];
    v11 = [v17 userIdentityForPersonalPersonaWithPOSIXUser:v24];

LABEL_12:
    v23 = 0;
    if (!a5)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v18 = [v16 userIdentityForCurrentUserWithPersonaUniqueString:v8];

  if (v18)
  {
    v19 = [v9 userIdentity];
    v20 = [v19 isNoSpecificPersona];
    v21 = [v19 isEqual:v18];
    if ((v20 & 1) != 0 || v21)
    {
      v11 = v18;
      v23 = 0;
    }

    else
    {
      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = [v9 codeSignInfo];
        v32 = [v31 identifier];
        v33 = 138413058;
        v34 = v32;
        v35 = 2112;
        v36 = v8;
        v37 = 1024;
        v38 = 0;
        v39 = 1024;
        v40 = 0;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Persona unique string is not valid for this client; client = [%@], personaUniqueString = [%@], nonspecific = %d, sameAsClient = %d", &v33, 0x22u);
      }

      v23 = [[MCMError alloc] initWithErrorType:76 category:3];
      v11 = 0;
    }
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = [v9 codeSignInfo];
      v30 = [v29 identifier];
      v33 = 138412546;
      v34 = v30;
      v35 = 2112;
      v36 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Cannot reconstitute a user identity from provided persona unique string; client = [%@], personaUniqueString = [%@]", &v33, 0x16u);
    }

    v23 = [[MCMError alloc] initWithErrorType:76 category:3];
    v11 = 0;
  }

  if (a5)
  {
LABEL_20:
    if (!v11)
    {
      v26 = v23;
      *a5 = v23;
    }
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)nsObjectFromXPCObject:(id)a3 key:(const char *)a4 error:(unint64_t *)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = xpc_dictionary_get_value(a3, a4);
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = v7;
    if (a5 && !v7)
    {
      *a5 = 38;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)nsUUIDValueFromXPCObject:(id)a3 key:(const char *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  uuid = xpc_dictionary_get_uuid(a3, a4);
  if (uuid)
  {
    uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
  }

  v5 = *MEMORY[0x1E69E9840];

  return uuid;
}

- (id)identifierFromXPCObject:(id)a3 elseClientIdentifier:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MCMXPCMessageBase *)self nsStringValueFromXPCObject:a3 key:"Identifier"];
  if (!v7)
  {
    v7 = v6;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)nsStringValueFromXPCObject:(id)a3 key:(const char *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a3, a4);
  if (string)
  {
    string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  v5 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
    v7 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v6 = 0;
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
          if (v6)
          {

            goto LABEL_18;
          }

          v6 = v13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (v6)
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
  v6 = 0;
  if (a4)
  {
LABEL_20:
    if (!v6)
    {
      v7 = v7;
      *a4 = v7;
    }
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 clientIdentity:(id)a6 userIdentityCache:(id)a7 warnings:(id)a8 error:(id *)a9
{
  v133 = *MEMORY[0x1E69E9840];
  v107 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v16 userIdentity];
  v20 = v14;
  v21 = containermanager_copy_global_configuration();
  v22 = [v21 staticConfig];

  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v50 = [v20 debugDescription];
    multiuser_flags = 138412290;
    v118 = v50;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &multiuser_flags, 0xCu);
  }

  v105 = v16;
  v103 = v19;
  v104 = v18;
  if ([v15 usesGlobalBundleUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    v25 = [v17 globalBundleUserIdentity];
LABEL_7:
    v26 = v25;
    v27 = [v24 setWithObject:v25];

    v28 = 0;
    v106 = 0;
LABEL_8:
    v29 = v20;
    goto LABEL_9;
  }

  if ([v15 usesGlobalSystemUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    v25 = [v17 globalSystemUserIdentity];
    goto LABEL_7;
  }

  multiuser_flags = 0;
  v44 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v44, &multiuser_flags) && (multiuser_flags & 0x80000000) != 0)
  {
    v101 = v22;
    v45 = [v19 posixUser];
    v46 = [v17 userIdentityForPersonalPersonaWithPOSIXUser:v45];
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
    v22 = v101;
    goto LABEL_9;
  }

  if ([v19 isNoSpecificPersona])
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"It is undefined behavior to look up a container with a persona other than personal or data separated. Please adopt a persona first. Assuming personal. given persona = (%@)", v19];
    v106 = [[MCMError alloc] initWithErrorType:76 category:3 message:v48];
    if ([v22 requireDataBackedPersona])
    {
      v49 = container_log_handle_for_category();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [v19 shortDescription];
        v81 = v80 = v17;
        multiuser_flags = 138412290;
        v118 = v81;
        _os_log_error_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_ERROR, "Client has not adopted an unambiguous persona; client = %@", &multiuser_flags, 0xCu);

        v17 = v80;
      }

LABEL_45:
      v27 = 0;
      v28 = 0;
      goto LABEL_8;
    }

    if ([v22 warnIfNotDataBackedPersona])
    {
      [v18 addObject:v106];
    }
  }

  v51 = v19;
  if (v20)
  {
    v52 = [v20 isNoSpecificPersona];
    v51 = v20;
    if (v52)
    {
      v53 = container_log_handle_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v82 = [v20 shortDescription];
        multiuser_flags = 138412290;
        v118 = v82;
        _os_log_error_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_ERROR, "Client requested an ambiguous persona; target = %@", &multiuser_flags, 0xCu);
      }

      v106 = [[MCMError alloc] initWithErrorType:115 category:3];
      goto LABEL_45;
    }
  }

  v54 = v51;

  if (([v19 isNoSpecificPersona] & 1) == 0 && (objc_msgSend(v19, "isEqual:", v54) & 1) == 0)
  {
    v64 = container_log_handle_for_category();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v85 = [v19 shortDescription];
      [v54 shortDescription];
      v87 = v86 = v22;
      multiuser_flags = 138412546;
      v118 = v85;
      v119 = 2112;
      v120 = v87;
      _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &multiuser_flags, 0x16u);

      v22 = v86;
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
      v83 = [v54 shortDescription];
      multiuser_flags = 138412290;
      v118 = v83;
      _os_log_debug_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &multiuser_flags, 0xCu);
    }

    v28 = 0;
    v106 = 0;
    goto LABEL_9;
  }

  v98 = v54;
  if (![v19 isNoSpecificPersona])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithObject:v19];
    v65 = container_log_handle_for_category();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v88 = [v16 userIdentity];
      [v88 shortDescription];
      v90 = v89 = v22;
      multiuser_flags = 138412290;
      v118 = v90;
      _os_log_debug_impl(&dword_1DF2C3000, v65, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &multiuser_flags, 0xCu);

      v22 = v89;
    }

    v28 = 0;
    v106 = 0;
    goto LABEL_92;
  }

  v28 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  if (([v15 singleOwner] & 1) == 0)
  {
    v66 = [v16 codeSignInfo];
    v67 = [v66 identifier];

    v68 = [v17 userIdentityForPersonalPersona];
    v91 = v17;
    v96 = v67;
    if (v67)
    {
      v111 = 0;
      v69 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:v67 containerConfig:v15 userIdentityCache:v17 error:&v111];
      v70 = v111;
      v71 = v70;
      if (v69)
      {
        v110 = v70;
        v72 = [a1 _userIdentityDisambiguatedFromUserIdentities:v69 error:&v110];
        v106 = v110;

        if (v72)
        {

          v68 = v72;
          v67 = v96;
LABEL_76:
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v69 = v107;
          v73 = [v69 countByEnumeratingWithState:&v129 objects:v128 count:16];
          if (!v73)
          {
            v29 = v98;
LABEL_101:

            v27 = 0;
            v17 = v91;
            goto LABEL_9;
          }

          v74 = v73;
          v94 = v20;
          v102 = v15;
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
              v78 = [MEMORY[0x1E695DFD8] setWithObject:v68];
              [v28 setObject:v78 forKeyedSubscript:v77];
            }

            v74 = [v69 countByEnumeratingWithState:&v129 objects:v128 count:16];
          }

          while (v74);
          v29 = v98;
          v15 = v102;
          v20 = v94;
LABEL_100:
          v67 = v96;
          goto LABEL_101;
        }

        v84 = container_log_handle_for_category();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v118 = v96;
          v119 = 2112;
          v120 = v15;
          _os_log_error_impl(&dword_1DF2C3000, v84, OS_LOG_TYPE_ERROR, "Requested owned container has multiple persona; client = %@, class = %@", &multiuser_flags, 0x16u);
        }

        v68 = 0;
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
          v120 = v15;
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
  obj = v107;
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
      v57 = v17;
      v58 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:v56 containerConfig:v15 userIdentityCache:v17 error:&v109];
      v59 = v109;

      if (!v58)
      {
        v79 = container_log_handle_for_category();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v118 = v56;
          v119 = 2112;
          v120 = v15;
          _os_log_error_impl(&dword_1DF2C3000, v79, OS_LOG_TYPE_ERROR, "Could not resolve user identities; identifier = %@, class = %@", &multiuser_flags, 0x16u);
        }

        v58 = 0;
        goto LABEL_90;
      }

      v60 = v20;
      v108 = v59;
      v61 = [a1 _userIdentityDisambiguatedFromUserIdentities:v58 error:&v108];
      v106 = v108;

      if (!v61)
      {
        v79 = container_log_handle_for_category();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412802;
          v118 = v56;
          v119 = 2112;
          v120 = v15;
          v121 = 2112;
          v122 = v58;
          _os_log_error_impl(&dword_1DF2C3000, v79, OS_LOG_TYPE_ERROR, "Requested container has multiple persona; client = %@, class = %@, personas = %@", &multiuser_flags, 0x20u);
        }

        v59 = v106;
        v20 = v60;
LABEL_90:

        v106 = v59;
        v17 = v57;
        goto LABEL_91;
      }

      v62 = [MEMORY[0x1E695DFD8] setWithObject:v61];
      [v28 setObject:v62 forKeyedSubscript:v56];

      v17 = v57;
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
  v30 = v15;
  if ([v28 count])
  {
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_20:
    v33 = v28;
    v36 = a9;
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
    v100 = v22;
    v31 = v20;
    v32 = v17;
    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v34 = v107;
    v35 = [v34 countByEnumeratingWithState:&v113 objects:v112 count:16];
    v36 = a9;
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

    v17 = v32;
    v20 = v31;
    v29 = v97;
    v22 = v100;
  }

  if (v36 && !v33)
  {
    v40 = v106;
    *v36 = v106;
  }

  v41 = [v33 copy];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)legacyUserIdentityForIdentifier:(id)a3 targetUserIdentity:(id)a4 containerConfig:(id)a5 clientIdentity:(id)a6 userIdentityCache:(id)a7 warnings:(id)a8 error:(id *)a9
{
  v35[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = MEMORY[0x1E695DFD8];
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [v16 setWithObject:v15];
  v35[0] = 0;
  v23 = [a1 legacySetOfUserIdentitiesForIdentifiers:v22 targetUserIdentity:v21 containerConfig:v20 clientIdentity:v19 userIdentityCache:v18 warnings:v17 error:v35];

  v24 = v35[0];
  if (v23)
  {
    v25 = [v23 objectForKeyedSubscript:v15];
    v26 = v25;
    if (v25)
    {
      if ([v25 count] == 1)
      {
        v27 = [v26 anyObject];
        if (!a9)
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

    v27 = 0;
    v24 = v30;
    if (!a9)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v27 = 0;
  v26 = 0;
  if (!a9)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v27)
  {
    v31 = v24;
    *a9 = v24;
  }

LABEL_13:
  v32 = v27;

  v33 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)a3 containerConfig:(id)a4 userIdentityCache:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 personaAndUserSpecific])
  {
    v12 = v9;
    if ([v10 associatedWithParent] && objc_msgSend(v10, "containsUserGeneratedData"))
    {
      v13 = [gCodeSigningMapping childParentMapCache];

      if (v13)
      {
        v14 = [gCodeSigningMapping childParentMapCache];
        v15 = [v14 parentIdentifierForChildIdentifier:v12];

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

    v22 = [v11 userIdentitiesForBundleIdentifier:v12];
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
    if ([v10 usesGlobalBundleUserIdentity])
    {
      v16 = MEMORY[0x1E695DFD8];
      v17 = [v11 globalBundleUserIdentity];
    }

    else
    {
      if (![v10 usesGlobalSystemUserIdentity])
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_20;
      }

      v16 = MEMORY[0x1E695DFD8];
      v17 = [v11 globalSystemUserIdentity];
    }

    v18 = v17;
    v19 = [v16 setWithObject:v17];

    v20 = 0;
  }

LABEL_20:
  if (a6 && !v19)
  {
    v23 = v20;
    *a6 = v20;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
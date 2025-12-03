@interface MCMXPCMessageQuery
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
- (BOOL)legacyExtensionPolicy;
- (BOOL)legacyPersonaPolicy;
- (BOOL)requireSecureByPlatformPolicy;
- (BOOL)restrictivePersonaPolicy;
- (BOOL)transient;
- (MCMUserIdentity)userIdentity;
- (MCMXPCMessageQuery)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSSet)groupIdentifiers;
- (NSSet)identifiers;
- (NSString)partDomain;
- (NSUUID)internalUUID;
- (unint64_t)explicitFlags;
- (unint64_t)part;
- (unint64_t)privateFlags;
- (unint64_t)sandboxExtensionType;
- (unsigned)disposition;
- (unsigned)expectedPersonaKernelID;
- (unsigned)uid;
@end

@implementation MCMXPCMessageQuery

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageQuery;
  disposition = [(MCMXPCMessageWithContainerClassBase *)&v7 disposition];
  if (disposition == 1)
  {
    containerConfig = [(MCMXPCMessageWithContainerClassBase *)self containerConfig];
    disposition = [containerConfig disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (BOOL)transient
{
  result = self->_transient;
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

- (NSSet)identifiers
{
  result = self->_identifiers;
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

- (NSUUID)internalUUID
{
  result = self->_internalUUID;
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

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
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

- (BOOL)includePathInResult
{
  result = self->_includePathInResult;
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

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
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

- (BOOL)fuzzyMatchInternalUUID
{
  result = self->_fuzzyMatchInternalUUID;
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

- (BOOL)legacyPersonaPolicy
{
  result = self->_legacyPersonaPolicy;
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

- (unint64_t)sandboxExtensionType
{
  result = self->_sandboxExtensionType;
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

- (BOOL)legacyExtensionPolicy
{
  result = self->_legacyExtensionPolicy;
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

- (BOOL)includeCreator
{
  result = self->_includeCreator;
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

- (MCMXPCMessageQuery)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v134 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v115.receiver = self;
  v115.super_class = MCMXPCMessageQuery;
  v10 = [(MCMXPCMessageWithContainerClassBase *)&v115 initWithXPCObject:objectCopy context:contextCopy error:error];

  if (v10)
  {
    errorCopy = error;
    type = 1;
    v10->_privateFlags = xpc_dictionary_get_uint64(objectCopy, "PrivateFlags");
    v10->_explicitFlags = xpc_dictionary_get_uint64(objectCopy, "Explicit");
    identifiers = v10->_identifiers;
    v10->_identifiers = 0;

    groupIdentifiers = v10->_groupIdentifiers;
    v10->_groupIdentifiers = 0;

    v10->_createIfNecessary = 0;
    v10->_includeInfoInResult = 0;
    v10->_includePathInResult = 0;
    v10->_sandboxExtensionType = 0;
    clientIdentity = [contextCopy clientIdentity];
    userIdentity = [clientIdentity userIdentity];
    posixUser = [userIdentity posixUser];
    v10->_uid = [posixUser UID];

    userIdentity = v10->_userIdentity;
    v10->_userIdentity = 0;

    v10->_transient = 0;
    v10->_includeUnowned = 0;
    v10->_fuzzyMatchTransient = 0;
    v10->_fuzzyMatchInternalUUID = 0;
    v10->_expectSingleResult = 0;
    v10->_legacyPersonaPolicy = 0;
    v10->_legacyExtensionPolicy = 0;
    v10->_extensionsUseProxiedClient = 0;
    v10->_extensionsPolicyUsesProxiedClient = 0;
    v10->_requireSecureByPlatformPolicy = 0;
    v10->_part = 0;
    partDomain = v10->_partDomain;
    v10->_partDomain = 0;

    v112 = objectCopy;
    if ((v10->_privateFlags & 8) != 0)
    {
      v25 = xpc_dictionary_get_value(objectCopy, "Part");
      staticConfig = v25;
      if (!v25)
      {
        goto LABEL_50;
      }

      if (MEMORY[0x1E12D4840](v25) != MEMORY[0x1E69E9F18])
      {
        goto LABEL_50;
      }

      value = xpc_uint64_get_value(staticConfig);
      if (value > 6)
      {
        goto LABEL_50;
      }

      v10->_part = value;

      objectCopy = v112;
    }

    string = xpc_dictionary_get_string(objectCopy, "SystemDataDomain");
    if (string)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v20 = v10->_partDomain;
      v10->_partDomain = v19;
    }

    privateFlags = v10->_privateFlags;
    if (privateFlags)
    {
      v10->_legacyPersonaPolicy = 1;
      if ((privateFlags & 2) == 0)
      {
LABEL_7:
        if ((privateFlags & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((privateFlags & 2) == 0)
    {
      goto LABEL_7;
    }

    v10->_legacyExtensionPolicy = 1;
    if ((privateFlags & 4) == 0)
    {
LABEL_9:
      explicitFlags = v10->_explicitFlags;
      if (explicitFlags)
      {
        staticConfig = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"IdentifiersArray" error:&type];
        if (type != 1)
        {
          goto LABEL_52;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_50;
        }

        v95 = contextCopy;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        staticConfig = staticConfig;
        v28 = [staticConfig countByEnumeratingWithState:&v130 objects:v129 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v131;
LABEL_23:
          v31 = 0;
          while (1)
          {
            if (*v131 != v30)
            {
              objc_enumerationMutation(staticConfig);
            }

            v32 = *(*(&v130 + 1) + 8 * v31);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_53;
            }

            if (v29 == ++v31)
            {
              v29 = [staticConfig countByEnumeratingWithState:&v130 objects:v129 count:16];
              if (v29)
              {
                goto LABEL_23;
              }

              break;
            }
          }
        }

        v33 = [MEMORY[0x1E695DFD8] setWithArray:staticConfig];
        v34 = v10->_identifiers;
        v10->_identifiers = v33;

        contextCopy = v95;
        explicitFlags = v10->_explicitFlags;
        objectCopy = v112;
        if ((explicitFlags & 2) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((explicitFlags & 2) == 0)
      {
LABEL_11:
        v23 = 0;
        v24 = 72;
LABEL_113:
        type = v24;
        goto LABEL_142;
      }

      if ((explicitFlags & 4) == 0)
      {
        if ((explicitFlags & 8) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      staticConfig = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"GroupIdentifiers" error:&type];
      if (type == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = contextCopy;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          staticConfig = staticConfig;
          v35 = [staticConfig countByEnumeratingWithState:&v125 objects:v124 count:16];
          if (!v35)
          {
LABEL_48:

            v40 = [MEMORY[0x1E695DFD8] setWithArray:staticConfig];
            v41 = v10->_groupIdentifiers;
            v10->_groupIdentifiers = v40;

            contextCopy = v95;
            explicitFlags = v10->_explicitFlags;
            objectCopy = v112;
            if ((explicitFlags & 8) == 0)
            {
LABEL_33:
              if ((explicitFlags & 0x10) != 0)
              {
                clientIdentity2 = [contextCopy clientIdentity];
                userIdentity2 = [clientIdentity2 userIdentity];
                v45 = v10->_userIdentity;
                v10->_userIdentity = userIdentity2;

                v46 = xpc_dictionary_get_string(objectCopy, "PersonaUniqueString");
                if (v46)
                {
                  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v46];
                }

                else
                {
                  v47 = 0;
                }

                v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9978]];
                v49 = [v47 isEqualToString:v48];

                staticConfig = 0;
                v23 = 0;
                if ((v49 & 1) == 0 && v47)
                {
                  containerConfig = [(MCMXPCMessageWithContainerClassBase *)v10 containerConfig];
                  v51 = +[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", [containerConfig containerClass]);

                  if (v51)
                  {
                    clientIdentity3 = [contextCopy clientIdentity];
                    v113 = 0;
                    v23 = [(MCMXPCMessageBase *)v10 userIdentityFromClientPersonaUniqueString:v47 clientIdentity:clientIdentity3 error:&v113];
                    staticConfig = v113;

                    objc_storeStrong(&v10->_userIdentity, v23);
                  }

                  else
                  {
                    staticConfig = 0;
                    v23 = 0;
                  }
                }

                if (!v10->_userIdentity)
                {
                  type = [staticConfig type];
                  goto LABEL_69;
                }

                v104 = v49;

                explicitFlags = v10->_explicitFlags;
                objectCopy = v112;
                if ((explicitFlags & 0x20) == 0)
                {
LABEL_35:
                  if ((explicitFlags & 0x40) == 0)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_65;
                }
              }

              else
              {
                v23 = 0;
                v104 = 1;
                if ((explicitFlags & 0x20) == 0)
                {
                  goto LABEL_35;
                }
              }

              v10->_transient = xpc_dictionary_get_BOOL(objectCopy, "Transient");
              explicitFlags = v10->_explicitFlags;
              if ((explicitFlags & 0x40) == 0)
              {
LABEL_36:
                if ((explicitFlags & 0x80) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_66;
              }

LABEL_65:
              v10->_includeUnowned = xpc_dictionary_get_BOOL(objectCopy, "IncludeUnowned");
              if ((v10->_explicitFlags & 0x80) == 0)
              {
                goto LABEL_71;
              }

LABEL_66:
              uuid = xpc_dictionary_get_uuid(objectCopy, "UUID");
              if (uuid)
              {
                v54 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
                internalUUID = v10->_internalUUID;
                v10->_internalUUID = v54;
              }

              if (!v10->_internalUUID)
              {
                v62 = container_log_handle_for_category();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Invalid UUID parameter", buf, 2u);
                }

                goto LABEL_112;
              }

LABEL_71:
              uint64 = xpc_dictionary_get_uint64(objectCopy, "Flags");
              if (uint64)
              {
                v10->_createIfNecessary = 1;
              }

              if ((uint64 & 2) != 0)
              {
                v10->_expectSingleResult = 1;
                if ((uint64 & 0x10000) == 0)
                {
LABEL_75:
                  if ((uint64 & 0x20000) == 0)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_83;
                }
              }

              else if ((uint64 & 0x10000) == 0)
              {
                goto LABEL_75;
              }

              v10->_fuzzyMatchTransient = 1;
              v10->_fuzzyMatchInternalUUID = 1;
              if ((uint64 & 0x20000) == 0)
              {
LABEL_76:
                if ((uint64 & 0x200000000) == 0)
                {
                  goto LABEL_77;
                }

                goto LABEL_84;
              }

LABEL_83:
              v10->_fuzzyMatchInternalUUID = 1;
              if ((uint64 & 0x200000000) == 0)
              {
LABEL_77:
                if ((uint64 & 0x100000000) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_85;
              }

LABEL_84:
              v10->_includeInfoInResult = 1;
              if ((uint64 & 0x100000000) == 0)
              {
LABEL_78:
                if ((uint64 & 0x800000000) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_86;
              }

LABEL_85:
              v10->_includePathInResult = 1;
              if ((uint64 & 0x800000000) == 0)
              {
LABEL_79:
                if ((uint64 & 0x4000000000) == 0)
                {
                  goto LABEL_89;
                }

LABEL_87:
                if (v10->_sandboxExtensionType)
                {
                  goto LABEL_112;
                }

                v10->_sandboxExtensionType = 2;
LABEL_89:
                if ((uint64 & 0x8000000000) == 0)
                {
                  goto LABEL_92;
                }

                if (!v10->_sandboxExtensionType)
                {
                  v10->_sandboxExtensionType = 3;
LABEL_92:
                  if ((uint64 & 0x1000000000) != 0)
                  {
                    v10->_includeUserManagedAssetsRelPath = 1;
                    if ((uint64 & 0x2000000000) == 0)
                    {
LABEL_94:
                      if ((uint64 & 0x1000000000000) == 0)
                      {
                        goto LABEL_95;
                      }

                      goto LABEL_107;
                    }
                  }

                  else if ((uint64 & 0x2000000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  v10->_includeCreator = 1;
                  if ((uint64 & 0x1000000000000) == 0)
                  {
LABEL_95:
                    if ((uint64 & 0x2000000000000) == 0)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_96;
                  }

LABEL_107:
                  v10->_extensionsUseProxiedClient = 1;
                  if ((uint64 & 0x2000000000000) == 0)
                  {
LABEL_97:
                    if ((uint64 & 0x8000000000000) != 0)
                    {
                      v10->_requireSecureByPlatformPolicy = 1;
                    }

                    context = [(MCMXPCMessageBase *)v10 context];
                    userIdentityCache = [context userIdentityCache];
                    personasAreSupported = [objc_opt_class() personasAreSupported];

                    v10->_expectedPersonaKernelID = -1;
                    if (!personasAreSupported)
                    {
LABEL_140:
                      staticConfig = container_log_handle_for_category();
                      if (!os_log_type_enabled(staticConfig, OS_LOG_TYPE_DEBUG))
                      {
LABEL_141:

                        v24 = type;
                        objectCopy = v112;
                        if (type == 1)
                        {
LABEL_145:

                          goto LABEL_146;
                        }

LABEL_142:
                        if (errorCopy)
                        {
                          *errorCopy = v24;
                        }

                        v10 = 0;
                        goto LABEL_145;
                      }

                      v47 = [(MCMUserIdentity *)v10->_userIdentity debugDescription];
                      *buf = 138412290;
                      v117 = v47;
                      _os_log_debug_impl(&dword_1DF2C3000, staticConfig, OS_LOG_TYPE_DEBUG, "Query's explicit userIdentity: %@", buf, 0xCu);

LABEL_69:
                      goto LABEL_141;
                    }

                    v60 = xpc_dictionary_get_value(objectCopy, "PersonaKernelID");
                    staticConfig = v60;
                    if (!v60 || MEMORY[0x1E12D4840](v60) != MEMORY[0x1E69E9F18])
                    {
                      v61 = container_log_handle_for_category();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        clientIdentity4 = [contextCopy clientIdentity];
                        codeSignInfo = [clientIdentity4 codeSignInfo];
                        identifier = [codeSignInfo identifier];
                        clientIdentity5 = [contextCopy clientIdentity];
                        posixPID = [clientIdentity5 posixPID];
                        *buf = 138412546;
                        v117 = identifier;
                        v118 = 1024;
                        v119 = posixPID;
                        _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Kernel persona ID is invalid; client[%@(%d)]", buf, 0x12u);
                      }

                      v42 = 38;
                      goto LABEL_51;
                    }

                    v10->_expectedPersonaKernelID = xpc_uint64_get_value(staticConfig);
                    v96 = contextCopy;
                    kernelPersonaID = [contextCopy kernelPersonaID];
                    expectedPersonaKernelID = v10->_expectedPersonaKernelID;

                    v64 = v10->_userIdentity;
                    objectCopy = v112;
                    if (!v64 || [(MCMUserIdentity *)v64 isNoSpecificPersona])
                    {
                      context2 = [(MCMXPCMessageBase *)v10 context];
                      clientIdentity6 = [context2 clientIdentity];
                      userIdentity3 = [clientIdentity6 userIdentity];
                      if (![userIdentity3 isNoSpecificPersona])
                      {
LABEL_126:

                        goto LABEL_127;
                      }

                      v105 = expectedPersonaKernelID;
                      containerConfig2 = [(MCMXPCMessageWithContainerClassBase *)v10 containerConfig];
                      if (![containerConfig2 personaAndUserSpecific])
                      {
LABEL_125:

                        expectedPersonaKernelID = v105;
                        goto LABEL_126;
                      }

                      if (v10->_legacyPersonaPolicy)
                      {

                        expectedPersonaKernelID = v105;
LABEL_121:
                        context3 = [(MCMXPCMessageBase *)v10 context];
                        context2 = [context3 clientIdentity];

                        anyObject = [(NSSet *)v10->_identifiers anyObject];
                        v77 = anyObject;
                        if (anyObject)
                        {
                          clientIdentity6 = anyObject;
                        }

                        else
                        {
                          clientIdentity6 = [(NSSet *)v10->_groupIdentifiers anyObject];
                        }

                        v103 = kernelPersonaID != expectedPersonaKernelID;

                        kernelPersonaType = [v23 kernelPersonaType];
                        userIdentity3 = +[MCMAnalytics sharedInstance];
                        containerConfig2 = [context2 codeSignInfo];
                        identifier2 = [containerConfig2 identifier];
                        proximateClient = [context2 proximateClient];
                        codeSignInfo2 = [proximateClient codeSignInfo];
                        identifier3 = [codeSignInfo2 identifier];
                        legacyPersonaPolicy = v10->_legacyPersonaPolicy;
                        containerConfig3 = [(MCMXPCMessageWithContainerClassBase *)v10 containerConfig];
                        [userIdentity3 recordAmbiguousPersonaRequestWithIdentifier:clientIdentity6 proxiedIdentifier:identifier2 proximateIdentifier:identifier3 explicitPersonaType:kernelPersonaType legacyPersonaPolicy:legacyPersonaPolicy propagationFailed:v103 containerClass:{objc_msgSend(containerConfig3, "containerClass")}];

                        goto LABEL_125;
                      }

                      restrictivePersonaPolicy = v10->_restrictivePersonaPolicy;

                      expectedPersonaKernelID = v105;
                      if (restrictivePersonaPolicy)
                      {
                        goto LABEL_121;
                      }
                    }

LABEL_127:
                    if (v10->_restrictivePersonaPolicy && [(MCMUserIdentity *)v10->_userIdentity isNoSpecificPersona])
                    {
                      v79 = container_log_handle_for_category();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        clientIdentity7 = [v96 clientIdentity];
                        codeSignInfo3 = [clientIdentity7 codeSignInfo];
                        identifier4 = [codeSignInfo3 identifier];
                        clientIdentity8 = [v96 clientIdentity];
                        posixPID2 = [clientIdentity8 posixPID];
                        v88 = v10->_expectedPersonaKernelID;
                        kernelPersonaID2 = [v96 kernelPersonaID];
                        *buf = 138413058;
                        v117 = identifier4;
                        v118 = 1024;
                        v119 = posixPID2;
                        v120 = 1024;
                        v121 = v88;
                        v122 = 1024;
                        v123 = kernelPersonaID2;
                        _os_log_error_impl(&dword_1DF2C3000, v79, OS_LOG_TYPE_ERROR, "Persona is ambiguous; client[%@(%d)] = %u, server = %u", buf, 0x1Eu);
                      }

                      v24 = 115;
                      type = 115;
                      contextCopy = v96;
                      goto LABEL_142;
                    }

                    contextCopy = v96;
                    if (v104)
                    {
                      v80 = containermanager_copy_global_configuration();
                      staticConfig = [v80 staticConfig];

                      if (kernelPersonaID != expectedPersonaKernelID)
                      {
                        v81 = container_log_handle_for_category();
                        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                        {
                          clientIdentity9 = [v96 clientIdentity];
                          codeSignInfo4 = [clientIdentity9 codeSignInfo];
                          identifier5 = [codeSignInfo4 identifier];
                          clientIdentity10 = [v96 clientIdentity];
                          posixPID3 = [clientIdentity10 posixPID];
                          v93 = v10->_expectedPersonaKernelID;
                          kernelPersonaID3 = [v96 kernelPersonaID];
                          *buf = 138413058;
                          v117 = identifier5;
                          v118 = 1024;
                          v119 = posixPID3;
                          v120 = 1024;
                          v121 = v93;
                          contextCopy = v96;
                          v122 = 1024;
                          v123 = kernelPersonaID3;
                          _os_log_error_impl(&dword_1DF2C3000, v81, OS_LOG_TYPE_ERROR, "Persona failed to propgate; client[%@(%d)] = %u, server = %u", buf, 0x1Eu);
                        }

                        if (v10->_restrictivePersonaPolicy || ([staticConfig errorOnPersonaPropagationFailure]& 1) != 0)
                        {
                          v42 = 151;
                          goto LABEL_51;
                        }
                      }
                    }

                    goto LABEL_140;
                  }

LABEL_96:
                  v10->_extensionsPolicyUsesProxiedClient = 1;
                  goto LABEL_97;
                }

LABEL_112:
                v24 = 38;
                goto LABEL_113;
              }

LABEL_86:
              v10->_sandboxExtensionType = 1;
              if ((uint64 & 0x4000000000) == 0)
              {
                goto LABEL_89;
              }

              goto LABEL_87;
            }

LABEL_32:
            v10->_uid = xpc_dictionary_get_uint64(objectCopy, "UID");
            explicitFlags = v10->_explicitFlags;
            goto LABEL_33;
          }

          v36 = v35;
          v37 = *v126;
LABEL_42:
          v38 = 0;
          while (1)
          {
            if (*v126 != v37)
            {
              objc_enumerationMutation(staticConfig);
            }

            v39 = *(*(&v125 + 1) + 8 * v38);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v36 == ++v38)
            {
              v36 = [staticConfig countByEnumeratingWithState:&v125 objects:v124 count:16];
              if (v36)
              {
                goto LABEL_42;
              }

              goto LABEL_48;
            }
          }

LABEL_53:
          type = 110;

          v23 = 0;
          contextCopy = v95;
          goto LABEL_141;
        }

LABEL_50:
        v23 = 0;
        v42 = 110;
LABEL_51:
        type = v42;
        goto LABEL_141;
      }

LABEL_52:
      v23 = 0;
      goto LABEL_141;
    }

LABEL_8:
    v10->_restrictivePersonaPolicy = 1;
    goto LABEL_9;
  }

LABEL_146:
  v82 = v10;

  v83 = *MEMORY[0x1E69E9840];
  return v82;
}

@end
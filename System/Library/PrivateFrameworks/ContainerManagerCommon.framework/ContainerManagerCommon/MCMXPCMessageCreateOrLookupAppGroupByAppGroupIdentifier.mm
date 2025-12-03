@interface MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier
- (MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSString)appGroupIdentifier;
- (unsigned)expectedPersonaKernelID;
@end

@implementation MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier

- (NSString)appGroupIdentifier
{
  result = self->_appGroupIdentifier;
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

- (MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v46 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier;
  v10 = [(MCMXPCMessageBase *)&v37 initWithXPCObject:objectCopy context:contextCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  v12 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:objectCopy key:"Identifier"];
  if (v12)
  {
    objc_storeStrong(&v11->_appGroupIdentifier, v12);
    v11->_expectedPersonaKernelID = -1;
    context = [(MCMXPCMessageBase *)v11 context];
    userIdentityCache = [context userIdentityCache];
    personasAreSupported = [objc_opt_class() personasAreSupported];

    if (personasAreSupported)
    {
      v16 = containermanager_copy_global_configuration();
      staticConfig = [v16 staticConfig];

      v18 = xpc_dictionary_get_value(objectCopy, "PersonaKernelID");
      v19 = v18;
      if (v18 && MEMORY[0x1E12D4840](v18) == MEMORY[0x1E69E9F18])
      {
        v11->_expectedPersonaKernelID = xpc_uint64_get_value(v19);
        if ([contextCopy kernelPersonaID] != v11->_expectedPersonaKernelID)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            clientIdentity = [contextCopy clientIdentity];
            codeSignInfo = [clientIdentity codeSignInfo];
            identifier = [codeSignInfo identifier];
            clientIdentity2 = [contextCopy clientIdentity];
            posixPID = [clientIdentity2 posixPID];
            expectedPersonaKernelID = v11->_expectedPersonaKernelID;
            kernelPersonaID = [contextCopy kernelPersonaID];
            *buf = 138413058;
            v39 = identifier;
            v40 = 1024;
            v41 = posixPID;
            v42 = 1024;
            v43 = expectedPersonaKernelID;
            v44 = 1024;
            v45 = kernelPersonaID;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Persona failed to propgate; client[%@(%d)] = %u, server = %u", buf, 0x1Eu);
          }

          if ([staticConfig errorOnPersonaPropagationFailure])
          {
            v21 = 151;
            goto LABEL_10;
          }
        }
      }

      else
      {
        v20 = container_log_handle_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          clientIdentity3 = [contextCopy clientIdentity];
          codeSignInfo2 = [clientIdentity3 codeSignInfo];
          identifier2 = [codeSignInfo2 identifier];
          clientIdentity4 = [contextCopy clientIdentity];
          posixPID2 = [clientIdentity4 posixPID];
          *buf = 138412546;
          v39 = identifier2;
          v40 = 1024;
          v41 = posixPID2;
          _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Kernel persona ID is invalid; client[%@(%d)]", buf, 0x12u);
        }

        if ([staticConfig errorOnPersonaPropagationFailure])
        {
          v21 = 38;
LABEL_10:

          goto LABEL_12;
        }
      }
    }

    goto LABEL_21;
  }

  v21 = 38;
LABEL_12:

  v11 = 0;
  if (error)
  {
    *error = v21;
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
@interface MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier
- (MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v37.receiver = self;
  v37.super_class = MCMXPCMessageCreateOrLookupAppGroupByAppGroupIdentifier;
  v10 = [(MCMXPCMessageBase *)&v37 initWithXPCObject:v8 context:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  v12 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:v8 key:"Identifier"];
  if (v12)
  {
    objc_storeStrong(&v11->_appGroupIdentifier, v12);
    v11->_expectedPersonaKernelID = -1;
    v13 = [(MCMXPCMessageBase *)v11 context];
    v14 = [v13 userIdentityCache];
    v15 = [objc_opt_class() personasAreSupported];

    if (v15)
    {
      v16 = containermanager_copy_global_configuration();
      v17 = [v16 staticConfig];

      v18 = xpc_dictionary_get_value(v8, "PersonaKernelID");
      v19 = v18;
      if (v18 && MEMORY[0x1E12D4840](v18) == MEMORY[0x1E69E9F18])
      {
        v11->_expectedPersonaKernelID = xpc_uint64_get_value(v19);
        if ([v9 kernelPersonaID] != v11->_expectedPersonaKernelID)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v36 = [v9 clientIdentity];
            v34 = [v36 codeSignInfo];
            v28 = [v34 identifier];
            v32 = [v9 clientIdentity];
            v31 = [v32 posixPID];
            expectedPersonaKernelID = v11->_expectedPersonaKernelID;
            v30 = [v9 kernelPersonaID];
            *buf = 138413058;
            v39 = v28;
            v40 = 1024;
            v41 = v31;
            v42 = 1024;
            v43 = expectedPersonaKernelID;
            v44 = 1024;
            v45 = v30;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Persona failed to propgate; client[%@(%d)] = %u, server = %u", buf, 0x1Eu);
          }

          if ([v17 errorOnPersonaPropagationFailure])
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
          v35 = [v9 clientIdentity];
          v33 = [v35 codeSignInfo];
          v25 = [v33 identifier];
          v26 = [v9 clientIdentity];
          v27 = [v26 posixPID];
          *buf = 138412546;
          v39 = v25;
          v40 = 1024;
          v41 = v27;
          _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Kernel persona ID is invalid; client[%@(%d)]", buf, 0x12u);
        }

        if ([v17 errorOnPersonaPropagationFailure])
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
  if (a5)
  {
    *a5 = v21;
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
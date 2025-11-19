@interface MCMXPCMessageReferencesQuery
- (BOOL)createDuringReconciliation;
- (BOOL)deleteDuringReconciliation;
- (BOOL)yesReallyApplyToAll;
- (MCMUserIdentity)userIdentity;
- (MCMXPCMessageReferencesQuery)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unint64_t)explicitFlags;
- (unint64_t)privateFlags;
- (unsigned)uid;
@end

@implementation MCMXPCMessageReferencesQuery

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)yesReallyApplyToAll
{
  result = self->_yesReallyApplyToAll;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)deleteDuringReconciliation
{
  result = self->_deleteDuringReconciliation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createDuringReconciliation
{
  result = self->_createDuringReconciliation;
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

- (MCMXPCMessageReferencesQuery)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = MCMXPCMessageReferencesQuery;
  v10 = [(MCMXPCMessageWithOwnersAndGroupsBase *)&v31 initWithXPCObject:v8 context:v9 error:a5];
  if (v10)
  {
    v10->_privateFlags = xpc_dictionary_get_uint64(v8, "PrivateFlags");
    v10->_explicitFlags = xpc_dictionary_get_uint64(v8, "Explicit");
    v11 = [v9 clientIdentity];
    v12 = [v11 userIdentity];
    v13 = [v12 posixUser];
    v10->_uid = [v13 UID];

    if ((v10->_explicitFlags & 8) != 0)
    {
      v10->_uid = xpc_dictionary_get_uint64(v8, "UID");
    }

    uint64 = xpc_dictionary_get_uint64(v8, "Flags");
    v10->_createDuringReconciliation = uint64 & 1;
    v10->_deleteDuringReconciliation = (uint64 & 2) != 0;
    v10->_yesReallyApplyToAll = (uint64 & 4) != 0;
    v15 = [(MCMXPCMessageBase *)v10 context];
    v16 = [v15 userIdentityCache];
    if (![objc_opt_class() personasAreSupported])
    {

LABEL_17:
      goto LABEL_18;
    }

    explicitFlags = v10->_explicitFlags;

    if ((explicitFlags & 4) != 0)
    {
      v18 = [v9 clientIdentity];
      v19 = [v18 userIdentity];
      userIdentity = v10->_userIdentity;
      v10->_userIdentity = v19;

      if (+[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", -[MCMXPCMessageWithOwnersAndGroupsBase containerClass](v10, "containerClass")) && (string = xpc_dictionary_get_string(v8, "PersonaUniqueString")) != 0 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v22;
        v24 = [v9 clientIdentity];
        v30 = 0;
        v25 = [(MCMXPCMessageBase *)v10 userIdentityFromClientPersonaUniqueString:v23 clientIdentity:v24 error:&v30];
        v15 = v30;
        v26 = v10->_userIdentity;
        v10->_userIdentity = v25;
      }

      else
      {
        v15 = 0;
      }

      if (v10->_userIdentity)
      {
        goto LABEL_17;
      }

      v27 = [v15 type];

      if (v27 != 1)
      {
        if (a5)
        {
          *a5 = v27;
        }

        v15 = v10;
        v10 = 0;
        goto LABEL_17;
      }
    }
  }

LABEL_18:

  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

@end
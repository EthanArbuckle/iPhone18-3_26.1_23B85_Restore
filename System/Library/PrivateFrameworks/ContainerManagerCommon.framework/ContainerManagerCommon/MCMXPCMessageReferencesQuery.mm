@interface MCMXPCMessageReferencesQuery
- (BOOL)createDuringReconciliation;
- (BOOL)deleteDuringReconciliation;
- (BOOL)yesReallyApplyToAll;
- (MCMUserIdentity)userIdentity;
- (MCMXPCMessageReferencesQuery)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageReferencesQuery)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = MCMXPCMessageReferencesQuery;
  v10 = [(MCMXPCMessageWithOwnersAndGroupsBase *)&v31 initWithXPCObject:objectCopy context:contextCopy error:error];
  if (v10)
  {
    v10->_privateFlags = xpc_dictionary_get_uint64(objectCopy, "PrivateFlags");
    v10->_explicitFlags = xpc_dictionary_get_uint64(objectCopy, "Explicit");
    clientIdentity = [contextCopy clientIdentity];
    userIdentity = [clientIdentity userIdentity];
    posixUser = [userIdentity posixUser];
    v10->_uid = [posixUser UID];

    if ((v10->_explicitFlags & 8) != 0)
    {
      v10->_uid = xpc_dictionary_get_uint64(objectCopy, "UID");
    }

    uint64 = xpc_dictionary_get_uint64(objectCopy, "Flags");
    v10->_createDuringReconciliation = uint64 & 1;
    v10->_deleteDuringReconciliation = (uint64 & 2) != 0;
    v10->_yesReallyApplyToAll = (uint64 & 4) != 0;
    context = [(MCMXPCMessageBase *)v10 context];
    userIdentityCache = [context userIdentityCache];
    if (![objc_opt_class() personasAreSupported])
    {

LABEL_17:
      goto LABEL_18;
    }

    explicitFlags = v10->_explicitFlags;

    if ((explicitFlags & 4) != 0)
    {
      clientIdentity2 = [contextCopy clientIdentity];
      userIdentity2 = [clientIdentity2 userIdentity];
      userIdentity = v10->_userIdentity;
      v10->_userIdentity = userIdentity2;

      if (+[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", -[MCMXPCMessageWithOwnersAndGroupsBase containerClass](v10, "containerClass")) && (string = xpc_dictionary_get_string(objectCopy, "PersonaUniqueString")) != 0 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:string], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = v22;
        clientIdentity3 = [contextCopy clientIdentity];
        v30 = 0;
        v25 = [(MCMXPCMessageBase *)v10 userIdentityFromClientPersonaUniqueString:v23 clientIdentity:clientIdentity3 error:&v30];
        context = v30;
        v26 = v10->_userIdentity;
        v10->_userIdentity = v25;
      }

      else
      {
        context = 0;
      }

      if (v10->_userIdentity)
      {
        goto LABEL_17;
      }

      type = [context type];

      if (type != 1)
      {
        if (error)
        {
          *error = type;
        }

        context = v10;
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
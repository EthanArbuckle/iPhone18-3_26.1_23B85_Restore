@interface MCMCommandReferencesQuery
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createDuringReconciliation;
- (BOOL)deleteDuringReconciliation;
- (BOOL)preflightClientAllowed;
- (BOOL)yesReallyApplyToAll;
- (MCMCommandReferencesQuery)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMUserIdentity)userIdentity;
- (NSSet)groupIdentifiers;
- (NSSet)ownerIdentifiers;
- (unint64_t)containerClass;
- (unint64_t)explicitFlags;
- (unint64_t)privateFlags;
- (unsigned)uid;
- (void)execute;
@end

@implementation MCMCommandReferencesQuery

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

- (NSSet)groupIdentifiers
{
  result = self->_groupIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)ownerIdentifiers
{
  result = self->_ownerIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MCMResultWithOwnersAndGroupsBase);
  v5 = [(MCMCommandReferencesQuery *)self ownerIdentifiers];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MCMCommandReferencesQuery *)self groupIdentifiers];
    v6 = v7 == 0;
  }

  v8 = gCodeSigningMapping;
  v9 = [(MCMCommandReferencesQuery *)self containerClass];
  v28 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __36__MCMCommandReferencesQuery_execute__block_invoke;
  v24 = &unk_1E86B04E8;
  v27 = v6;
  v25 = self;
  v10 = v4;
  v26 = v10;
  LOBYTE(v9) = [v8 enumerateOwnersAndGroupsWithGroupClass:v9 error:&v28 block:&v21];
  v11 = v28;
  if ((v9 & 1) == 0)
  {
    v12 = [MCMResultWithOwnersAndGroupsBase alloc];
    v13 = [(MCMResultBase *)v12 initWithError:v11, v21, v22, v23, v24, v25];

    v10 = v13;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(MCMResultWithOwnersAndGroupsBase *)v10 ownerIdentifiers];
    v18 = [v17 count];
    v19 = [(MCMResultWithOwnersAndGroupsBase *)v10 groupIdentifiers];
    v20 = [v19 count];
    *buf = 134218498;
    v30 = v18;
    v31 = 2048;
    v32 = v20;
    v33 = 2112;
    v34 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "References query; owners count = %lu, groups count = %lu, error = %@", buf, 0x20u);
  }

  v15 = [(MCMCommand *)self resultPromise];
  [v15 completeWithResult:v10];

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __36__MCMCommandReferencesQuery_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (*(a1 + 48))
  {
    goto LABEL_12;
  }

  v8 = [*(a1 + 32) ownerIdentifiers];
  if (v8)
  {
    v3 = [*(a1 + 32) ownerIdentifiers];
    if ([v3 containsObject:v6])
    {

      goto LABEL_12;
    }
  }

  v9 = [*(a1 + 32) groupIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) groupIdentifiers];
    v12 = [v11 containsObject:v7];

    if (v8)
    {

      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v12)
    {
LABEL_12:
      [*(a1 + 40) addOwner:v6 group:v7];
    }
  }

  else if (v8)
  {
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToReadReferences];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandReferencesQuery)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MCMCommandReferencesQuery;
  v9 = [(MCMCommand *)&v16 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v9->_containerClass = [v8 containerClass];
    v10 = [v8 ownerIdentifiers];
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = v10;

    v12 = [v8 groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = v12;

    v9->_uid = [v8 uid];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 47;
}

@end
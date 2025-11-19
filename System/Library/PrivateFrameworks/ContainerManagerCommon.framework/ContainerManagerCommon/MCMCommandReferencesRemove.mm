@interface MCMCommandReferencesRemove
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createDuringReconciliation;
- (BOOL)deleteDuringReconciliation;
- (BOOL)preflightClientAllowed;
- (BOOL)yesReallyApplyToAll;
- (MCMCommandReferencesRemove)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMUserIdentity)userIdentity;
- (NSSet)groupIdentifiers;
- (NSSet)ownerIdentifiers;
- (unint64_t)containerClass;
- (unint64_t)explicitFlags;
- (unint64_t)privateFlags;
- (unsigned)uid;
- (void)execute;
@end

@implementation MCMCommandReferencesRemove

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
  v66 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v49 = [MEMORY[0x1E695DFA8] set];
  v4 = [(MCMCommandReferencesRemove *)self ownerIdentifiers];
  if (v4)
  {
    goto LABEL_2;
  }

  if (![(MCMCommandReferencesRemove *)self yesReallyApplyToAll])
  {
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Owner identifiers must be specified", buf, 2u);
    }

    v7 = [[MCMError alloc] initWithErrorType:38 category:3];
    v4 = 0;
    goto LABEL_37;
  }

  v53 = 0;
  v4 = [gCodeSigningMapping identifiersWithError:&v53];
  v28 = v53;
  v29 = v28;
  if (!v4)
  {
    v7 = [[MCMError alloc] initWithNSError:v28 url:0 defaultErrorType:66];

LABEL_37:
    v34 = [(MCMResultBase *)[MCMResultWithContainersArrayBase alloc] initWithError:v7];
    goto LABEL_38;
  }

LABEL_2:
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v4 = v4;
  v5 = [v4 countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v63;
    v47 = v4;
    v48 = v3;
    v46 = *v63;
    do
    {
      v9 = 0;
      v45 = v6;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v62 + 1) + 8 * v9);
        v11 = [(MCMCommandReferencesRemove *)self groupIdentifiers];

        if (v11)
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v12 = [(MCMCommandReferencesRemove *)self groupIdentifiers];
          v13 = [v12 countByEnumeratingWithState:&v57 objects:v56 count:16];
          if (v13)
          {
            v14 = v13;
            v44 = v9;
            v15 = self;
            v16 = *v58;
            while (2)
            {
              v17 = 0;
              v18 = v7;
              do
              {
                if (*v58 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v19 = *(*(&v57 + 1) + 8 * v17);
                v20 = gCodeSigningMapping;
                v21 = [(MCMCommandReferencesRemove *)v15 containerClass];
                v52 = v18;
                v50[0] = MEMORY[0x1E69E9820];
                v50[1] = 3221225472;
                v50[2] = __37__MCMCommandReferencesRemove_execute__block_invoke;
                v50[3] = &unk_1E86AFE10;
                v51 = v49;
                LODWORD(v21) = [v20 removeGroupIdentifier:v19 forIdentifier:v10 containerClass:v21 error:&v52 reconcileHandler:v50];
                v7 = v52;

                if (!v21)
                {

                  v4 = v47;
                  v3 = v48;
                  self = v15;
                  goto LABEL_37;
                }

                ++v17;
                v18 = v7;
              }

              while (v14 != v17);
              v14 = [v12 countByEnumeratingWithState:&v57 objects:v56 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

            v4 = v47;
            v3 = v48;
            self = v15;
            v6 = v45;
            v8 = v46;
            v9 = v44;
          }

          else
          {
            v6 = v45;
          }
        }

        else
        {
          v22 = self;
          v23 = v4;
          v24 = v3;
          v25 = v9;
          v26 = gCodeSigningMapping;
          v27 = [MEMORY[0x1E695DFD8] setWithObject:v10];
          v12 = [v26 removeCodeSigningDictionaryForIdentifiers:v27];

          if (v12)
          {
            [v49 unionSet:v12];
          }

          v9 = v25;
          v3 = v24;
          v4 = v23;
          self = v22;
          v8 = v46;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [v4 countByEnumeratingWithState:&v62 objects:v61 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (![(MCMCommandReferencesRemove *)self deleteDuringReconciliation])
  {
    goto LABEL_32;
  }

  if (![v49 count])
  {
    goto LABEL_32;
  }

  v30 = objc_alloc_init(MCMResultPromise);
  v31 = [v49 allObjects];
  v32 = [(MCMCommand *)self context];
  v33 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v31 removeAllCodeSignInfo:0 context:v32 resultPromise:v30];

  [v33 execute];
  v34 = [(MCMResultPromise *)v30 result];

  if (!v34)
  {
LABEL_32:
    v35 = [MCMResultWithContainersArrayBase alloc];
    v36 = [(MCMCommand *)self context];
    v37 = [v36 clientIdentity];
    LOBYTE(v43) = 1;
    v34 = [(MCMResultWithContainersArrayBase *)v35 initWithContainers:MEMORY[0x1E695E0F0] includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0 clientIdentity:v37 skipSandboxExtensions:v43];
  }

LABEL_38:
  v39 = container_log_handle_for_category();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v42 = [(MCMResultBase *)v34 error];
    *buf = 138412290;
    v55 = v42;
    _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "References remove; error = %@", buf, 0xCu);
  }

  v40 = [(MCMCommand *)self resultPromise];
  [v40 completeWithResult:v34];

  objc_autoreleasePoolPop(v3);
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __37__MCMCommandReferencesRemove_execute__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69E9840];

  return [v2 unionSet:a2];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToChangeReferences];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandReferencesRemove)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MCMCommandReferencesRemove;
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

    v9->_deleteDuringReconciliation = [v8 deleteDuringReconciliation];
    v9->_yesReallyApplyToAll = [v8 yesReallyApplyToAll];
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
  return 49;
}

@end
@interface MCMCommandReferencesAdd
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)createDuringReconciliation;
- (BOOL)deleteDuringReconciliation;
- (BOOL)preflightClientAllowed;
- (BOOL)yesReallyApplyToAll;
- (MCMCommandReferencesAdd)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMUserIdentity)userIdentity;
- (NSSet)groupIdentifiers;
- (NSSet)ownerIdentifiers;
- (id)_resolveUserIdentity;
- (unint64_t)containerClass;
- (unint64_t)explicitFlags;
- (unint64_t)privateFlags;
- (unsigned)uid;
- (void)execute;
@end

@implementation MCMCommandReferencesAdd

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

- (id)_resolveUserIdentity
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(MCMCommand *)self context];
  v4 = [v3 clientIdentity];
  v5 = [v4 userIdentity];

  v6 = [(MCMCommandReferencesAdd *)self userIdentity];

  if (v6)
  {
    v7 = [(MCMCommandReferencesAdd *)self userIdentity];
  }

  else
  {
    if ([v5 isNoSpecificPersona])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = v5;
  }

  v8 = v7;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)execute
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFA8] set];
  v64 = [MEMORY[0x1E695DF70] array];
  v63 = [(MCMCommandReferencesAdd *)self _resolveUserIdentity];
  v61 = [MCMUserIdentity isUserIdentityRequiredForContainerClass:[(MCMCommandReferencesAdd *)self containerClass]];
  v5 = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
  if (!v5)
  {
    goto LABEL_35;
  }

  v7 = v5;
  v8 = [(MCMCommandReferencesAdd *)self groupIdentifiers];
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  v10 = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
  if (![v10 count])
  {

    p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
LABEL_34:

    goto LABEL_35;
  }

  [(MCMCommandReferencesAdd *)self groupIdentifiers];
  v11 = v65 = self;
  v12 = [v11 count];

  self = v65;
  p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
  if (!v12)
  {
LABEL_35:
    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v47 = [(MCMCommandReferencesAdd *)self ownerIdentifiers];
      v48 = [v47 count];
      v49 = [(MCMCommandReferencesAdd *)self groupIdentifiers];
      *buf = 134218240;
      v88 = v48;
      v89 = 2048;
      v90 = [v49 count];
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Owner and group identifiers must be specified; owner cnt = %lu, group cnt = %lu", buf, 0x16u);
    }

    v15 = [[MCMError alloc] initWithErrorType:38 category:3];
    v40 = 0;
LABEL_38:
    v41 = [objc_alloc((p_superclass + 294)) initWithError:v15];

    v40 = v41;
    goto LABEL_39;
  }

  v60 = v4;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = [(MCMCommandReferencesAdd *)v65 ownerIdentifiers];
  v56 = [v13 countByEnumeratingWithState:&v83 objects:v82 count:16];
  v14 = 0;
  v15 = 0;
  if (v56)
  {
    v16 = *v84;
    v58 = v3;
    v54 = *v84;
    v55 = v13;
    do
    {
      v17 = 0;
      do
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v57 = v17;
        v18 = *(*(&v83 + 1) + 8 * v17);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v19 = [(MCMCommandReferencesAdd *)self groupIdentifiers];
        v20 = [v19 countByEnumeratingWithState:&v78 objects:v77 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v79;
          while (2)
          {
            v23 = 0;
            v24 = v15;
            do
            {
              if (*v79 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v78 + 1) + 8 * v23);
              v26 = gCodeSigningMapping;
              v27 = [(MCMCommandReferencesAdd *)v65 containerClass];
              v71 = v24;
              v67[0] = MEMORY[0x1E69E9820];
              v67[1] = 3221225472;
              v67[2] = __34__MCMCommandReferencesAdd_execute__block_invoke;
              v67[3] = &unk_1E86AF968;
              v68 = v63;
              v70 = v61;
              v69 = v4;
              LODWORD(v25) = [v26 addGroupIdentifier:v25 forIdentifier:v18 containerClass:v27 error:&v71 reconcileHandler:v67];
              v15 = v71;

              if (!v25)
              {

                v40 = 0;
                v3 = v58;
                self = v65;
                p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
                goto LABEL_38;
              }

              ++v23;
              v24 = v15;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v78 objects:v77 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v14 = 1;
          v3 = v58;
          v16 = v54;
          v13 = v55;
        }

        v17 = v57 + 1;
        self = v65;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
      }

      while (v57 + 1 != v56);
      v56 = [v13 countByEnumeratingWithState:&v83 objects:v82 count:16];
    }

    while (v56);
  }

  if (-[MCMCommandReferencesAdd createDuringReconciliation](self, "createDuringReconciliation") && [v4 count])
  {
    v62 = v14;
    v59 = v3;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v28 = v4;
    v29 = [v28 countByEnumeratingWithState:&v73 objects:v72 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v74;
      do
      {
        v32 = 0;
        v33 = v15;
        do
        {
          if (*v74 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v73 + 1) + 8 * v32);
          v35 = [(MCMCommand *)self context];
          v36 = [v35 containerFactory];
          v66 = v33;
          v37 = [v36 containerForContainerIdentity:v34 createIfNecessary:1 error:&v66];
          v15 = v66;

          v38 = [v37 metadataMinimal];
          if (([v38 existed] & 1) == 0)
          {
            [v64 addObject:v38];
          }

          ++v32;
          v33 = v15;
          self = v65;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v73 objects:v72 count:16];
      }

      while (v30);
    }

    v3 = v59;
    v4 = v60;
    p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
    v14 = v62;
  }

  v50 = objc_alloc((p_superclass + 294));
  v51 = [(MCMCommand *)self context];
  v52 = [v51 clientIdentity];
  LOBYTE(v53) = 1;
  v40 = [v50 initWithContainers:v64 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0 clientIdentity:v52 skipSandboxExtensions:v53];

  if ((v14 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  v42 = container_log_handle_for_category();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v45 = [v64 count];
    v46 = [v40 error];
    *buf = 134218242;
    v88 = v45;
    v89 = 2112;
    v90 = v46;
    _os_log_debug_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_DEBUG, "References add; created containers count = %lu, error = %@", buf, 0x16u);
  }

  v43 = [(MCMCommand *)self resultPromise];
  [v43 completeWithResult:v40];

  objc_autoreleasePoolPop(v3);
  v44 = *MEMORY[0x1E69E9840];
}

void __34__MCMCommandReferencesAdd_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32) && (*(a1 + 48) & 1) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 userIdentity];
          v12 = [v11 isEqual:*(a1 + 32)];

          if (v12)
          {
            [*(a1 + 40) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [*(a1 + 40) unionSet:v4];
  }

  v13 = *MEMORY[0x1E69E9840];
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

- (MCMCommandReferencesAdd)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMCommandReferencesAdd;
  v9 = [(MCMCommand *)&v18 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v9->_containerClass = [v8 containerClass];
    v10 = [v8 ownerIdentifiers];
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = v10;

    v12 = [v8 groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = v12;

    v9->_createDuringReconciliation = [v8 createDuringReconciliation];
    v14 = [v8 userIdentity];
    userIdentity = v9->_userIdentity;
    v9->_userIdentity = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
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
  return 48;
}

@end
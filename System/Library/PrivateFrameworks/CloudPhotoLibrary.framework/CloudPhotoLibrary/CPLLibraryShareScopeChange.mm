@interface CPLLibraryShareScopeChange
+ (id)cplAdditionalSecureClassesForProperty:(id)a3;
+ (id)descriptionForExitState:(int64_t)a3;
+ (id)descriptionForExitType:(int64_t)a3;
+ (id)mappingForExitState;
+ (id)mappingForExitType;
- (BOOL)isCurrentUserExiting;
- (NSArray)exitingUserIdentifiers;
- (id)_additionalDescription;
- (int64_t)exitState;
- (void)addExitingUserIdentifiers:(id)a3;
- (void)removePendingParticipantIDs:(id)a3;
- (void)setExitingUserIdentifiers:(id)a3;
- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5;
@end

@implementation CPLLibraryShareScopeChange

- (id)_additionalDescription
{
  if ([(CPLLibraryShareScopeChange *)self exitState])
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [objc_opt_class() descriptionForExitState:{-[CPLLibraryShareScopeChange exitState](self, "exitState")}];
    v5 = [objc_opt_class() descriptionForExitType:{-[CPLLibraryShareScopeChange exitType](self, "exitType")}];
    v6 = [CPLLibraryManager descriptionForExitSource:[(CPLLibraryShareScopeChange *)self exitSource]];
    v7 = [v3 initWithFormat:@" - exitState: %@, exitType: %@, exitSource: %@", v4, v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLLibraryShareScopeChange;
    v7 = [(CPLScopeChange *)&v9 _additionalDescription];
  }

  return v7;
}

- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = CPLLibraryShareScopeChange;
  [(CPLScopeChange *)&v19 updateScopeFromScopeChange:v8 direction:a4 didHaveChanges:a5];
  if (a4 != 1)
  {
    goto LABEL_14;
  }

  v9 = [v8 userDefinedRules];
  v10 = [(CPLLibraryShareScopeChange *)self userDefinedRules];
  v11 = v10;
  if (!v9 || !v10)
  {

    if (!(v9 | v11))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = [v9 isEqual:v10];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = [v8 userDefinedRules];
    [(CPLLibraryShareScopeChange *)self setUserDefinedRules:v13];

    *a5 = 1;
  }

LABEL_8:
  v14 = [v8 userViewedParticipantTrashNotificationDate];
  v15 = [(CPLLibraryShareScopeChange *)self userViewedParticipantTrashNotificationDate];
  v16 = v15;
  if (v14 && v15)
  {
    v17 = [v14 isEqual:v15];

    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v14 | v16)
  {
LABEL_13:
    v18 = [v8 userViewedParticipantTrashNotificationDate];
    [(CPLLibraryShareScopeChange *)self setUserViewedParticipantTrashNotificationDate:v18];

    *a5 = 1;
  }

LABEL_14:
}

- (void)removePendingParticipantIDs:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(CPLScopeChange *)self share];
    v6 = [v5 participants];

    v7 = [v4 count];
    if (v7 >= [v6 count])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count") - objc_msgSend(v4, "count")}];
    }

    v9 = v8;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 participantID];
          if (!v16 || ([v4 containsObject:v16] & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    v18 = [(CPLScopeChange *)self share];
    [v18 setParticipants:v17];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addExitingUserIdentifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(CPLScopeChange *)self share];
    v7 = [v6 participants];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) userIdentifier];
          if (v12 && [v4 containsObject:v12])
          {
            [v5 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([(NSSet *)self->_exitingUserIdentifiers count])
    {
      v13 = [(NSSet *)self->_exitingUserIdentifiers setByAddingObjectsFromSet:v5];
    }

    else
    {
      v13 = [v5 copy];
    }

    exitingUserIdentifiers = self->_exitingUserIdentifiers;
    self->_exitingUserIdentifiers = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)exitState
{
  v3 = [(CPLScopeChange *)self stagingScopeIdentifier];

  if (v3)
  {
    return 2;
  }

  if (![(CPLLibraryShareScopeChange *)self isCurrentUserExiting])
  {
    return 0;
  }

  if ([(CPLScopeChange *)self scopeType]!= 4)
  {
    return 1;
  }

  v5 = [(CPLLibraryShareScopeChange *)self exitingUserIdentifiers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isCurrentUserExiting
{
  v3 = [(CPLScopeChange *)self share];
  v4 = [v3 currentUserParticipant];

  if (v4)
  {
    v5 = [v4 userIdentifier];
    if (v5)
    {
      v6 = [v4 userIdentifier];
      v7 = [(CPLLibraryShareScopeChange *)self isUserWithIdentifierExiting:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setExitingUserIdentifiers:(id)a3
{
  v6 = a3;
  v4 = [v6 count];
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  }

  exitingUserIdentifiers = self->_exitingUserIdentifiers;
  self->_exitingUserIdentifiers = v4;
}

- (NSArray)exitingUserIdentifiers
{
  if ([(NSSet *)self->_exitingUserIdentifiers count])
  {
    v3 = [(NSSet *)self->_exitingUserIdentifiers allObjects];
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)descriptionForExitType:(int64_t)a3
{
  v4 = [a1 mappingForExitType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown exit type (%ld)", a3];
  }

  v8 = v7;

  return v8;
}

+ (id)mappingForExitType
{
  if (mappingForExitType_onceToken != -1)
  {
    dispatch_once(&mappingForExitType_onceToken, &__block_literal_global_341);
  }

  v3 = mappingForExitType_mapping;

  return v3;
}

void __48__CPLLibraryShareScopeChange_mappingForExitType__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF2F0;
  v3[1] = &unk_1F57EF338;
  v4[0] = @"unknown";
  v4[1] = @"owner-dismantle";
  v3[2] = &unk_1F57EF320;
  v3[3] = &unk_1F57EF308;
  v4[2] = @"removed";
  v4[3] = @"self-exit";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = mappingForExitType_mapping;
  mappingForExitType_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)descriptionForExitState:(int64_t)a3
{
  v4 = [a1 mappingForExitState];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown exit state (%ld)", a3];
  }

  v8 = v7;

  return v8;
}

+ (id)mappingForExitState
{
  if (mappingForExitState_onceToken != -1)
  {
    dispatch_once(&mappingForExitState_onceToken, &__block_literal_global_330);
  }

  v3 = mappingForExitState_mapping;

  return v3;
}

void __49__CPLLibraryShareScopeChange_mappingForExitState__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF2F0;
  v3[1] = &unk_1F57EF308;
  v4[0] = @"none";
  v4[1] = @"preparing";
  v3[2] = &unk_1F57EF320;
  v4[2] = @"exiting";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = mappingForExitState_mapping;
  mappingForExitState_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)cplAdditionalSecureClassesForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"exitingUserIdentifiers"])
  {
    if (cplAdditionalSecureClassesForProperty__onceToken_152 != -1)
    {
      dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken_152, &__block_literal_global_154);
    }

    v5 = cplAdditionalSecureClassesForProperty__classes;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___CPLLibraryShareScopeChange;
    v5 = objc_msgSendSuper2(&v8, sel_cplAdditionalSecureClassesForProperty_, v4);
  }

  v6 = v5;

  return v6;
}

uint64_t __81__CPLLibraryShareScopeChange_CPLNSCoding__cplAdditionalSecureClassesForProperty___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  v1 = cplAdditionalSecureClassesForProperty__classes;
  cplAdditionalSecureClassesForProperty__classes = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
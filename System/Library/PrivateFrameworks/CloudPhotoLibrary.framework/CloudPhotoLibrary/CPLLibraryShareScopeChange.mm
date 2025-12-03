@interface CPLLibraryShareScopeChange
+ (id)cplAdditionalSecureClassesForProperty:(id)property;
+ (id)descriptionForExitState:(int64_t)state;
+ (id)descriptionForExitType:(int64_t)type;
+ (id)mappingForExitState;
+ (id)mappingForExitType;
- (BOOL)isCurrentUserExiting;
- (NSArray)exitingUserIdentifiers;
- (id)_additionalDescription;
- (int64_t)exitState;
- (void)addExitingUserIdentifiers:(id)identifiers;
- (void)removePendingParticipantIDs:(id)ds;
- (void)setExitingUserIdentifiers:(id)identifiers;
- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes;
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
    _additionalDescription = [v3 initWithFormat:@" - exitState: %@, exitType: %@, exitSource: %@", v4, v5, v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLLibraryShareScopeChange;
    _additionalDescription = [(CPLScopeChange *)&v9 _additionalDescription];
  }

  return _additionalDescription;
}

- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = CPLLibraryShareScopeChange;
  [(CPLScopeChange *)&v19 updateScopeFromScopeChange:changeCopy direction:direction didHaveChanges:changes];
  if (direction != 1)
  {
    goto LABEL_14;
  }

  userDefinedRules = [changeCopy userDefinedRules];
  userDefinedRules2 = [(CPLLibraryShareScopeChange *)self userDefinedRules];
  v11 = userDefinedRules2;
  if (!userDefinedRules || !userDefinedRules2)
  {

    if (!(userDefinedRules | v11))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = [userDefinedRules isEqual:userDefinedRules2];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    userDefinedRules3 = [changeCopy userDefinedRules];
    [(CPLLibraryShareScopeChange *)self setUserDefinedRules:userDefinedRules3];

    *changes = 1;
  }

LABEL_8:
  userViewedParticipantTrashNotificationDate = [changeCopy userViewedParticipantTrashNotificationDate];
  userViewedParticipantTrashNotificationDate2 = [(CPLLibraryShareScopeChange *)self userViewedParticipantTrashNotificationDate];
  v16 = userViewedParticipantTrashNotificationDate2;
  if (userViewedParticipantTrashNotificationDate && userViewedParticipantTrashNotificationDate2)
  {
    v17 = [userViewedParticipantTrashNotificationDate isEqual:userViewedParticipantTrashNotificationDate2];

    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (userViewedParticipantTrashNotificationDate | v16)
  {
LABEL_13:
    userViewedParticipantTrashNotificationDate3 = [changeCopy userViewedParticipantTrashNotificationDate];
    [(CPLLibraryShareScopeChange *)self setUserViewedParticipantTrashNotificationDate:userViewedParticipantTrashNotificationDate3];

    *changes = 1;
  }

LABEL_14:
}

- (void)removePendingParticipantIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    share = [(CPLScopeChange *)self share];
    participants = [share participants];

    v7 = [dsCopy count];
    if (v7 >= [participants count])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participants, "count") - objc_msgSend(dsCopy, "count")}];
    }

    v9 = v8;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = participants;
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
          participantID = [v15 participantID];
          if (!participantID || ([dsCopy containsObject:participantID] & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    share2 = [(CPLScopeChange *)self share];
    [share2 setParticipants:v17];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addExitingUserIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    share = [(CPLScopeChange *)self share];
    participants = [share participants];

    v8 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(participants);
          }

          userIdentifier = [*(*(&v16 + 1) + 8 * v11) userIdentifier];
          if (userIdentifier && [identifiersCopy containsObject:userIdentifier])
          {
            [v5 addObject:userIdentifier];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  stagingScopeIdentifier = [(CPLScopeChange *)self stagingScopeIdentifier];

  if (stagingScopeIdentifier)
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

  exitingUserIdentifiers = [(CPLLibraryShareScopeChange *)self exitingUserIdentifiers];
  v6 = [exitingUserIdentifiers count];

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
  share = [(CPLScopeChange *)self share];
  currentUserParticipant = [share currentUserParticipant];

  if (currentUserParticipant)
  {
    userIdentifier = [currentUserParticipant userIdentifier];
    if (userIdentifier)
    {
      userIdentifier2 = [currentUserParticipant userIdentifier];
      v7 = [(CPLLibraryShareScopeChange *)self isUserWithIdentifierExiting:userIdentifier2];
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

- (void)setExitingUserIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [identifiersCopy count];
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];
  }

  exitingUserIdentifiers = self->_exitingUserIdentifiers;
  self->_exitingUserIdentifiers = v4;
}

- (NSArray)exitingUserIdentifiers
{
  if ([(NSSet *)self->_exitingUserIdentifiers count])
  {
    allObjects = [(NSSet *)self->_exitingUserIdentifiers allObjects];
    v4 = [allObjects sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)descriptionForExitType:(int64_t)type
{
  mappingForExitType = [self mappingForExitType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [mappingForExitType objectForKeyedSubscript:v5];

  if (v6)
  {
    type = v6;
  }

  else
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown exit type (%ld)", type];
  }

  v8 = type;

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

+ (id)descriptionForExitState:(int64_t)state
{
  mappingForExitState = [self mappingForExitState];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v6 = [mappingForExitState objectForKeyedSubscript:v5];

  if (v6)
  {
    state = v6;
  }

  else
  {
    state = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown exit state (%ld)", state];
  }

  v8 = state;

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

+ (id)cplAdditionalSecureClassesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"exitingUserIdentifiers"])
  {
    if (cplAdditionalSecureClassesForProperty__onceToken_152 != -1)
    {
      dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken_152, &__block_literal_global_154);
    }

    v5 = cplAdditionalSecureClassesForProperty__classes;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___CPLLibraryShareScopeChange;
    v5 = objc_msgSendSuper2(&v8, sel_cplAdditionalSecureClassesForProperty_, propertyCopy);
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
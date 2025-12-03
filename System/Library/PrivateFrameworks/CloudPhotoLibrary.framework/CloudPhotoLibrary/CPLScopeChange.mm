@interface CPLScopeChange
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (BOOL)shouldAutoActivateScopeWithType:(int64_t)type;
+ (BOOL)supportsActivationOfScopeWithType:(int64_t)type;
+ (Class)scopeChangeClassForType:(int64_t)type;
+ (id)descriptionForBusyState:(int64_t)state;
+ (id)descriptionForScopeType:(int64_t)type;
+ (id)mappingForScopeBusyStateDescription;
+ (id)mappingForScopeTypeDescription;
+ (id)newDeleteScopeChangeWithScopeIdentifier:(id)identifier type:(int64_t)type;
+ (id)newScopeChangeInferClassWithScopeIdentifier:(id)identifier type:(int64_t)type;
+ (id)newScopeChangeWithScopeIdentifier:(id)identifier type:(int64_t)type;
- (BOOL)needsToSetScopeIdentifier;
- (CPLScopeChange)initWithCoder:(id)coder;
- (CPLScopeChange)initWithScopeIdentifier:(id)identifier type:(int64_t)type;
- (id)_scopedIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (id)scopeIdentifier;
- (int64_t)defaultFlags;
- (void)_setChangeType:(unint64_t)type;
- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes;
- (void)updateScopeIdentifier:(id)identifier;
@end

@implementation CPLScopeChange

- (void)updateScopeIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _scopedIdentifier = [(CPLScopeChange *)self _scopedIdentifier];
  if (_scopedIdentifier)
  {
    v6 = [CPLScopedIdentifier alloc];
    scopeIdentifier = [_scopedIdentifier scopeIdentifier];
    v8 = [(CPLScopedIdentifier *)v6 initWithScopeIdentifier:scopeIdentifier identifier:identifierCopy];
    v12.receiver = self;
    v12.super_class = CPLScopeChange;
    [(CPLRecordChange *)&v12 setScopedIdentifier:v8];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _scopedIdentifier2 = [(CPLScopeChange *)self _scopedIdentifier];
      *buf = 138412546;
      v14 = _scopedIdentifier;
      v15 = 2112;
      v16 = _scopedIdentifier2;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Updating %@ -> %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsToSetScopeIdentifier
{
  scopeIdentifier = [(CPLScopeChange *)self scopeIdentifier];
  v3 = [scopeIdentifier isEqualToString:@"auto"];

  return v3;
}

- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes
{
  if (direction == 1)
  {
    *changes = 0;
  }

  else
  {
    *changes = 1;
    [self cplCopyPropertiesFromObject:change withCopyBlock:0];
  }
}

- (int64_t)defaultFlags
{
  share = [(CPLScopeChange *)self share];
  v4 = share;
  if (share)
  {
    currentUserParticipant = [share currentUserParticipant];
    v6 = currentUserParticipant;
    if (currentUserParticipant)
    {
      permission = [currentUserParticipant permission];
    }

    else
    {
      permission = [v4 publicPermission];
    }

    v8 = permission == 2;
  }

  else
  {
    v8 = 0;
  }

  if ([CPLScopeChange shouldAutoActivateScopeWithType:self->_scopeType])
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x10;
  }

  return v9;
}

- (id)redactedDescription
{
  share = [(CPLScopeChange *)self share];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  scopeIdentifier = [(CPLScopeChange *)self scopeIdentifier];
  if (([(CPLRecordChange *)self changeType]& 0x400) != 0)
  {
    v7 = " [D]";
  }

  else
  {
    v7 = "";
  }

  v8 = [objc_opt_class() descriptionForScopeType:{-[CPLScopeChange scopeType](self, "scopeType")}];
  v9 = v8;
  if (share)
  {
    v10 = [v4 initWithFormat:@"<%@ %@%s (%@) - %@>", v5, scopeIdentifier, v7, v8, share];
  }

  else
  {
    v10 = [v4 initWithFormat:@"<%@ %@%s (%@)>", v5, scopeIdentifier, v7, v8, v13];
  }

  v11 = v10;

  return v11;
}

- (id)description
{
  share = [(CPLScopeChange *)self share];
  if (share)
  {
    stagingScopeIdentifier = self->_stagingScopeIdentifier;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    scopeIdentifier = [(CPLScopeChange *)self scopeIdentifier];
    v8 = "";
    if (([(CPLRecordChange *)self changeType]& 0x400) != 0)
    {
      v9 = " [D]";
    }

    else
    {
      v9 = "";
    }

    v10 = [objc_opt_class() descriptionForScopeType:{-[CPLScopeChange scopeType](self, "scopeType")}];
    if (stagingScopeIdentifier)
    {
      v11 = self->_stagingScopeIdentifier;
      if (!self->_activated)
      {
        v8 = " not-active";
      }

      _additionalDescription = [(CPLScopeChange *)self _additionalDescription];
      v27 = v8;
      v28 = _additionalDescription;
      v24 = share;
      v25 = v11;
      v22 = v9;
      v23 = v10;
      v13 = @"<%@ %@%s (%@) - %@ (staged to %@)%s%@>";
    }

    else
    {
      if (self->_activated)
      {
        v19 = "";
      }

      else
      {
        v19 = " not-active";
      }

      _additionalDescription = [(CPLScopeChange *)self _additionalDescription];
      v25 = v19;
      v27 = _additionalDescription;
      v23 = v10;
      v24 = share;
      v22 = v9;
      v13 = @"<%@ %@%s (%@) - %@%s%@>";
    }

    v18 = [v5 initWithFormat:v13, v6, scopeIdentifier, v22, v23, v24, v25, v27, v28];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_opt_class();
    scopeIdentifier = [(CPLScopeChange *)self scopeIdentifier];
    v16 = "";
    if (([(CPLRecordChange *)self changeType]& 0x400) != 0)
    {
      v17 = " [D]";
    }

    else
    {
      v17 = "";
    }

    v10 = [objc_opt_class() descriptionForScopeType:{-[CPLScopeChange scopeType](self, "scopeType")}];
    if (!self->_activated)
    {
      v16 = " not-active";
    }

    _additionalDescription = [(CPLScopeChange *)self _additionalDescription];
    v18 = [v14 initWithFormat:@"<%@ %@%s (%@)%s%@>", v15, scopeIdentifier, v17, v10, v16, _additionalDescription, v26, v28];
  }

  v20 = v18;

  return v20;
}

- (id)scopeIdentifier
{
  _scopedIdentifier = [(CPLScopeChange *)self _scopedIdentifier];
  identifier = [_scopedIdentifier identifier];

  return identifier;
}

- (id)_scopedIdentifier
{
  v4.receiver = self;
  v4.super_class = CPLScopeChange;
  scopedIdentifier = [(CPLRecordChange *)&v4 scopedIdentifier];

  return scopedIdentifier;
}

- (CPLScopeChange)initWithScopeIdentifier:(id)identifier type:(int64_t)type
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v13 = [CPLScopeChange scopeChangeClassForType:type];
    if (v13 != objc_opt_class())
    {
      v12 = [[v13 alloc] initWithScopeIdentifier:identifierCopy type:type];
      goto LABEL_8;
    }
  }

  else if (([objc_opt_class() isSubclassOfClass:{+[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", type)}] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [CPLScopeChange descriptionForScopeType:type];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Invalid class %@ for scope type %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
    v23 = objc_opt_class();
    v24 = [CPLScopeChange descriptionForScopeType:type];
    [currentHandler handleFailureInMethod:a2 object:self file:v22 lineNumber:245 description:{@"Invalid class %@ for scope type %@", v23, v24}];

    abort();
  }

  v26.receiver = self;
  v26.super_class = CPLScopeChange;
  v9 = [(CPLScopeChange *)&v26 init];
  v10 = v9;
  if (v9)
  {
    v9->_scopeType = type;
    v11 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"__SCOPE__" identifier:identifierCopy];
    v25.receiver = v10;
    v25.super_class = CPLScopeChange;
    [(CPLRecordChange *)&v25 setScopedIdentifier:v11];
    v10->_activated = 1;
  }

  v12 = v10;
  self = v12;
LABEL_8:
  v14 = v12;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_setChangeType:(unint64_t)type
{
  v3.receiver = self;
  v3.super_class = CPLScopeChange;
  [(CPLRecordChange *)&v3 setChangeType:type];
}

+ (id)newDeleteScopeChangeWithScopeIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [[self alloc] initWithScopeIdentifier:identifierCopy type:type];

  [v7 _setChangeType:1024];
  return v7;
}

+ (id)newScopeChangeInferClassWithScopeIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [objc_alloc(objc_msgSend(self scopeChangeClassForType:{type)), "initWithScopeIdentifier:type:", identifierCopy, type}];

  return v7;
}

+ (id)newScopeChangeWithScopeIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [[self alloc] initWithScopeIdentifier:identifierCopy type:type];

  return v7;
}

+ (BOOL)shouldAutoActivateScopeWithType:(int64_t)type
{
  v6 = [self supportsActivationOfScopeWithType:?];
  v7 = 0;
  if (!v6)
  {
    return v7 & 1;
  }

  if (type > 5)
  {
    if ((type - 7) >= 2)
    {
      if (type == 6 || type == 0x7FFFFFFF)
      {
        return v7 & 1;
      }

LABEL_12:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:165 description:{@"unknown scope type %ld", type}];

      abort();
    }

LABEL_13:
    v7 = 1;
    return v7 & 1;
  }

  if (type < 2)
  {
    return v7 & 1;
  }

  if ((type - 2) < 2)
  {
    goto LABEL_13;
  }

  if ((type - 4) >= 2)
  {
    goto LABEL_12;
  }

  if (CPLAllowsInactiveSharedLibraryScope_onceToken != -1)
  {
    dispatch_once(&CPLAllowsInactiveSharedLibraryScope_onceToken, &__block_literal_global_5_24591);
  }

  v7 = CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope ^ 1;
  return v7 & 1;
}

+ (BOOL)supportsActivationOfScopeWithType:(int64_t)type
{
  if (type <= 5)
  {
    if ((type - 1) < 3)
    {
      v4 = 1;
      return v4 & 1;
    }

    if ((type - 4) < 2)
    {
      v4 = overridesSharedLibraryFeatureFlag ^ 1 | isSharedLibraryFeatureEnabled;
      return v4 & 1;
    }

    if (type)
    {
LABEL_15:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v10 lineNumber:131 description:{@"unknown scope type %ld", type}];

      abort();
    }

LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  if ((type - 7) >= 2)
  {
    if (type != 6 && type != 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  return CPLIsCollectionShareFeatureEnabled();
}

+ (Class)scopeChangeClassForType:(int64_t)type
{
  v3 = off_1E861A310;
  if (type <= 3)
  {
    if ((type - 2) < 2)
    {
      v3 = off_1E861A168;
      goto LABEL_15;
    }

    if (!type)
    {
      goto LABEL_15;
    }

    if (type == 1)
    {
      v3 = off_1E861A0E8;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (type <= 6)
  {
    if ((type - 4) < 2)
    {
      v3 = off_1E861A0F0;
      goto LABEL_15;
    }

    if (type == 6)
    {
      v3 = off_1E861A3B0;
      goto LABEL_15;
    }

LABEL_18:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:104 description:{@"unknown scope type %ld", type}];

    abort();
  }

  if ((type - 7) < 2)
  {
    v3 = off_1E8619EB0;
    goto LABEL_15;
  }

  if (type != 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

LABEL_15:
  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

+ (id)descriptionForBusyState:(int64_t)state
{
  mappingForScopeBusyStateDescription = [self mappingForScopeBusyStateDescription];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v6 = [mappingForScopeBusyStateDescription objectForKeyedSubscript:v5];

  if (v6)
  {
    state = v6;
  }

  else
  {
    state = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown busy state (%ld)", state];
  }

  v8 = state;

  return v8;
}

+ (id)mappingForScopeBusyStateDescription
{
  if (mappingForScopeBusyStateDescription_onceToken != -1)
  {
    dispatch_once(&mappingForScopeBusyStateDescription_onceToken, &__block_literal_global_57);
  }

  v3 = mappingForScopeBusyStateDescription_mapping;

  return v3;
}

void __53__CPLScopeChange_mappingForScopeBusyStateDescription__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF2F0;
  v3[1] = &unk_1F57EF308;
  v4[0] = @"none";
  v4[1] = @"busy";
  v3[2] = &unk_1F57EF320;
  v4[2] = @"snapshot";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = mappingForScopeBusyStateDescription_mapping;
  mappingForScopeBusyStateDescription_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)descriptionForScopeType:(int64_t)type
{
  mappingForScopeTypeDescription = [self mappingForScopeTypeDescription];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [mappingForScopeTypeDescription objectForKeyedSubscript:v5];

  if (v6)
  {
    type = v6;
  }

  else
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown type (%ld)", type];
  }

  v8 = type;

  return v8;
}

+ (id)mappingForScopeTypeDescription
{
  if (mappingForScopeTypeDescription_onceToken != -1)
  {
    dispatch_once(&mappingForScopeTypeDescription_onceToken, &__block_literal_global_3794);
  }

  v3 = mappingForScopeTypeDescription_mapping;

  return v3;
}

void __48__CPLScopeChange_mappingForScopeTypeDescription__block_invoke()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF2F0;
  v3[1] = &unk_1F57EF308;
  v4[0] = @"unknown";
  v4[1] = @"library";
  v3[2] = &unk_1F57EF320;
  v3[3] = &unk_1F57EF338;
  v4[2] = @"owned-moment-share";
  v4[3] = @"accepted-moment-share";
  v3[4] = &unk_1F57EF350;
  v3[5] = &unk_1F57EF368;
  v4[4] = @"owned-library-share";
  v4[5] = @"accepted-library-share";
  v3[6] = &unk_1F57EF380;
  v3[7] = &unk_1F57EF398;
  v4[6] = @"staging";
  v4[7] = @"owned-collection-share";
  v3[8] = &unk_1F57EF3B0;
  v3[9] = &unk_1F57EF3C8;
  v4[8] = @"accepted-collection-share";
  v4[9] = @"ignored";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = mappingForScopeTypeDescription_mapping;
  mappingForScopeTypeDescription_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (CPLScopeChange)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || (v7 = +[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", [coderCopy decodeIntegerForKey:@"scopeType"]), v7 == v5))
  {
    v12.receiver = self;
    v12.super_class = CPLScopeChange;
    self = [(CPLRecordChange *)&v12 initWithCoder:coderCopy];
    selfCopy = self;
  }

  else
  {
    v8 = v7;
    selfCopy = [[v7 alloc] initWithCoder:coderCopy];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = selfCopy;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Automatically upgrading %@ to %@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqualToString:@"scope"] & 1) != 0 || (objc_msgSend(equalityCopy, "isEqualToString:", @"pullTaskItem") & 1) != 0 || (objc_msgSend(equalityCopy, "isEqualToString:", @"recordModificationDate"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLScopeChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

@end
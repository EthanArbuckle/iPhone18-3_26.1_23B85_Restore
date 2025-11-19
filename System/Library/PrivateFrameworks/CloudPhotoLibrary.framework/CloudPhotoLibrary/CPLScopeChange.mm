@interface CPLScopeChange
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (BOOL)shouldAutoActivateScopeWithType:(int64_t)a3;
+ (BOOL)supportsActivationOfScopeWithType:(int64_t)a3;
+ (Class)scopeChangeClassForType:(int64_t)a3;
+ (id)descriptionForBusyState:(int64_t)a3;
+ (id)descriptionForScopeType:(int64_t)a3;
+ (id)mappingForScopeBusyStateDescription;
+ (id)mappingForScopeTypeDescription;
+ (id)newDeleteScopeChangeWithScopeIdentifier:(id)a3 type:(int64_t)a4;
+ (id)newScopeChangeInferClassWithScopeIdentifier:(id)a3 type:(int64_t)a4;
+ (id)newScopeChangeWithScopeIdentifier:(id)a3 type:(int64_t)a4;
- (BOOL)needsToSetScopeIdentifier;
- (CPLScopeChange)initWithCoder:(id)a3;
- (CPLScopeChange)initWithScopeIdentifier:(id)a3 type:(int64_t)a4;
- (id)_scopedIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (id)scopeIdentifier;
- (int64_t)defaultFlags;
- (void)_setChangeType:(unint64_t)a3;
- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5;
- (void)updateScopeIdentifier:(id)a3;
@end

@implementation CPLScopeChange

- (void)updateScopeIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLScopeChange *)self _scopedIdentifier];
  if (v5)
  {
    v6 = [CPLScopedIdentifier alloc];
    v7 = [v5 scopeIdentifier];
    v8 = [(CPLScopedIdentifier *)v6 initWithScopeIdentifier:v7 identifier:v4];
    v12.receiver = self;
    v12.super_class = CPLScopeChange;
    [(CPLRecordChange *)&v12 setScopedIdentifier:v8];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CPLScopeChange *)self _scopedIdentifier];
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Updating %@ -> %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsToSetScopeIdentifier
{
  v2 = [(CPLScopeChange *)self scopeIdentifier];
  v3 = [v2 isEqualToString:@"auto"];

  return v3;
}

- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5
{
  if (a4 == 1)
  {
    *a5 = 0;
  }

  else
  {
    *a5 = 1;
    [self cplCopyPropertiesFromObject:a3 withCopyBlock:0];
  }
}

- (int64_t)defaultFlags
{
  v3 = [(CPLScopeChange *)self share];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentUserParticipant];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 permission];
    }

    else
    {
      v7 = [v4 publicPermission];
    }

    v8 = v7 == 2;
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
  v3 = [(CPLScopeChange *)self share];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = [(CPLScopeChange *)self scopeIdentifier];
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
  if (v3)
  {
    v10 = [v4 initWithFormat:@"<%@ %@%s (%@) - %@>", v5, v6, v7, v8, v3];
  }

  else
  {
    v10 = [v4 initWithFormat:@"<%@ %@%s (%@)>", v5, v6, v7, v8, v13];
  }

  v11 = v10;

  return v11;
}

- (id)description
{
  v3 = [(CPLScopeChange *)self share];
  if (v3)
  {
    stagingScopeIdentifier = self->_stagingScopeIdentifier;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [(CPLScopeChange *)self scopeIdentifier];
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

      v12 = [(CPLScopeChange *)self _additionalDescription];
      v27 = v8;
      v28 = v12;
      v24 = v3;
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

      v12 = [(CPLScopeChange *)self _additionalDescription];
      v25 = v19;
      v27 = v12;
      v23 = v10;
      v24 = v3;
      v22 = v9;
      v13 = @"<%@ %@%s (%@) - %@%s%@>";
    }

    v18 = [v5 initWithFormat:v13, v6, v7, v22, v23, v24, v25, v27, v28];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_opt_class();
    v7 = [(CPLScopeChange *)self scopeIdentifier];
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

    v12 = [(CPLScopeChange *)self _additionalDescription];
    v18 = [v14 initWithFormat:@"<%@ %@%s (%@)%s%@>", v15, v7, v17, v10, v16, v12, v26, v28];
  }

  v20 = v18;

  return v20;
}

- (id)scopeIdentifier
{
  v2 = [(CPLScopeChange *)self _scopedIdentifier];
  v3 = [v2 identifier];

  return v3;
}

- (id)_scopedIdentifier
{
  v4.receiver = self;
  v4.super_class = CPLScopeChange;
  v2 = [(CPLRecordChange *)&v4 scopedIdentifier];

  return v2;
}

- (CPLScopeChange)initWithScopeIdentifier:(id)a3 type:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v13 = [CPLScopeChange scopeChangeClassForType:a4];
    if (v13 != objc_opt_class())
    {
      v12 = [[v13 alloc] initWithScopeIdentifier:v7 type:a4];
      goto LABEL_8;
    }
  }

  else if (([objc_opt_class() isSubclassOfClass:{+[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", a4)}] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [CPLScopeChange descriptionForScopeType:a4];
        *buf = 138412546;
        v28 = v18;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Invalid class %@ for scope type %@", buf, 0x16u);
      }
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
    v23 = objc_opt_class();
    v24 = [CPLScopeChange descriptionForScopeType:a4];
    [v21 handleFailureInMethod:a2 object:self file:v22 lineNumber:245 description:{@"Invalid class %@ for scope type %@", v23, v24}];

    abort();
  }

  v26.receiver = self;
  v26.super_class = CPLScopeChange;
  v9 = [(CPLScopeChange *)&v26 init];
  v10 = v9;
  if (v9)
  {
    v9->_scopeType = a4;
    v11 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"__SCOPE__" identifier:v7];
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

- (void)_setChangeType:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = CPLScopeChange;
  [(CPLRecordChange *)&v3 setChangeType:a3];
}

+ (id)newDeleteScopeChangeWithScopeIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithScopeIdentifier:v6 type:a4];

  [v7 _setChangeType:1024];
  return v7;
}

+ (id)newScopeChangeInferClassWithScopeIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(objc_msgSend(a1 scopeChangeClassForType:{a4)), "initWithScopeIdentifier:type:", v6, a4}];

  return v7;
}

+ (id)newScopeChangeWithScopeIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithScopeIdentifier:v6 type:a4];

  return v7;
}

+ (BOOL)shouldAutoActivateScopeWithType:(int64_t)a3
{
  v6 = [a1 supportsActivationOfScopeWithType:?];
  v7 = 0;
  if (!v6)
  {
    return v7 & 1;
  }

  if (a3 > 5)
  {
    if ((a3 - 7) >= 2)
    {
      if (a3 == 6 || a3 == 0x7FFFFFFF)
      {
        return v7 & 1;
      }

LABEL_12:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
      [v8 handleFailureInMethod:a2 object:a1 file:v9 lineNumber:165 description:{@"unknown scope type %ld", a3}];

      abort();
    }

LABEL_13:
    v7 = 1;
    return v7 & 1;
  }

  if (a3 < 2)
  {
    return v7 & 1;
  }

  if ((a3 - 2) < 2)
  {
    goto LABEL_13;
  }

  if ((a3 - 4) >= 2)
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

+ (BOOL)supportsActivationOfScopeWithType:(int64_t)a3
{
  if (a3 <= 5)
  {
    if ((a3 - 1) < 3)
    {
      v4 = 1;
      return v4 & 1;
    }

    if ((a3 - 4) < 2)
    {
      v4 = overridesSharedLibraryFeatureFlag ^ 1 | isSharedLibraryFeatureEnabled;
      return v4 & 1;
    }

    if (a3)
    {
LABEL_15:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
      [v9 handleFailureInMethod:a2 object:a1 file:v10 lineNumber:131 description:{@"unknown scope type %ld", a3}];

      abort();
    }

LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  if ((a3 - 7) >= 2)
  {
    if (a3 != 6 && a3 != 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  return CPLIsCollectionShareFeatureEnabled();
}

+ (Class)scopeChangeClassForType:(int64_t)a3
{
  v3 = off_1E861A310;
  if (a3 <= 3)
  {
    if ((a3 - 2) < 2)
    {
      v3 = off_1E861A168;
      goto LABEL_15;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v3 = off_1E861A0E8;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a3 <= 6)
  {
    if ((a3 - 4) < 2)
    {
      v3 = off_1E861A0F0;
      goto LABEL_15;
    }

    if (a3 == 6)
    {
      v3 = off_1E861A3B0;
      goto LABEL_15;
    }

LABEL_18:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
    [v10 handleFailureInMethod:a2 object:a1 file:v11 lineNumber:104 description:{@"unknown scope type %ld", a3}];

    abort();
  }

  if ((a3 - 7) < 2)
  {
    v3 = off_1E8619EB0;
    goto LABEL_15;
  }

  if (a3 != 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

LABEL_15:
  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

+ (id)descriptionForBusyState:(int64_t)a3
{
  v4 = [a1 mappingForScopeBusyStateDescription];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown busy state (%ld)", a3];
  }

  v8 = v7;

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

+ (id)descriptionForScopeType:(int64_t)a3
{
  v4 = [a1 mappingForScopeTypeDescription];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown type (%ld)", a3];
  }

  v8 = v7;

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

- (CPLScopeChange)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || (v7 = +[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", [v4 decodeIntegerForKey:@"scopeType"]), v7 == v5))
  {
    v12.receiver = self;
    v12.super_class = CPLScopeChange;
    self = [(CPLRecordChange *)&v12 initWithCoder:v4];
    v6 = self;
  }

  else
  {
    v8 = v7;
    v6 = [[v7 alloc] initWithCoder:v4];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Automatically upgrading %@ to %@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"scope"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"pullTaskItem") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"recordModificationDate"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLScopeChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

@end
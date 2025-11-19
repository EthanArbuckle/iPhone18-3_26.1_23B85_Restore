@interface CPLPersonChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (BOOL)serverSupportsGraphPeopleHome;
+ (BOOL)serverSupportsMergeTargetRef;
- (BOOL)validateRecordForTracker:(id)a3;
- (NSDictionary)contactMatchingDictionary;
- (id)mergeTargetPersonScopedIdentifier;
- (void)setContactMatchingDictionary:(id)a3;
- (void)setMergeTargetPersonScopedIdentifier:(id)a3;
@end

@implementation CPLPersonChange

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"contactMatchingDictionary"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLPersonChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"contactMatchingDictionary"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLPersonChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (void)setMergeTargetPersonScopedIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = [v22 scopeIdentifier];
  v6 = [(CPLRecordChange *)self scopedIdentifier];
  v7 = [v6 scopeIdentifier];

  if (v5 && v7)
  {
    v8 = [v5 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v5 | v7)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          v11 = [(CPLRecordChange *)self scopedIdentifier];
          v12 = [v11 scopeIdentifier];
          v13 = [v22 scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPersonChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:64 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLPersonChange *)self setMergeTargetPersonIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)mergeTargetPersonScopedIdentifier
{
  v3 = [(CPLPersonChange *)self mergeTargetPersonIdentifier];
  if (v3)
  {
    v4 = [CPLScopedIdentifier alloc];
    v5 = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:v5 identifier:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setContactMatchingDictionary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v9];
    v5 = v9;
    if (!v4 && (_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Failed to encode contactMatchingDictionary as a plist: %@", buf, 0xCu);
      }
    }

    [(CPLPersonChange *)self setContactDescriptor:v4];

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(CPLPersonChange *)self setContactDescriptor:0];
  }
}

- (NSDictionary)contactMatchingDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(CPLPersonChange *)self contactDescriptor];
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:&v8];
    v4 = v8;
    if (!v3 && (_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Failed to decode contactDescriptor as a plist: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)serverSupportsMergeTargetRef
{
  if (serverSupportsMergeTargetRef_onceToken != -1)
  {
    dispatch_once(&serverSupportsMergeTargetRef_onceToken, &__block_literal_global_77_16175);
  }

  return serverSupportsMergeTargetRef_serverSupportsMergeTargetRef;
}

uint64_t __64__CPLPersonChange_DefaultsSupport__serverSupportsMergeTargetRef__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v0 objectForKey:@"CPLServerSupportsMergeTargetRef"];

  v1 = v4;
  if (v4)
  {
    v2 = [v4 BOOLValue];
    v1 = v4;
  }

  else
  {
    v2 = 1;
  }

  serverSupportsMergeTargetRef_serverSupportsMergeTargetRef = v2;

  return MEMORY[0x1EEE66BB8](v2, v1);
}

+ (BOOL)serverSupportsGraphPeopleHome
{
  if (serverSupportsGraphPeopleHome_onceToken != -1)
  {
    dispatch_once(&serverSupportsGraphPeopleHome_onceToken, &__block_literal_global_16180);
  }

  return serverSupportsGraphPeopleHome_serverSupportsGraphPeopleHome;
}

uint64_t __65__CPLPersonChange_DefaultsSupport__serverSupportsGraphPeopleHome__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v0 objectForKey:@"CPLServerSupportsGraphPeopleHome"];

  v1 = v4;
  if (v4)
  {
    v2 = [v4 BOOLValue];
    v1 = v4;
  }

  else
  {
    v2 = 1;
  }

  serverSupportsGraphPeopleHome_serverSupportsGraphPeopleHome = v2;

  return MEMORY[0x1EEE66BB8](v2, v1);
}

- (BOOL)validateRecordForTracker:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLPersonChange;
  if (![(CPLRecordChange *)&v9 validateRecordForTracker:v4])
  {
    goto LABEL_7;
  }

  if ([(CPLRecordChange *)self hasChangeType:2]&& +[CPLPersonChange serverSupportsGraphPeopleHome]&& ![(CPLPersonChange *)self verifiedType])
  {
    v6 = [v4 pushChangeTasks];
    v7 = [(CPLRecordChange *)self scopedIdentifier];
    [v6 addTask:0 forRecordWithScopedIdentifier:v7];

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:

  return v5;
}

@end
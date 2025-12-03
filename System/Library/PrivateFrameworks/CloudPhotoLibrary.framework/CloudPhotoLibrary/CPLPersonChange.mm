@interface CPLPersonChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (BOOL)serverSupportsGraphPeopleHome;
+ (BOOL)serverSupportsMergeTargetRef;
- (BOOL)validateRecordForTracker:(id)tracker;
- (NSDictionary)contactMatchingDictionary;
- (id)mergeTargetPersonScopedIdentifier;
- (void)setContactMatchingDictionary:(id)dictionary;
- (void)setMergeTargetPersonScopedIdentifier:(id)identifier;
@end

@implementation CPLPersonChange

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqual:@"contactMatchingDictionary"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLPersonChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqual:@"contactMatchingDictionary"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLPersonChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (void)setMergeTargetPersonScopedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  scopeIdentifier2 = [scopedIdentifier scopeIdentifier];

  if (scopeIdentifier && scopeIdentifier2)
  {
    v8 = [scopeIdentifier isEqual:scopeIdentifier2];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (scopeIdentifier | scopeIdentifier2)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          scopeIdentifier3 = [scopedIdentifier2 scopeIdentifier];
          scopeIdentifier4 = [identifierCopy scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = scopeIdentifier3;
          v27 = 2112;
          v28 = scopeIdentifier4;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPersonChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:64 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLPersonChange *)self setMergeTargetPersonIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)mergeTargetPersonScopedIdentifier
{
  mergeTargetPersonIdentifier = [(CPLPersonChange *)self mergeTargetPersonIdentifier];
  if (mergeTargetPersonIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:mergeTargetPersonIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setContactMatchingDictionary:(id)dictionary
{
  v12 = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v9];
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
  contactDescriptor = [(CPLPersonChange *)self contactDescriptor];
  if (contactDescriptor)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:contactDescriptor options:0 format:0 error:&v8];
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

- (BOOL)validateRecordForTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = CPLPersonChange;
  if (![(CPLRecordChange *)&v9 validateRecordForTracker:trackerCopy])
  {
    goto LABEL_7;
  }

  if ([(CPLRecordChange *)self hasChangeType:2]&& +[CPLPersonChange serverSupportsGraphPeopleHome]&& ![(CPLPersonChange *)self verifiedType])
  {
    pushChangeTasks = [trackerCopy pushChangeTasks];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    [pushChangeTasks addTask:0 forRecordWithScopedIdentifier:scopedIdentifier];

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = 1;
LABEL_8:

  return v5;
}

@end
@interface CPLCommentChange
+ (BOOL)supportsRecordModificationDate;
- (BOOL)validateChangeWithError:(id *)a3;
- (BOOL)validateFullRecord;
- (id)assetScopedIdentifier;
- (void)setAssetScopedIdentifier:(id)a3;
@end

@implementation CPLCommentChange

- (BOOL)validateChangeWithError:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CPLCommentChange;
  LODWORD(v5) = [(CPLRecordChange *)&v9 validateChangeWithError:?];
  if (v5)
  {
    if ([(CPLRecordChange *)self hasChangeType:2])
    {
      assetIdentifier = self->_assetIdentifier;
      LOBYTE(v5) = assetIdentifier != 0;
      if (a3 && !assetIdentifier)
      {
        v7 = [CPLErrors cplErrorWithCode:18 description:@"%@ has no asset identifier", self];
        v5 = v7;
        LOBYTE(v5) = 0;
        *a3 = v7;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)validateFullRecord
{
  v5.receiver = self;
  v5.super_class = CPLCommentChange;
  v3 = [(CPLRecordChange *)&v5 validateFullRecord];
  if (v3)
  {
    LOBYTE(v3) = self->_assetIdentifier != 0;
  }

  return v3;
}

- (void)setAssetScopedIdentifier:(id)a3
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
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLCommentChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:32 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLCommentChange *)self setAssetIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)assetScopedIdentifier
{
  v3 = [(CPLCommentChange *)self assetIdentifier];
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

+ (BOOL)supportsRecordModificationDate
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CPLUsesSandboxEnvironment"];

  return v3;
}

@end
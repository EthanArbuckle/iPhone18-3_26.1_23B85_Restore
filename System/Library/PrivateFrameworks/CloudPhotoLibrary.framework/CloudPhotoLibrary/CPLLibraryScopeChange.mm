@interface CPLLibraryScopeChange
- (BOOL)hasProblematicFormerSharedScope;
- (id)rewindAnchorsPerSharingScopes;
- (void)setRewindAnchorsPerSharingScopes:(id)a3;
@end

@implementation CPLLibraryScopeChange

- (BOOL)hasProblematicFormerSharedScope
{
  v2 = [(CPLLibraryScopeChange *)self problematicFormerSharedScopeIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (void)setRewindAnchorsPerSharingScopes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v12 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v12];
    v7 = v12;
    if (!v6)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v14 = v5;
          v15 = 2112;
          v16 = v7;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Failed to serialize %@ to NSData *rewindAnchorsPerSharingScopesData: %@", buf, 0x16u);
        }
      }

      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopeChange.m"];
      [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:405 description:{@"Failed to serialize %@ to NSData *rewindAnchorsPerSharingScopesData: %@", v5, v7}];

      abort();
    }

    [(CPLLibraryScopeChange *)self setRewindAnchorsPerSharingScopesData:v6];
  }

  else
  {
    [(CPLLibraryScopeChange *)self setRewindAnchorsPerSharingScopesData:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)rewindAnchorsPerSharingScopes
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CPLLibraryScopeChange *)self rewindAnchorsPerSharingScopesData];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v9];
  v5 = v9;
  if (!v4)
  {
    if (_CPLSilentLogging)
    {
LABEL_13:
      v4 = 0;
      goto LABEL_14;
    }

    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Failed to deserialize rewindAnchorsPerSharingScopesData for %@: %@", buf, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = self;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Invalid rewindAnchorsPerSharingScopesData for %@: %@", buf, 0x16u);
      }
    }

    goto LABEL_12;
  }

LABEL_14:

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
@interface CPLAlbumChange
- (BOOL)validateRecordForTracker:(id)a3;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)parentScopedIdentifier;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (void)setParentScopedIdentifier:(id)a3;
@end

@implementation CPLAlbumChange

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CPLAlbumChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLAlbumChange *)self parentScopedIdentifier];
    if (v8)
    {
      v9 = [v6 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setParentScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud parentScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = v8;
            v18 = 2112;
            v19 = self;
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map cloud parentScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CPLAlbumChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLAlbumChange *)self parentScopedIdentifier];
    if (v8)
    {
      v9 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setParentScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local parentScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = v8;
            v18 = 2112;
            v19 = self;
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map local parentScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)scopedIdentifiersForMapping
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v8.receiver = self;
  v8.super_class = CPLAlbumChange;
  v4 = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  v6 = [(CPLAlbumChange *)self parentScopedIdentifier];
  if (v6)
  {
    [v5 addObject:v6];
  }

  return v5;
}

- (BOOL)validateRecordForTracker:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLAlbumChange;
  if ([(CPLRecordChange *)&v11 validateRecordForTracker:v4])
  {
    if ([(CPLRecordChange *)self hasChangeType:2])
    {
      v5 = [(CPLAlbumChange *)self parentScopedIdentifier];
      if (v5 && ([v4 knowsClientRecordWithScopedIdentifier:v5] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v13 = v5;
            v14 = 2112;
            v15 = self;
            _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Client pushed an album with missing parent album %@: %@", buf, 0x16u);
          }
        }

        v8 = [v4 pushChangeTasks];
        [v8 addTask:5 forRecordWithScopedIdentifier:v5];

        v6 = 0;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_importedByBundleIdentifier == a3)
  {
    v5 = &__block_literal_global_24697;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CPLAlbumChange;
    v5 = [(CPLRecordChange *)&v7 checkDefaultValueBlockForPropertyWithSelector:?];
  }

  return v5;
}

BOOL __64__CPLAlbumChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 importedByBundleIdentifier];
  v3 = v2 == 0;

  return v3;
}

- (id)propertiesDescription
{
  v3 = [(CPLAlbumChange *)self albumType];
  if (v3 >= 8)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (%lu)", -[CPLAlbumChange albumType](self, "albumType")];
  }

  else
  {
    v4 = off_1E8620AC8[v3];
  }

  v5 = [(CPLAlbumChange *)self parentIdentifier];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(CPLAlbumChange *)self name];
  v8 = [(CPLAlbumChange *)self position];
  if (v5)
  {
    [v6 stringWithFormat:@"[%@] title: %@, @%ld in: %@", v4, v7, v8, v5];
  }

  else
  {
    [v6 stringWithFormat:@"[%@] title: %@, @%ld", v4, v7, v8, v11];
  }
  v9 = ;

  return v9;
}

- (void)setParentScopedIdentifier:(id)a3
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
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAlbumChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:21 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLAlbumChange *)self setParentIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)parentScopedIdentifier
{
  v3 = [(CPLAlbumChange *)self parentIdentifier];
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

@end
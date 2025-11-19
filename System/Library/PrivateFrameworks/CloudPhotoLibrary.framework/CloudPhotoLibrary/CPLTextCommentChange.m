@interface CPLTextCommentChange
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
@end

@implementation CPLTextCommentChange

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CPLTextCommentChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLCommentChange *)self assetScopedIdentifier];
    if (v8)
    {
      v9 = [v6 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setAssetScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud assetScopedIdentifier in %@", objc_opt_class()];
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
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map cloud assetScopedIdentifier (%@) of %@", buf, 0x16u);
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
  v15.super_class = CPLTextCommentChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLCommentChange *)self assetScopedIdentifier];
    if (v8)
    {
      v9 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setAssetScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local assetScopedIdentifier in %@", objc_opt_class()];
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
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map local assetScopedIdentifier (%@) of %@", buf, 0x16u);
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
  v8.super_class = CPLTextCommentChange;
  v4 = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  v6 = [(CPLCommentChange *)self assetScopedIdentifier];
  if (v6)
  {
    [v5 addObject:v6];
  }

  return v5;
}

@end
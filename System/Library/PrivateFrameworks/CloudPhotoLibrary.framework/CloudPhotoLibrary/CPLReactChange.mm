@interface CPLReactChange
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
@end

@implementation CPLReactChange

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLReactChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    assetScopedIdentifier = [(CPLCommentChange *)self assetScopedIdentifier];
    if (assetScopedIdentifier)
    {
      v9 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:assetScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setAssetScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud assetScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = assetScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLReactChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    assetScopedIdentifier = [(CPLCommentChange *)self assetScopedIdentifier];
    if (assetScopedIdentifier)
    {
      v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:assetScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setAssetScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local assetScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = assetScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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
  v8.super_class = CPLReactChange;
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  assetScopedIdentifier = [(CPLCommentChange *)self assetScopedIdentifier];
  if (assetScopedIdentifier)
  {
    [v5 addObject:assetScopedIdentifier];
  }

  return v5;
}

@end
@interface CPLAlbumChange
- (BOOL)validateRecordForTracker:(id)tracker;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)parentScopedIdentifier;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
- (void)setParentScopedIdentifier:(id)identifier;
@end

@implementation CPLAlbumChange

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLAlbumChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    parentScopedIdentifier = [(CPLAlbumChange *)self parentScopedIdentifier];
    if (parentScopedIdentifier)
    {
      v9 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:parentScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setParentScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud parentScopedIdentifier in %@", objc_opt_class()];
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
            v17 = parentScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLAlbumChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    parentScopedIdentifier = [(CPLAlbumChange *)self parentScopedIdentifier];
    if (parentScopedIdentifier)
    {
      v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:parentScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setParentScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local parentScopedIdentifier in %@", objc_opt_class()];
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
            v17 = parentScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  parentScopedIdentifier = [(CPLAlbumChange *)self parentScopedIdentifier];
  if (parentScopedIdentifier)
  {
    [v5 addObject:parentScopedIdentifier];
  }

  return v5;
}

- (BOOL)validateRecordForTracker:(id)tracker
{
  v16 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  v11.receiver = self;
  v11.super_class = CPLAlbumChange;
  if ([(CPLRecordChange *)&v11 validateRecordForTracker:trackerCopy])
  {
    if ([(CPLRecordChange *)self hasChangeType:2])
    {
      parentScopedIdentifier = [(CPLAlbumChange *)self parentScopedIdentifier];
      if (parentScopedIdentifier && ([trackerCopy knowsClientRecordWithScopedIdentifier:parentScopedIdentifier] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v13 = parentScopedIdentifier;
            v14 = 2112;
            selfCopy = self;
            _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Client pushed an album with missing parent album %@: %@", buf, 0x16u);
          }
        }

        pushChangeTasks = [trackerCopy pushChangeTasks];
        [pushChangeTasks addTask:5 forRecordWithScopedIdentifier:parentScopedIdentifier];

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

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_importedByBundleIdentifier == selector)
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
  albumType = [(CPLAlbumChange *)self albumType];
  if (albumType >= 8)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown (%lu)", -[CPLAlbumChange albumType](self, "albumType")];
  }

  else
  {
    v4 = off_1E8620AC8[albumType];
  }

  parentIdentifier = [(CPLAlbumChange *)self parentIdentifier];
  v6 = MEMORY[0x1E696AEC0];
  name = [(CPLAlbumChange *)self name];
  position = [(CPLAlbumChange *)self position];
  if (parentIdentifier)
  {
    [v6 stringWithFormat:@"[%@] title: %@, @%ld in: %@", v4, name, position, parentIdentifier];
  }

  else
  {
    [v6 stringWithFormat:@"[%@] title: %@, @%ld", v4, name, position, v11];
  }
  v9 = ;

  return v9;
}

- (void)setParentScopedIdentifier:(id)identifier
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
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAlbumChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:21 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLAlbumChange *)self setParentIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)parentScopedIdentifier
{
  parentIdentifier = [(CPLAlbumChange *)self parentIdentifier];
  if (parentIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:parentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
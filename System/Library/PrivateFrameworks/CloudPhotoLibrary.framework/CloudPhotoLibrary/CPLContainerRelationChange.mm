@interface CPLContainerRelationChange
+ (id)relationToContainerWithIdentifier:(id)identifier;
+ (id)relationWithItemScopedIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier;
- (BOOL)validateFullRecord;
- (id)containerScopedIdentifier;
- (id)description;
- (id)itemScopedIdentifier;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
- (void)setContainerScopedIdentifier:(id)identifier;
- (void)setItemScopedIdentifier:(id)identifier;
@end

@implementation CPLContainerRelationChange

- (id)itemScopedIdentifier
{
  itemIdentifier = [(CPLContainerRelationChange *)self itemIdentifier];
  if (itemIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:itemIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)containerScopedIdentifier
{
  relation = [(CPLContainerRelationChange *)self relation];
  containerIdentifier = [relation containerIdentifier];

  if (containerIdentifier)
  {
    v5 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:scopedIdentifier identifier:containerIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = [(CPLContainerRelationChange *)self copy];
  v28 = 0;
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    v27 = 0;
    itemScopedIdentifier = [(CPLContainerRelationChange *)self itemScopedIdentifier];
    if (itemScopedIdentifier)
    {
      v10 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:itemScopedIdentifier isFinal:&v27];
      if (v10)
      {
        [v7 setItemScopedIdentifier:v10];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud itemScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v11];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = itemScopedIdentifier;
            v31 = 2112;
            selfCopy2 = self;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Can't map cloud itemScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    v27 = 0;
    containerScopedIdentifier = [(CPLContainerRelationChange *)self containerScopedIdentifier];
    if (containerScopedIdentifier)
    {
      v14 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:containerScopedIdentifier isFinal:&v27];
      if (v14)
      {
        [v7 setContainerScopedIdentifier:v14];
      }

      else
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud containerScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v15];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = containerScopedIdentifier;
            v31 = 2112;
            selfCopy2 = self;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Can't map cloud containerScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    if (v7)
    {
      v17 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v28];
      if (v17)
      {
        proposedLocalScopedIdentifier = v17;
      }

      else
      {
        itemIdentifier = [v7 itemIdentifier];
        if (!itemIdentifier)
        {
          goto LABEL_30;
        }

        v20 = itemIdentifier;
        relation = [v7 relation];
        containerIdentifier = [relation containerIdentifier];

        if (containerIdentifier)
        {
          relation2 = [v7 relation];
          itemScopedIdentifier2 = [v7 itemScopedIdentifier];
          proposedLocalScopedIdentifier = [relation2 proposedScopedIdentifierForItemScopedIdentifier:itemScopedIdentifier2];
        }

        else
        {
LABEL_30:
          proposedLocalScopedIdentifier = [(CPLRecordChange *)self proposedLocalScopedIdentifier];
        }

        if (([mappingCopy addCloudScopedIdentifier:scopedIdentifier forLocalScopedIdentifier:proposedLocalScopedIdentifier isFinal:1 direction:2 error:error] & 1) == 0)
        {

          v7 = 0;
          goto LABEL_33;
        }
      }

      [v7 setScopedIdentifier:proposedLocalScopedIdentifier];
LABEL_33:
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = [(CPLContainerRelationChange *)self copy];
  v28 = 0;
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v28];
    if (v9)
    {
      [v7 setScopedIdentifier:v9];
    }

    v27 = 0;
    itemScopedIdentifier = [(CPLContainerRelationChange *)self itemScopedIdentifier];
    if (itemScopedIdentifier)
    {
      v11 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:itemScopedIdentifier isFinal:&v27];
      if (v11)
      {
        [v7 setItemScopedIdentifier:v11];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local itemScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v12];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = itemScopedIdentifier;
            v31 = 2112;
            selfCopy2 = self;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Can't map local itemScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    v27 = 0;
    containerScopedIdentifier = [(CPLContainerRelationChange *)self containerScopedIdentifier];
    if (containerScopedIdentifier)
    {
      v15 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:containerScopedIdentifier isFinal:&v27];
      if (v15)
      {
        [v7 setContainerScopedIdentifier:v15];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local containerScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v16];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = containerScopedIdentifier;
            v31 = 2112;
            selfCopy2 = self;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Can't map local containerScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    if (v9 || !v7)
    {
      goto LABEL_37;
    }

    itemIdentifier = [v7 itemIdentifier];
    if (!itemIdentifier)
    {
      goto LABEL_32;
    }

    v19 = itemIdentifier;
    relation = [v7 relation];
    containerIdentifier = [relation containerIdentifier];

    if (containerIdentifier)
    {
      relation2 = [v7 relation];
      itemScopedIdentifier2 = [v7 itemScopedIdentifier];
      proposedCloudScopedIdentifier = [relation2 proposedScopedIdentifierForItemScopedIdentifier:itemScopedIdentifier2];

      if (!proposedCloudScopedIdentifier)
      {
LABEL_31:

        v9 = 0;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_32:
      proposedCloudScopedIdentifier = [(CPLRecordChange *)self proposedCloudScopedIdentifier];
      if (!proposedCloudScopedIdentifier)
      {
        goto LABEL_31;
      }
    }

    v9 = [mappingCopy setupCloudScopedIdentifier:proposedCloudScopedIdentifier forLocalScopedIdentifier:scopedIdentifier isFinal:0 direction:1 error:error];

    if (v9)
    {
      [v7 setScopedIdentifier:v9];
LABEL_37:

      goto LABEL_38;
    }

LABEL_36:
    v7 = 0;
    goto LABEL_37;
  }

LABEL_38:

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)scopedIdentifiersForMapping
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = CPLContainerRelationChange;
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v9 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  itemScopedIdentifier = [(CPLContainerRelationChange *)self itemScopedIdentifier];
  if (itemScopedIdentifier)
  {
    [v5 addObject:itemScopedIdentifier];
  }

  containerScopedIdentifier = [(CPLContainerRelationChange *)self containerScopedIdentifier];
  if (containerScopedIdentifier)
  {
    [v5 addObject:containerScopedIdentifier];
  }

  return v5;
}

- (BOOL)validateFullRecord
{
  v6.receiver = self;
  v6.super_class = CPLContainerRelationChange;
  if (![(CPLRecordChange *)&v6 validateFullRecord]|| !self->_itemIdentifier)
  {
    return 0;
  }

  containerIdentifier = [(CPLContainerRelation *)self->_relation containerIdentifier];
  v4 = containerIdentifier != 0;

  return v4;
}

- (id)description
{
  changeType = [(CPLRecordChange *)self changeType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (changeType == 1024)
  {
    recordModificationDate = [objc_opt_class() descriptionForChangeType:{-[CPLRecordChange changeType](self, "changeType")}];
    v8 = [v4 stringWithFormat:@"<%@ %@ %@>", v5, scopedIdentifier, recordModificationDate];
  }

  else
  {
    recordModificationDate = [(CPLRecordChange *)self recordModificationDate];
    v9 = [objc_opt_class() descriptionForChangeType:{-[CPLRecordChange changeType](self, "changeType")}];
    itemIdentifier = [(CPLContainerRelationChange *)self itemIdentifier];
    relation = [(CPLContainerRelationChange *)self relation];
    v8 = [v4 stringWithFormat:@"<%@ %@ modified: %@ %@ %@ %@>", v5, scopedIdentifier, recordModificationDate, v9, itemIdentifier, relation];
  }

  return v8;
}

- (void)setContainerScopedIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
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
          v25 = v10;
          v26 = 2112;
          v27 = scopeIdentifier3;
          v28 = 2112;
          v29 = scopeIdentifier4;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLContainerChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:75 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  relation = [(CPLContainerRelationChange *)self relation];
  identifier = [identifierCopy identifier];
  [relation setContainerIdentifier:identifier];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setItemScopedIdentifier:(id)identifier
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
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLContainerChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:66 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLContainerRelationChange *)self setItemIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)relationWithItemScopedIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier
{
  identifierCopy = identifier;
  v7 = [self relationToContainerWithIdentifier:containerIdentifier];
  v8 = [v7 proposedScopedIdentifierForItemScopedIdentifier:identifierCopy];
  v9 = [self newRecordWithScopedIdentifier:v8];

  identifier = [identifierCopy identifier];

  [v9 setItemIdentifier:identifier];
  [v9 setRelation:v7];

  return v9;
}

+ (id)relationToContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(CPLContainerRelation);
  [(CPLContainerRelation *)v4 setContainerIdentifier:identifierCopy];

  return v4;
}

@end
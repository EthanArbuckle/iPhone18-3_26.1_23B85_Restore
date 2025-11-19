@interface CPLContainerRelationChange
+ (id)relationToContainerWithIdentifier:(id)a3;
+ (id)relationWithItemScopedIdentifier:(id)a3 containerIdentifier:(id)a4;
- (BOOL)validateFullRecord;
- (id)containerScopedIdentifier;
- (id)description;
- (id)itemScopedIdentifier;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (void)setContainerScopedIdentifier:(id)a3;
- (void)setItemScopedIdentifier:(id)a3;
@end

@implementation CPLContainerRelationChange

- (id)itemScopedIdentifier
{
  v3 = [(CPLContainerRelationChange *)self itemIdentifier];
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

- (id)containerScopedIdentifier
{
  v3 = [(CPLContainerRelationChange *)self relation];
  v4 = [v3 containerIdentifier];

  if (v4)
  {
    v5 = [CPLScopedIdentifier alloc];
    v6 = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:v6 identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLContainerRelationChange *)self copy];
  v28 = 0;
  v8 = [(CPLRecordChange *)self scopedIdentifier];
  if (v8)
  {
    v27 = 0;
    v9 = [(CPLContainerRelationChange *)self itemScopedIdentifier];
    if (v9)
    {
      v10 = [v6 localScopedIdentifierForCloudScopedIdentifier:v9 isFinal:&v27];
      if (v10)
      {
        [v7 setItemScopedIdentifier:v10];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud itemScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v11];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v9;
            v31 = 2112;
            v32 = self;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Can't map cloud itemScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    v27 = 0;
    v13 = [(CPLContainerRelationChange *)self containerScopedIdentifier];
    if (v13)
    {
      v14 = [v6 localScopedIdentifierForCloudScopedIdentifier:v13 isFinal:&v27];
      if (v14)
      {
        [v7 setContainerScopedIdentifier:v14];
      }

      else
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud containerScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v15];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = self;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Can't map cloud containerScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    if (v7)
    {
      v17 = [v6 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v28];
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v19 = [v7 itemIdentifier];
        if (!v19)
        {
          goto LABEL_30;
        }

        v20 = v19;
        v21 = [v7 relation];
        v22 = [v21 containerIdentifier];

        if (v22)
        {
          v23 = [v7 relation];
          v24 = [v7 itemScopedIdentifier];
          v18 = [v23 proposedScopedIdentifierForItemScopedIdentifier:v24];
        }

        else
        {
LABEL_30:
          v18 = [(CPLRecordChange *)self proposedLocalScopedIdentifier];
        }

        if (([v6 addCloudScopedIdentifier:v8 forLocalScopedIdentifier:v18 isFinal:1 direction:2 error:a4] & 1) == 0)
        {

          v7 = 0;
          goto LABEL_33;
        }
      }

      [v7 setScopedIdentifier:v18];
LABEL_33:
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLContainerRelationChange *)self copy];
  v28 = 0;
  v8 = [(CPLRecordChange *)self scopedIdentifier];
  if (v8)
  {
    v9 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v28];
    if (v9)
    {
      [v7 setScopedIdentifier:v9];
    }

    v27 = 0;
    v10 = [(CPLContainerRelationChange *)self itemScopedIdentifier];
    if (v10)
    {
      v11 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v10 isFinal:&v27];
      if (v11)
      {
        [v7 setItemScopedIdentifier:v11];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local itemScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v12];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v10;
            v31 = 2112;
            v32 = self;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "Can't map local itemScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

    v27 = 0;
    v14 = [(CPLContainerRelationChange *)self containerScopedIdentifier];
    if (v14)
    {
      v15 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v14 isFinal:&v27];
      if (v15)
      {
        [v7 setContainerScopedIdentifier:v15];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local containerScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v16];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v14;
            v31 = 2112;
            v32 = self;
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

    v18 = [v7 itemIdentifier];
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = [v7 relation];
    v21 = [v20 containerIdentifier];

    if (v21)
    {
      v22 = [v7 relation];
      v23 = [v7 itemScopedIdentifier];
      v24 = [v22 proposedScopedIdentifierForItemScopedIdentifier:v23];

      if (!v24)
      {
LABEL_31:

        v9 = 0;
        goto LABEL_36;
      }
    }

    else
    {
LABEL_32:
      v24 = [(CPLRecordChange *)self proposedCloudScopedIdentifier];
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    v9 = [v6 setupCloudScopedIdentifier:v24 forLocalScopedIdentifier:v8 isFinal:0 direction:1 error:a4];

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
  v4 = [(CPLRecordChange *)&v9 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  v6 = [(CPLContainerRelationChange *)self itemScopedIdentifier];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(CPLContainerRelationChange *)self containerScopedIdentifier];
  if (v7)
  {
    [v5 addObject:v7];
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

  v3 = [(CPLContainerRelation *)self->_relation containerIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (id)description
{
  v3 = [(CPLRecordChange *)self changeType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(CPLRecordChange *)self scopedIdentifier];
  if (v3 == 1024)
  {
    v7 = [objc_opt_class() descriptionForChangeType:{-[CPLRecordChange changeType](self, "changeType")}];
    v8 = [v4 stringWithFormat:@"<%@ %@ %@>", v5, v6, v7];
  }

  else
  {
    v7 = [(CPLRecordChange *)self recordModificationDate];
    v9 = [objc_opt_class() descriptionForChangeType:{-[CPLRecordChange changeType](self, "changeType")}];
    v10 = [(CPLContainerRelationChange *)self itemIdentifier];
    v11 = [(CPLContainerRelationChange *)self relation];
    v8 = [v4 stringWithFormat:@"<%@ %@ modified: %@ %@ %@ %@>", v5, v6, v7, v9, v10, v11];
  }

  return v8;
}

- (void)setContainerScopedIdentifier:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v5 = [v23 scopeIdentifier];
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
          v13 = [v23 scopeIdentifier];
          *buf = 138412802;
          v25 = v10;
          v26 = 2112;
          v27 = v12;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLContainerChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v23 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:75 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [(CPLContainerRelationChange *)self relation];
  v21 = [v23 identifier];
  [v20 setContainerIdentifier:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setItemScopedIdentifier:(id)a3
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
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLContainerChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:66 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLContainerRelationChange *)self setItemIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)relationWithItemScopedIdentifier:(id)a3 containerIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 relationToContainerWithIdentifier:a4];
  v8 = [v7 proposedScopedIdentifierForItemScopedIdentifier:v6];
  v9 = [a1 newRecordWithScopedIdentifier:v8];

  v10 = [v6 identifier];

  [v9 setItemIdentifier:v10];
  [v9 setRelation:v7];

  return v9;
}

+ (id)relationToContainerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CPLContainerRelation);
  [(CPLContainerRelation *)v4 setContainerIdentifier:v3];

  return v4;
}

@end
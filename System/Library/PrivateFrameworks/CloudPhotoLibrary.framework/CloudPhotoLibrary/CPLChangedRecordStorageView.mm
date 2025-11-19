@interface CPLChangedRecordStorageView
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (CPLChangedRecordStorageView)initWithChangeStorage:(id)a3 overStorageView:(id)a4;
- (id)description;
- (id)recordViewWithScopedIdentifier:(id)a3;
- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)redactedDescription;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3;
- (id)resourceOfType:(unint64_t)a3 forRecordWithScopedIdentifier:(id)a4 recordClass:(Class *)a5 error:(id *)a6;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLChangedRecordStorageView

- (id)resourceOfType:(unint64_t)a3 forRecordWithScopedIdentifier:(id)a4 recordClass:(Class *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(CPLChangedRecordStorageView *)self changeStorage];
  v12 = [v11 changeWithScopedIdentifier:v10];

  if (!v12 || ([v12 isDelete] & 1) == 0 && !objc_msgSend(v12, "hasChangeType:", 8))
  {
    goto LABEL_16;
  }

  if ([v12 isDelete])
  {
    v13 = [CPLErrors cplErrorWithCode:25 description:@"Record %@ has just been deleted", v10];
    goto LABEL_11;
  }

  if (([v12 supportsResources] & 1) == 0)
  {
    v13 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
LABEL_11:
    v16 = v13;
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v14 = [v12 resourceForType:a3];
  if (v14)
  {
    v15 = v14;
    if (a5)
    {
      v16 = 0;
      *a5 = objc_opt_class();
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v18 = [CPLResource shortDescriptionForResourceType:a3];
  v16 = [CPLErrors cplErrorWithCode:26 description:@"Record %@ has just been modified and has no resource of type %@", v10, v18];

  if (!v16)
  {
LABEL_16:
    v20.receiver = self;
    v20.super_class = CPLChangedRecordStorageView;
    v15 = [(CPLRecordStorageView *)&v20 resourceOfType:a3 forRecordWithScopedIdentifier:v10 recordClass:a5 error:a6];
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

LABEL_12:
  if (a6)
  {
    v17 = v16;
    v15 = 0;
    *a6 = v16;
  }

  else
  {
    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLChangedRecordStorageView *)self changeStorage];
  v8 = [v7 hasChangesWithRelatedScopedIdentifier:v6 class:a4];

  if (v8)
  {
    v12.receiver = self;
    v12.super_class = CPLChangedRecordStorageView;
    v9 = [(CPLRecordStorageView *)&v12 countOfRecordsWithRelatedScopedIdentifier:v6 class:a4];
  }

  else
  {
    v10 = [(CPLChangedRecordStorageView *)self baseStorageView];
    v9 = [v10 countOfRecordsWithRelatedScopedIdentifier:v6 class:a4];
  }

  return v9;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(CPLChangedRecordStorageView *)self changeStorage];
  v6 = [v5 getStoredChangeType:&v10 forRecordWithScopedIdentifier:v4];

  if (v6)
  {
    v7 = v10 != 1024;
  }

  else
  {
    v8 = [(CPLChangedRecordStorageView *)self baseStorageView];
    v7 = [v8 hasRecordWithScopedIdentifier:v4];
  }

  return v7;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLChangedRecordStorageView *)self changeStorage];
  v11 = 0;
  v6 = [v5 getRelatedScopedIdentifier:&v11 forRecordWithScopedIdentifier:v4];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    v8 = [(CPLChangedRecordStorageView *)self baseStorageView];
    v9 = [v8 relatedScopedIdentifierForRecordWithScopedIdentifier:v4];

    v7 = v9;
  }

  return v7;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLRecordStorageView *)self->_baseStorageView redactedDescription];
  v5 = [(CPLChangeStorage *)self->_changeStorage storageDescription];
  v6 = [v3 initWithFormat:@"%@+%@", v4, v5];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  baseStorageView = self->_baseStorageView;
  v5 = [(CPLChangeStorage *)self->_changeStorage storageDescription];
  v6 = [v3 initWithFormat:@"%@+%@", baseStorageView, v5];

  return v6;
}

- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v51 = self;
  [CPLRecordStorageView recordViewsWithRelatedScopedIdentifier:"recordViewsWithRelatedScopedIdentifier:class:" class:?];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v6 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v63;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v13 = [v12 scopedIdentifier];
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        [v9 setObject:v12 forKeyedSubscript:v13];
        [v8 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v14 = v51;
  [(CPLChangeStorage *)v51->_changeStorage changesWithRelatedScopedIdentifier:v50 class:a4];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v52 = v61 = 0u;
  v15 = [v52 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v59;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v59 != v17)
        {
          objc_enumerationMutation(v52);
        }

        v19 = *(*(&v58 + 1) + 8 * j);
        v20 = [v19 scopedIdentifier];
        [v8 removeObject:v20];
        v21 = [v9 objectForKeyedSubscript:v20];
        if (v21)
        {
          v22 = v21;
          if ([v19 isDelete])
          {
            [v9 removeObjectForKey:v20];
          }

          else
          {
            if ([v19 isFullRecord])
            {
              v23 = [v19 asRecordView];
            }

            else
            {
              v23 = [[CPLChangedRecordView alloc] initWithChange:v19 overRecordView:v22];
            }

            v27 = v23;
            [v9 setObject:v23 forKeyedSubscript:v20];
          }
        }

        else if ([v19 isFullRecord])
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v22 = [v19 asRecordView];
          [v9 setObject:v22 forKeyedSubscript:v20];
        }

        else
        {
          if ([v19 isDelete])
          {
            goto LABEL_34;
          }

          baseStorageView = v14->_baseStorageView;
          v25 = [v19 scopedIdentifier];
          v22 = [(CPLRecordStorageView *)baseStorageView recordViewWithScopedIdentifier:v25];

          if (!v22)
          {
            v47 = [MEMORY[0x1E696AAA8] currentHandler];
            v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
            [v47 handleFailureInMethod:a2 object:v19 file:v51 lineNumber:? description:?];

            abort();
          }

          v26 = [[CPLChangedRecordView alloc] initWithChange:v19 overRecordView:v22];
          [v9 setObject:v26 forKeyedSubscript:v20];

          v14 = v51;
        }

LABEL_34:
      }

      v16 = [v52 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v16);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = v8;
  v29 = [v28 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v29)
  {
    goto LABEL_56;
  }

  v30 = v29;
  v31 = *v55;
  do
  {
    for (k = 0; k != v30; ++k)
    {
      if (*v55 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v54 + 1) + 8 * k);
      v34 = [(CPLChangeStorage *)v14->_changeStorage changeWithScopedIdentifier:v33];
      v35 = v34;
      if (v34)
      {
        if ([v34 isDelete])
        {
          [v9 removeObjectForKey:v33];
          goto LABEL_54;
        }

        if (![v35 hasChangeType:2])
        {
          goto LABEL_50;
        }

        v36 = [v35 relatedScopedIdentifier];
        v37 = v36;
        if (v50 && v36)
        {
          v38 = [v36 isEqual:v50];

          if ((v38 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_50:
          if ([v35 isFullRecord])
          {
            v40 = [v35 asRecordView];
            [v9 setObject:v40 forKeyedSubscript:v33];
          }

          else
          {
            v41 = [CPLChangedRecordView alloc];
            v42 = [v9 objectForKeyedSubscript:v33];
            v43 = [(CPLChangedRecordView *)v41 initWithChange:v35 overRecordView:v42];
            [v9 setObject:v43 forKeyedSubscript:v33];
          }
        }

        else
        {
          v39 = v50 | v36;

          if (!v39)
          {
            goto LABEL_50;
          }

LABEL_48:
          [v9 removeObjectForKey:v33];
        }

        v14 = v51;
      }

LABEL_54:
    }

    v30 = [v28 countByEnumeratingWithState:&v54 objects:v66 count:16];
  }

  while (v30);
LABEL_56:

  v44 = [v9 allValues];

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)recordViewWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLChangeStorage *)self->_changeStorage changeWithScopedIdentifier:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = [(CPLRecordStorageView *)self->_baseStorageView recordViewWithScopedIdentifier:v4];
    goto LABEL_5;
  }

  if ([v5 isFullRecord])
  {
    v7 = [v6 asRecordView];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if ([v6 isDelete])
  {
    v8 = 0;
  }

  else
  {
    v10 = [(CPLRecordStorageView *)self->_baseStorageView recordViewWithScopedIdentifier:v4];
    if (!v10)
    {
      _CPLBaseRecordViewFailure(self, v6);
    }

    v11 = v10;
    v8 = [[CPLChangedRecordView alloc] initWithChange:v6 overRecordView:v10];
  }

LABEL_6:

  return v8;
}

- (CPLChangedRecordStorageView)initWithChangeStorage:(id)a3 overStorageView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLChangedRecordStorageView;
  v9 = [(CPLChangedRecordStorageView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseStorageView, a4);
    objc_storeStrong(&v10->_changeStorage, a3);
  }

  return v10;
}

@end
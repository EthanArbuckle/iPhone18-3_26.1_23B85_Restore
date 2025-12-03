@interface CPLChangedRecordStorageView
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (CPLChangedRecordStorageView)initWithChangeStorage:(id)storage overStorageView:(id)view;
- (id)description;
- (id)recordViewWithScopedIdentifier:(id)identifier;
- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)redactedDescription;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier;
- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier recordClass:(Class *)class error:(id *)error;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLChangedRecordStorageView

- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier recordClass:(Class *)class error:(id *)error
{
  identifierCopy = identifier;
  changeStorage = [(CPLChangedRecordStorageView *)self changeStorage];
  v12 = [changeStorage changeWithScopedIdentifier:identifierCopy];

  if (!v12 || ([v12 isDelete] & 1) == 0 && !objc_msgSend(v12, "hasChangeType:", 8))
  {
    goto LABEL_16;
  }

  if ([v12 isDelete])
  {
    identifierCopy = [CPLErrors cplErrorWithCode:25 description:@"Record %@ has just been deleted", identifierCopy];
    goto LABEL_11;
  }

  if (([v12 supportsResources] & 1) == 0)
  {
    identifierCopy = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
LABEL_11:
    v16 = identifierCopy;
    if (identifierCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v14 = [v12 resourceForType:type];
  if (v14)
  {
    v15 = v14;
    if (class)
    {
      v16 = 0;
      *class = objc_opt_class();
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v18 = [CPLResource shortDescriptionForResourceType:type];
  v16 = [CPLErrors cplErrorWithCode:26 description:@"Record %@ has just been modified and has no resource of type %@", identifierCopy, v18];

  if (!v16)
  {
LABEL_16:
    v20.receiver = self;
    v20.super_class = CPLChangedRecordStorageView;
    v15 = [(CPLRecordStorageView *)&v20 resourceOfType:type forRecordWithScopedIdentifier:identifierCopy recordClass:class error:error];
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

LABEL_12:
  if (error)
  {
    v17 = v16;
    v15 = 0;
    *error = v16;
  }

  else
  {
    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  changeStorage = [(CPLChangedRecordStorageView *)self changeStorage];
  v8 = [changeStorage hasChangesWithRelatedScopedIdentifier:identifierCopy class:class];

  if (v8)
  {
    v12.receiver = self;
    v12.super_class = CPLChangedRecordStorageView;
    v9 = [(CPLRecordStorageView *)&v12 countOfRecordsWithRelatedScopedIdentifier:identifierCopy class:class];
  }

  else
  {
    baseStorageView = [(CPLChangedRecordStorageView *)self baseStorageView];
    v9 = [baseStorageView countOfRecordsWithRelatedScopedIdentifier:identifierCopy class:class];
  }

  return v9;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  changeStorage = [(CPLChangedRecordStorageView *)self changeStorage];
  v6 = [changeStorage getStoredChangeType:&v10 forRecordWithScopedIdentifier:identifierCopy];

  if (v6)
  {
    v7 = v10 != 1024;
  }

  else
  {
    baseStorageView = [(CPLChangedRecordStorageView *)self baseStorageView];
    v7 = [baseStorageView hasRecordWithScopedIdentifier:identifierCopy];
  }

  return v7;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  changeStorage = [(CPLChangedRecordStorageView *)self changeStorage];
  v11 = 0;
  v6 = [changeStorage getRelatedScopedIdentifier:&v11 forRecordWithScopedIdentifier:identifierCopy];
  v7 = v11;

  if ((v6 & 1) == 0)
  {
    baseStorageView = [(CPLChangedRecordStorageView *)self baseStorageView];
    v9 = [baseStorageView relatedScopedIdentifierForRecordWithScopedIdentifier:identifierCopy];

    v7 = v9;
  }

  return v7;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  redactedDescription = [(CPLRecordStorageView *)self->_baseStorageView redactedDescription];
  storageDescription = [(CPLChangeStorage *)self->_changeStorage storageDescription];
  v6 = [v3 initWithFormat:@"%@+%@", redactedDescription, storageDescription];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  baseStorageView = self->_baseStorageView;
  storageDescription = [(CPLChangeStorage *)self->_changeStorage storageDescription];
  v6 = [v3 initWithFormat:@"%@+%@", baseStorageView, storageDescription];

  return v6;
}

- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v69 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
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

        scopedIdentifier = [v12 scopedIdentifier];
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        [v9 setObject:v12 forKeyedSubscript:scopedIdentifier];
        [v8 addObject:scopedIdentifier];
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

  v14 = selfCopy;
  [(CPLChangeStorage *)selfCopy->_changeStorage changesWithRelatedScopedIdentifier:identifierCopy class:class];
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
        scopedIdentifier2 = [v19 scopedIdentifier];
        [v8 removeObject:scopedIdentifier2];
        v21 = [v9 objectForKeyedSubscript:scopedIdentifier2];
        if (v21)
        {
          asRecordView2 = v21;
          if ([v19 isDelete])
          {
            [v9 removeObjectForKey:scopedIdentifier2];
          }

          else
          {
            if ([v19 isFullRecord])
            {
              asRecordView = [v19 asRecordView];
            }

            else
            {
              asRecordView = [[CPLChangedRecordView alloc] initWithChange:v19 overRecordView:asRecordView2];
            }

            v27 = asRecordView;
            [v9 setObject:asRecordView forKeyedSubscript:scopedIdentifier2];
          }
        }

        else if ([v19 isFullRecord])
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          asRecordView2 = [v19 asRecordView];
          [v9 setObject:asRecordView2 forKeyedSubscript:scopedIdentifier2];
        }

        else
        {
          if ([v19 isDelete])
          {
            goto LABEL_34;
          }

          baseStorageView = v14->_baseStorageView;
          scopedIdentifier3 = [v19 scopedIdentifier];
          asRecordView2 = [(CPLRecordStorageView *)baseStorageView recordViewWithScopedIdentifier:scopedIdentifier3];

          if (!asRecordView2)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
            [currentHandler handleFailureInMethod:a2 object:v19 file:selfCopy lineNumber:? description:?];

            abort();
          }

          v26 = [[CPLChangedRecordView alloc] initWithChange:v19 overRecordView:asRecordView2];
          [v9 setObject:v26 forKeyedSubscript:scopedIdentifier2];

          v14 = selfCopy;
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

        relatedScopedIdentifier = [v35 relatedScopedIdentifier];
        v37 = relatedScopedIdentifier;
        if (identifierCopy && relatedScopedIdentifier)
        {
          v38 = [relatedScopedIdentifier isEqual:identifierCopy];

          if ((v38 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_50:
          if ([v35 isFullRecord])
          {
            asRecordView3 = [v35 asRecordView];
            [v9 setObject:asRecordView3 forKeyedSubscript:v33];
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
          v39 = identifierCopy | relatedScopedIdentifier;

          if (!v39)
          {
            goto LABEL_50;
          }

LABEL_48:
          [v9 removeObjectForKey:v33];
        }

        v14 = selfCopy;
      }

LABEL_54:
    }

    v30 = [v28 countByEnumeratingWithState:&v54 objects:v66 count:16];
  }

  while (v30);
LABEL_56:

  allValues = [v9 allValues];

  v45 = *MEMORY[0x1E69E9840];

  return allValues;
}

- (id)recordViewWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLChangeStorage *)self->_changeStorage changeWithScopedIdentifier:identifierCopy];
  v6 = v5;
  if (!v5)
  {
    asRecordView = [(CPLRecordStorageView *)self->_baseStorageView recordViewWithScopedIdentifier:identifierCopy];
    goto LABEL_5;
  }

  if ([v5 isFullRecord])
  {
    asRecordView = [v6 asRecordView];
LABEL_5:
    v8 = asRecordView;
    goto LABEL_6;
  }

  if ([v6 isDelete])
  {
    v8 = 0;
  }

  else
  {
    v10 = [(CPLRecordStorageView *)self->_baseStorageView recordViewWithScopedIdentifier:identifierCopy];
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

- (CPLChangedRecordStorageView)initWithChangeStorage:(id)storage overStorageView:(id)view
{
  storageCopy = storage;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = CPLChangedRecordStorageView;
  v9 = [(CPLChangedRecordStorageView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseStorageView, view);
    objc_storeStrong(&v10->_changeStorage, storage);
  }

  return v10;
}

@end
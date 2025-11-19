@interface _UIDocumentPickerAllContainersModel
- (_UIDocumentPickerAllContainersModel)initWithFoldersForPickableTypes:(id)a3 mode:(unint64_t)a4 sourceContainer:(id)a5;
- (id)_createObserver;
- (id)scopes;
- (void)startMonitoringChanges;
- (void)updateScopes;
@end

@implementation _UIDocumentPickerAllContainersModel

- (_UIDocumentPickerAllContainersModel)initWithFoldersForPickableTypes:(id)a3 mode:(unint64_t)a4 sourceContainer:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _UIDocumentPickerAllContainersModel;
  v10 = [(_UIDocumentPickerURLContainerModel *)&v13 initWithURL:0 pickableTypes:a3 mode:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sourceContainer, a5);
  }

  return v11;
}

- (id)_createObserver
{
  v3 = [_UIDocumentPickerCloudDirectoryObserver alloc];
  v4 = [(_UIDocumentPickerAllContainersModel *)self scopes];
  v5 = [(_UIDocumentPickerCloudDirectoryObserver *)v3 initWithRecursiveScopes:v4 delegate:self];

  return v5;
}

- (void)updateScopes
{
  v3 = [MEMORY[0x277CFAE20] documentContainers];
  v4 = [v3 valueForKey:@"identifier"];

  v5 = [MEMORY[0x277CFAE20] allContainersByContainerID];
  v6 = MEMORY[0x277CCAC30];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51___UIDocumentPickerAllContainersModel_updateScopes__block_invoke;
  v14 = &unk_278DD6EA8;
  v15 = v5;
  v16 = self;
  v7 = v5;
  v8 = [v6 predicateWithBlock:&v11];
  v9 = [v4 filteredArrayUsingPredicate:{v8, v11, v12, v13, v14}];
  scopes = self->_scopes;
  self->_scopes = v9;
}

- (void)startMonitoringChanges
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = _UIDocumentPickerAllContainersModel;
  [(_UIDocumentPickerURLContainerModel *)&v24 startMonitoringChanges];
  [(_UIDocumentPickerContainerModel *)self setSortOrder:3];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortPath" ascending:1];
  v26[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v5 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [v5 setSortDescriptors:v4];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K UTI-CONFORMS-TO %@", *MEMORY[0x277CCA4B8], *MEMORY[0x277CC2078]];
  v7 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [v7 setQueryPredicate:v6];

  v8 = self;
  [(_UIDocumentPickerAllContainersModel *)self updateScopes];
  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [MEMORY[0x277CFAE20] documentContainers];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 isInInitialState] & 1) == 0)
        {
          v16 = [[_UIDocumentPickerContainerContainerItem alloc] initWithContainer:v15];
          scopes = v8->_scopes;
          v18 = [v15 identifier];
          [(_UIDocumentPickerContainerItem *)v16 setPickable:[(NSArray *)scopes containsObject:v18]];

          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = [(_UIDocumentPickerURLContainerModel *)v8 observer];
  [v19 setStaticItems:v9];
}

- (id)scopes
{
  scopes = self->_scopes;
  if (!scopes)
  {
    [(_UIDocumentPickerAllContainersModel *)self updateScopes];
    scopes = self->_scopes;
  }

  return scopes;
}

@end
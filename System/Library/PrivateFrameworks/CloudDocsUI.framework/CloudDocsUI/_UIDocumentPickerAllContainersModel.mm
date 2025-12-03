@interface _UIDocumentPickerAllContainersModel
- (_UIDocumentPickerAllContainersModel)initWithFoldersForPickableTypes:(id)types mode:(unint64_t)mode sourceContainer:(id)container;
- (id)_createObserver;
- (id)scopes;
- (void)startMonitoringChanges;
- (void)updateScopes;
@end

@implementation _UIDocumentPickerAllContainersModel

- (_UIDocumentPickerAllContainersModel)initWithFoldersForPickableTypes:(id)types mode:(unint64_t)mode sourceContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = _UIDocumentPickerAllContainersModel;
  v10 = [(_UIDocumentPickerURLContainerModel *)&v13 initWithURL:0 pickableTypes:types mode:mode];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sourceContainer, container);
  }

  return v11;
}

- (id)_createObserver
{
  v3 = [_UIDocumentPickerCloudDirectoryObserver alloc];
  scopes = [(_UIDocumentPickerAllContainersModel *)self scopes];
  v5 = [(_UIDocumentPickerCloudDirectoryObserver *)v3 initWithRecursiveScopes:scopes delegate:self];

  return v5;
}

- (void)updateScopes
{
  documentContainers = [MEMORY[0x277CFAE20] documentContainers];
  v4 = [documentContainers valueForKey:@"identifier"];

  allContainersByContainerID = [MEMORY[0x277CFAE20] allContainersByContainerID];
  v6 = MEMORY[0x277CCAC30];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51___UIDocumentPickerAllContainersModel_updateScopes__block_invoke;
  v14 = &unk_278DD6EA8;
  v15 = allContainersByContainerID;
  selfCopy = self;
  v7 = allContainersByContainerID;
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
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer setSortDescriptors:v4];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K UTI-CONFORMS-TO %@", *MEMORY[0x277CCA4B8], *MEMORY[0x277CC2078]];
  observer2 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer2 setQueryPredicate:v6];

  selfCopy = self;
  [(_UIDocumentPickerAllContainersModel *)self updateScopes];
  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  documentContainers = [MEMORY[0x277CFAE20] documentContainers];
  v11 = [documentContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(documentContainers);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 isInInitialState] & 1) == 0)
        {
          v16 = [[_UIDocumentPickerContainerContainerItem alloc] initWithContainer:v15];
          scopes = selfCopy->_scopes;
          identifier = [v15 identifier];
          [(_UIDocumentPickerContainerItem *)v16 setPickable:[(NSArray *)scopes containsObject:identifier]];

          [v9 addObject:v16];
        }
      }

      v12 = [documentContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  observer3 = [(_UIDocumentPickerURLContainerModel *)selfCopy observer];
  [observer3 setStaticItems:v9];
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
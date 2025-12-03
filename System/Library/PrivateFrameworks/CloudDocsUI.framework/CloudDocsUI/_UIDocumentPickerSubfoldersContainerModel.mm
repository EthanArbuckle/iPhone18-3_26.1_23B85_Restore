@interface _UIDocumentPickerSubfoldersContainerModel
- (_UIDocumentPickerSubfoldersContainerModel)initWithPickableTypes:(id)types container:(id)container;
- (id)_createObserver;
- (id)scopes;
- (void)startMonitoringChanges;
@end

@implementation _UIDocumentPickerSubfoldersContainerModel

- (_UIDocumentPickerSubfoldersContainerModel)initWithPickableTypes:(id)types container:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = _UIDocumentPickerSubfoldersContainerModel;
  v8 = [(_UIDocumentPickerURLContainerModel *)&v11 initWithURL:0 pickableTypes:types mode:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containerID, container);
  }

  return v9;
}

- (id)_createObserver
{
  v3 = [_UIDocumentPickerCloudDirectoryObserver alloc];
  scopes = [(_UIDocumentPickerSubfoldersContainerModel *)self scopes];
  v5 = [(_UIDocumentPickerCloudDirectoryObserver *)v3 initWithRecursiveScopes:scopes delegate:self];

  return v5;
}

- (void)startMonitoringChanges
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerSubfoldersContainerModel;
  [(_UIDocumentPickerURLContainerModel *)&v14 startMonitoringChanges];
  allContainersByContainerID = [MEMORY[0x277CFAE20] allContainersByContainerID];
  v4 = [allContainersByContainerID objectForKeyedSubscript:self->_containerID];

  v5 = MEMORY[0x277CBEB70];
  v6 = [[_UIDocumentPickerContainerContainerItem alloc] initWithContainer:v4];
  v7 = [v5 orderedSetWithObject:v6];
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer setStaticItems:v7];

  [(_UIDocumentPickerContainerModel *)self setSortOrder:3];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"sortPath" ascending:1];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  observer2 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer2 setSortDescriptors:v10];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K UTI-CONFORMS-TO %@", *MEMORY[0x277CCA4B8], *MEMORY[0x277CC2078]];
  observer3 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer3 setQueryPredicate:v12];
}

- (id)scopes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_containerID;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end
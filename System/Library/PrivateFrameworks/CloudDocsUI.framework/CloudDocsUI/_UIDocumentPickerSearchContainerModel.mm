@interface _UIDocumentPickerSearchContainerModel
- (_UIDocumentPickerSearchContainerModel)initWithPickableTypes:(id)a3 mode:(unint64_t)a4;
- (id)_createObserver;
- (id)displayTitle;
- (id)scopes;
- (void)_updateObserverForQuery;
- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5;
- (void)setQueryString:(id)a3;
- (void)startMonitoringChanges;
@end

@implementation _UIDocumentPickerSearchContainerModel

- (_UIDocumentPickerSearchContainerModel)initWithPickableTypes:(id)a3 mode:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerSearchContainerModel;
  return [(_UIDocumentPickerURLContainerModel *)&v5 initWithURL:0 pickableTypes:a3 mode:a4];
}

- (id)displayTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v3 = [v2 localizedStringForKey:@"Search Results" value:@"Search Results" table:@"Localizable"];

  return v3;
}

- (void)startMonitoringChanges
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerSearchContainerModel;
  [(_UIDocumentPickerURLContainerModel *)&v3 startMonitoringChanges];
  [(_UIDocumentPickerSearchContainerModel *)self _updateObserverForQuery];
}

- (id)scopes
{
  v2 = [MEMORY[0x277CFAE20] documentContainers];
  v3 = [v2 valueForKey:@"identifier"];

  return v3;
}

- (id)_createObserver
{
  v3 = [_UIDocumentPickerCloudDirectoryObserver alloc];
  v4 = [(_UIDocumentPickerSearchContainerModel *)self scopes];
  v5 = [(_UIDocumentPickerCloudDirectoryObserver *)v3 initWithRecursiveScopes:v4 delegate:self];

  return v5;
}

- (void)setQueryString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_queryString isEqualToString:?])
  {
    v4 = [v6 copy];
    queryString = self->_queryString;
    self->_queryString = v4;

    if ([(NSString *)self->_queryString length])
    {
      [(_UIDocumentPickerSearchContainerModel *)self startMonitoringChanges];
    }
  }
}

- (void)arrayController:(id)a3 modelChanged:(id)a4 differences:(id)a5
{
  v7.receiver = self;
  v7.super_class = _UIDocumentPickerSearchContainerModel;
  [(_UIDocumentPickerURLContainerModel *)&v7 arrayController:a3 modelChanged:a4 differences:a5];
  if (![(NSString *)self->_queryString length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82___UIDocumentPickerSearchContainerModel_arrayController_modelChanged_differences___block_invoke;
    block[3] = &unk_278DD61B0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateObserverForQuery
{
  v3 = [(NSString *)self->_queryString length];
  v4 = MEMORY[0x277CCAC30];
  if (v3)
  {
    v5 = *MEMORY[0x277CCA4C0];
    queryString = self->_queryString;
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCAC68] escapedPatternForString:queryString];
    v9 = [v7 stringWithFormat:@"*%@*", v8];
    v11 = [v4 predicateWithFormat:@"%K BEGINSWITH[cd] %@ OR %K LIKE[cd] %@", v5, queryString, v5, v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  }

  v10 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [v10 setQueryPredicate:v11];
}

@end
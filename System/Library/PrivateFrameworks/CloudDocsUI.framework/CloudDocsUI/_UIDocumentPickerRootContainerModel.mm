@interface _UIDocumentPickerRootContainerModel
- (_UIDocumentPickerRootContainerModel)initWithPickableTypes:(id)types mode:(unint64_t)mode;
- (id)_containerListDidChange;
- (void)startMonitoringChanges;
@end

@implementation _UIDocumentPickerRootContainerModel

- (_UIDocumentPickerRootContainerModel)initWithPickableTypes:(id)types mode:(unint64_t)mode
{
  typesCopy = types;
  ui_cloudDocsContainerURL = [MEMORY[0x277CBEBC0] ui_cloudDocsContainerURL];
  localizedNameForDefaultCloudDocsContainer = [MEMORY[0x277CFAE20] localizedNameForDefaultCloudDocsContainer];
  if (!ui_cloudDocsContainerURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];
    ui_cloudDocsContainerURL = [v10 URLByAppendingPathComponent:@"Documents"];

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v12 = [v11 localizedStringForKey:@"Local documents" value:@"Local documents" table:@"Localizable"];

    localizedNameForDefaultCloudDocsContainer = v12;
  }

  v16.receiver = self;
  v16.super_class = _UIDocumentPickerRootContainerModel;
  v13 = [(_UIDocumentPickerURLContainerModel *)&v16 initWithURL:ui_cloudDocsContainerURL pickableTypes:typesCopy mode:mode];
  v14 = v13;
  if (v13)
  {
    [(_UIDocumentPickerURLContainerModel *)v13 setDisplayTitle:localizedNameForDefaultCloudDocsContainer];
  }

  return v14;
}

- (void)startMonitoringChanges
{
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];

  if (!observer)
  {
    if (self->_isObservingContainers)
    {
      _containerListDidChange = MEMORY[0x277CBEBF8];
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__containerListDidChange name:*MEMORY[0x277CFABE0] object:0];

      _containerListDidChange = [(_UIDocumentPickerRootContainerModel *)self _containerListDidChange];
      self->_isObservingContainers = 1;
    }

    v8.receiver = self;
    v8.super_class = _UIDocumentPickerRootContainerModel;
    [(_UIDocumentPickerURLContainerModel *)&v8 startMonitoringChanges];
    v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:_containerListDidChange];
    observer2 = [(_UIDocumentPickerURLContainerModel *)self observer];
    [observer2 setStaticItems:v6];
  }
}

- (id)_containerListDidChange
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  documentContainers = [MEMORY[0x277CFAE20] documentContainers];
  v5 = [documentContainers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277CFAD68];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(documentContainers);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        identifier = [v10 identifier];
        if (([identifier isEqualToString:v8] & 1) == 0 && (objc_msgSend(v10, "isInInitialState") & 1) == 0)
        {
          documentsURL = [v10 documentsURL];

          if (documentsURL)
          {
            v13 = [[_UIDocumentPickerContainerContainerItem alloc] initWithContainer:v10];
            [(_UIDocumentPickerContainerItem *)v13 setPickable:[(_UIDocumentPickerURLContainerModel *)self shouldEnableContainer:v10]];
            [array addObject:v13];
          }
        }
      }

      v6 = [documentContainers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CBEB70] orderedSetWithArray:array];
  observer = [(_UIDocumentPickerURLContainerModel *)self observer];
  [observer setStaticItems:v14];

  return array;
}

@end
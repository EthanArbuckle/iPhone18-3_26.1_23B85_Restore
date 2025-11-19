@interface _UIDocumentPickerRootContainerModel
- (_UIDocumentPickerRootContainerModel)initWithPickableTypes:(id)a3 mode:(unint64_t)a4;
- (id)_containerListDidChange;
- (void)startMonitoringChanges;
@end

@implementation _UIDocumentPickerRootContainerModel

- (_UIDocumentPickerRootContainerModel)initWithPickableTypes:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEBC0] ui_cloudDocsContainerURL];
  v8 = [MEMORY[0x277CFAE20] localizedNameForDefaultCloudDocsContainer];
  if (!v7)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];
    v7 = [v10 URLByAppendingPathComponent:@"Documents"];

    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v12 = [v11 localizedStringForKey:@"Local documents" value:@"Local documents" table:@"Localizable"];

    v8 = v12;
  }

  v16.receiver = self;
  v16.super_class = _UIDocumentPickerRootContainerModel;
  v13 = [(_UIDocumentPickerURLContainerModel *)&v16 initWithURL:v7 pickableTypes:v6 mode:a4];
  v14 = v13;
  if (v13)
  {
    [(_UIDocumentPickerURLContainerModel *)v13 setDisplayTitle:v8];
  }

  return v14;
}

- (void)startMonitoringChanges
{
  v3 = [(_UIDocumentPickerURLContainerModel *)self observer];

  if (!v3)
  {
    if (self->_isObservingContainers)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 addObserver:self selector:sel__containerListDidChange name:*MEMORY[0x277CFABE0] object:0];

      v4 = [(_UIDocumentPickerRootContainerModel *)self _containerListDidChange];
      self->_isObservingContainers = 1;
    }

    v8.receiver = self;
    v8.super_class = _UIDocumentPickerRootContainerModel;
    [(_UIDocumentPickerURLContainerModel *)&v8 startMonitoringChanges];
    v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:v4];
    v7 = [(_UIDocumentPickerURLContainerModel *)self observer];
    [v7 setStaticItems:v6];
  }
}

- (id)_containerListDidChange
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [MEMORY[0x277CFAE20] documentContainers];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 identifier];
        if (([v11 isEqualToString:v8] & 1) == 0 && (objc_msgSend(v10, "isInInitialState") & 1) == 0)
        {
          v12 = [v10 documentsURL];

          if (v12)
          {
            v13 = [[_UIDocumentPickerContainerContainerItem alloc] initWithContainer:v10];
            [(_UIDocumentPickerContainerItem *)v13 setPickable:[(_UIDocumentPickerURLContainerModel *)self shouldEnableContainer:v10]];
            [v3 addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CBEB70] orderedSetWithArray:v3];
  v15 = [(_UIDocumentPickerURLContainerModel *)self observer];
  [v15 setStaticItems:v14];

  return v3;
}

@end
@interface HUFaceRecognitionUserPhotosLibrarySettingsItemManager
- (HMUser)user;
- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)delegate;
- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)setImportPhotosLibraryEnabled:(BOOL)enabled;
- (id)setSharePhotosLibraryEnabled:(BOOL)enabled;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsItemManager

- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HUFaceRecognitionUserPhotosLibrarySettingsItemManager;
  v7 = [(HFItemManager *)&v20 initWithDelegate:delegate sourceItem:itemCopy];
  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    home = [v10 home];
    overrideHome = v7->_overrideHome;
    v7->_overrideHome = home;

    v13 = [HUFaceRecognitionUserPhotosLibrarySettingsModule alloc];
    home2 = [v10 home];
    v15 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)v13 initWithItemUpdater:v7 home:home2];
    photosLibrarySettingsModule = v7->_photosLibrarySettingsModule;
    v7->_photosLibrarySettingsModule = v15;

LABEL_7:
    v17 = v7;
    goto LABEL_11;
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v22 = v7;
    v23 = 2080;
    v24 = "[HUFaceRecognitionUserPhotosLibrarySettingsItemManager initWithDelegate:sourceItem:]";
    v25 = 2112;
    v26 = v8;
    _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "(%@ : %s) sourceItem should be HFUserPhotosLibraryItem. sourceItem = %@", buf, 0x20u);
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (HMUser)user
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    user = [v5 user];
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sourceItem2 = [(HFItemManager *)self sourceItem];
      v10 = 138412802;
      selfCopy = self;
      v12 = 2080;
      v13 = "[HUFaceRecognitionUserPhotosLibrarySettingsItemManager user]";
      v14 = 2112;
      v15 = sourceItem2;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@ %s: sourceItem is expected to be HFUserPhotosLibraryItem, but it's %@", &v10, 0x20u);
    }

    user = 0;
  }

  return user;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_sourceItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsItemManager.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemModulesForHome:(id)home
{
  v4 = objc_opt_new();
  photosLibrarySettingsModule = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self photosLibrarySettingsModule];
  [v4 na_safeAddObject:photosLibrarySettingsModule];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItem;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sourceItem2 = [(HFItemManager *)self sourceItem];
      *buf = 136315394;
      v18 = "[HUFaceRecognitionUserPhotosLibrarySettingsItemManager _buildItemProvidersForHome:]";
      v19 = 2112;
      v20 = sourceItem2;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(%s) sourceItem should be HFUserPhotosLibraryItem: %@", buf, 0x16u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_119];
  [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self setAddNamesInPhotosLibraryItem:v8];

  v9 = objc_alloc(MEMORY[0x277D14B40]);
  v10 = MEMORY[0x277CBEB98];
  addNamesInPhotosLibraryItem = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self addNamesInPhotosLibraryItem];
  v12 = [v10 setWithObjects:{addNamesInPhotosLibraryItem, 0}];
  v13 = [v9 initWithItems:v12];
  [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self setStaticItemProvider:v13];

  staticItemProvider = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self staticItemProvider];
  [array na_safeAddObject:staticItemProvider];

  return array;
}

id __84__HUFaceRecognitionUserPhotosLibrarySettingsItemManager__buildItemProvidersForHome___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionAddNamesInPhotosCellTitle", @"HUFaceRecognitionAddNamesInPhotosCellTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v2 = [MEMORY[0x277D2C900] futureWithResult:v0];

  return v2;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v13[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  photosLibrarySettingsModule = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self photosLibrarySettingsModule];
  v7 = [photosLibrarySettingsModule buildSectionsWithDisplayedItems:itemsCopy];
  [v5 na_safeAddObjectsFromArray:v7];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionAddNamesInPhotosLibrarySection"];
  addNamesInPhotosLibraryItem = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self addNamesInPhotosLibraryItem];
  v13[0] = addNamesInPhotosLibraryItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v8 setItems:v10];

  [v5 na_safeAddObject:v8];
  v11 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:itemsCopy];

  return v11;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

- (id)setImportPhotosLibraryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  home = [(HFItemManager *)self home];
  user = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self user];
  v7 = [home hf_setImportPhotosLibraryEnabled:enabledCopy forUser:user];

  return v7;
}

- (id)setSharePhotosLibraryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  home = [(HFItemManager *)self home];
  user = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self user];
  v7 = [home hf_setSharePhotosLibraryEnabled:enabledCopy forUser:user];

  return v7;
}

@end
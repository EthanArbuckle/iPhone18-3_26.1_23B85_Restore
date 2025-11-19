@interface HUFaceRecognitionUserPhotosLibrarySettingsItemManager
- (HMUser)user;
- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)a3;
- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)setImportPhotosLibraryEnabled:(BOOL)a3;
- (id)setSharePhotosLibraryEnabled:(BOOL)a3;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsItemManager

- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20.receiver = self;
  v20.super_class = HUFaceRecognitionUserPhotosLibrarySettingsItemManager;
  v7 = [(HFItemManager *)&v20 initWithDelegate:a3 sourceItem:v6];
  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v8 = v6;
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
    v11 = [v10 home];
    overrideHome = v7->_overrideHome;
    v7->_overrideHome = v11;

    v13 = [HUFaceRecognitionUserPhotosLibrarySettingsModule alloc];
    v14 = [v10 home];
    v15 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)v13 initWithItemUpdater:v7 home:v14];
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
  v3 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 user];
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(HFItemManager *)self sourceItem];
      v10 = 138412802;
      v11 = self;
      v12 = 2080;
      v13 = "[HUFaceRecognitionUserPhotosLibrarySettingsItemManager user]";
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@ %s: sourceItem is expected to be HFUserPhotosLibraryItem, but it's %@", &v10, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_sourceItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsItemManager.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self photosLibrarySettingsModule];
  [v4 na_safeAddObject:v5];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v4 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v16 = [(HFItemManager *)self sourceItem];
      *buf = 136315394;
      v18 = "[HUFaceRecognitionUserPhotosLibrarySettingsItemManager _buildItemProvidersForHome:]";
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(%s) sourceItem should be HFUserPhotosLibraryItem: %@", buf, 0x16u);
    }
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_119];
  [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self setAddNamesInPhotosLibraryItem:v8];

  v9 = objc_alloc(MEMORY[0x277D14B40]);
  v10 = MEMORY[0x277CBEB98];
  v11 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self addNamesInPhotosLibraryItem];
  v12 = [v10 setWithObjects:{v11, 0}];
  v13 = [v9 initWithItems:v12];
  [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self setStaticItemProvider:v13];

  v14 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self staticItemProvider];
  [v7 na_safeAddObject:v14];

  return v7;
}

id __84__HUFaceRecognitionUserPhotosLibrarySettingsItemManager__buildItemProvidersForHome___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionAddNamesInPhotosCellTitle", @"HUFaceRecognitionAddNamesInPhotosCellTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v2 = [MEMORY[0x277D2C900] futureWithResult:v0];

  return v2;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self photosLibrarySettingsModule];
  v7 = [v6 buildSectionsWithDisplayedItems:v4];
  [v5 na_safeAddObjectsFromArray:v7];

  v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionAddNamesInPhotosLibrarySection"];
  v9 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self addNamesInPhotosLibraryItem];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v8 setItems:v10];

  [v5 na_safeAddObject:v8];
  v11 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v11;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  v3 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)setImportPhotosLibraryEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self user];
  v7 = [v5 hf_setImportPhotosLibraryEnabled:v3 forUser:v6];

  return v7;
}

- (id)setSharePhotosLibraryEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HFItemManager *)self home];
  v6 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self user];
  v7 = [v5 hf_setSharePhotosLibraryEnabled:v3 forUser:v6];

  return v7;
}

@end
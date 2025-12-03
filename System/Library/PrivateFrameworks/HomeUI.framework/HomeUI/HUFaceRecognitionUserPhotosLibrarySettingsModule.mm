@interface HUFaceRecognitionUserPhotosLibrarySettingsModule
- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)updater;
- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)_updatePhotosLibrarySettingsForItem:(id)item;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)didSelectItem:(id)item;
- (id)itemProviders;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsModule

- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
  }

  return v9;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsModule.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)didSelectItem:(id)item
{
  itemCopy = item;
  allowPhotosLibraryAccessItemProvider = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self allowPhotosLibraryAccessItemProvider];
  items = [allowPhotosLibraryAccessItemProvider items];
  v7 = [items containsObject:itemCopy];

  if (v7)
  {
    photoLibraryAccessNever = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessNever];
    if ([itemCopy isEqual:photoLibraryAccessNever])
    {

LABEL_5:
      futureWithNoResult = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self _updatePhotosLibrarySettingsForItem:itemCopy];
      goto LABEL_7;
    }

    isCloudPhotosOn = [MEMORY[0x277D14CE8] isCloudPhotosOn];

    if (isCloudPhotosOn)
    {
      goto LABEL_5;
    }
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_7:
  v11 = futureWithNoResult;

  return v11;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    home = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    currentUser = [home currentUser];

    v7 = [MEMORY[0x277CBEB98] setWithObject:currentUser];
    v8 = objc_alloc(MEMORY[0x277D14B38]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke;
    v41[3] = &unk_277DB8648;
    v9 = currentUser;
    v42 = v9;
    v10 = v7;
    v43 = v10;
    v11 = [v8 initWithResultsBlock:v41];
    [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self setPhotoLibraryAccessNever:v11];

    v12 = objc_alloc(MEMORY[0x277D14B38]);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke_26;
    v38[3] = &unk_277DB8648;
    v13 = v9;
    v39 = v13;
    v14 = v10;
    v40 = v14;
    v15 = [v12 initWithResultsBlock:v38];
    [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self setPhotoLibraryAccessOnlyMe:v15];

    v16 = objc_alloc(MEMORY[0x277D14B38]);
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke_34;
    v35 = &unk_277DB8648;
    v36 = v13;
    v37 = v14;
    v17 = v14;
    v18 = v13;
    v19 = [v16 initWithResultsBlock:&v32];
    [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self setPhotoLibraryAccessEveryoneInThisHome:v19];

    v20 = objc_alloc(MEMORY[0x277D14B40]);
    v21 = MEMORY[0x277CBEB98];
    photoLibraryAccessNever = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessNever];
    photoLibraryAccessOnlyMe = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessOnlyMe];
    photoLibraryAccessEveryoneInThisHome = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessEveryoneInThisHome];
    v25 = [v21 setWithObjects:{photoLibraryAccessNever, photoLibraryAccessOnlyMe, photoLibraryAccessEveryoneInThisHome, 0, v32, v33, v34, v35}];
    v26 = [v20 initWithItems:v25];
    [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self setAllowPhotosLibraryAccessItemProvider:v26];

    v27 = MEMORY[0x277CBEB98];
    allowPhotosLibraryAccessItemProvider = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self allowPhotosLibraryAccessItemProvider];
    v29 = [v27 setWithObjects:{allowPhotosLibraryAccessItemProvider, 0}];
    v30 = self->_itemProviders;
    self->_itemProviders = v29;

    v3 = self->_itemProviders;
  }

  return v3;
}

id __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) photosPersonManagerSettings];
  if ([v2 isImportingFromPhotoLibraryEnabled])
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) photosPersonManagerSettings];
    v3 = [v4 isSharingFaceClassificationsEnabled] ^ 1;
  }

  v13[0] = *MEMORY[0x277D13FE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v14[0] = v5;
  v14[1] = &unk_282491250;
  v6 = *MEMORY[0x277D13F60];
  v13[1] = @"faceRecognitionPhotosLibrarySettingsKey";
  v13[2] = v6;
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessNever", @"HUFaceRecognitionPhotosLibraryAccessNever", 1);
  v8 = *MEMORY[0x277D13FF0];
  v14[2] = v7;
  v14[3] = &unk_282491268;
  v9 = *MEMORY[0x277D13DA8];
  v13[3] = v8;
  v13[4] = v9;
  v14[4] = *(a1 + 40);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke_26(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) photosPersonManagerSettings];
  if ([v2 isImportingFromPhotoLibraryEnabled])
  {
    v3 = [*(a1 + 32) photosPersonManagerSettings];
    v4 = [v3 isSharingFaceClassificationsEnabled] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *MEMORY[0x277D13FE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v14[0] = v5;
  v14[1] = &unk_282491280;
  v6 = *MEMORY[0x277D13F60];
  v13[1] = @"faceRecognitionPhotosLibrarySettingsKey";
  v13[2] = v6;
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessOnlyMe", @"HUFaceRecognitionPhotosLibraryAccessOnlyMe", 1);
  v8 = *MEMORY[0x277D13FF0];
  v14[2] = v7;
  v14[3] = &unk_282491298;
  v9 = *MEMORY[0x277D13DA8];
  v13[3] = v8;
  v13[4] = v9;
  v14[4] = *(a1 + 40);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

id __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke_34(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) photosPersonManagerSettings];
  if ([v2 isImportingFromPhotoLibraryEnabled])
  {
    v3 = [*(a1 + 32) photosPersonManagerSettings];
    v4 = [v3 isSharingFaceClassificationsEnabled];
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *MEMORY[0x277D13FE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v14[0] = v5;
  v14[1] = &unk_2824912B0;
  v6 = *MEMORY[0x277D13F60];
  v13[1] = @"faceRecognitionPhotosLibrarySettingsKey";
  v13[2] = v6;
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessEveryoneInThisHome", @"HUFaceRecognitionPhotosLibraryAccessEveryoneInThisHome", 1);
  v8 = *MEMORY[0x277D13FF0];
  v14[2] = v7;
  v14[3] = &unk_2824912C8;
  v9 = *MEMORY[0x277D13DA8];
  v13[3] = v8;
  v13[4] = v9;
  v14[4] = *(a1 + 40);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionAllowPhotosLibraryAccessSectionIdentifier"];
  allItems = [(HFItemModule *)self allItems];
  allObjects = [allItems allObjects];
  itemResultManualSortComparator = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v9 = [allObjects sortedArrayUsingComparator:itemResultManualSortComparator];
  [v5 setItems:v9];

  if (![(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self shouldUseProxCardPresentationStyle])
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessHeader", @"HUFaceRecognitionPhotosLibraryAccessHeader", 1);
    [v5 setHeaderTitle:v10];

    v11 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", @"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", 1);
    hf_photosLibraryPeopleAlbumURL = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
    v13 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessFooter", @"HUFaceRecognitionPhotosLibraryAccessFooter", 1);
    if (([MEMORY[0x277D14CE8] isCloudPhotosOn] & 1) == 0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryiCloudOffFooter", @"HUFaceRecognitionPhotosLibraryiCloudOffFooter", 1);
      v16 = [v14 stringWithFormat:@"%@\n%@", v13, v15];

      v13 = v16;
    }

    v17 = [MEMORY[0x277CCA898] hf_attributedLinkStringForString:v13 linkString:v11 linkURL:hf_photosLibraryPeopleAlbumURL];
    [v5 setAttributedFooterTitle:v17];
  }

  [v4 addObject:v5];

  return v4;
}

- (id)_updatePhotosLibrarySettingsForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_14;
  }

  latestResults2 = [itemCopy latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:@"faceRecognitionPhotosLibrarySettingsKey"];

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (unsignedIntegerValue > 1)
  {
    if (unsignedIntegerValue == 2)
    {
      home = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      home2 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      currentUser = [home2 currentUser];
      v15 = home;
      v16 = currentUser;
      v17 = 1;
      goto LABEL_11;
    }

    if (unsignedIntegerValue == 3)
    {
      home = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      home2 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      currentUser = [home2 currentUser];
      v15 = home;
      v16 = currentUser;
      v17 = 1;
      v18 = 1;
LABEL_12:
      futureWithNoResult = [v15 hf_setPhotosLibrarySettingsForUser:v16 importPhotosLibraryEnabled:v17 shareFacesEnabled:v18];

      goto LABEL_13;
    }
  }

  else if (unsignedIntegerValue == 1)
  {
    home = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    home2 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    currentUser = [home2 currentUser];
    v15 = home;
    v16 = currentUser;
    v17 = 0;
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

LABEL_14:

  return futureWithNoResult;
}

@end
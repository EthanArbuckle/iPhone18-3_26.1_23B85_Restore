@interface HUFaceRecognitionUserPhotosLibrarySettingsModule
- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)a3;
- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)_updatePhotosLibrarySettingsForItem:(id)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (id)itemProviders;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsModule

- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
  }

  return v9;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsModule.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self allowPhotosLibraryAccessItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessNever];
    if ([v4 isEqual:v8])
    {

LABEL_5:
      v10 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self _updatePhotosLibrarySettingsForItem:v4];
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277D14CE8] isCloudPhotosOn];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_7:
  v11 = v10;

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
    v5 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    v6 = [v5 currentUser];

    v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v8 = objc_alloc(MEMORY[0x277D14B38]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __65__HUFaceRecognitionUserPhotosLibrarySettingsModule_itemProviders__block_invoke;
    v41[3] = &unk_277DB8648;
    v9 = v6;
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
    v22 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessNever];
    v23 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessOnlyMe];
    v24 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self photoLibraryAccessEveryoneInThisHome];
    v25 = [v21 setWithObjects:{v22, v23, v24, 0, v32, v33, v34, v35}];
    v26 = [v20 initWithItems:v25];
    [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self setAllowPhotosLibraryAccessItemProvider:v26];

    v27 = MEMORY[0x277CBEB98];
    v28 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self allowPhotosLibraryAccessItemProvider];
    v29 = [v27 setWithObjects:{v28, 0}];
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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionAllowPhotosLibraryAccessSectionIdentifier"];
  v6 = [(HFItemModule *)self allItems];
  v7 = [v6 allObjects];
  v8 = [MEMORY[0x277D14778] itemResultManualSortComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];
  [v5 setItems:v9];

  if (![(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self shouldUseProxCardPresentationStyle])
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessHeader", @"HUFaceRecognitionPhotosLibraryAccessHeader", 1);
    [v5 setHeaderTitle:v10];

    v11 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", @"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", 1);
    v12 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
    v13 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryAccessFooter", @"HUFaceRecognitionPhotosLibraryAccessFooter", 1);
    if (([MEMORY[0x277D14CE8] isCloudPhotosOn] & 1) == 0)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPhotosLibraryiCloudOffFooter", @"HUFaceRecognitionPhotosLibraryiCloudOffFooter", 1);
      v16 = [v14 stringWithFormat:@"%@\n%@", v13, v15];

      v13 = v16;
    }

    v17 = [MEMORY[0x277CCA898] hf_attributedLinkStringForString:v13 linkString:v11 linkURL:v12];
    [v5 setAttributedFooterTitle:v17];
  }

  [v4 addObject:v5];

  return v4;
}

- (id)_updatePhotosLibrarySettingsForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_14;
  }

  v9 = [v4 latestResults];
  v10 = [v9 objectForKeyedSubscript:@"faceRecognitionPhotosLibrarySettingsKey"];

  v11 = [v10 unsignedIntegerValue];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      v13 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      v14 = [v13 currentUser];
      v15 = v12;
      v16 = v14;
      v17 = 1;
      goto LABEL_11;
    }

    if (v11 == 3)
    {
      v12 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      v13 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
      v14 = [v13 currentUser];
      v15 = v12;
      v16 = v14;
      v17 = 1;
      v18 = 1;
LABEL_12:
      v8 = [v15 hf_setPhotosLibrarySettingsForUser:v16 importPhotosLibraryEnabled:v17 shareFacesEnabled:v18];

      goto LABEL_13;
    }
  }

  else if (v11 == 1)
  {
    v12 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    v13 = [(HUFaceRecognitionUserPhotosLibrarySettingsModule *)self home];
    v14 = [v13 currentUser];
    v15 = v12;
    v16 = v14;
    v17 = 0;
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

LABEL_14:

  return v8;
}

@end
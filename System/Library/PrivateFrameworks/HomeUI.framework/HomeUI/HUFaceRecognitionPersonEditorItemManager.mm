@interface HUFaceRecognitionPersonEditorItemManager
+ (id)dateFormatter;
- (HUFaceRecognitionPersonEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
@end

@implementation HUFaceRecognitionPersonEditorItemManager

+ (id)dateFormatter
{
  if (qword_27C837E30 != -1)
  {
    dispatch_once(&qword_27C837E30, &__block_literal_global_14);
  }

  v3 = _MergedGlobals_3_0;

  return v3;
}

void __57__HUFaceRecognitionPersonEditorItemManager_dateFormatter__block_invoke()
{
  v2 = [MEMORY[0x277D146A0] sharedInstance];
  v0 = [v2 relativeDateFormatter];
  v1 = _MergedGlobals_3_0;
  _MergedGlobals_3_0 = v0;
}

- (HUFaceRecognitionPersonEditorItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  delegateCopy = delegate;
  itemCopy = item;
  if (([itemCopy conformsToProtocol:&unk_2825BD540] & 1) == 0)
  {
    NSLog(&cfstr_SourceItemDoes.isa, itemCopy);
  }

  v17.receiver = self;
  v17.super_class = HUFaceRecognitionPersonEditorItemManager;
  v8 = [(HFItemManager *)&v17 initWithDelegate:delegateCopy sourceItem:itemCopy];
  if (v8)
  {
    v9 = itemCopy;
    if ([v9 conformsToProtocol:&unk_2825BD540])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    home = [v11 home];

    personHome = v8->_personHome;
    v8->_personHome = home;

    v14 = [objc_alloc(MEMORY[0x277D14CA8]) initWithHome:v8->_personHome];
    userNameFormatter = v8->_userNameFormatter;
    v8->_userNameFormatter = v14;

    [(HFUserNameFormatter *)v8->_userNameFormatter setStyle:0];
  }

  return v8;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  personHome = [(HUFaceRecognitionPersonEditorItemManager *)self personHome];
  v4 = [v2 futureWithResult:personHome];

  return v4;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  personItem = [(HUFaceRecognitionPersonEditorItemManager *)self personItem];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    isRunningInStoreDemoMode = 1;
  }

  else
  {
    isRunningInStoreDemoMode = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v7 = objc_alloc(MEMORY[0x277D14C30]);
  v8 = [personItem copy];
  v9 = [v7 initWithSourceItem:v8 transformationBlock:&__block_literal_global_74];
  [(HUFaceRecognitionPersonEditorItemManager *)self setFaceCropItem:v9];

  v10 = objc_alloc(MEMORY[0x277D14C30]);
  v11 = [personItem copy];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_3;
  v48[3] = &__block_descriptor_33_e36___NSDictionary_16__0__NSDictionary_8l;
  v49 = isRunningInStoreDemoMode;
  v12 = [v10 initWithSourceItem:v11 updateOptionsTransformBlock:&__block_literal_global_78 resultsTransformBlock:v48];
  [(HUFaceRecognitionPersonEditorItemManager *)self setNameItem:v12];

  objc_initWeak(&location, self);
  v13 = objc_alloc(MEMORY[0x277D14C30]);
  v14 = [personItem copy];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_5;
  v44[3] = &unk_277DB81B0;
  objc_copyWeak(&v45, &location);
  v46 = isRunningInStoreDemoMode;
  v15 = [v13 initWithSourceItem:v14 updateOptionsTransformBlock:&__block_literal_global_81 resultsTransformBlock:v44];
  [(HUFaceRecognitionPersonEditorItemManager *)self setAddNameItem:v15];

  home = [(HFItemManager *)self home];
  personSettingsManager = [home personSettingsManager];

  v18 = objc_alloc(MEMORY[0x277D14B38]);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_6;
  v40[3] = &unk_277DB8250;
  v19 = personItem;
  v41 = v19;
  v35 = personSettingsManager;
  v42 = v35;
  v43 = isRunningInStoreDemoMode;
  v20 = [v18 initWithResultsBlock:v40];
  [(HUFaceRecognitionPersonEditorItemManager *)self setHideNotificationsItem:v20];

  v21 = objc_alloc(MEMORY[0x277D14C30]);
  v22 = [v19 copy];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_10;
  v37[3] = &unk_277DB81B0;
  objc_copyWeak(&v38, &location);
  v39 = isRunningInStoreDemoMode;
  v23 = [v21 initWithSourceItem:v22 transformationBlock:v37];
  [(HUFaceRecognitionPersonEditorItemManager *)self setDeleteItem:v23];

  v24 = objc_alloc(MEMORY[0x277D14B40]);
  v25 = MEMORY[0x277CBEB98];
  faceCropItem = [(HUFaceRecognitionPersonEditorItemManager *)self faceCropItem];
  nameItem = [(HUFaceRecognitionPersonEditorItemManager *)self nameItem];
  addNameItem = [(HUFaceRecognitionPersonEditorItemManager *)self addNameItem];
  hideNotificationsItem = [(HUFaceRecognitionPersonEditorItemManager *)self hideNotificationsItem];
  deleteItem = [(HUFaceRecognitionPersonEditorItemManager *)self deleteItem];
  v31 = [v25 setWithObjects:{faceCropItem, nameItem, addNameItem, hideNotificationsItem, deleteItem, 0}];
  v32 = [v24 initWithItems:v31];
  [(HUFaceRecognitionPersonEditorItemManager *)self setStaticItemProvider:v32];

  staticItemProvider = [(HUFaceRecognitionPersonEditorItemManager *)self staticItemProvider];
  [array addObject:staticItemProvider];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

  return array;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D13CF0];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v4 na_safeSetObject:v3 forKey:v2];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3 == 0];
  [v4 na_safeSetObject:v5 forKey:*MEMORY[0x277D13FB8]];

  return v4;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];

  LOBYTE(v2) = [v4 BOOLValue];
  if ((v2 & 1) == 0)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13BB8]];
  }

  return v3;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  v5 = *MEMORY[0x277D13F60];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v4 setObject:v6 forKeyedSubscript:v5];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
  if ([v8 BOOLValue])
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = 1;
  }

  v10 = [v7 numberWithInt:v9];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "length") == 0}];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v12 = *MEMORY[0x277D13DA8];
  v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  [v4 setObject:v13 forKeyedSubscript:v12];

  return v4;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mutableCopy];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];

  LOBYTE(v2) = [v4 BOOLValue];
  if ((v2 & 1) == 0)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13BB8]];
  }

  return v3;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = @"HUFaceRecognitionPersonEditorUnknownPersonNameButton";
  }

  else
  {
    v8 = @"HUFaceRecognitionPersonEditorUnknownPersonNameButtonPhotoLibrary";
  }

  v9 = _HULocalizedStringWithDefaultValue(v8, v8, 1);
  v10 = *MEMORY[0x277D13F60];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v11 = [WeakRetained home];
  v12 = [v11 hf_currentUserIsAdministrator];

  v13 = [v3 objectForKeyedSubscript:v10];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v13, "length") != 0) | ((v12 & 1) == 0)}];
  [v5 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v16 = *MEMORY[0x277D13DA8];
  v17 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  [v5 setObject:v17 forKeyedSubscript:v16];

  return v5;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_7;
  v9[3] = &unk_277DB8200;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = [v2 futureWithBlock:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_9;
  v6[3] = &unk_277DB8228;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = [v3 flatMap:v6];

  return v4;
}

void __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14060]];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_8;
    v7[3] = &unk_277DB81D8;
    v8 = v3;
    [v6 fetchClassificationNotificationsEnabledForPersonWithUUID:v5 completion:v7];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = 1;
  v6 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonEditorHideNotifications", @"HUFaceRecognitionPersonEditorHideNotifications", 1);
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 32) latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14060]];
  if (v9)
  {
    v5 = *(a1 + 40);
  }

  v10 = [v7 numberWithInt:v5];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  objc_opt_class();
  v11 = v3;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    [v13 BOOLValue];
    v15 = [v14 numberWithInteger:HFPrimaryStateFromBOOL()];
    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  v16 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v16;
}

id __71__HUFaceRecognitionPersonEditorItemManager__buildItemProvidersForHome___block_invoke_10(uint64_t a1, void *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = *MEMORY[0x277D13F60];
  v6 = 1;
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonEditorRemoveButton", @"HUFaceRecognitionPersonEditorRemoveButton", 1);
  v15[0] = v7;
  v14[1] = *MEMORY[0x277D13FB8];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13CF8]];

  v10 = [v9 BOOLValue];
  if (v10)
  {
    v2 = [WeakRetained home];
    if ([v2 hf_currentUserIsAdministrator])
    {
      v6 = *(a1 + 40);
    }
  }

  v11 = [v8 numberWithInt:v6];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  if (v10)
  {
  }

  return v12;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v58[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    isRunningInStoreDemoMode = 1;
  }

  else
  {
    isRunningInStoreDemoMode = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v8 = 0x277D14000uLL;
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionPersonInformationSectionIdentifier"];
  faceCropItem = [(HUFaceRecognitionPersonEditorItemManager *)self faceCropItem];
  v58[0] = faceCropItem;
  nameItem = [(HUFaceRecognitionPersonEditorItemManager *)self nameItem];
  v58[1] = nameItem;
  addNameItem = [(HUFaceRecognitionPersonEditorItemManager *)self addNameItem];
  v58[2] = addNameItem;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
  [v9 setItems:v13];

  personItem = [(HUFaceRecognitionPersonEditorItemManager *)self personItem];
  latestResults = [personItem latestResults];
  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
  LOBYTE(v13) = [v16 BOOLValue];

  personItem2 = [(HUFaceRecognitionPersonEditorItemManager *)self personItem];
  v18 = personItem2;
  if (v13 & 1) != 0 || (isRunningInStoreDemoMode)
  {
    objc_opt_class();
    v35 = objc_opt_isKindOfClass() | isRunningInStoreDemoMode;

    if ((v35 & 1) == 0)
    {
      v34 = 0;
      goto LABEL_16;
    }

    personItem3 = [(HUFaceRecognitionPersonEditorItemManager *)self personItem];
    latestResults2 = [personItem3 latestResults];
    v22 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13CE0]];

    if (!v22)
    {
      v34 = 0;
      goto LABEL_15;
    }

    dateFormatter = [objc_opt_class() dateFormatter];
    v39 = [dateFormatter stringFromDate:v22];
    v34 = HULocalizedStringWithFormat(@"HUFaceRecognitionPersonEditorLastVisitedFooterFormat", @"%@", v40, v41, v42, v43, v44, v45, v39);
  }

  else
  {
    personManager = [personItem2 personManager];

    personHome = [(HUFaceRecognitionPersonEditorItemManager *)self personHome];
    hf_allUsersIncludingCurrentUser = [personHome hf_allUsersIncludingCurrentUser];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __77__HUFaceRecognitionPersonEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v54[3] = &unk_277DB7D60;
    v55 = personManager;
    v22 = personManager;
    v23 = [hf_allUsersIncludingCurrentUser na_firstObjectPassingTest:v54];

    if (v23)
    {
      home = [(HFItemManager *)self home];
      v25 = [home hf_handleForUser:v23];

      userNameFormatter = [(HUFaceRecognitionPersonEditorItemManager *)self userNameFormatter];
      v27 = [userNameFormatter stringForObjectValue:v25];
      v34 = HULocalizedStringWithFormat(@"HUFaceRecognitionPersonEditorFromUserPhotoLibraryFormat", @"%@", v28, v29, v30, v31, v32, v33, v27);

      v8 = 0x277D14000;
    }

    else
    {
      v34 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonEditorFromAPhotoLibrary", @"HUFaceRecognitionPersonEditorFromAPhotoLibrary", 1);
    }

    dateFormatter = v55;
  }

LABEL_15:
LABEL_16:
  [v9 setFooterTitle:v34];
  [array addObject:v9];
  v46 = [objc_alloc(*(v8 + 2128)) initWithIdentifier:@"HUFaceRecognitionPersonNotificationSectionIdentifier"];
  hideNotificationsItem = [(HUFaceRecognitionPersonEditorItemManager *)self hideNotificationsItem];
  v57 = hideNotificationsItem;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [v46 setItems:v48];

  [array addObject:v46];
  v49 = [objc_alloc(*(v8 + 2128)) initWithIdentifier:@"HUFaceRecognitionPersonDeletionSectionIdentifier"];
  deleteItem = [(HUFaceRecognitionPersonEditorItemManager *)self deleteItem];
  v56 = deleteItem;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  [v49 setItems:v51];

  [array addObject:v49];
  v52 = [*(v8 + 2128) filterSections:array toDisplayedItems:itemsCopy];

  return v52;
}

uint64_t __77__HUFaceRecognitionPersonEditorItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 photosPersonManager];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end
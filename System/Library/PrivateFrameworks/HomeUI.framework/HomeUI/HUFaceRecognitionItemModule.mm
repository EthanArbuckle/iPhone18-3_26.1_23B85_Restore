@interface HUFaceRecognitionItemModule
- (HUFaceRecognitionItemModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
@end

@implementation HUFaceRecognitionItemModule

- (HUFaceRecognitionItemModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUFaceRecognitionItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
  }

  return v9;
}

- (id)itemProviders
{
  home = [(HUFaceRecognitionItemModule *)self home];
  home2 = [(HUFaceRecognitionItemModule *)self home];
  currentUser = [home2 currentUser];
  v6 = [home homeAccessControlForUser:currentUser];

  v7 = [v6 camerasAccessLevel] == 2;
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    isRunningInStoreDemoMode = 1;
  }

  else
  {
    isRunningInStoreDemoMode = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  staticItemProvider = [(HUFaceRecognitionItemModule *)self staticItemProvider];

  if (!staticItemProvider)
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc(MEMORY[0x277D14B38]);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __44__HUFaceRecognitionItemModule_itemProviders__block_invoke;
    v24 = &unk_277DB8B98;
    objc_copyWeak(&v25, &location);
    v26 = isRunningInStoreDemoMode;
    v27 = v7;
    v11 = [v10 initWithResultsBlock:&v21];
    [(HUFaceRecognitionItemModule *)self setFaceRecognitionCellItem:v11];

    v12 = objc_alloc(MEMORY[0x277D14B40]);
    v13 = MEMORY[0x277CBEB98];
    faceRecognitionCellItem = [(HUFaceRecognitionItemModule *)self faceRecognitionCellItem];
    v15 = [v13 setWithObjects:{faceRecognitionCellItem, 0, v21, v22, v23, v24}];
    v16 = [v12 initWithItems:v15];
    [(HUFaceRecognitionItemModule *)self setStaticItemProvider:v16];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v17 = MEMORY[0x277CBEB98];
  staticItemProvider2 = [(HUFaceRecognitionItemModule *)self staticItemProvider];
  v19 = [v17 setWithObjects:{staticItemProvider2, 0}];

  return v19;
}

id __44__HUFaceRecognitionItemModule_itemProviders__block_invoke(uint64_t a1)
{
  v19[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained home];
  v4 = [v3 personManagerSettings];
  if ([v4 isFaceClassificationEnabled])
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = MEMORY[0x277D2C900];
  v18[0] = *MEMORY[0x277D13F60];
  v7 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionModuleRecognitionCell", @"HUFaceRecognitionModuleRecognitionCell", 1);
  v8 = *MEMORY[0x277D13F10];
  v19[0] = v7;
  v19[1] = MEMORY[0x277CBEC28];
  v9 = *MEMORY[0x277D13EA8];
  v18[1] = v8;
  v18[2] = v9;
  if (*(a1 + 41))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 40) ^ 1u;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v19[2] = v11;
  v18[3] = *MEMORY[0x277D13E20];
  if (v5)
  {
    v12 = @"HUFaceRecognitionModuleRecognitionCellOn";
  }

  else
  {
    v12 = @"HUFaceRecognitionModuleRecognitionCellOff";
  }

  v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
  v19[3] = v13;
  v18[4] = *MEMORY[0x277D13DA0];
  v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v19[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v16 = [v6 futureWithResult:v15];

  return v16;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionItemModuleMainSectionIdentifier"];
  faceRecognitionCellItem = [(HUFaceRecognitionItemModule *)self faceRecognitionCellItem];
  v9[0] = faceRecognitionCellItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 setItems:v7];

  [v4 addObject:v5];

  return v4;
}

@end
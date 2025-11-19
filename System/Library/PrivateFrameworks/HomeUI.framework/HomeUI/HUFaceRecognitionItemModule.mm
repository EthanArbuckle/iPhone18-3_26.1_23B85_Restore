@interface HUFaceRecognitionItemModule
- (HUFaceRecognitionItemModule)initWithItemUpdater:(id)a3 home:(id)a4;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUFaceRecognitionItemModule

- (HUFaceRecognitionItemModule)initWithItemUpdater:(id)a3 home:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUFaceRecognitionItemModule;
  v8 = [(HFItemModule *)&v11 initWithItemUpdater:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
  }

  return v9;
}

- (id)itemProviders
{
  v3 = [(HUFaceRecognitionItemModule *)self home];
  v4 = [(HUFaceRecognitionItemModule *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 homeAccessControlForUser:v5];

  v7 = [v6 camerasAccessLevel] == 2;
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    v8 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
  }

  v9 = [(HUFaceRecognitionItemModule *)self staticItemProvider];

  if (!v9)
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc(MEMORY[0x277D14B38]);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __44__HUFaceRecognitionItemModule_itemProviders__block_invoke;
    v24 = &unk_277DB8B98;
    objc_copyWeak(&v25, &location);
    v26 = v8;
    v27 = v7;
    v11 = [v10 initWithResultsBlock:&v21];
    [(HUFaceRecognitionItemModule *)self setFaceRecognitionCellItem:v11];

    v12 = objc_alloc(MEMORY[0x277D14B40]);
    v13 = MEMORY[0x277CBEB98];
    v14 = [(HUFaceRecognitionItemModule *)self faceRecognitionCellItem];
    v15 = [v13 setWithObjects:{v14, 0, v21, v22, v23, v24}];
    v16 = [v12 initWithItems:v15];
    [(HUFaceRecognitionItemModule *)self setStaticItemProvider:v16];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v17 = MEMORY[0x277CBEB98];
  v18 = [(HUFaceRecognitionItemModule *)self staticItemProvider];
  v19 = [v17 setWithObjects:{v18, 0}];

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

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionItemModuleMainSectionIdentifier"];
  v6 = [(HUFaceRecognitionItemModule *)self faceRecognitionCellItem];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 setItems:v7];

  [v4 addObject:v5];

  return v4;
}

@end
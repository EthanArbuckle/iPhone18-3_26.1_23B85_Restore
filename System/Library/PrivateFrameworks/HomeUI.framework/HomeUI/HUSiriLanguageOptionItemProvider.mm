@interface HUSiriLanguageOptionItemProvider
- (HUSiriLanguageOptionItemProvider)initWithAdapter:(id)adapter optionStyle:(unint64_t)style;
- (HUSiriLanguageOptionItemProvider)initWithSiriLanguageOptionsManager:(id)manager sourceItem:(id)item optionStyle:(unint64_t)style;
- (id)_createSiriLanguageOptionItems:(id)items;
- (id)_reloadItemsWithAdapter;
- (id)_reloadItemsWithSiriLanguageOptionsManager;
- (id)reloadItems;
@end

@implementation HUSiriLanguageOptionItemProvider

- (HUSiriLanguageOptionItemProvider)initWithAdapter:(id)adapter optionStyle:(unint64_t)style
{
  adapterCopy = adapter;
  v24.receiver = self;
  v24.super_class = HUSiriLanguageOptionItemProvider;
  v8 = [(HFItemProvider *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adapter, adapter);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    hasOptedToHH2 = [homeManager hasOptedToHH2];

    if (hasOptedToHH2)
    {
      objc_opt_class();
      homeKitSettingsVendor = [adapterCopy homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v14 = homeKitSettingsVendor;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      objc_opt_class();
      homeKitSettingsVendor2 = [adapterCopy homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v17 = homeKitSettingsVendor2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      hf_siriLanguageOptionsManager = [v19 hf_siriLanguageOptionsManager];
      objc_storeStrong(&v9->_siriLanguageOptionsManager, hf_siriLanguageOptionsManager);
    }

    v9->_optionStyle = style;
    v21 = [MEMORY[0x277CBEB98] set];
    items = v9->_items;
    v9->_items = v21;
  }

  return v9;
}

- (HUSiriLanguageOptionItemProvider)initWithSiriLanguageOptionsManager:(id)manager sourceItem:(id)item optionStyle:(unint64_t)style
{
  managerCopy = manager;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = HUSiriLanguageOptionItemProvider;
  v11 = [(HFItemProvider *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_siriLanguageOptionsManager, manager);
    objc_storeStrong(&v12->_sourceItem, item);
    v12->_optionStyle = style;
    v13 = [MEMORY[0x277CBEB98] set];
    items = v12->_items;
    v12->_items = v13;
  }

  return v12;
}

- (id)reloadItems
{
  siriLanguageOptionsManager = [(HUSiriLanguageOptionItemProvider *)self siriLanguageOptionsManager];

  if (siriLanguageOptionsManager)
  {
    [(HUSiriLanguageOptionItemProvider *)self _reloadItemsWithSiriLanguageOptionsManager];
  }

  else
  {
    [(HUSiriLanguageOptionItemProvider *)self _reloadItemsWithAdapter];
  }
  v4 = ;

  return v4;
}

- (id)_reloadItemsWithAdapter
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUSiriLanguageOptionItemProvider__reloadItemsWithAdapter__block_invoke;
  v6[3] = &unk_277DB7D38;
  v6[4] = self;
  v3 = __59__HUSiriLanguageOptionItemProvider__reloadItemsWithAdapter__block_invoke(v6);
  v4 = [(HUSiriLanguageOptionItemProvider *)self _createSiriLanguageOptionItems:v3];

  return v4;
}

id __59__HUSiriLanguageOptionItemProvider__reloadItemsWithAdapter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionStyle];
  switch(v2)
  {
    case 2:
      v3 = [*(a1 + 32) adapter];
      v4 = [*(a1 + 32) adapter];
      v5 = [v4 selectedLanguageOption];
      v6 = [v3 preferredOutputVoiceOptionsForSelectedOption:v5];
      goto LABEL_7;
    case 1:
      v3 = [*(a1 + 32) adapter];
      v4 = [*(a1 + 32) adapter];
      v5 = [v4 selectedLanguageOption];
      v6 = [v3 preferredOutputVoiceAccentOptionsForSelectedOption:v5];
      goto LABEL_7;
    case 0:
      v3 = [*(a1 + 32) adapter];
      v4 = [*(a1 + 32) adapter];
      v5 = [v4 selectedLanguageOption];
      v6 = [v3 preferredRecognitionLanguageOptionsForSelectedOption:v5];
LABEL_7:
      v7 = v6;

      goto LABEL_9;
  }

  v7 = [MEMORY[0x277CBEB98] set];
LABEL_9:

  return v7;
}

- (id)_reloadItemsWithSiriLanguageOptionsManager
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HUSiriLanguageOptionItemProvider__reloadItemsWithSiriLanguageOptionsManager__block_invoke;
  v7[3] = &unk_277DB7478;
  v7[4] = self;
  v3 = __78__HUSiriLanguageOptionItemProvider__reloadItemsWithSiriLanguageOptionsManager__block_invoke(v7);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HUSiriLanguageOptionItemProvider__reloadItemsWithSiriLanguageOptionsManager__block_invoke_2;
  v6[3] = &unk_277DBC490;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __78__HUSiriLanguageOptionItemProvider__reloadItemsWithSiriLanguageOptionsManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) optionStyle];
  switch(v2)
  {
    case 2:
      v3 = [*(a1 + 32) siriLanguageOptionsManager];
      v4 = [v3 preferredOutputVoiceOptionsForSelectedOption];
      goto LABEL_7;
    case 1:
      v3 = [*(a1 + 32) siriLanguageOptionsManager];
      v4 = [v3 preferredOutputVoiceAccentOptionsForSelectedOption];
      goto LABEL_7;
    case 0:
      v3 = [*(a1 + 32) siriLanguageOptionsManager];
      v4 = [v3 preferredRecognitionLanguageOptionsForSelectedOption];
LABEL_7:
      v5 = v4;

      goto LABEL_9;
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_9:

  return v5;
}

- (id)_createSiriLanguageOptionItems:(id)items
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke;
  aBlock[3] = &unk_277DC0218;
  aBlock[4] = self;
  itemsCopy = items;
  v5 = _Block_copy(aBlock);
  allObjects = [itemsCopy allObjects];
  v7 = [allObjects na_dictionaryWithKeyGenerator:v5];

  allObjects2 = [itemsCopy allObjects];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_2;
  v20[3] = &unk_277DC0240;
  v9 = v5;
  v21 = v9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_3;
  v19[3] = &unk_277DC0268;
  v19[4] = self;
  v10 = [(HFItemProvider *)self reloadItemsWithObjects:allObjects2 keyAdaptor:v9 itemAdaptor:v20 filter:0 itemMap:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_4;
  v15[3] = &unk_277DC02B8;
  selfCopy = self;
  v18 = v9;
  v16 = v7;
  v11 = v9;
  v12 = v7;
  v13 = [v10 addSuccessBlock:v15];

  return v13;
}

id __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[HUSiriLanguageOptionItem selectionKeyForLanguageOption:withOptionStyle:](HUSiriLanguageOptionItem, "selectionKeyForLanguageOption:withOptionStyle:", v3, [v2 optionStyle]);

  return v4;
}

id __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 languageOption];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 siriLanguageOptionsManager];

  v6 = [HUSiriLanguageOptionItem alloc];
  v7 = [*(a1 + 32) optionStyle];
  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = [v8 siriLanguageOptionsManager];
    v10 = [(HUSiriLanguageOptionItem *)v6 initWithStyle:v7 siriLanguageOptionsManager:v9 languageOption:v4];
  }

  else
  {
    v9 = [v8 adapter];
    v10 = [(HUSiriLanguageOptionItem *)v6 initWithStyle:v7 adapter:v9 languageOption:v4];
  }

  v11 = v10;

  return v11;
}

void __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 existingItems];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_5;
  v9 = &unk_277DC0290;
  v10 = a1[4];
  v11 = a1[6];
  [v4 na_each:&v6];

  v5 = [v3 allItems];

  [a1[5] setItems:v5];
}

void __67__HUSiriLanguageOptionItemProvider__createSiriLanguageOptionItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v4 languageOption];
  v5 = (*(v3 + 16))(v3, v7);
  v6 = [v2 objectForKeyedSubscript:v5];
  [v4 setLanguageOption:v6];
}

@end
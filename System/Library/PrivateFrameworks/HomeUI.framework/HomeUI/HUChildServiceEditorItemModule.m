@interface HUChildServiceEditorItemModule
+ (id)supportedServiceTypes;
- (BOOL)canToggleConfigurationStateForItem:(id)a3;
- (HMAccessory)accessory;
- (HUChildServiceEditorItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5 mode:(unint64_t)a6;
- (id)_createItemProviders;
- (id)_isConfiguredControlItemForItem:(id)a3;
- (id)itemProviders;
- (id)toggleConfigurationStateForItem:(id)a3;
- (int64_t)configurationStateForItem:(id)a3;
@end

@implementation HUChildServiceEditorItemModule

+ (id)supportedServiceTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HUChildServiceEditorItemModule.m" lineNumber:22 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HUChildServiceEditorItemModule supportedServiceTypes]", objc_opt_class()}];

  return 0;
}

uint64_t __53__HUChildServiceEditorItemModule_childItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 latestResults];
  v7 = *MEMORY[0x277D13F60];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = [v4 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = [v5 latestResults];

  v12 = *MEMORY[0x277D13EA8];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  v14 = [v13 BOOLValue];

  v15 = [v4 latestResults];

  v16 = [v15 objectForKeyedSubscript:v12];
  v17 = [v16 BOOLValue];

  if (!v14 || v17)
  {
    if (v14 & 1 | ((v17 & 1) == 0))
    {
      v23 = MEMORY[0x277D85DD0];
      v19 = v8;
      v24 = v19;
      v20 = v10;
      v21 = v20;
      v25 = v20;
      if (v19)
      {
        v18 = -1;
      }

      else
      {
        v18 = v20 != 0;
      }

      if (v19 && v20)
      {
        v18 = [v19 localizedStandardCompare:{v20, v23, 3221225472, __53__HUChildServiceEditorItemModule_childItemComparator__block_invoke_2, &unk_277DB78F8, v19}];
        v21 = v25;
      }
    }

    else
    {
      v18 = -1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (HUChildServiceEditorItemModule)initWithItemUpdater:(id)a3 home:(id)a4 sourceItem:(id)a5 mode:(unint64_t)a6
{
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = HUChildServiceEditorItemModule;
  v14 = [(HFItemModule *)&v19 initWithItemUpdater:a3];
  if (v14)
  {
    if (!v13)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:v14 file:@"HUChildServiceEditorItemModule.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sourceItem"}];
    }

    objc_storeStrong(&v14->_home, a4);
    objc_storeStrong(&v14->_sourceItem, a5);
    v14->_editingMode = a6;
    v15 = [(HUChildServiceEditorItemModule *)v14 _createItemProviders];
    itemProviders = v14->_itemProviders;
    v14->_itemProviders = v15;
  }

  return v14;
}

- (HMAccessory)accessory
{
  v2 = [(HUChildServiceEditorItemModule *)self sourceItem];
  v3 = [v2 accessories];
  v4 = [v3 anyObject];

  return v4;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    v4 = [(HUChildServiceEditorItemModule *)self _createItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = v4;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)_createItemProviders
{
  v3 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D14AD0]);
    v5 = [(HUChildServiceEditorItemModule *)self home];
    v6 = [objc_opt_class() supportedServiceTypes];
    v7 = [v4 initWithHome:v5 serviceTypes:v6];
    [(HUChildServiceEditorItemModule *)self setChildServiceItemProvider:v7];

    objc_initWeak(&location, self);
    v8 = MEMORY[0x277CBEB98];
    v9 = [objc_opt_class() supportedServiceTypes];
    v10 = [v8 setWithArray:v9];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke;
    v17[3] = &unk_277DC4058;
    objc_copyWeak(&v19, &location);
    v11 = v10;
    v18 = v11;
    v12 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
    [v12 setSourceServiceGenerator:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v13 = MEMORY[0x277CBEB98];
  v14 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  v15 = [v13 setWithObject:v14];

  return v15;
}

id __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained sourceItem];
  v4 = [v3 homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v6 = [WeakRetained sourceItem];
    v7 = [v6 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = MEMORY[0x277D2C900];
    v11 = [v9 hf_childServices];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_2;
    v37[3] = &unk_277DB9560;
    v38 = *(a1 + 32);
    v12 = [v11 na_filter:v37];
    v13 = [v10 futureWithResult:v12];

    v14 = v38;
LABEL_16:

    goto LABEL_17;
  }

  v15 = [WeakRetained sourceItem];
  v16 = [v15 homeKitObject];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if (v17)
  {
    objc_opt_class();
    v18 = [WeakRetained sourceItem];
    v19 = [v18 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = MEMORY[0x277D2C900];
    v11 = [v21 hf_visibleServices];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_3;
    v35[3] = &unk_277DB9560;
    v36 = *(a1 + 32);
    v23 = [v11 na_filter:v35];
    v13 = [v22 futureWithResult:v23];

    v14 = v36;
    goto LABEL_16;
  }

  v24 = [WeakRetained sourceItem];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    objc_opt_class();
    v26 = [WeakRetained sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v29 = [v28 accessoryBuilder];

    v11 = [v29 accessory];

    v30 = MEMORY[0x277D2C900];
    v14 = [v11 hf_visibleServices];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_4;
    v33[3] = &unk_277DB9560;
    v34 = *(a1 + 32);
    v31 = [v14 na_filter:v33];
    v13 = [v30 futureWithResult:v31];

    goto LABEL_16;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

uint64_t __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __54__HUChildServiceEditorItemModule__createItemProviders__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_isConfiguredControlItemForItem:(id)a3
{
  v4 = a3;
  v5 = [(HFItemModule *)self itemUpdater];
  v6 = [v5 childItemsForItem:v4];

  v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_22_2];

  return v7;
}

uint64_t __66__HUChildServiceEditorItemModule__isConfiguredControlItemForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (_MergedGlobals_2_3 != -1)
  {
    dispatch_once(&_MergedGlobals_2_3, &__block_literal_global_28_2);
  }

  v3 = qword_27C8380B8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 characteristicOptions];
    v5 = [v4 allCharacteristicTypes];
    v6 = [v5 intersectsSet:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __66__HUChildServiceEditorItemModule__isConfiguredControlItemForItem___block_invoke_3()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFB80];
  v5[0] = *MEMORY[0x277CCF920];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_27C8380B8;
  qword_27C8380B8 = v3;
}

- (int64_t)configurationStateForItem:(id)a3
{
  v3 = [(HUChildServiceEditorItemModule *)self _isConfiguredControlItemForItem:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13818]];

    if (v6)
    {
      if ([v6 unsignedIntegerValue] == 2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canToggleConfigurationStateForItem:(id)a3
{
  v4 = [(HUChildServiceEditorItemModule *)self configurationStateForItem:a3];
  v5 = [(HUChildServiceEditorItemModule *)self home];
  v6 = [v5 hf_currentUserIsAdministrator];
  if (v4 > 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)toggleConfigurationStateForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUChildServiceEditorItemModule *)self _isConfiguredControlItemForItem:v4];
  if (!v5)
  {
    NSLog(&cfstr_NoControlItemF.isa, v4);
  }

  v6 = [v5 toggleValue];

  return v6;
}

@end
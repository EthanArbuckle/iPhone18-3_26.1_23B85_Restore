@interface HUValveEditorItemManager
+ (id)preferredSectionSortArray;
- (HUValveEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 editorMode:(unint64_t)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_characteristicTypesForControlPanelItem:(id)a3;
- (id)_characteristicsAffectedByControlItem:(id)a3;
- (void)controlPanelController:(id)a3 willBeginPossibleWritesForControlItem:(id)a4;
@end

@implementation HUValveEditorItemManager

+ (id)preferredSectionSortArray
{
  if (_MergedGlobals_4_8 != -1)
  {
    dispatch_once(&_MergedGlobals_4_8, &__block_literal_global_10_1);
  }

  v3 = qword_27C838098;

  return v3;
}

void __53__HUValveEditorItemManager_preferredSectionSortArray__block_invoke_2()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277CCF920];
  v2[1] = @"HUNameItemModuleSectionIdentifier";
  v2[2] = *MEMORY[0x277CCFA60];
  v2[3] = @"HUValveEditorSectionIdentifierIdentify";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = qword_27C838098;
  qword_27C838098 = v0;
}

uint64_t __64__HUValveEditorItemManager_sortComparatorForValveEditorSections__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HUValveEditorSectionSortOrderKey"];

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"HUValveEditorSectionSortOrderKey"];

  v10 = [v7 compare:v9];
  if (!v10)
  {
    v11 = [v4 identifier];
    v12 = [v5 identifier];
    v10 = [v11 compare:v12];
  }

  return v10;
}

- (HUValveEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 editorMode:(unint64_t)a5
{
  v8 = a3;
  v9 = [a4 copy];
  v21.receiver = self;
  v21.super_class = HUValveEditorItemManager;
  v10 = [(HFItemManager *)&v21 initWithDelegate:v8 sourceItem:v9];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [(HFItemManager *)v10 sourceItem];
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v12;
      if (v13)
      {
        goto LABEL_9;
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
    }

    v14 = 0;
LABEL_9:

    sourceValveItem = v10->_sourceValveItem;
    v10->_sourceValveItem = v14;

    v18 = [[HUControlPanelController alloc] initWithDelegate:v10];
    controlPanelController = v10->_controlPanelController;
    v10->_controlPanelController = v18;

    v10->_editorMode = a5;
  }

  return v10;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v55[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14A98]);
  v6 = [(HFValveServiceItem *)self->_sourceValveItem homeKitObject];
  v7 = [(HFItemManager *)self home];
  v8 = [v5 initWithExistingObject:v6 inHome:v7];
  [(HUValveEditorItemManager *)self setServiceBuilder:v8];

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [(HUValveEditorItemManager *)self controlPanelItemProvider];

  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277D145D8]);
    v12 = [(HUValveEditorItemManager *)self sourceValveItem];
    v13 = [(HUValveEditorItemManager *)self sourceValveItem];
    v14 = [v13 valueSource];
    v15 = [v11 initWithItem:v12 valueSource:v14];
    [(HUValveEditorItemManager *)self setControlPanelItemProvider:v15];

    if ([(HUValveEditorItemManager *)self editorMode]== 1)
    {
      objc_initWeak(&location, self);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __55__HUValveEditorItemManager__buildItemProvidersForHome___block_invoke;
      v51[3] = &unk_277DBEAE8;
      objc_copyWeak(&v52, &location);
      v16 = [(HUValveEditorItemManager *)self controlPanelItemProvider];
      [v16 setFilter:v51];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
    }

    v17 = [(HUValveEditorItemManager *)self controlPanelItemProvider];
    [v9 addObject:v17];
  }

  v18 = [(HUValveEditorItemManager *)self staticItemProvider];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = [(HUValveEditorItemManager *)self sourceValveItem];
    v21 = [v20 service];
    v22 = [v21 accessory];
    v23 = [v22 hf_owningBridgeAccessory];
    v24 = v23 == 0;

    v25 = [(HUValveEditorItemManager *)self sourceValveItem];
    v26 = [v25 latestResults];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D14068]];
    v28 = [v27 integerValue] == 0;

    v29 = objc_alloc(MEMORY[0x277D14B38]);
    v54[0] = *MEMORY[0x277D13F60];
    v30 = _HULocalizedStringWithDefaultValue(@"HUValveEditorIdentifyButtonTitle", @"HUValveEditorIdentifyButtonTitle", 1);
    v54[1] = *MEMORY[0x277D13FB8];
    v55[0] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v24 || v28];
    v55[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v33 = [v29 initWithResults:v32];
    [(HUValveEditorItemManager *)self setIdentifyItem:v33];

    v34 = objc_alloc(MEMORY[0x277D14B40]);
    v35 = MEMORY[0x277CBEB98];
    v36 = [(HUValveEditorItemManager *)self nameItem];
    v37 = [(HUValveEditorItemManager *)self identifyItem];
    v38 = [v35 setWithObjects:{v36, v37, 0}];
    v39 = [v34 initWithItems:v38];
    [(HUValveEditorItemManager *)self setStaticItemProvider:v39];

    v40 = [(HUValveEditorItemManager *)self staticItemProvider];
    [v9 addObject:v40];
  }

  v41 = [(HUValveEditorItemManager *)self nameModule];
  v42 = v41 == 0;

  if (v42)
  {
    v43 = [HUNameItemModule alloc];
    v44 = [(HUValveEditorItemManager *)self sourceValveItem];
    v45 = [(HUValveEditorItemManager *)self serviceBuilder];
    v46 = [(HUNameItemModule *)v43 initWithItemUpdater:self sourceServiceLikeItem:v44 itemBuilder:v45];
    [(HUValveEditorItemManager *)self setNameModule:v46];

    v47 = [(HUValveEditorItemManager *)self nameModule];
    v48 = [v47 itemProviders];
    v49 = [v48 allObjects];
    [v9 addObjectsFromArray:v49];
  }

  return v9;
}

uint64_t __55__HUValveEditorItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _characteristicTypesForControlPanelItem:v3];

  LODWORD(v3) = [v5 na_any:&__block_literal_global_21_0];
  return v3 ^ 1;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUValveEditorItemManager *)self controlPanelItemProvider];
  v7 = [v6 items];
  v8 = [v7 intersectsSet:v4];

  v62 = v4;
  if (v8)
  {
    v9 = [(HUValveEditorItemManager *)self controlPanelItemProvider];
    v10 = [v9 items];
    v11 = [v10 na_setByIntersectingWithSet:v4];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __61__HUValveEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v75[3] = &unk_277DBA780;
    v75[4] = self;
    v12 = [v11 na_filter:v75];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v12;
    v65 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v65)
    {
      v64 = *v72;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          v14 = v5;
          if (*v72 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v71 + 1) + 8 * i);
          v16 = [(HUValveEditorItemManager *)self _characteristicTypesForControlPanelItem:v15];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __61__HUValveEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
          v70[3] = &unk_277DB8B00;
          v70[4] = self;
          v17 = [v16 na_firstObjectPassingTest:v70];
          v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v17];
          v84 = v15;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
          [v18 setItems:v19];

          v20 = [(HUValveEditorItemManager *)self controlPanelController];
          v21 = [(HFItemManager *)self sourceItem];
          v22 = [v20 sectionTitleForItem:v15 forSourceItem:v21];
          [v18 setHeaderTitle:v22];

          v23 = [(HUValveEditorItemManager *)self controlPanelController];
          v24 = [(HFItemManager *)self sourceItem];
          v25 = [v23 sectionFooterForItem:v15 forSourceItem:v24];
          [v18 setFooterTitle:v25];

          v26 = [objc_opt_class() preferredSectionSortArray];
          v27 = [v26 indexOfObject:v17];

          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [objc_opt_class() preferredSectionSortArray];
            v27 = [v28 count];
          }

          v82 = @"HUValveEditorSectionSortOrderKey";
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
          v83 = v29;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          [v18 setUserInfo:v30];

          v5 = v14;
          [v14 addObject:v18];
        }

        v65 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
      }

      while (v65);
    }

    v4 = v62;
  }

  v31 = [(HUValveEditorItemManager *)self nameModule];
  v32 = [v31 buildSectionsWithDisplayedItems:v4];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v67;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v67 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v66 + 1) + 8 * j);
        v39 = [v38 identifier];
        v40 = [v39 isEqualToString:@"HUNameItemModuleSectionIdentifier"];

        if (v40)
        {
          v41 = [v38 mutableCopy];
          v42 = [objc_opt_class() preferredSectionSortArray];
          v43 = [v42 indexOfObject:@"HUNameItemModuleSectionIdentifier"];

          v79 = @"HUValveEditorSectionSortOrderKey";
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v43];
          v80 = v44;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          [v41 setUserInfo:v45];

          [v5 addObject:v41];
        }

        else
        {
          [v5 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v35);
  }

  v46 = [(HUValveEditorItemManager *)self identifyItem];
  v47 = [v62 containsObject:v46];

  if (v47)
  {
    v48 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUValveEditorSectionIdentifierIdentify"];
    v49 = [(HUValveEditorItemManager *)self identifyItem];
    v78 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v48 setItems:v50];

    v51 = [objc_opt_class() preferredSectionSortArray];
    v52 = [v51 indexOfObject:@"HUValveEditorSectionIdentifierIdentify"];

    v53 = [(HUValveEditorItemManager *)self sourceValveItem];
    v54 = [v53 service];
    v55 = [v54 serviceSubtype];

    if ([v55 isEqualToString:*MEMORY[0x277CD0DA8]])
    {
      v56 = @"HUValveEditorIdentifyButtonFooterTitleIrrigation";
    }

    else if ([v55 isEqualToString:*MEMORY[0x277CD0DB0]])
    {
      v56 = @"HUValveEditorIdentifyButtonFooterTitleShowerHead";
    }

    else if ([v55 isEqualToString:*MEMORY[0x277CD0DC0]])
    {
      v56 = @"HUValveEditorIdentifyButtonFooterTitleFaucet";
    }

    else
    {
      if (![v55 isEqualToString:*MEMORY[0x277CD0DA0]])
      {
        v57 = 0;
        goto LABEL_32;
      }

      v56 = @"HUValveEditorIdentifyButtonFooterTitleGeneric";
    }

    v57 = _HULocalizedStringWithDefaultValue(v56, v56, 1);
LABEL_32:
    [v48 setFooterTitle:v57];
    v76 = @"HUValveEditorSectionSortOrderKey";
    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
    v77 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    [v48 setUserInfo:v59];

    [v5 addObject:v48];
  }

  v60 = [objc_opt_class() sortComparatorForValveEditorSections];
  [v5 sortUsingComparator:v60];

  return v5;
}

uint64_t __61__HUValveEditorItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 controlPanelController];
  v5 = [v4 shouldDisplayItem:v3];

  return v5;
}

uint64_t __61__HUValveEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() preferredSectionSortArray];
  v4 = [v3 containsObject:v2];

  return v4;
}

- (id)_characteristicTypesForControlPanelItem:(id)a3
{
  v3 = [a3 controlItems];
  v4 = [MEMORY[0x277CBEB58] set];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUValveEditorItemManager__characteristicTypesForControlPanelItem___block_invoke;
  v7[3] = &unk_277DBF718;
  v5 = v4;
  v8 = v5;
  [v3 na_each:v7];

  return v5;
}

void __68__HUValveEditorItemManager__characteristicTypesForControlPanelItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 characteristicOptions];
  v3 = [v4 characteristicTypesForUsage:0];
  [v2 unionSet:v3];
}

- (id)_characteristicsAffectedByControlItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 characteristicOptions];
  v6 = [v5 characteristicTypesForUsage:0];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v3 valueSource];
        v13 = [v12 allCharacteristicsForCharacteristicType:v11];
        [v4 unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)controlPanelController:(id)a3 willBeginPossibleWritesForControlItem:(id)a4
{
  v5 = [(HUValveEditorItemManager *)self _characteristicsAffectedByControlItem:a4];
  [(HFItemManager *)self beginSuppressingUpdatesForCharacteristics:v5 withReason:@"valveEditorControlItemInteraction"];
}

@end
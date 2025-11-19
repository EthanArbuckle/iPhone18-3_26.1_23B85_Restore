@interface HUSceneActionEditorItemManager
+ (id)allActionGridEditorSectionIdentifiers;
+ (id)sectionIdentifierForActionGridEditorType:(unint64_t)a3;
+ (unint64_t)actionGridEditorTypeForSectionIdentifier:(id)a3;
- (HUSceneActionEditorItemManager)initWithActionSetBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (NSSet)actionGridItems;
- (NSSet)itemsToHideWhenEmpty;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionForActionGridEditorType:(unint64_t)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
- (void)_createItemsForActionGridEditorType:(unint64_t)a3 home:(id)a4;
@end

@implementation HUSceneActionEditorItemManager

- (HUSceneActionEditorItemManager)initWithActionSetBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = HUSceneActionEditorItemManager;
  v10 = [(HFItemManager *)&v15 initWithDelegate:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionSetBuilder, a3);
    v11->_mode = a4;
    v12 = objc_opt_new();
    actionGridItemsByEditorType = v11->_actionGridItemsByEditorType;
    v11->_actionGridItemsByEditorType = v12;
  }

  return v11;
}

+ (unint64_t)actionGridEditorTypeForSectionIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [&unk_282492BB8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(&unk_282492BB8);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [a1 sectionIdentifierForActionGridEditorType:{objc_msgSend(v10, "unsignedIntegerValue")}];
        v12 = [v5 isEqualToString:v11];

        if (v12)
        {
          v14 = [v10 unsignedIntegerValue];
          goto LABEL_11;
        }
      }

      v7 = [&unk_282492BB8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"HUSceneActionEditorItemManager.m" lineNumber:67 description:{@"Unexpected section ID %@ for %s!", v5, "+[HUSceneActionEditorItemManager actionGridEditorTypeForSectionIdentifier:]"}];

  v14 = 0;
LABEL_11:

  return v14;
}

+ (id)sectionIdentifierForActionGridEditorType:(unint64_t)a3
{
  v3 = @"AllAccessories";
  if (a3 == 2)
  {
    v3 = @"OtherAccessories";
  }

  if (a3 == 1)
  {
    return @"PrioritizedAccessories";
  }

  else
  {
    return v3;
  }
}

+ (id)allActionGridEditorSectionIdentifiers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HUSceneActionEditorItemManager_allActionGridEditorSectionIdentifiers__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __71__HUSceneActionEditorItemManager_allActionGridEditorSectionIdentifiers__block_invoke(v4);

  return v2;
}

id __71__HUSceneActionEditorItemManager_allActionGridEditorSectionIdentifiers__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HUSceneActionEditorItemManager_allActionGridEditorSectionIdentifiers__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_MergedGlobals_3_4 != -1)
  {
    dispatch_once(&_MergedGlobals_3_4, block);
  }

  v1 = qword_27C837EB0;

  return v1;
}

void __71__HUSceneActionEditorItemManager_allActionGridEditorSectionIdentifiers__block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) sectionIdentifierForActionGridEditorType:0];
  v4 = [*(a1 + 32) sectionIdentifierForActionGridEditorType:{1, v3}];
  v9[1] = v4;
  v5 = [*(a1 + 32) sectionIdentifierForActionGridEditorType:2];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v7 = [v2 setWithArray:v6];
  v8 = qword_27C837EB0;
  qword_27C837EB0 = v7;
}

- (NSSet)actionGridItems
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUSceneActionEditorItemManager *)self actionGridItemsByEditorType];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (NSSet)itemsToHideWhenEmpty
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HUSceneActionEditorItemManager *)self actionGridItems];
  [v3 unionSet:v4];

  v5 = [(HUSceneActionEditorItemManager *)self testSceneItem];
  [v3 na_safeAddObject:v5];

  v6 = [(HUSceneActionEditorItemManager *)self showInHomeDashboardItem];
  [v3 na_safeAddObject:v6];

  v7 = [(HUSceneActionEditorItemManager *)self mediaItem];
  [v3 na_safeAddObject:v7];

  return v3;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v74[2] = *MEMORY[0x277D85DE8];
  v62 = a3;
  v4 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
  if ([(HUSceneActionEditorItemManager *)self mode]== 1 || [(HUSceneActionEditorItemManager *)self mode]== 2)
  {
    v5 = [(HFItemManager *)self home];
    v6 = [v5 actionSets];
    v7 = [v6 na_filter:&__block_literal_global_101];
    v8 = [v7 count];

    v9 = v8 < 8;
  }

  else
  {
    v10 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
    v11 = [v10 actionSet];
    if ([v11 hf_hasSetForContextType:0])
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v13 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
      v14 = [v13 actionSet];
      v12 = [v14 hf_hasSetShowInHomeDashboard] ^ 1;
    }

    v15 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
    v9 = [v15 showInHomeDashboard] | v12;
  }

  v16 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
  [v16 setShowInHomeDashboard:v9 & 1];

  v59 = [MEMORY[0x277CBEB58] set];
  v17 = objc_alloc(MEMORY[0x277D14B38]);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_2;
  v66[3] = &unk_277DB7478;
  v61 = v4;
  v67 = v61;
  v18 = [v17 initWithResultsBlock:v66];
  [(HUSceneActionEditorItemManager *)self setNameAndIconItem:v18];

  [(HUSceneActionEditorItemManager *)self _createItemsForActionGridEditorType:0 home:v62];
  [(HUSceneActionEditorItemManager *)self _createItemsForActionGridEditorType:1 home:v62];
  [(HUSceneActionEditorItemManager *)self _createItemsForActionGridEditorType:2 home:v62];
  v19 = [(HUSceneActionEditorItemManager *)self mode]&& [(HUSceneActionEditorItemManager *)self mode]!= 1 && [(HUSceneActionEditorItemManager *)self mode]!= 2 && [(HUSceneActionEditorItemManager *)self mode]!= 3;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_49;
  v65[3] = &unk_277DBA4B8;
  v65[4] = self;
  v20 = __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_49(v65);
  v21 = objc_alloc(MEMORY[0x277D14B38]);
  v23 = *MEMORY[0x277D13FB8];
  v73[0] = *MEMORY[0x277D13F60];
  v22 = v73[0];
  v73[1] = v23;
  v74[0] = v20;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  v74[1] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v26 = [v21 initWithResults:v25];
  [(HUSceneActionEditorItemManager *)self setChangeServicesItem:v26];

  v27 = objc_alloc(MEMORY[0x277D14B38]);
  v71[0] = v22;
  v28 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorTestSceneButtonTitle", @"HUSceneActionEditorTestSceneButtonTitle", 1);
  v71[1] = v23;
  v72[0] = v28;
  v29 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  v72[1] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v31 = [v27 initWithResults:v30];
  [(HUSceneActionEditorItemManager *)self setTestSceneItem:v31];

  v32 = [HUIncludedContextItem alloc];
  v33 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
  v34 = [v33 actionSet];
  v35 = [(HUIncludedContextItem *)v32 initWithHomeKitObject:v34 contextType:3 home:v62];

  v36 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  [(HUIncludedContextItem *)v35 setOverrideHiddenState:v36];

  if ([(HUSceneActionEditorItemManager *)self mode]== 1 || [(HUSceneActionEditorItemManager *)self mode]== 2)
  {
    v37 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
    if ([v37 showInHomeDashboard])
    {
      v38 = &unk_2824915E0;
    }

    else
    {
      v38 = &unk_2824915F8;
    }

    [(HUIncludedContextItem *)v35 setOverridePrimaryState:v38];
  }

  [(HUSceneActionEditorItemManager *)self setShowInHomeDashboardItem:v35, v59];
  v39 = [(HUSceneActionEditorItemManager *)self mode]!= 0;
  v40 = objc_alloc(MEMORY[0x277D14B38]);
  v69[0] = v22;
  v41 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneButtonTitle", @"HUSceneActionEditorDeleteSceneButtonTitle", 1);
  v69[1] = v23;
  v70[0] = v41;
  v42 = [MEMORY[0x277CCABB0] numberWithInt:v39];
  v70[1] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v44 = [v40 initWithResults:v43];
  [(HUSceneActionEditorItemManager *)self setDeleteSceneItem:v44];

  v45 = objc_alloc(MEMORY[0x277D14B38]);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_71;
  v63[3] = &unk_277DB7478;
  v64 = v61;
  v46 = v61;
  v47 = [v45 initWithResultsBlock:v63];
  [(HUSceneActionEditorItemManager *)self setMediaItem:v47];

  v48 = [(HUSceneActionEditorItemManager *)self actionGridItemsByEditorType];
  v49 = [v48 allValues];
  [v60 addObjectsFromArray:v49];

  v50 = [(HUSceneActionEditorItemManager *)self nameAndIconItem];
  [v60 na_safeAddObject:v50];

  v51 = [(HUSceneActionEditorItemManager *)self mediaItem];
  [v60 na_safeAddObject:v51];

  v52 = [(HUSceneActionEditorItemManager *)self changeServicesItem];
  [v60 na_safeAddObject:v52];

  v53 = [(HUSceneActionEditorItemManager *)self testSceneItem];
  [v60 na_safeAddObject:v53];

  v54 = [(HUSceneActionEditorItemManager *)self showInHomeDashboardItem];
  [v60 na_safeAddObject:v54];

  v55 = [(HUSceneActionEditorItemManager *)self deleteSceneItem];
  [v60 na_safeAddObject:v55];

  v56 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v60];
  v68 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];

  return v57;
}

BOOL __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isAnonymous])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 actions];
    v3 = [v4 count] != 0;
  }

  return v3;
}

id __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) iconDescriptor];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [v6 isSystemImage])
  {
    v7 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20]];
    v8 = [v6 imageSymbolConfiguration];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 configurationByApplyingConfiguration:v7];

      v7 = v10;
    }

    v11 = objc_alloc(MEMORY[0x277D14728]);
    v12 = [v6 identifier];
    v13 = [v11 initWithSystemImageNamed:v12 configuration:v7];

    v4 = v13;
  }

  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E88]];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "Encountered a unexpected nil value for actionSetBuilder.iconDescriptor: %@", &v19, 0xCu);
    }
  }

  v15 = [*(a1 + 32) iconTintColor];
  if (v15)
  {
    [v2 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13F58]];
  }

  v16 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v16;
}

id __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_49(uint64_t a1)
{
  v1 = [*(a1 + 32) actionSetBuilder];
  v2 = [v1 actions];
  v3 = [v2 count];

  if (v3)
  {
    v4 = @"HUSceneActionEditorChangeServicesButtonTitle";
  }

  else
  {
    v4 = @"HUSceneActionEditorAddFirstServiceButtonTitle";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

id __61__HUSceneActionEditorItemManager__buildItemProvidersForHome___block_invoke_71(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorMediaButtonTitle", @"HUSceneActionEditorMediaButtonTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = [*(a1 + 32) mediaAction];
  v5 = [v4 localizedDescription];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) mediaAction];
  v8 = [v6 numberWithInt:v7 == 0];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v35 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSceneActionEditorNameSectionIdentifier"];
  v6 = [(HUSceneActionEditorItemManager *)self nameAndIconItem];
  v40[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v5 setItems:v7];

  [v4 addObject:v5];
  v8 = [(HUSceneActionEditorItemManager *)self prioritizedAccessories];
  v9 = [v8 count];

  v10 = self;
  if (v9)
  {
    v11 = [(HUSceneActionEditorItemManager *)self _buildSectionForActionGridEditorType:1];
    [v4 addObject:v11];

    v12 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
    v13 = [v12 actions];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke;
    v36[3] = &unk_277DB96C8;
    v36[4] = self;
    v14 = [v13 na_any:v36];

    if (!v14)
    {
      goto LABEL_6;
    }

    v10 = self;
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(HUSceneActionEditorItemManager *)v10 _buildSectionForActionGridEditorType:v15];
  [v4 addObject:v16];

LABEL_6:
  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSceneActionEditorMediaSectionIdentifier"];
  v18 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorMediaInstructionsTitle", @"HUSceneActionEditorMediaInstructionsTitle", 1);
  [v17 setHeaderTitle:v18];

  v19 = [(HFItemManager *)self home];
  v20 = [v19 hf_currentUserIsAdministrator];

  if (v20)
  {
    v21 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorMediaInstructionsDescription", @"HUSceneActionEditorMediaInstructionsDescription", 1);
    [v17 setHeaderSecondaryText:v21];
  }

  v22 = [(HUSceneActionEditorItemManager *)self mediaItem];
  v39 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  [v17 setItems:v23];

  [v4 addObject:v17];
  v24 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSceneActionEditorSettingsSectionIdentifier"];
  v25 = [(HUSceneActionEditorItemManager *)self testSceneItem];
  v38[0] = v25;
  v26 = [(HUSceneActionEditorItemManager *)self changeServicesItem];
  v38[1] = v26;
  v27 = [(HUSceneActionEditorItemManager *)self showInHomeDashboardItem];
  v38[2] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  [v24 setItems:v28];

  v29 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsShowInHomeDashboardFooterTitle", @"HUServiceDetailsShowInHomeDashboardFooterTitle", 1);
  [v24 setFooterTitle:v29];

  [v4 addObject:v24];
  if (![(HUSceneActionEditorItemManager *)self mode]|| [(HUSceneActionEditorItemManager *)self mode]== 3)
  {
    v30 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSceneActionEditorDeleteSectionIdentifier"];
    v31 = [(HUSceneActionEditorItemManager *)self deleteSceneItem];
    v37 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [v30 setItems:v32];

    [v4 addObject:v30];
  }

  v33 = [MEMORY[0x277D14778] filterSections:v4 toDisplayedItems:v35];

  return v33;
}

uint64_t __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) prioritizedAccessories];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
    v21[3] = &unk_277DB96A0;
    v22 = v6;
    v8 = [v7 na_any:v21] ^ 1;
    v9 = v22;
  }

  else
  {
    objc_opt_class();
    v10 = v4;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    if (v7)
    {
      v9 = [*(a1 + 32) prioritizedAccessories];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
      v19[3] = &unk_277DB96A0;
      v20 = v7;
      v12 = [v9 na_any:v19];
      v13 = v20;
    }

    else
    {
      objc_opt_class();
      v9 = v10;
      if (objc_opt_isKindOfClass())
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        v9 = 0;
        v7 = 0;
        v8 = 1;
        goto LABEL_17;
      }

      v13 = [*(a1 + 32) prioritizedAccessories];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_5;
      v17[3] = &unk_277DB96A0;
      v18 = v15;
      v12 = [v13 na_any:v17];
    }

    v8 = v12 ^ 1u;
  }

LABEL_17:

  return v8;
}

uint64_t __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hf_containedCharacteristics];
  v4 = [*(a1 + 32) characteristic];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaProfiles];
  v5 = [v4 na_flatMap:&__block_literal_global_83];

  v6 = [v3 hf_containedProfiles];

  v7 = [v6 intersectsSet:v5];
  return v7;
}

uint64_t __67__HUSceneActionEditorItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 hf_associatedAccessories];
  v4 = [*(a1 + 32) accessory];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HUSceneActionEditorItemManager;
  v5 = [(HFItemManager *)&v13 _itemsToHideInSet:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HUSceneActionEditorItemManager *)self actionSetBuilder];
  v8 = [v7 actions];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = [(HUSceneActionEditorItemManager *)self itemsToHideWhenEmpty];
    v11 = [v10 mutableCopy];

    [v11 intersectSet:v4];
    [v6 unionSet:v11];
  }

  return v6;
}

- (id)_buildSectionForActionGridEditorType:(unint64_t)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = [objc_opt_class() sectionIdentifierForActionGridEditorType:a3];
  v7 = [v5 initWithIdentifier:v6];

  if (a3 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = _HULocalizedStringWithDefaultValue(off_277DBCCA8[a3], off_277DBCCA8[a3], 1);
  }

  [v7 setHeaderTitle:v8];
  v9 = [(HUSceneActionEditorItemManager *)self actionGridItemsByEditorType];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v7 setItems:v12];

  return v7;
}

- (void)_createItemsForActionGridEditorType:(unint64_t)a3 home:(id)a4
{
  v6 = objc_alloc(MEMORY[0x277D14B38]);
  v9 = [v6 initWithResults:MEMORY[0x277CBEC10]];
  v7 = [(HUSceneActionEditorItemManager *)self actionGridItemsByEditorType];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v9 forKeyedSubscript:v8];
}

@end
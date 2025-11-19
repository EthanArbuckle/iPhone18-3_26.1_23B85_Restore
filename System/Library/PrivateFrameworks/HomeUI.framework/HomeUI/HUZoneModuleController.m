@interface HUZoneModuleController
- (BOOL)_validateNewZoneName:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (HUEditableTextCollectionListCell)createNewZoneCell;
- (HUZoneModuleController)initWithModule:(id)a3 room:(id)a4;
- (UICollectionViewListCell)currentZoneItemCell;
- (UITextField)editingTextField;
- (id)_createNewZoneWithName:(id)a3;
- (id)_didSelectZoneBuilderItem:(id)a3;
- (id)_didSelectZoneItem:(id)a3;
- (id)finishZoneNameEditing;
- (unint64_t)didSelectItem:(id)a3;
- (void)_configureCreateNewZoneItem:(id)a3 forCell:(id)a4;
- (void)_configureCurrentZonesItem:(id)a3 forCell:(id)a4;
- (void)_configureZoneBuilderItem:(id)a3 forCell:(id)a4;
- (void)_configureZoneItem:(id)a3 forCell:(id)a4;
- (void)_updateCreateNewZoneCellText:(BOOL)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation HUZoneModuleController

- (HUZoneModuleController)initWithModule:(id)a3 room:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUZoneModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_room, a4);
  }

  return v15;
}

- (Class)collectionCellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 createNewZoneItem];
  [v4 isEqual:v6];

  v7 = objc_opt_class();

  return v7;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 createNewZoneItem];

  if (v8 == v6)
  {
    [(HUZoneModuleController *)self _configureCreateNewZoneItem:v6 forCell:v12];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 sourceItem];

      v10 = [(HUItemModuleController *)self module];
      v11 = [v10 currentZoneItem];

      if (v11 == v9)
      {
        [(HUZoneModuleController *)self _configureCurrentZonesItem:v9 forCell:v12];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(HUZoneModuleController *)self _configureZoneBuilderItem:v9 forCell:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HUZoneModuleController *)self _configureZoneItem:v9 forCell:v12];
        }
      }

      v6 = v9;
    }
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 sourceItem];

    v6 = [(HUItemModuleController *)self module];
    v7 = [v6 currentZoneItem];

    if (v5 == v7)
    {
      v10 = [(HUItemModuleController *)self module];
      [v10 toggleExpansion];
    }

    else
    {
      objc_opt_class();
      v8 = v5;
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
        v11 = [(HUZoneModuleController *)self _didSelectZoneItem:v8];
      }

      objc_opt_class();
      v12 = v8;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        v15 = [(HUZoneModuleController *)self _didSelectZoneBuilderItem:v12];
      }
    }
  }

  else
  {
    v5 = v4;
  }

  return 0;
}

- (id)_didSelectZoneItem:(id)a3
{
  v5 = [a3 zone];
  v6 = objc_alloc(MEMORY[0x277D14D20]);
  v7 = [(HUZoneModuleController *)self room];
  v8 = [v7 home];
  v9 = [v6 initWithExistingObject:v5 inHome:v8];

  v10 = [v5 rooms];
  v11 = [(HUZoneModuleController *)self room];
  v12 = [v10 containsObject:v11];

  v13 = [(HUZoneModuleController *)self room];
  if (v12)
  {
    [v9 removeRoom:v13];
  }

  else
  {
    [v9 addRoom:v13];
  }

  v14 = [v9 commitItem];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__HUZoneModuleController__didSelectZoneItem___block_invoke;
  v17[3] = &unk_277DBA2C8;
  v17[4] = self;
  v17[5] = a2;
  v15 = [v14 addCompletionBlock:v17];

  return v15;
}

void __45__HUZoneModuleController__didSelectZoneItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    v4 = [MEMORY[0x277D14640] sharedHandler];
    [v4 handleError:v11];
  }

  else
  {
    v5 = MEMORY[0x277D14788];
    v6 = [*(a1 + 32) module];
    v7 = [v6 itemProviders];
    v4 = [v5 requestToReloadItemProviders:v7 senderSelector:*(a1 + 40)];

    v8 = [*(a1 + 32) module];
    v9 = [v8 itemUpdater];
    v10 = [v9 performItemUpdateRequest:v4];
  }
}

- (id)_didSelectZoneBuilderItem:(id)a3
{
  v5 = [a3 zoneBuilder];
  v6 = [(HUZoneModuleController *)self room];
  [v5 addRoom:v6];

  v7 = [v5 commitItem];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HUZoneModuleController__didSelectZoneBuilderItem___block_invoke;
  v10[3] = &unk_277DBA2C8;
  v10[4] = self;
  v10[5] = a2;
  v8 = [v7 addCompletionBlock:v10];

  return v8;
}

void __52__HUZoneModuleController__didSelectZoneBuilderItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    v4 = [MEMORY[0x277D14640] sharedHandler];
    [v4 handleError:v11];
  }

  else
  {
    v5 = MEMORY[0x277D14788];
    v6 = [*(a1 + 32) module];
    v7 = [v6 itemProviders];
    v4 = [v5 requestToReloadItemProviders:v7 senderSelector:*(a1 + 40)];

    v8 = [*(a1 + 32) module];
    v9 = [v8 itemUpdater];
    v10 = [v9 performItemUpdateRequest:v4];
  }
}

- (void)_updateCreateNewZoneCellText:(BOOL)a3
{
  v3 = a3;
  v21 = [(HUZoneModuleController *)self createNewZoneCell];
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 createNewZoneItem];

  v7 = [MEMORY[0x277D756E0] cellConfiguration];
  v8 = [v21 textField];
  v9 = [v8 isEditing];

  if (!v9 || v3)
  {
    v13 = [v6 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v7 setText:v14];

    v15 = [MEMORY[0x277D75348] hf_keyColor];
    v16 = [v7 textProperties];
    [v16 setColor:v15];

    v17 = [v21 textField];
    [v17 setPlaceholder:&stru_2823E0EE8];

    v18 = [v21 textField];
    [v18 setText:&stru_2823E0EE8];

    [v21 setContentConfiguration:v7];
    if (v3)
    {
      v19 = [v21 textField];
      [v19 setText:&stru_2823E0EE8];

      v20 = [v21 textField];
      [v20 resignFirstResponder];
    }
  }

  else
  {
    [v7 setText:0];
    [v21 setContentConfiguration:v7];
    v10 = [v6 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
    v12 = [v21 textField];
    [v12 setPlaceholder:v11];
  }
}

- (void)_configureCreateNewZoneItem:(id)a3 forCell:(id)a4
{
  v5 = a4;
  [(HUZoneModuleController *)self setCreateNewZoneCell:v5];
  [(HUZoneModuleController *)self _updateCreateNewZoneCellText:0];
  v6 = [v5 textField];
  [v6 setAutocapitalizationType:1];

  v7 = [v5 textField];

  [v7 setDelegate:self];
}

- (void)_configureZoneItem:(id)a3 forCell:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v7];
  [v6 setContentConfiguration:v8];
  v9 = [v7 zone];

  v10 = [v9 rooms];
  v11 = [(HUZoneModuleController *)self room];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D75248]);
    v15[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v6 setAccessories:v14];
  }

  else
  {
    [v6 setAccessories:MEMORY[0x277CBEBF8]];
  }
}

- (void)_configureZoneBuilderItem:(id)a3 forCell:(id)a4
{
  v5 = MEMORY[0x277D756E0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 valueCellConfiguration];
  v11 = [HUListContentConfigurationUtilities labelConfiguration:v8 forItem:v7];

  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  v10 = [v11 textProperties];
  [v10 setColor:v9];

  [v6 setContentConfiguration:v11];
  [v6 setAccessories:MEMORY[0x277CBEBF8]];
}

- (void)_configureCurrentZonesItem:(id)a3 forCell:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HUZoneModuleController *)self setCurrentZoneItemCell:v6];
  v8 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v13 = [HUListContentConfigurationUtilities labelConfiguration:v8 forItem:v7];

  v9 = [(HUZoneModuleController *)self room];
  v10 = [v9 hf_allZones];
  if ([v10 count])
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v11 = ;
  v12 = [v13 secondaryTextProperties];
  [v12 setColor:v11];

  [v6 setContentConfiguration:v13];
  [v6 setAccessories:MEMORY[0x277CBEBF8]];
}

- (BOOL)_validateNewZoneName:(id)a3
{
  v3 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:a3];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)_createNewZoneWithName:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:a3];
  if ([(HUZoneModuleController *)self hasPendingCreation])
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412802;
      v45 = self;
      v46 = 2112;
      v47 = v7;
      v48 = 2112;
      v49 = v5;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Pending creation for zone with name %@, skipping this one", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (![(HUZoneModuleController *)self _validateNewZoneName:v5])
  {
LABEL_15:
    v29 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_18;
  }

  v33 = [(HUItemModuleController *)self module];
  v8 = objc_opt_new();
  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 itemProviders];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke;
  v41[3] = &unk_277DBA310;
  v11 = v8;
  v42 = v11;
  [v10 na_each:v41];

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v37 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [v17 zone];
        v19 = [v18 name];
        v20 = [v19 isEqualToString:v5];

        if (v20)
        {
          v30 = [(HUZoneModuleController *)self _didSelectZoneItem:v17];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_4;
          v36[3] = &unk_277DBA338;
          v36[4] = self;
          v31 = [v30 addSuccessBlock:v36];

          v29 = [MEMORY[0x277D2C900] futureWithNoResult];
          v25 = v12;
          v22 = v33;
          goto LABEL_17;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = objc_alloc(MEMORY[0x277D14D20]);
  v22 = v33;
  v23 = [v33 room];
  v24 = [v23 home];
  v25 = [v21 initWithHome:v24];

  [v25 setName:v5];
  v26 = [v33 room];
  [v25 addRoom:v26];

  [(HUZoneModuleController *)self setHasPendingCreation:1];
  v27 = [v25 commitItem];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_5;
  v35[3] = &unk_277DBA360;
  v35[4] = self;
  v28 = [v27 addSuccessBlock:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_6;
  v34[3] = &unk_277DB8C00;
  v34[4] = self;
  v29 = [v28 addFailureBlock:v34];

LABEL_17:
LABEL_18:

  return v29;
}

void __49__HUZoneModuleController__createNewZoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v6 = [v3 na_filter:&__block_literal_global_53];

  v4 = *(a1 + 32);
  v5 = [v6 na_map:&__block_literal_global_21];
  [v4 unionSet:v5];
}

uint64_t __49__HUZoneModuleController__createNewZoneWithName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __49__HUZoneModuleController__createNewZoneWithName___block_invoke_5(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) host];
  v3 = [*(a1 + 32) module];
  v4 = [v3 createNewZoneItem];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 updateCellForItems:v5];

  return [*(a1 + 32) setHasPendingCreation:0];
}

uint64_t __49__HUZoneModuleController__createNewZoneWithName___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  [v5 handleError:v4];

  v6 = *(a1 + 32);

  return [v6 setHasPendingCreation:0];
}

- (id)finishZoneNameEditing
{
  v3 = [(HUZoneModuleController *)self editingTextField];
  [v3 resignFirstResponder];
  v4 = [v3 text];
  v5 = [(HUZoneModuleController *)self _createNewZoneWithName:v4];

  return v5;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  [(HUZoneModuleController *)self setEditingTextField:a3];

  [(HUZoneModuleController *)self _updateCreateNewZoneCellText:0];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [(HUZoneModuleController *)self _createNewZoneWithName:v5];

  [v4 resignFirstResponder];
  return 1;
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 text];
    v8 = [(HUZoneModuleController *)self _validateNewZoneName:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (UICollectionViewListCell)currentZoneItemCell
{
  WeakRetained = objc_loadWeakRetained(&self->_currentZoneItemCell);

  return WeakRetained;
}

- (HUEditableTextCollectionListCell)createNewZoneCell
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewZoneCell);

  return WeakRetained;
}

- (UITextField)editingTextField
{
  WeakRetained = objc_loadWeakRetained(&self->_editingTextField);

  return WeakRetained;
}

@end
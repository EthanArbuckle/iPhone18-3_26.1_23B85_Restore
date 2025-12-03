@interface HUZoneModuleController
- (BOOL)_validateNewZoneName:(id)name;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (Class)collectionCellClassForItem:(id)item;
- (HUEditableTextCollectionListCell)createNewZoneCell;
- (HUZoneModuleController)initWithModule:(id)module room:(id)room;
- (UICollectionViewListCell)currentZoneItemCell;
- (UITextField)editingTextField;
- (id)_createNewZoneWithName:(id)name;
- (id)_didSelectZoneBuilderItem:(id)item;
- (id)_didSelectZoneItem:(id)item;
- (id)finishZoneNameEditing;
- (unint64_t)didSelectItem:(id)item;
- (void)_configureCreateNewZoneItem:(id)item forCell:(id)cell;
- (void)_configureCurrentZonesItem:(id)item forCell:(id)cell;
- (void)_configureZoneBuilderItem:(id)item forCell:(id)cell;
- (void)_configureZoneItem:(id)item forCell:(id)cell;
- (void)_updateCreateNewZoneCellText:(BOOL)text;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation HUZoneModuleController

- (HUZoneModuleController)initWithModule:(id)module room:(id)room
{
  moduleCopy = module;
  roomCopy = room;
  v8 = objc_opt_class();
  v9 = moduleCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUZoneModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_room, room);
  }

  return v15;
}

- (Class)collectionCellClassForItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  createNewZoneItem = [module createNewZoneItem];
  [itemCopy isEqual:createNewZoneItem];

  v7 = objc_opt_class();

  return v7;
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  createNewZoneItem = [module createNewZoneItem];

  if (createNewZoneItem == itemCopy)
  {
    [(HUZoneModuleController *)self _configureCreateNewZoneItem:itemCopy forCell:cellCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sourceItem = [itemCopy sourceItem];

      module2 = [(HUItemModuleController *)self module];
      currentZoneItem = [module2 currentZoneItem];

      if (currentZoneItem == sourceItem)
      {
        [(HUZoneModuleController *)self _configureCurrentZonesItem:sourceItem forCell:cellCopy];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(HUZoneModuleController *)self _configureZoneBuilderItem:sourceItem forCell:cellCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HUZoneModuleController *)self _configureZoneItem:sourceItem forCell:cellCopy];
        }
      }

      itemCopy = sourceItem;
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceItem = [itemCopy sourceItem];

    module = [(HUItemModuleController *)self module];
    currentZoneItem = [module currentZoneItem];

    if (sourceItem == currentZoneItem)
    {
      module2 = [(HUItemModuleController *)self module];
      [module2 toggleExpansion];
    }

    else
    {
      objc_opt_class();
      v8 = sourceItem;
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      module2 = v9;

      if (module2)
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
    sourceItem = itemCopy;
  }

  return 0;
}

- (id)_didSelectZoneItem:(id)item
{
  v5 = [item zone];
  v6 = objc_alloc(MEMORY[0x277D14D20]);
  room = [(HUZoneModuleController *)self room];
  home = [room home];
  v9 = [v6 initWithExistingObject:v5 inHome:home];

  rooms = [v5 rooms];
  room2 = [(HUZoneModuleController *)self room];
  v12 = [rooms containsObject:room2];

  room3 = [(HUZoneModuleController *)self room];
  if (v12)
  {
    [v9 removeRoom:room3];
  }

  else
  {
    [v9 addRoom:room3];
  }

  commitItem = [v9 commitItem];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__HUZoneModuleController__didSelectZoneItem___block_invoke;
  v17[3] = &unk_277DBA2C8;
  v17[4] = self;
  v17[5] = a2;
  v15 = [commitItem addCompletionBlock:v17];

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

- (id)_didSelectZoneBuilderItem:(id)item
{
  zoneBuilder = [item zoneBuilder];
  room = [(HUZoneModuleController *)self room];
  [zoneBuilder addRoom:room];

  commitItem = [zoneBuilder commitItem];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HUZoneModuleController__didSelectZoneBuilderItem___block_invoke;
  v10[3] = &unk_277DBA2C8;
  v10[4] = self;
  v10[5] = a2;
  v8 = [commitItem addCompletionBlock:v10];

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

- (void)_updateCreateNewZoneCellText:(BOOL)text
{
  textCopy = text;
  createNewZoneCell = [(HUZoneModuleController *)self createNewZoneCell];
  module = [(HUItemModuleController *)self module];
  createNewZoneItem = [module createNewZoneItem];

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  textField = [createNewZoneCell textField];
  isEditing = [textField isEditing];

  if (!isEditing || textCopy)
  {
    latestResults = [createNewZoneItem latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [cellConfiguration setText:v14];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    textProperties = [cellConfiguration textProperties];
    [textProperties setColor:hf_keyColor];

    textField2 = [createNewZoneCell textField];
    [textField2 setPlaceholder:&stru_2823E0EE8];

    textField3 = [createNewZoneCell textField];
    [textField3 setText:&stru_2823E0EE8];

    [createNewZoneCell setContentConfiguration:cellConfiguration];
    if (textCopy)
    {
      textField4 = [createNewZoneCell textField];
      [textField4 setText:&stru_2823E0EE8];

      textField5 = [createNewZoneCell textField];
      [textField5 resignFirstResponder];
    }
  }

  else
  {
    [cellConfiguration setText:0];
    [createNewZoneCell setContentConfiguration:cellConfiguration];
    latestResults2 = [createNewZoneItem latestResults];
    v11 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
    textField6 = [createNewZoneCell textField];
    [textField6 setPlaceholder:v11];
  }
}

- (void)_configureCreateNewZoneItem:(id)item forCell:(id)cell
{
  cellCopy = cell;
  [(HUZoneModuleController *)self setCreateNewZoneCell:cellCopy];
  [(HUZoneModuleController *)self _updateCreateNewZoneCellText:0];
  textField = [cellCopy textField];
  [textField setAutocapitalizationType:1];

  textField2 = [cellCopy textField];

  [textField2 setDelegate:self];
}

- (void)_configureZoneItem:(id)item forCell:(id)cell
{
  v15[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  v8 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:itemCopy];
  [cellCopy setContentConfiguration:v8];
  v9 = [itemCopy zone];

  rooms = [v9 rooms];
  room = [(HUZoneModuleController *)self room];
  v12 = [rooms containsObject:room];

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277D75248]);
    v15[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [cellCopy setAccessories:v14];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x277CBEBF8]];
  }
}

- (void)_configureZoneBuilderItem:(id)item forCell:(id)cell
{
  v5 = MEMORY[0x277D756E0];
  cellCopy = cell;
  itemCopy = item;
  valueCellConfiguration = [v5 valueCellConfiguration];
  v11 = [HUListContentConfigurationUtilities labelConfiguration:valueCellConfiguration forItem:itemCopy];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  textProperties = [v11 textProperties];
  [textProperties setColor:secondaryLabelColor];

  [cellCopy setContentConfiguration:v11];
  [cellCopy setAccessories:MEMORY[0x277CBEBF8]];
}

- (void)_configureCurrentZonesItem:(id)item forCell:(id)cell
{
  cellCopy = cell;
  itemCopy = item;
  [(HUZoneModuleController *)self setCurrentZoneItemCell:cellCopy];
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v13 = [HUListContentConfigurationUtilities labelConfiguration:valueCellConfiguration forItem:itemCopy];

  room = [(HUZoneModuleController *)self room];
  hf_allZones = [room hf_allZones];
  if ([hf_allZones count])
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v11 = ;
  secondaryTextProperties = [v13 secondaryTextProperties];
  [secondaryTextProperties setColor:v11];

  [cellCopy setContentConfiguration:v13];
  [cellCopy setAccessories:MEMORY[0x277CBEBF8]];
}

- (BOOL)_validateNewZoneName:(id)name
{
  v3 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:name];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)_createNewZoneWithName:(id)name
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D14CE8] sanitizeUserEnteredHomeKitName:name];
  if ([(HUZoneModuleController *)self hasPendingCreation])
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy = self;
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
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_18;
  }

  module = [(HUItemModuleController *)self module];
  v8 = objc_opt_new();
  module2 = [(HUItemModuleController *)self module];
  itemProviders = [module2 itemProviders];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke;
  v41[3] = &unk_277DBA310;
  v11 = v8;
  v42 = v11;
  [itemProviders na_each:v41];

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
        name = [v18 name];
        v20 = [name isEqualToString:v5];

        if (v20)
        {
          v30 = [(HUZoneModuleController *)self _didSelectZoneItem:v17];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_4;
          v36[3] = &unk_277DBA338;
          v36[4] = self;
          v31 = [v30 addSuccessBlock:v36];

          futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
          v25 = v12;
          v22 = module;
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
  v22 = module;
  room = [module room];
  home = [room home];
  v25 = [v21 initWithHome:home];

  [v25 setName:v5];
  room2 = [module room];
  [v25 addRoom:room2];

  [(HUZoneModuleController *)self setHasPendingCreation:1];
  commitItem = [v25 commitItem];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_5;
  v35[3] = &unk_277DBA360;
  v35[4] = self;
  v28 = [commitItem addSuccessBlock:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__HUZoneModuleController__createNewZoneWithName___block_invoke_6;
  v34[3] = &unk_277DB8C00;
  v34[4] = self;
  futureWithNoResult = [v28 addFailureBlock:v34];

LABEL_17:
LABEL_18:

  return futureWithNoResult;
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
  editingTextField = [(HUZoneModuleController *)self editingTextField];
  [editingTextField resignFirstResponder];
  text = [editingTextField text];
  v5 = [(HUZoneModuleController *)self _createNewZoneWithName:text];

  return v5;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(HUZoneModuleController *)self setEditingTextField:editing];

  [(HUZoneModuleController *)self _updateCreateNewZoneCellText:0];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [(HUZoneModuleController *)self _createNewZoneWithName:text];

  [returnCopy resignFirstResponder];
  return 1;
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  v6 = [text length];

  if (v6)
  {
    text2 = [editingCopy text];
    v8 = [(HUZoneModuleController *)self _validateNewZoneName:text2];
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
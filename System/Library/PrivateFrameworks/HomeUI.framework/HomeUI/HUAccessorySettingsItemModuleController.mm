@interface HUAccessorySettingsItemModuleController
- (BOOL)canSelectItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUAccessorySettingsItemModuleController)initWithModule:(id)module;
- (HUAccessorySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate;
- (HUAccessorySettingsItemModuleControllerDelegate)delegate;
- (id)valueDescriptionForItem:(id)item value:(double)value;
- (unint64_t)didSelectItem:(id)item;
- (void)_handleButtonPress:(id)press;
- (void)_registerButtonActionHandler:(id)handler item:(id)item;
- (void)_selectOptionItem:(id)item;
- (void)_setupCellAccessoryType:(id)type forItem:(id)item withKey:(id)key;
- (void)_setupSliderCell:(id)cell forMinKey:(id)key maxKey:(id)maxKey;
- (void)_setupSliderCell:(id)cell forMinValue:(id)value maxValue:(id)maxValue showAsInteger:(BOOL)integer measurementUnitType:(id)type;
- (void)_setupSliderCell:(id)cell withUserInfo:(id)info minValue:(double)value maxValue:(double)maxValue;
- (void)_updateSettingItemWithInfo:(id)info;
- (void)_updateSwitchSettingItem:(id)item withValue:(id)value;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value;
- (void)stepperCell:(id)cell steppedToValue:(id)value;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUAccessorySettingsItemModuleController

- (HUAccessorySettingsItemModuleController)initWithModule:(id)module delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HUAccessorySettingsItemModuleController;
  v7 = [(HUItemModuleController *)&v12 initWithModule:module];
  v8 = v7;
  if (v7)
  {
    [(HUAccessorySettingsItemModuleController *)v7 setDelegate:delegateCopy];
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    [(HUAccessorySettingsItemModuleController *)v8 setCellToItemMap:weakToWeakObjectsMapTable];

    v10 = objc_opt_new();
    [(HUAccessorySettingsItemModuleController *)v8 setRegisteredButtonFutures:v10];
  }

  return v8;
}

- (HUAccessorySettingsItemModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModuleController.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsItemModuleController initWithModule:]", v6}];

  return 0;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13348]];
  [v5 unsignedIntegerValue];

  objc_opt_class();
  objc_opt_isKindOfClass();

  v6 = objc_opt_class();

  return v6;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  cellToItemMap = [(HUAccessorySettingsItemModuleController *)self cellToItemMap];
  [cellToItemMap setObject:itemCopy forKey:cellCopy];

  [cellCopy setAccessoryType:0];
  objc_opt_class();
  v30 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v30;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setHideIcon:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    latestResults = [itemCopy latestResults];
    v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13348]];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if (unsignedIntegerValue <= 4)
    {
      if (unsignedIntegerValue > 2)
      {
        v22 = v30;
        if ([v22 conformsToProtocol:&unk_282508A00])
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        [v24 setStepperCellDelegate:self];
        goto LABEL_31;
      }

      switch(unsignedIntegerValue)
      {
        case -1:
          goto LABEL_41;
        case 0:
          v29 = MEMORY[0x277D13958];
LABEL_40:
          [(HUAccessorySettingsItemModuleController *)self _setupCellAccessoryType:v30 forItem:itemCopy withKey:*v29];
          goto LABEL_41;
        case 2:
          goto LABEL_27;
      }

LABEL_39:
      v29 = MEMORY[0x277D139D8];
      goto LABEL_40;
    }

    if (unsignedIntegerValue > 6)
    {
      if (unsignedIntegerValue != 7)
      {
        if (unsignedIntegerValue != 9)
        {
          goto LABEL_39;
        }

        objc_opt_class();
        v20 = v30;
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v16 = v21;

        [v16 setTextAlignment:4];
LABEL_37:

        goto LABEL_41;
      }

      objc_opt_class();
      v27 = v30;
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v16 = v28;

      textField = [v16 textField];
      v18 = textField;
      v19 = 1;
    }

    else
    {
      if (unsignedIntegerValue == 5)
      {
LABEL_27:
        objc_opt_class();
        v25 = v30;
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v24 = v26;

        [v24 setDelegate:self];
LABEL_31:

        goto LABEL_41;
      }

      objc_opt_class();
      v14 = v30;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      textField = [v16 textField];
      v18 = textField;
      v19 = 0;
    }

    [textField setSecureTextEntry:v19];

    goto LABEL_37;
  }

LABEL_41:
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13348]];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  latestResults2 = [itemCopy latestResults];
  v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [cellCopy setAccessibilityIdentifier:v13];

  objc_opt_class();
  v14 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    latestResults3 = [v16 latestResults];
    v18 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13380]];

    objc_opt_class();
    v19 = v18;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    objc_opt_class();
    v22 = v19;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v78 = v21;
    if (unsignedIntegerValue > 5)
    {
      if ((unsignedIntegerValue - 6) < 2)
      {
        objc_opt_class();
        v42 = cellCopy;
        if (objc_opt_isKindOfClass())
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        latestResults4 = v43;

        textField = [latestResults4 textField];
        [textField setText:v24];

        goto LABEL_42;
      }

      if (unsignedIntegerValue == 8)
      {
        v59 = cellCopy;
        latestResults4 = [v14 latestResults];
        [latestResults4 objectForKey:*MEMORY[0x277D13FE8]];
        v58 = v48 = v24;
        if ([v58 BOOLValue])
        {
          v60 = 3;
        }

        else
        {
          v60 = 0;
        }

        [v59 setAccessoryType:v60];

        goto LABEL_41;
      }
    }

    else
    {
      if ((unsignedIntegerValue - 3) < 2)
      {
        v25 = cellCopy;
        v26 = &unk_282508A00;
        if ([v25 conformsToProtocol:v26])
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        latestResults4 = v27;

        latestResults5 = [v16 latestResults];
        v30 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13360]];
        [latestResults4 setMinimumValue:v30];

        latestResults6 = [v16 latestResults];
        v32 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13358]];
        [latestResults4 setMaximumValue:v32];

        latestResults7 = [v16 latestResults];
        v34 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D13368]];
        [latestResults4 setStepValue:v34];

        if (v21)
        {
          v35 = v21;
        }

        else
        {
          v35 = &unk_282491A78;
        }

        [latestResults4 setStepperValue:v35];
        goto LABEL_42;
      }

      if (unsignedIntegerValue == 2)
      {
        objc_opt_class();
        v45 = cellCopy;
        if (objc_opt_isKindOfClass())
        {
          v46 = v45;
        }

        else
        {
          v46 = 0;
        }

        latestResults4 = v46;

        latestResults8 = [v16 latestResults];
        [latestResults8 objectForKeyedSubscript:*MEMORY[0x277D13360]];
        v49 = v48 = v24;
        [v49 floatValue];
        v51 = v50;

        latestResults9 = [v16 latestResults];
        v53 = [latestResults9 objectForKeyedSubscript:*MEMORY[0x277D13358]];
        [v53 floatValue];
        v55 = v54;

        [latestResults4 setMinimumValue:v51];
        [latestResults4 setMaximumValue:v55];
        [v78 floatValue];
        [latestResults4 setValue:v56];
        latestResults10 = [v14 latestResults];
        v58 = [latestResults10 objectForKeyedSubscript:*MEMORY[0x277D13378]];

        [(HUAccessorySettingsItemModuleController *)self _setupSliderCell:latestResults4 withUserInfo:v58 minValue:v51 maxValue:v55];
LABEL_41:

        v24 = v48;
LABEL_42:
      }
    }

    delegate = [(HUAccessorySettingsItemModuleController *)self delegate];
    v62 = objc_opt_respondsToSelector();

    if (v62)
    {
      v63 = v24;
      objc_opt_class();
      v64 = v14;
      if (objc_opt_isKindOfClass())
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      v66 = v65;

      delegate2 = [(HUAccessorySettingsItemModuleController *)self delegate];
      v68 = [delegate2 moduleController:self shouldDisableItem:v66];

      v69 = cellCopy;
      v70 = &unk_2824BFD88;
      if ([v69 conformsToProtocol:v70])
      {
        v71 = v69;
      }

      else
      {
        v71 = 0;
      }

      v72 = v71;

      if (v68)
      {
        [v72 setDisabled:1];
      }

      v24 = v63;
    }

    goto LABEL_64;
  }

  if (unsignedIntegerValue == 9)
  {
    objc_opt_class();
    v36 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    latestResults11 = [v14 latestResults];
    v40 = [latestResults11 objectForKeyedSubscript:*MEMORY[0x277D13D30]];

    if (v40)
    {
      v41 = [v40 isFinished] ^ 1;
    }

    else
    {
      v41 = 0;
    }

    objc_opt_class();
    accessoryView = [v38 accessoryView];
    if (objc_opt_isKindOfClass())
    {
      v74 = accessoryView;
    }

    else
    {
      v74 = 0;
    }

    v75 = v74;

    if (v41)
    {
      if (v75)
      {
        v76 = accessoryView;

        [v38 setDisabled:1];
        [v76 startAnimating];
        [(HUAccessorySettingsItemModuleController *)self _registerButtonActionHandler:v40 item:v14];
        v75 = v76;
      }

      else
      {
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __71__HUAccessorySettingsItemModuleController_updateCell_forItem_animated___block_invoke;
        v79[3] = &unk_277DBEE00;
        v77 = v38;
        v80 = v77;
        v75 = __71__HUAccessorySettingsItemModuleController_updateCell_forItem_animated___block_invoke(v79);
        [v77 setDisabled:1];
        [v75 startAnimating];
        [(HUAccessorySettingsItemModuleController *)self _registerButtonActionHandler:v40 item:v14];
      }
    }

    else
    {
      [v38 setDisabled:0];
      [v75 stopAnimating];
    }
  }

LABEL_64:
}

id __71__HUAccessorySettingsItemModuleController_updateCell_forItem_animated___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [*(a1 + 32) setAccessoryView:v2];

  return v2;
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13348]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  objc_opt_class();
  v8 = itemCopy;
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
    v11 = unsignedIntegerValue == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    delegate = [(HUAccessorySettingsItemModuleController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(HUAccessorySettingsItemModuleController *)self delegate];
      [delegate2 moduleController:self presentGroup:v10];
    }

    v15 = 1;
  }

  else
  {
    if (unsignedIntegerValue == 9)
    {
      [(HUAccessorySettingsItemModuleController *)self _handleButtonPress:v8];
    }

    else
    {
      objc_opt_class();
      v16 = v8;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        [(HUAccessorySettingsItemModuleController *)self _selectOptionItem:v16];
      }
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)canSelectItem:(id)item
{
  latestResults = [item latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)_selectOptionItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsItemModuleController.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"optionItem"}];
  }

  module = [(HUItemModuleController *)self module];
  value = [itemCopy value];
  v8 = [module updateItem:itemCopy withValue:value];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HUAccessorySettingsItemModuleController__selectOptionItem___block_invoke;
  v12[3] = &unk_277DB7530;
  v13 = itemCopy;
  v9 = itemCopy;
  v10 = [v8 addCompletionBlock:v12];
}

void __61__HUAccessorySettingsItemModuleController__selectOptionItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v7 value];
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(Option Item) Failed to update %@ to '%@' with error: %@", &v10, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v8 = [v9 value];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(Option Item) Updated %@ to '%@'", &v10, 0x16u);
    goto LABEL_6;
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v31 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  cellToItemMap = [(HUAccessorySettingsItemModuleController *)self cellToItemMap];
  v8 = [cellToItemMap objectForKey:cellCopy];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"OFF";
    *buf = 138412802;
    v26 = cellCopy;
    v27 = 2112;
    if (onCopy)
    {
      v12 = @"ON";
    }

    v28 = v10;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(Switch) '%@/%@' value changing to '%@'", buf, 0x20u);
  }

  delegate = [(HUAccessorySettingsItemModuleController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(HUAccessorySettingsItemModuleController *)self delegate];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke;
    v20 = &unk_277DBDD10;
    v21 = cellCopy;
    v24 = onCopy;
    v22 = v10;
    selfCopy = self;
    [delegate2 moduleController:self preflightCheckToAllowSwitchingForSettingItem:v22 changingToOn:onCopy withCompletion:&v17];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{onCopy, v17, v18, v19, v20}];
  [(HUAccessorySettingsItemModuleController *)self _updateSwitchSettingItem:v10 withValue:v16];
}

void __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) '%@/%@' running preflight check before changing...", buf, 0x16u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_423;
    v15[3] = &unk_277DBFFF0;
    v7 = *(a1 + 40);
    v18 = *(a1 + 56);
    v8 = *(a1 + 48);
    v16 = v7;
    v17 = v8;
    v9 = [v3 addSuccessBlock:v15];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_437;
    v11[3] = &unk_277DBC4D8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v10 = [v3 addFailureBlock:v11];
  }
}

void __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_423(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if ([v3 BOOLValue])
    {
      v6 = @"passed";
    }

    else
    {
      v6 = @"failed";
    }

    v7 = [v3 BOOLValue];
    v8 = @"NOT CHANGING";
    v9 = *(a1 + 48);
    if (v7)
    {
      v8 = @"CHANGING";
    }

    v10 = @"OFF";
    v15 = 138413058;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    if (v9)
    {
      v10 = @"ON";
    }

    v20 = v8;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(Switch) preflight returned check %@, %@ %@ to '%@'", &v15, 0x2Au);
  }

  if ([v3 BOOLValue])
  {
    v11 = [*(a1 + 40) module];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    v14 = [v11 updateItem:v12 withValue:v13];
  }
}

uint64_t __64__HUAccessorySettingsItemModuleController_switchCell_didTurnOn___block_invoke_437(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(Switch) preflight failed, NOT changing %@", &v5, 0xCu);
  }

  return [*(a1 + 40) setOn:(*(a1 + 48) & 1) == 0 animated:1];
}

- (void)_updateSwitchSettingItem:(id)item withValue:(id)value
{
  itemCopy = item;
  valueCopy = value;
  objc_initWeak(&location, self);
  module = [(HUItemModuleController *)self module];
  v9 = [module updateItem:itemCopy withValue:valueCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HUAccessorySettingsItemModuleController__updateSwitchSettingItem_withValue___block_invoke;
  v13[3] = &unk_277DC0018;
  objc_copyWeak(&v16, &location);
  v10 = itemCopy;
  v14 = v10;
  v11 = valueCopy;
  v15 = v11;
  v12 = [v9 addCompletionBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __78__HUAccessorySettingsItemModuleController__updateSwitchSettingItem_withValue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = HFLogForCategory();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) BOOLValue];
      v10 = @"OFF";
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      if (v9)
      {
        v10 = @"ON";
      }

      v19 = v10;
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "(Switch) Failed to update %@ to '%@' with error: %@", &v16, 0x20u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) BOOLValue];
    v13 = @"OFF";
    if (v12)
    {
      v13 = @"ON";
    }

    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(Switch) Updated %@ to '%@'", &v16, 0x16u);
  }

  v14 = [WeakRetained delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v7 = [WeakRetained delegate];
    [v7 moduleController:WeakRetained settingUpdatedForItem:*(a1 + 32)];
LABEL_12:
  }
}

- (void)sliderValueTableViewCell:(id)cell didChangeValue:(double)value
{
  v41 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  cellToItemMap = [(HUAccessorySettingsItemModuleController *)self cellToItemMap];
  v8 = [cellToItemMap objectForKey:cellCopy];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  setting = [v10 setting];
  if (objc_opt_isKindOfClass())
  {
    v12 = setting;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  latestResults = [v10 latestResults];
  v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13378]];

  v17 = [v16 objectForKeyedSubscript:@"ShowValuesAsInteger"];
  bOOLValue = [v17 BOOLValue];

  if (bOOLValue)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:round(value)];
LABEL_9:

    goto LABEL_17;
  }

  minimumValue = [v13 minimumValue];
  if (minimumValue)
  {
    v21 = minimumValue;
    maximumValue = [v13 maximumValue];
    if (maximumValue)
    {
      v23 = maximumValue;
      stepValue = [v13 stepValue];

      if (stepValue)
      {
        v25 = MEMORY[0x277CCABB0];
        minimumValue2 = [v13 minimumValue];
        [minimumValue2 doubleValue];
        v28 = v27;
        maximumValue2 = [v13 maximumValue];
        [maximumValue2 doubleValue];
        v31 = v30;
        stepValue2 = [v13 stepValue];
        [stepValue2 doubleValue];
        v19 = [v25 numberWithDouble:{HUClampWithStep(v28, v31, v33, value)}];

        v14 = HFLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          valueCopy = value;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "(Slider) Clamping value '%f' to '%@'", buf, 0x16u);
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v19 = v14;
LABEL_17:
  v35[0] = @"value";
  v35[1] = @"settingItem";
  v36[0] = v19;
  v36[1] = v10;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  if ([cellCopy isContinuous])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
    [(HUAccessorySettingsItemModuleController *)self performSelector:sel__updateSettingItemWithInfo_ withObject:v34 afterDelay:0.1];
  }

  else
  {
    [(HUAccessorySettingsItemModuleController *)self _updateSettingItemWithInfo:v34];
  }
}

- (void)_updateSettingItemWithInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"settingItem"];
  v6 = [infoCopy objectForKeyedSubscript:@"value"];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(Slider) Updating %@ to '%@'", buf, 0x16u);
  }

  module = [(HUItemModuleController *)self module];
  v9 = [module updateItem:v5 withValue:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HUAccessorySettingsItemModuleController__updateSettingItemWithInfo___block_invoke;
  v12[3] = &unk_277DB7530;
  v13 = v5;
  v10 = v5;
  v11 = [v9 addCompletionBlock:v12];
}

void __70__HUAccessorySettingsItemModuleController__updateSettingItemWithInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "(Slider) Failed to update %@ to '%@' with error: %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(Slider) Updated %@ to '%@'", &v11, 0x16u);
  }
}

- (id)valueDescriptionForItem:(id)item value:(double)value
{
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13378]];

  v7 = [v6 objectForKeyedSubscript:@"ValueFormatterLocalizedStringKey"];
  if ([v7 isEqualToString:@"HUAccessorySettingSecondsIntegerPluralizedString"])
  {
    LODWORD(v14) = llround(value);
    v15 = HULocalizedStringWithFormat(v7, @"%d second(s)", v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)stepperCell:(id)cell steppedToValue:(id)value
{
  valueCopy = value;
  cellCopy = cell;
  objc_opt_class();
  cellToItemMap = [(HUAccessorySettingsItemModuleController *)self cellToItemMap];
  v9 = [cellToItemMap objectForKey:cellCopy];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  module = [(HUItemModuleController *)self module];
  v13 = [module updateItem:v11 withValue:valueCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HUAccessorySettingsItemModuleController_stepperCell_steppedToValue___block_invoke;
  v17[3] = &unk_277DB7158;
  v18 = v11;
  v19 = valueCopy;
  v14 = valueCopy;
  v15 = v11;
  v16 = [v13 addCompletionBlock:v17];
}

void __70__HUAccessorySettingsItemModuleController_stepperCell_steppedToValue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "(Stepper) Failed to update  %@ to '%@' with error: %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(Stepper) Updated %@ to '%@'", &v11, 0x16u);
  }
}

- (void)_setupSliderCell:(id)cell withUserInfo:(id)info minValue:(double)value maxValue:(double)maxValue
{
  cellCopy = cell;
  infoCopy = info;
  v11 = [infoCopy objectForKeyedSubscript:@"ShowValue"];
  bOOLValue = [v11 BOOLValue];

  [cellCopy setShowValue:bOOLValue];
  v13 = [infoCopy objectForKeyedSubscript:@"EnableContinuousSlider"];
  bOOLValue2 = [v13 BOOLValue];

  [cellCopy setContinuous:bOOLValue2];
  v15 = [infoCopy objectForKeyedSubscript:@"ShowMinMaxTrackingValues"];
  LODWORD(bOOLValue2) = [v15 BOOLValue];

  if (bOOLValue2)
  {
    v16 = [infoCopy objectForKeyedSubscript:@"ShowValuesAsInteger"];
    bOOLValue3 = [v16 BOOLValue];

    if (bOOLValue3)
    {
      LODWORD(v18) = llround(value);
      v20 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      LODWORD(v21) = llround(maxValue);
      [MEMORY[0x277CCABB0] numberWithInt:v21];
    }

    else
    {
      *&v19 = value;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
      *&v23 = maxValue;
      [MEMORY[0x277CCABB0] numberWithFloat:v23];
    }
    v22 = ;
    v24 = [infoCopy objectForKeyedSubscript:@"ValueMeasurementUnitType"];
    stringValue = [v24 stringValue];

    [(HUAccessorySettingsItemModuleController *)self _setupSliderCell:cellCopy forMinValue:v20 maxValue:v22 showAsInteger:bOOLValue3 measurementUnitType:stringValue];
  }

  else
  {
    v20 = [infoCopy objectForKeyedSubscript:@"MaximumValueTrackingImage"];
    v22 = [infoCopy objectForKeyedSubscript:@"MinimumValueTrackingImage"];
    [(HUAccessorySettingsItemModuleController *)self _setupSliderCell:cellCopy forMinKey:v22 maxKey:v20];
  }
}

- (void)_setupSliderCell:(id)cell forMinKey:(id)key maxKey:(id)maxKey
{
  cellCopy = cell;
  keyCopy = key;
  maxKeyCopy = maxKey;
  if (cellCopy && keyCopy | maxKeyCopy)
  {
    if (maxKeyCopy)
    {
      v9 = MEMORY[0x277D755B8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v9 imageNamed:maxKeyCopy inBundle:v10];

      if (keyCopy)
      {
LABEL_5:
        v12 = MEMORY[0x277D755B8];
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v12 imageNamed:keyCopy inBundle:v13];

LABEL_8:
        hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
        v16 = [v14 _flatImageWithColor:hf_keyColor];
        [cellCopy setMinimumValueImage:v16];

        v17 = [v11 _flatImageWithColor:hf_keyColor];
        [cellCopy setMaximumValueImage:v17];

        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if (keyCopy)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_setupSliderCell:(id)cell forMinValue:(id)value maxValue:(id)maxValue showAsInteger:(BOOL)integer measurementUnitType:(id)type
{
  integerCopy = integer;
  valueCopy = value;
  maxValueCopy = maxValue;
  typeCopy = type;
  if (cell && valueCopy && maxValueCopy)
  {
    cellCopy = cell;
    v14 = objc_opt_new();
    [v14 setNumberStyle:1];
    [v14 setMinimumFractionDigits:!integerCopy];
    if (typeCopy)
    {
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAD98] unitFromSymbolString:typeCopy];
      v17 = objc_alloc(MEMORY[0x277CCAB10]);
      [valueCopy doubleValue];
      v18 = [v17 initWithDoubleValue:v16 unit:?];
      v19 = objc_alloc(MEMORY[0x277CCAB10]);
      [maxValueCopy doubleValue];
      v20 = [v19 initWithDoubleValue:v16 unit:?];
      [v15 setNumberFormatter:v14];
      [v15 setUnitStyle:1];
      v21 = [v15 stringFromMeasurement:v18];
      v22 = [v15 stringFromMeasurement:v20];
    }

    else
    {
      v21 = [v14 stringFromNumber:valueCopy];
      v22 = [v14 stringFromNumber:maxValueCopy];
    }

    [cellCopy setMinimumValueText:v21];
    [cellCopy setMaximumValueText:v22];
  }
}

- (void)_handleButtonPress:(id)press
{
  v39 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  latestResults = [pressCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13388]];

  keyPath = [v6 keyPath];
  v8 = [keyPath isEqualToString:*MEMORY[0x277D13960]];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[HUAccessorySettingsItemModuleController _handleButtonPress:]";
      v37 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%s(%@)initiating 'Export Analytics'", buf, 0x16u);
    }

    module = [(HUItemModuleController *)self module];
    homeKitSettingsVendor = [module homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    adapterIdentifier = [v6 adapterIdentifier];
    v14 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier];
    v15 = &unk_2825BD7E0;
    if ([v14 conformsToProtocol:v15])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (!v17)
    {
      NSLog(&cfstr_AdapterDoesnTE_0.isa);
    }

    v18 = [v17 handleButtonPressForEntity:v6];
    objc_initWeak(buf, self);
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke;
    v32 = &unk_277DBD700;
    objc_copyWeak(&v34, buf);
    v19 = v17;
    v33 = v19;
    v20 = [v18 flatMap:&v29];
    [(HUAccessorySettingsItemModuleController *)self _registerButtonActionHandler:v18 item:pressCopy, v29, v30, v31, v32];

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    module2 = [(HUItemModuleController *)self module];
    homeKitSettingsVendor2 = [module2 homeKitSettingsVendor];
    hf_settingsAdapterManager2 = [homeKitSettingsVendor2 hf_settingsAdapterManager];
    adapterIdentifier2 = [v6 adapterIdentifier];
    v25 = [hf_settingsAdapterManager2 adapterForIdentifier:adapterIdentifier2];
    if ([v25 conformsToProtocol:&unk_2825BD7E0])
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (!v27)
    {
      NSLog(&cfstr_AdapterDoesnTE_0.isa);
    }

    v28 = [v27 handleButtonPressForEntity:v6];
    [(HUAccessorySettingsItemModuleController *)self _registerButtonActionHandler:v28 item:pressCopy];
  }
}

id __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Sysdiagnose request completed with results: %@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277D546D8]);
  v10 = HFLocalizedString();
  v23 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v12 = [v9 initWithActivityItems:v11 applicationActivities:0];

  v13 = [WeakRetained delegate];
  v14 = [v13 moduleController:WeakRetained requestPresentViewController:v12 animated:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke_480;
  v19[3] = &unk_277DC0040;
  v20 = v12;
  v21 = *(a1 + 32);
  v22 = v7;
  v15 = v7;
  v16 = v12;
  v17 = [v14 addCompletionBlock:v19];

  return v17;
}

void __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke_480(id *a1)
{
  v2 = [a1[4] presentingViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke_2;
  v3[3] = &unk_277DB7558;
  v4 = a1[5];
  v5 = a1[6];
  [v2 dismissViewControllerAnimated:0 completion:v3];
}

void __62__HUAccessorySettingsItemModuleController__handleButtonPress___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D14CE8] deviceAirDropIdentifier];
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Share Sheet has generated AirPlayId (%@) making 'airdrop sysdiagnose' request...", &v8, 0xCu);
    }

    objc_opt_class();
    v4 = *(a1 + 32);
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 airDropSysdiagnose:*(a1 + 40)];
  }

  else
  {
    NSLog(&cfstr_AirdropIdentif.isa);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Share Sheet failed to generate AirPlayID", &v8, 2u);
    }
  }
}

- (void)_registerButtonActionHandler:(id)handler item:(id)item
{
  handlerCopy = handler;
  itemCopy = item;
  registeredButtonFutures = [(HUAccessorySettingsItemModuleController *)self registeredButtonFutures];
  v10 = [registeredButtonFutures containsObject:handlerCopy];

  if ((v10 & 1) == 0)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__HUAccessorySettingsItemModuleController__registerButtonActionHandler_item___block_invoke;
    aBlock[3] = &unk_277DBEE28;
    objc_copyWeak(v25, &location);
    v24 = itemCopy;
    v25[1] = a2;
    v11 = _Block_copy(aBlock);
    objc_initWeak(&from, handlerCopy);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __77__HUAccessorySettingsItemModuleController__registerButtonActionHandler_item___block_invoke_2;
    v18 = &unk_277DBEE50;
    objc_copyWeak(&v20, &location);
    v12 = v11;
    v19 = v12;
    objc_copyWeak(&v21, &from);
    v13 = [handlerCopy addCompletionBlock:&v15];
    v14 = [(HUAccessorySettingsItemModuleController *)self registeredButtonFutures:v15];
    [v14 na_safeAddObject:handlerCopy];

    v12[2](v12);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }
}

void __77__HUAccessorySettingsItemModuleController__registerButtonActionHandler_item___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained module];
  v3 = [v2 itemUpdater];
  v4 = MEMORY[0x277D14788];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v6 = [v4 requestToUpdateItems:v5 senderSelector:*(a1 + 48)];
  v7 = [v3 performItemUpdateRequest:v6];
}

void __77__HUAccessorySettingsItemModuleController__registerButtonActionHandler_item___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v8];
  }

  (*(*(a1 + 32) + 16))();
  v6 = [WeakRetained registeredButtonFutures];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 removeObject:v7];
}

- (void)_setupCellAccessoryType:(id)type forItem:(id)item withKey:(id)key
{
  typeCopy = type;
  itemCopy = item;
  keyCopy = key;
  v12 = 1;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    latestResults = [itemCopy latestResults];
    v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13340]];
    v11 = [v10 isEqual:keyCopy];

    if (v11)
    {
      v12 = 0;
    }
  }

  [typeCopy setAccessoryType:v12];
}

- (HUAccessorySettingsItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
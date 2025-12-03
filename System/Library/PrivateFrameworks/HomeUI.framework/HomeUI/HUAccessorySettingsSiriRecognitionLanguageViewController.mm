@interface HUAccessorySettingsSiriRecognitionLanguageViewController
- (BOOL)_isAnyMediaAccessoryOnSupportedVoiceRecognitionLanguage;
- (BOOL)_shouldPresentAlertRequestingToTurnOffVoiceRecognition:(id)recognition;
- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithAccessoryGroupItem:(id)item;
- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)_allMediaAccessories;
- (id)_siriLanguageOptionForMediaProfile:(id)profile;
- (void)_attemptToFixVoiceRecognitionOnboardingFailures:(id)failures;
- (void)_changeSiriLanguageOnlyForThisMediaAccessory:(id)accessory turnOffVoiceID:(BOOL)d;
- (void)_presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition:(id)recognition indexPath:(id)path;
- (void)_presentAlertConfirmingLanguageChangeForAllHomeMembers:(id)members indexPath:(id)path;
- (void)_presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories:(id)accessories indexPath:(id)path;
- (void)_turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories:(id)accessories;
- (void)_turnOffVoiceIDForTargetLanguageOption:(id)option;
- (void)setSelectedLanguageIndex:(int64_t)index;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUAccessorySettingsSiriRecognitionLanguageViewController

- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithAccessoryGroupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriRecognitionLanguageViewController.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriRecognitionLanguageViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  v5 = [[HUAccessorySettingsSiriRecognitionLanguageItemManager alloc] initWithDelegate:self groupItem:itemCopy];

  v9.receiver = self;
  v9.super_class = HUAccessorySettingsSiriRecognitionLanguageViewController;
  v6 = [(HUItemTableViewController *)&v9 initWithItemManager:v5 tableViewStyle:1];
  v7 = v6;
  if (v6)
  {
    v6->_selectedLanguageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (HUAccessorySettingsSiriRecognitionLanguageViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  moduleCopy = module;
  itemCopy = item;
  v8 = [HUAccessorySettingsSiriRecognitionLanguageItemManager alloc];
  sourceItem = [moduleCopy sourceItem];

  v10 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)v8 initWithDelegate:self accessorySettingItem:itemCopy accessoryItem:sourceItem];
  v14.receiver = self;
  v14.super_class = HUAccessorySettingsSiriRecognitionLanguageViewController;
  v11 = [(HUItemTableViewController *)&v14 initWithItemManager:v10 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    v11->_selectedLanguageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v21.receiver = self;
  v21.super_class = HUAccessorySettingsSiriRecognitionLanguageViewController;
  pathCopy = path;
  itemCopy = item;
  [(HUItemTableViewController *)&v21 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  latestResults = [itemCopy latestResults];
  v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v14];

  latestResults2 = [itemCopy latestResults];

  v17 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v17 BOOLValue])
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  [cellCopy setAccessoryType:v18];

  v19 = [pathCopy row];
  if (v19 - 1 == [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self selectedLanguageIndex])
  {
    v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v20 startAnimating];
    [cellCopy setAccessoryView:v20];
  }

  else
  {
    [cellCopy setAccessoryView:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = HUAccessorySettingsSiriRecognitionLanguageViewController;
  [(HUItemTableViewController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    languageOption = [v12 languageOption];
    recognitionLanguage = [languageOption recognitionLanguage];

    -[HUAccessorySettingsSiriRecognitionLanguageViewController setSelectedLanguageIndex:](self, "setSelectedLanguageIndex:", [pathCopy row] - 1);
    if ([(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _shouldPresentAlertRequestingToTurnOffVoiceRecognition:recognitionLanguage])
    {
      [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition:v10 indexPath:pathCopy];
    }

    else
    {
      _allMediaAccessories = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _allMediaAccessories];
      v16 = [_allMediaAccessories count];

      if (v16 < 2)
      {
        [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _changeSiriLanguageOnlyForThisMediaAccessory:v10 turnOffVoiceID:0];
      }

      else
      {
        [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories:v10 indexPath:pathCopy];
      }

      [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _attemptToFixVoiceRecognitionOnboardingFailures:recognitionLanguage];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    NSLog(&cfstr_MisconfiguredH.isa);
  }
}

- (void)setSelectedLanguageIndex:(int64_t)index
{
  if (self->_selectedLanguageIndex != index)
  {
    v5 = objc_opt_new();
    itemManager = [(HUItemTableViewController *)self itemManager];
    v7 = [itemManager displayedItemsInSection:0];
    v8 = [v7 count];

    selectedLanguageIndex = self->_selectedLanguageIndex;
    if (selectedLanguageIndex != 0x7FFFFFFFFFFFFFFFLL && selectedLanguageIndex + 1 < v8)
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v5 addObject:v11];
    }

    if (index != 0x7FFFFFFFFFFFFFFFLL && index + 1 < v8)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v5 addObject:v12];
    }

    self->_selectedLanguageIndex = index;
    if ([v5 count])
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      diffableDataSourceDisabled = [itemManager2 diffableDataSourceDisabled];

      if (diffableDataSourceDisabled)
      {
        tableView = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self tableView];
        [tableView reloadRowsAtIndexPaths:v5 withRowAnimation:5];
      }

      else
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __85__HUAccessorySettingsSiriRecognitionLanguageViewController_setSelectedLanguageIndex___block_invoke;
        v18[3] = &unk_277DBBD18;
        v18[4] = self;
        v16 = [v5 na_map:v18];
        itemManager3 = [(HUItemTableViewController *)self itemManager];
        [itemManager3 reloadUIRepresentationForItems:v16 withAnimation:0];
      }
    }
  }
}

id __85__HUAccessorySettingsSiriRecognitionLanguageViewController_setSelectedLanguageIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemManager];
  v5 = [v4 displayedItemAtIndexPath:v3];

  return v5;
}

- (BOOL)_shouldPresentAlertRequestingToTurnOffVoiceRecognition:(id)recognition
{
  v21 = *MEMORY[0x277D85DE8];
  recognitionCopy = recognition;
  v4 = objc_alloc(MEMORY[0x277D14C98]);
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  home2 = [mEMORY[0x277D146E8]2 home];
  currentUser = [home2 currentUser];
  v10 = [v4 initWithHome:home user:currentUser nameStyle:0];

  if (![v10 isIdentifyVoiceEnabled])
  {
    goto LABEL_5;
  }

  v11 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  if (([v11 containsObject:recognitionCopy]& 1) == 0)
  {
    languageCode = HFLogForCategory();
    if (os_log_type_enabled(languageCode, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = recognitionCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_20CEB6000, languageCode, OS_LOG_TYPE_DEFAULT, "Alerting the user that Voice Recognition will be disabled: the selected voice recognition language (%@), is not in the set of supported VR languages: %@", &v17, 0x16u);
    }

    goto LABEL_11;
  }

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (([recognitionCopy isEqualToString:languageCode] & 1) == 0)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = recognitionCopy;
      v19 = 2112;
      v20 = languageCode;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Alerting the user that Voice Recognition will be disabled: the selected voice recognition language (%@), though supported, is not the Siri language of this phone: %@", &v17, 0x16u);
    }

LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

LABEL_5:
  v14 = 0;
LABEL_12:

  return v14;
}

- (void)_presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition:(id)recognition indexPath:(id)path
{
  recognitionCopy = recognition;
  pathCopy = path;
  v8 = HULocalizedModelString(@"HUSiriLanguageChange_TurnOff_VoiceID_Confirmation_Title");
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  groupItem = [itemManager groupItem];
  if (objc_opt_isKindOfClass())
  {
    v11 = groupItem;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    accessoryIdentifier = [v12 accessoryIdentifier];
    v16 = [home hf_accessoryWithIdentifier:accessoryIdentifier];

    hf_categoryOrPrimaryServiceType = [v16 hf_categoryOrPrimaryServiceType];
    v18 = HULocalizedCategoryOrPrimaryServiceTypeModelString(@"HUSiriLanguageChange_TurnOff_VoiceID_Confirmation_Title_Personal_Content", hf_categoryOrPrimaryServiceType);

    v8 = v18;
  }

  v19 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v8 indexPath:pathCopy];
  _allMediaAccessories = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _allMediaAccessories];
  v21 = [_allMediaAccessories count];

  v22 = MEMORY[0x277D750F8];
  v23 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_TurnOff_VoiceID_Confirmation_Button_Title", @"HUSiriLanguageChange_TurnOff_VoiceID_Confirmation_Button_Title", 1);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __134__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition_indexPath___block_invoke;
  v31[3] = &unk_277DBBD40;
  v31[4] = self;
  v32 = recognitionCopy;
  v33 = pathCopy;
  v34 = v21;
  v24 = recognitionCopy;
  v25 = pathCopy;
  v26 = [v22 actionWithTitle:v23 style:0 handler:v31];
  [v19 addAction:v26];

  v27 = MEMORY[0x277D750F8];
  v28 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", @"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", 1);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __134__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition_indexPath___block_invoke_2;
  v30[3] = &unk_277DB7600;
  v30[4] = self;
  v29 = [v27 actionWithTitle:v28 style:1 handler:v30];
  [v19 addAction:v29];

  [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self presentViewController:v19 animated:1 completion:0];
}

uint64_t __134__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeAndTurnOffVoiceRecognition_indexPath___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 home];
  v4 = [v3 users];
  v5 = [v4 count];

  if (v5)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];

    return [v6 _presentAlertConfirmingLanguageChangeForAllHomeMembers:v7 indexPath:v8];
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    if (a1[7] < 2uLL)
    {

      return [v10 _changeSiriLanguageOnlyForThisMediaAccessory:v11 turnOffVoiceID:1];
    }

    else
    {
      v12 = a1[6];

      return [v10 _presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories:v11 indexPath:v12];
    }
  }
}

- (void)_presentAlertConfirmingLanguageChangeForAllHomeMembers:(id)members indexPath:(id)path
{
  membersCopy = members;
  pathCopy = path;
  v8 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_OtherUsers_Confirmation_Title_Personal_Content", @"HUSiriLanguageChange_OtherUsers_Confirmation_Title_Personal_Content", 1);
  v9 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v8 indexPath:pathCopy];

  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HULanguageChangeLanguage_Button_Title", @"HULanguageChangeLanguage_Button_Title", 1);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __125__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForAllHomeMembers_indexPath___block_invoke;
  v19[3] = &unk_277DBBD68;
  v19[4] = self;
  v20 = membersCopy;
  v21 = pathCopy;
  v12 = pathCopy;
  v13 = membersCopy;
  v14 = [v10 actionWithTitle:v11 style:0 handler:v19];
  [v9 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", @"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", 1);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForAllHomeMembers_indexPath___block_invoke_2;
  v18[3] = &unk_277DB7600;
  v18[4] = self;
  v17 = [v15 actionWithTitle:v16 style:1 handler:v18];
  [v9 addAction:v17];

  [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __125__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForAllHomeMembers_indexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allMediaAccessories];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3 < 2)
  {

    return [v4 _changeSiriLanguageOnlyForThisMediaAccessory:v5 turnOffVoiceID:1];
  }

  else
  {
    v6 = *(a1 + 48);

    return [v4 _presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories:v5 indexPath:v6];
  }
}

- (void)_presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories:(id)accessories indexPath:(id)path
{
  accessoriesCopy = accessories;
  pathCopy = path;
  v8 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_AllHomePods_Confirmation_Title", @"HUSiriLanguageChange_AllHomePods_Confirmation_Title", 1);
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  hf_siriEndPointAccessories = [home hf_siriEndPointAccessories];
  v12 = [hf_siriEndPointAccessories count];

  if (v12)
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_AllHomePods_Confirmation_Title_Accessory", @"HUSiriLanguageChange_AllHomePods_Confirmation_Title_Accessory", 1);

    v8 = v13;
  }

  v47 = v8;
  v48 = pathCopy;
  v14 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v8 indexPath:pathCopy];
  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_AllHomePods_Confirmation_Button_Title", @"HUSiriLanguageChange_AllHomePods_Confirmation_Button_Title", 1);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __136__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories_indexPath___block_invoke;
  v52[3] = &unk_277DBBD90;
  v52[4] = self;
  v17 = accessoriesCopy;
  v53 = v17;
  v18 = [v15 actionWithTitle:v16 style:0 handler:v52];
  [v14 addAction:v18];

  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  groupItem = [itemManager groupItem];
  if (objc_opt_isKindOfClass())
  {
    v21 = groupItem;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    home2 = [mEMORY[0x277D146E8]2 home];
    accessoryIdentifier = [v22 accessoryIdentifier];
    itemManager2 = [home2 hf_accessoryWithIdentifier:accessoryIdentifier];

    mediaProfile = [itemManager2 mediaProfile];
    hf_displayName = [mediaProfile hf_displayName];
    homeKitSettingsVendor = 0;
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    mediaProfile = [itemManager2 groupItem];
    homeKitSettingsVendor = [mediaProfile homeKitSettingsVendor];
    hf_displayName = 0;
  }

  homeKitObject = [homeKitSettingsVendor homeKitObject];
  if (!hf_displayName)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    objc_opt_class();
    v37 = homeKitObject;
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    hf_displayName = [v39 hf_displayName];
  }

  v40 = HULocalizedStringWithFormat(@"HUSiriLanguageChange_ThisHomePod_Confirmation_Button_Title", @"%@", v30, v31, v32, v33, v34, v35, hf_displayName);
  v41 = MEMORY[0x277D750F8];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __136__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories_indexPath___block_invoke_2;
  v50[3] = &unk_277DBBD90;
  v50[4] = self;
  v51 = v17;
  v42 = v17;
  v43 = [v41 actionWithTitle:v40 style:0 handler:v50];
  [v14 addAction:v43];

  v44 = MEMORY[0x277D750F8];
  v45 = _HULocalizedStringWithDefaultValue(@"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", @"HUSiriLanguageChange_TurnOff_VoiceID_Cancel_Button_Title", 1);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __136__HUAccessorySettingsSiriRecognitionLanguageViewController__presentAlertConfirmingLanguageChangeForThisORAllMediaAccessories_indexPath___block_invoke_3;
  v49[3] = &unk_277DB7600;
  v49[4] = self;
  v46 = [v44 actionWithTitle:v45 style:1 handler:v49];
  [v14 addAction:v46];

  [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_attemptToFixVoiceRecognitionOnboardingFailures:(id)failures
{
  v31 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  v8 = objc_alloc(MEMORY[0x277D14C98]);
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  home2 = [mEMORY[0x277D146E8]2 home];
  currentUser = [home2 currentUser];
  v14 = [v8 initWithHome:home user:currentUser nameStyle:0];

  if ([v14 hasDismissedIdentifyVoiceReminderBanner])
  {
    v15 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
    if ([v15 containsObject:failuresCopy] && objc_msgSend(failuresCopy, "isEqualToString:", languageCode) && (objc_msgSend(v14, "isIdentifyVoiceEnabled") & 1) == 0)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __108__HUAccessorySettingsSiriRecognitionLanguageViewController__attemptToFixVoiceRecognitionOnboardingFailures___block_invoke;
      v24 = &unk_277DB9588;
      selfCopy = self;
      v26 = languageCode;
      v16 = _Block_copy(&v21);
      v17 = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _allMediaAccessories:v21];
      if ([v17 na_all:v16])
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = NSStringFromSelector(a2);
          *buf = 138412546;
          selfCopy2 = self;
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@: User may be trying to fix Voice Recognition, enabling Reminder Banner", buf, 0x16u);
        }

        v20 = [v14 setDismissIdentifyVoiceReminderBanner:0];
      }
    }
  }
}

uint64_t __108__HUAccessorySettingsSiriRecognitionLanguageViewController__attemptToFixVoiceRecognitionOnboardingFailures___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) _siriLanguageOptionForMediaProfile:v3];
  v5 = [v4 recognitionLanguage];
  v6 = [v5 isEqualToString:*(a1 + 40)];

  return v6;
}

- (void)_turnOffVoiceIDForTargetLanguageOption:(id)option
{
  v37 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  objc_opt_class();
  v8 = optionCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  languageOption = [v10 languageOption];
  recognitionLanguage = [languageOption recognitionLanguage];
  v13 = [languageCode isEqualToString:recognitionLanguage];

  v14 = HFLogForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = NSStringFromSelector(a2);
      languageOption2 = [v10 languageOption];
      recognitionLanguage2 = [languageOption2 recognitionLanguage];
      v29 = 138413058;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = recognitionLanguage2;
      v35 = 2112;
      v36 = languageCode;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: NOT Turning OFF Voice ID since Siri language changed to [%@] which is the same Siri language as this iOS Device [%@]", &v29, 0x2Au);
    }
  }

  else
  {
    if (v15)
    {
      v19 = NSStringFromSelector(a2);
      languageOption3 = [v10 languageOption];
      recognitionLanguage3 = [languageOption3 recognitionLanguage];
      v29 = 138413058;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = recognitionLanguage3;
      v35 = 2112;
      v36 = languageCode;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning OFF Voice ID since Siri language changed to [%@] which is NOT the same Siri language as this iOS Device [%@]", &v29, 0x2Au);
    }

    v22 = objc_alloc(MEMORY[0x277D14C98]);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    home2 = [mEMORY[0x277D146E8]2 home];
    currentUser = [home2 currentUser];
    v14 = [v22 initWithHome:home user:currentUser nameStyle:0];

    v28 = [v14 setEnableIdentifyVoice:0];
  }
}

- (void)_changeSiriLanguageOnlyForThisMediaAccessory:(id)accessory turnOffVoiceID:(BOOL)d
{
  accessoryCopy = accessory;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager updateSelectionWithOptionItem:accessoryCopy];

  v10 = [v9 addFailureBlock:&__block_literal_global_77];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __120__HUAccessorySettingsSiriRecognitionLanguageViewController__changeSiriLanguageOnlyForThisMediaAccessory_turnOffVoiceID___block_invoke_2;
  v13[3] = &unk_277DBBDB8;
  dCopy = d;
  v14 = accessoryCopy;
  v15 = a2;
  v13[4] = self;
  v11 = accessoryCopy;
  v12 = [v9 addSuccessBlock:v13];
}

void __120__HUAccessorySettingsSiriRecognitionLanguageViewController__changeSiriLanguageOnlyForThisMediaAccessory_turnOffVoiceID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 na_isCancelledError];
  v4 = [MEMORY[0x277D14640] sharedHandler];
  v5 = v4;
  if (v3)
  {
    [v4 logError:v2 operationDescription:@"Updating siri recognition language"];
  }

  else
  {
    [v4 handleError:v2];
  }
}

uint64_t __120__HUAccessorySettingsSiriRecognitionLanguageViewController__changeSiriLanguageOnlyForThisMediaAccessory_turnOffVoiceID___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _clearSpinner];
  result = [*(a1 + 32) _isAnyMediaAccessoryOnSupportedVoiceRecognitionLanguage];
  v3 = result;
  if ((*(a1 + 56) & 1) != 0 || !result)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 56);
      v8 = 138413058;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Turning OFF Voice ID because turnOffVoiceID = [%d] and anyMediaAccessoriesOnSupportedVoiceRecognitionLanguage = [%d]", &v8, 0x22u);
    }

    return [*(a1 + 32) _turnOffVoiceIDForTargetLanguageOption:*(a1 + 40)];
  }

  return result;
}

- (BOOL)_isAnyMediaAccessoryOnSupportedVoiceRecognitionLanguage
{
  v27 = *MEMORY[0x277D85DE8];
  _allMediaAccessories = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _allMediaAccessories];
  v5 = +[HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguages];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (v5)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __115__HUAccessorySettingsSiriRecognitionLanguageViewController__isAnyMediaAccessoryOnSupportedVoiceRecognitionLanguage__block_invoke;
    v16[3] = &unk_277DBBDE0;
    v16[4] = self;
    v8 = languageCode;
    v17 = v8;
    v18 = v5;
    LODWORD(v9) = [_allMediaAccessories na_any:v16];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = v11;
      v13 = @"No Media Accessories";
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      if (v9)
      {
        v13 = @"At least one Media Accessory";
      }

      v22 = v11;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ in this Home support the voice recognition language and matches the iPhone language [%@]", buf, 0x2Au);
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@:  returning NO, because supported voice recognition languages could not be found ", buf, 0x16u);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

uint64_t __115__HUAccessorySettingsSiriRecognitionLanguageViewController__isAnyMediaAccessoryOnSupportedVoiceRecognitionLanguage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) _siriLanguageOptionForMediaProfile:v3];
  v5 = *(a1 + 40);
  v6 = [v4 recognitionLanguage];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [v4 recognitionLanguage];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories:(id)accessories
{
  v92 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _turnOffVoiceIDForTargetLanguageOption:accessoriesCopy];
  val = self;
  _allMediaAccessories = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)self _allMediaAccessories];
  objc_opt_class();
  v6 = accessoriesCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v66 = v6;

  v56 = v8;
  languageOption = [v8 languageOption];
  recognitionLanguage = [languageOption recognitionLanguage];

  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)val itemManager];
  mediaProfileContainer = [itemManager mediaProfileContainer];
  if (objc_opt_isKindOfClass())
  {
    v12 = mediaProfileContainer;
  }

  else
  {
    v12 = 0;
  }

  v68 = v12;

  objc_opt_class();
  itemManager2 = [(HUItemTableViewController *)val itemManager];
  groupItem = [itemManager2 groupItem];
  if (objc_opt_isKindOfClass())
  {
    v15 = groupItem;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v57 = v16;
  if (v16)
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    accessoryIdentifier = [v57 accessoryIdentifier];
    itemManager3 = [home hf_accessoryWithIdentifier:accessoryIdentifier];

    mediaProfile = [itemManager3 mediaProfile];
  }

  else
  {
    objc_opt_class();
    itemManager3 = [(HUItemTableViewController *)val itemManager];
    mediaProfileContainer2 = [itemManager3 mediaProfileContainer];
    if (objc_opt_isKindOfClass())
    {
      v22 = mediaProfileContainer2;
    }

    else
    {
      v22 = 0;
    }

    mediaProfile = v22;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = _allMediaAccessories;
  v67 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v67)
  {
    v64 = *MEMORY[0x277D13338];
    v65 = *v80;
    do
    {
      v23 = 0;
      do
      {
        if (*v80 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v79 + 1) + 8 * v23);
        mediaProfile2 = [v24 mediaProfile];
        home2 = [v24 home];
        v27 = [home2 hf_mediaSystemForAccessory:v24];

        if (v27)
        {
          [v27 hf_settingsAdapterManager];
        }

        else
        {
          [mediaProfile2 hf_settingsAdapterManager];
        }
        v70 = ;
        v28 = [v70 adapterForIdentifier:v64];
        objc_opt_class();
        v29 = v28;
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v69 = v30;

        objc_opt_class();
        v31 = v66;
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;

        if (v68)
        {
          accessories = [v68 accessories];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke;
          v77[3] = &unk_277DB8EC0;
          v78 = mediaProfile2;
          v35 = [accessories na_any:v77];

          if (v35)
          {
            goto LABEL_44;
          }
        }

        else if (mediaProfile && ([mediaProfile isEqual:mediaProfile2] & 1) != 0)
        {
          goto LABEL_44;
        }

        v36 = HFLogForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = NSStringFromSelector(a2);
          *buf = 138413058;
          v84 = val;
          v85 = 2112;
          v86 = v37;
          v87 = 2112;
          v88 = recognitionLanguage;
          v89 = 2112;
          v90 = mediaProfile2;
          _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "%@:%@: Changing Siri language to [%@] for [%@]", buf, 0x2Au);
        }

        languageOption2 = [v33 languageOption];
        if (languageOption2 && [mediaProfile2 hf_isReachable])
        {
          mediaProfile3 = [v24 mediaProfile];
          hf_siriLanguageOptionsManager = [mediaProfile3 hf_siriLanguageOptionsManager];
          uniqueIdentifier = [v24 uniqueIdentifier];
          v42 = [hf_siriLanguageOptionsManager updateSelectedLanguageOption:languageOption2 accessoryIdentifier:uniqueIdentifier];

          if (!v42)
          {
            v42 = [v69 updateSelectedLanguageOption:languageOption2];
          }

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke_76;
          v74[3] = &unk_277DB8E70;
          v76 = a2;
          v75 = mediaProfile2;
          v43 = [v42 addFailureBlock:v74];
          [array addObject:v42];
        }

        else
        {
          v42 = HFLogForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v44 = NSStringFromSelector(a2);
            if ([mediaProfile2 hf_isReachable])
            {
              v45 = &stru_2823E0EE8;
            }

            else
            {
              v45 = @"un";
            }

            hf_displayName = [mediaProfile2 hf_displayName];
            *buf = 138412802;
            v84 = v44;
            v85 = 2112;
            v86 = v45;
            v87 = 2112;
            v88 = hf_displayName;
            _os_log_error_impl(&dword_20CEB6000, v42, OS_LOG_TYPE_ERROR, "%@ Controller is %@reachable. Language change failed for [%@]", buf, 0x20u);
          }
        }

LABEL_44:
        ++v23;
      }

      while (v67 != v23);
      v47 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
      v67 = v47;
    }

    while (v47);
  }

  itemManager4 = [(HUItemTableViewController *)val itemManager];
  v49 = [itemManager4 updateSelectionWithOptionItem:v66];

  v50 = [v49 addFailureBlock:&__block_literal_global_85];
  [array addObject:v49];
  v51 = [MEMORY[0x277D2C900] chainFutures:array];
  [(HUAccessorySettingsSiriRecognitionLanguageViewController *)val setChangeLanguageFuture:v51];

  v52 = [array count];
  objc_initWeak(buf, val);
  changeLanguageFuture = [(HUAccessorySettingsSiriRecognitionLanguageViewController *)val changeLanguageFuture];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke_2;
  v71[3] = &unk_277DBBE08;
  objc_copyWeak(v73, buf);
  v73[1] = a2;
  v54 = recognitionLanguage;
  v72 = v54;
  v73[2] = v52;
  v55 = [changeLanguageFuture addCompletionBlock:v71];

  objc_destroyWeak(v73);
  objc_destroyWeak(buf);
}

uint64_t __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke_76(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = [*(a1 + 32) hf_displayName];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_error_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_ERROR, "%@ Language change failed for %@", &v5, 0x16u);
  }
}

void __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke_83(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 na_isCancelledError];
  v4 = [MEMORY[0x277D14640] sharedHandler];
  v5 = v4;
  if (v3)
  {
    [v4 logError:v2 operationDescription:@"Updating siri recognition language"];
  }

  else
  {
    [v4 handleError:v2];
  }
}

void __119__HUAccessorySettingsSiriRecognitionLanguageViewController__turnOffVoiceIDAndChangeSiriLanguageForAllMediaAccessories___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearSpinner];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = 138413058;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%@: Finished changing Siri language to [%@] for %lu Media Accessories", &v7, 0x2Au);
  }
}

- (id)_allMediaAccessories
{
  v2 = objc_opt_new();
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  hf_homePods = [home hf_homePods];
  [v2 na_safeAddObjectsFromArray:hf_homePods];

  mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
  home2 = [mEMORY[0x277D146E8]2 home];
  hf_siriEndPointAccessories = [home2 hf_siriEndPointAccessories];
  [v2 na_safeAddObjectsFromArray:hf_siriEndPointAccessories];

  v9 = [v2 copy];

  return v9;
}

- (id)_siriLanguageOptionForMediaProfile:(id)profile
{
  profileCopy = profile;
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  if ([homeManager hasOptedToHH2])
  {
  }

  else
  {
    accessory = [profileCopy accessory];
    hf_isSiriEndpoint = [accessory hf_isSiriEndpoint];

    if (!hf_isSiriEndpoint)
    {
      hf_settingsAdapterManager = [profileCopy hf_settingsAdapterManager];
      v10 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13338]];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      selectedLanguageOption = [v13 selectedLanguageOption];

      goto LABEL_9;
    }
  }

  hf_settingsAdapterManager = [profileCopy hf_siriLanguageOptionsManager];
  selectedLanguageOption = [hf_settingsAdapterManager selectedLanguageOption];
LABEL_9:

  return selectedLanguageOption;
}

@end
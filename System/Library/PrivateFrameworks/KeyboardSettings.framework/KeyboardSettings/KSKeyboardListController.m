@interface KSKeyboardListController
+ (id)attributedStringForSymbolName:(id)a3;
+ (id)attributedTitleForSymbolName:(id)a3 cellTitle:(id)a4;
+ (id)availableInputModesForLanguage:(id)a3;
+ (id)availableSoftwareLayoutsForBaseInputMode:(id)a3;
+ (id)displayNameForHardwareLayout:(id)a3 inputMode:(id)a4;
+ (id)inputModes;
+ (id)softwareLayoutsForBaseInputMode:(id)a3;
+ (id)supportedBaseInputModesForLanguage:(id)a3;
+ (id)supportedInputModesForLanguage:(id)a3;
+ (unint64_t)count;
+ (void)setInputModes:(id)a3;
- (KSKeyboardListController)init;
- (id)specifierForExtensionInputMode:(id)a3;
- (id)specifierForInputMode:(id)a3;
- (id)specifierForMultilingualInputModes:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_writeKeyboards;
- (void)addNewKeyboards:(id)a3;
- (void)dealloc;
- (void)emitNavigationEventForKeyboardListController;
- (void)reloadSpecifiers;
- (void)removeInputModeWithIdentifier:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)updateEditButtonState;
- (void)viewDidLoad;
@end

@implementation KSKeyboardListController

- (void)viewDidLoad
{
  [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v4.receiver = self;
  v4.super_class = KSKeyboardListController;
  [(KSKeyboardListController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (KSKeyboardListController)init
{
  v5.receiver = self;
  v5.super_class = KSKeyboardListController;
  v2 = [(KSKeyboardListController *)&v5 init];
  v2->_groupSeparator = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  if ([objc_opt_class() showAddNewKeyboardButton])
  {
    v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"ADD_NEW_KEYBOARD" cell:&stru_28679E3A8 edit:{@"Keyboard", v2, 0, 0, 0, 13, 0}];
    v2->_addNewInputModeSpecifier = v3;
    [(PSSpecifier *)v3 setProperty:@"AddNewKeyboard" forKey:*MEMORY[0x277D3FFB8]];
    [(PSSpecifier *)v2->_addNewInputModeSpecifier setButtonAction:sel_addNewKeyboards_];
  }

  [-[KSKeyboardListController navigationItem](v2 "navigationItem")];
  [objc_msgSend(-[KSKeyboardListController navigationItem](v2 "navigationItem")];
  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D75688] sharedInputModeController];
  if (objc_opt_respondsToSelector())
  {
    [v3 setDisableFloatingKeyboardFilter:0];
  }

  v4.receiver = self;
  v4.super_class = KSKeyboardListController;
  [(KSKeyboardListController *)&v4 dealloc];
}

- (void)updateEditButtonState
{
  v2 = [(KSKeyboardListController *)self parentController];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

void *__48__KSKeyboardListController_setEditing_animated___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[185])
  {
    [result removeSpecifier:result[184] animated:1];
    v3 = *(a1 + 32);
    v4 = v3[185];

    return [v3 removeSpecifier:v4 animated:1];
  }

  return result;
}

uint64_t __48__KSKeyboardListController_setEditing_animated___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) allKeyboardsEnabled] & 1) == 0 && (*(a1 + 40) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2[185])
    {
      [v2 addSpecifier:v2[184] animated:1];
      [*(a1 + 32) addSpecifier:*(*(a1 + 32) + 1480) animated:1];
    }
  }

  v3 = [*(a1 + 32) isEditing];
  v4 = *(a1 + 32);
  v5 = (v3 & 1) != 0 || v4[188] > 1uLL;
  v6 = [objc_msgSend(v4 "navigationItem")];

  return [v6 setEnabled:v5];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  if ([a4 section])
  {
    return 0;
  }

  v8 = [objc_msgSend(a3 cellForRowAtIndexPath:{a4), "specifier"}];
  [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
  return ([TIInputModeGetNormalizedIdentifier() isEqualToString:@"emoji"] & 1) != 0 || self->_numberOfEnabledKeyboards - self->_emojiEnabled > 1;
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  if ([(KSKeyboardListController *)self isEditing:a3]&& self->deletingRow)
  {
    [(KSKeyboardListController *)self setEditing:0 animated:1];
  }

  self->deletingRow = 0;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = [a4 row];
  v8 = [a5 row];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = *MEMORY[0x277D3FC48];
  [v9 addObjectsFromArray:*(&self->super.super.super.super.super.isa + v10)];
  v11 = [v9 objectAtIndex:v7 + 1];
  v12 = v11;
  [v9 removeObject:v11];
  [v9 insertObject:v11 atIndex:v8 + 1];

  *(&self->super.super.super.super.super.isa + v10) = v9;

  [(KSKeyboardListController *)self _writeKeyboards];
}

- (id)specifierForInputMode:(id)a3
{
  v5 = objc_opt_class();
  if ([objc_msgSend(v5 availableSoftwareLayoutsForBaseInputMode:{TIInputModeGetNormalizedIdentifier()), "count"}] || (KSInputModeIsChineseShuangpin() & 1) != 0 || KSInputModeIsChineseWubi())
  {
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  }

  v7 = v6;
  [v6 setProperty:a3 forKey:*MEMORY[0x277D3FFB8]];
  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  return v7;
}

- (id)specifierForMultilingualInputModes:(id)a3
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  v5 = [a3 firstObject];
  [v4 setProperty:v5 forKey:*MEMORY[0x277D3FFB8]];
  [v4 setProperty:a3 forKey:*MEMORY[0x277D401A8]];
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  return v4;
}

- (id)specifierForExtensionInputMode:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v5 setProperty:a3 forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v6 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:a3];
  v25[0] = v6;
  [v5 setProperty:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObjects:count:", v25, 1), @"TIKBIdentifiersKey"}];
  v7 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v13 "containingBundle")])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v5 setProperty:v7 forKey:@"TIKBAllIdentifiersKey"];
  v14 = [v6 containingBundle];
  v15 = [v14 objectForInfoDictionaryKey:*MEMORY[0x277CBEC40]];
  if (!v15)
  {
    v16 = [v6 containingBundle];
    v15 = [v16 objectForInfoDictionaryKey:*MEMORY[0x277CBED50]];
  }

  [v5 setProperty:v15 forKey:*MEMORY[0x277D40170]];
  v17 = objc_alloc_init(KSAddExtensionKeyboardController);
  [(KSAddExtensionKeyboardController *)v17 setParentController:self];
  [(KSAddExtensionKeyboardController *)v17 setSpecifier:v5];
  [v5 setTarget:self];
  if ([-[KSAddExtensionKeyboardController specifiers](v17 "specifiers")])
  {
    [v5 setDetailControllerClass:objc_opt_class()];
    [v5 setCellType:2];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)reloadSpecifiers
{
  if (self->_newKeyboardsAdded)
  {
    [(KSKeyboardListController *)self updateEditButtonState];
    self->_newKeyboardsAdded = 0;
  }

  v4.receiver = self;
  v4.super_class = KSKeyboardListController;
  [(KSKeyboardListController *)&v4 reloadSpecifiers];
  v3 = ([(KSKeyboardListController *)self isEditing]& 1) != 0 || self->_numberOfEnabledKeyboards > 1;
  [objc_msgSend(-[KSKeyboardListController navigationItem](self "navigationItem")];
}

- (id)specifiers
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v22)
  {
    goto LABEL_40;
  }

  v18 = *MEMORY[0x277D3FC48];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  -[KSKeyboardListController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARDS_SHORT", &stru_28679E3A8, @"Keyboard"}]);
  v22 = v3;
  v17 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v3 addObject:?];
  keyboardsArray = self->_keyboardsArray;
  if (keyboardsArray)
  {
  }

  self->_keyboardsArray = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_emojiEnabled = 0;
  self->_numberOfEnabledKeyboards = 0;
  self->_totalKeyboardsCount = [UIKeyboardGetSupportedInputModes() count];
  [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  obj = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v5 = 0;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277CBEB18] array];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v7 = v6;
  v20 = v5;
  v19 = 0;
  v8 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      if (_os_feature_enabled_impl() && (v11 = TIUIGetMultilingualIDFromInputMode(), [v11 length]))
      {
        if ([v20 containsObject:v11])
        {
          continue;
        }

        [v20 addObject:v11];
        MultilingualSetFromInputModes = TIUIInputModeGetMultilingualSetFromInputModes(v10, obj);
      }

      else
      {
        MultilingualSetFromInputModes = 0;
      }

      [(NSMutableArray *)self->_keyboardsArray addObject:v10];
      NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
      if ([objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")])
      {
        if (_os_feature_enabled_impl() && [MultilingualSetFromInputModes count] >= 2)
        {
          v14 = [(KSKeyboardListController *)self specifierForMultilingualInputModes:MultilingualSetFromInputModes];
        }

        else
        {
          v14 = [(KSKeyboardListController *)self specifierForInputMode:v10];
        }

        [v22 addObject:v14];
        if ([NormalizedIdentifier isEqualToString:@"emoji"])
        {
          self->_emojiEnabled = 1;
        }
      }

      else
      {
        if (![MEMORY[0x277D75680] keyboardInputModeWithIdentifier:v10])
        {
          continue;
        }

        [v22 addObject:{-[KSKeyboardListController specifierForExtensionInputMode:](self, "specifierForExtensionInputMode:", v10)}];
        v19 = 1;
      }

      ++self->_numberOfEnabledKeyboards;
    }

    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v7);
LABEL_30:
  if ((self->deletingRow || ([(KSKeyboardListController *)self isEditing]& 1) == 0) && ![(KSKeyboardListController *)self allKeyboardsEnabled]&& self->_addNewInputModeSpecifier)
  {
    [v22 addObject:self->_groupSeparator];
    [v22 addObject:self->_addNewInputModeSpecifier];
  }

  if (v19)
  {
    if ([(KSKeyboardListController *)self aboutPrivacyController])
    {
      [(KSAboutKeyboardPrivacyController *)[(KSKeyboardListController *)self aboutPrivacyController] setSpecifier:v17];
    }

    else
    {
      [(KSKeyboardListController *)self setAboutPrivacyController:[[KSAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:v17 asHeader:0 inListController:self]];
    }
  }

  *(&self->super.super.super.super.super.isa + v18) = v22;
LABEL_40:
  v15 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v7 = [(KSKeyboardListController *)self aboutPrivacyController];

  [(KSAboutKeyboardPrivacyController *)v7 addPrivacyLinkViewIfNecessaryToHeaderView:a4 forSection:a5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = KSKeyboardListController;
  v6 = [(KSKeyboardListController *)&v9 tableView:a3 cellForRowAtIndexPath:?];
  v7 = [(KSKeyboardListController *)self specifierAtIndex:[(KSKeyboardListController *)self indexForIndexPath:a4]];
  [v6 setAccessibilityIdentifier:{objc_msgSend(v7, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
  return v6;
}

- (void)addNewKeyboards:(id)a3
{
  v5 = objc_alloc_init(KSAddKeyboardLanguageListSetupController);
  [(PSSetupController *)v5 setParentController:self];
  [(PSRootController *)v5 setSpecifier:a3];
  [a3 setTarget:self];

  [(KSKeyboardListController *)self showController:v5];
}

- (void)_writeKeyboards
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = *MEMORY[0x277D3FFB8];
    v8 = 0x27F7D5000uLL;
    v9 = "TextInputCore";
    v10 = "multilingual_keyboard";
    do
    {
      v11 = 0;
      v21 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = [*(*(&v23 + 1) + 8 * v11) propertyForKey:{v7, v21}];
        if ([*(&self->super.super.super.super.super.isa + *(v8 + 1116)) containsObject:v12])
        {
          if (_os_feature_enabled_impl())
          {
            v13 = v7;
            v14 = v6;
            v15 = v8;
            v16 = v3;
            v17 = v10;
            v18 = v9;
            MultilingualSet = TIUIInputModeGetMultilingualSet(v12);
            if ([MultilingualSet count] < 2)
            {
              [v22 addObject:v12];
            }

            else
            {
              [v22 addObjectsFromArray:MultilingualSet];
            }

            v9 = v18;
            v10 = v17;
            v3 = v16;
            v8 = v15;
            v6 = v14;
            v7 = v13;
            v5 = v21;
          }

          else
          {
            [v22 addObject:v12];
          }
        }

        ++v11;
      }

      while (v5 != v11);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  [objc_opt_class() setInputModes:v22];
  if ([(KSKeyboardListController *)self allKeyboardsEnabled]&& self->_addNewInputModeSpecifier)
  {
    [(KSKeyboardListController *)self removeSpecifier:self->_groupSeparator animated:1];
    [(KSKeyboardListController *)self removeSpecifier:self->_addNewInputModeSpecifier animated:1];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{objc_msgSend(a5, "row", a3) + 1}];
    -[KSKeyboardListController removeInputModeWithIdentifier:](self, "removeInputModeWithIdentifier:", [v6 propertyForKey:*MEMORY[0x277D3FFB8]]);
    [(KSKeyboardListController *)self removeSpecifier:v6 animated:1];
    [(KSKeyboardListController *)self updateEditButtonState];
    if ([(KSKeyboardListController *)self isEditing]&& self->_numberOfEnabledKeyboards == 1)
    {

      [(KSKeyboardListController *)self setEditing:0 animated:1];
    }

    else
    {

      [(KSKeyboardListController *)self reloadSpecifiers];
    }
  }
}

- (void)removeInputModeWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(NSMutableArray *)self->_keyboardsArray removeObject:?];
    --self->_numberOfEnabledKeyboards;
    [(KSKeyboardListController *)self _writeKeyboards];
    NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
    if (NormalizedIdentifier)
    {
      v5 = NormalizedIdentifier;
      v6 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v7 = *MEMORY[0x277D6F8A0];
      v8 = [objc_msgSend(v6 valueForPreferenceKey:{*MEMORY[0x277D6F8A0]), "mutableCopy"}];
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CBEB18] array];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              [v9 objectForKey:v15];
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:v5])
              {
                [v10 addObject:v15];
              }
            }

            v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }

        [v9 removeObjectsForKeys:v10];
        if ([v9 count])
        {
          v16 = v9;
        }

        else
        {
          v16 = 0;
        }

        [objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)count
{
  if (_os_feature_enabled_impl())
  {

    return TIUIGetCountOfUserVisibleInputModes();
  }

  else
  {
    v4 = [a1 inputModes];

    return [v4 count];
  }
}

+ (id)inputModes
{
  v2 = [MEMORY[0x277D75688] sharedInputModeController];

  return [v2 enabledInputModeIdentifiers];
}

+ (void)setInputModes:(id)a3
{
  v4 = [MEMORY[0x277D75678] sharedInstance];
  [v4 saveInputModesPreference:a3];

  [v4 setShouldUpdateCacheOnInputModesChange:1];
}

+ (id)supportedBaseInputModesForLanguage:(id)a3
{
  if (!a3)
  {
    +[KSKeyboardListController supportedBaseInputModesForLanguage:];
  }

  [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v4 = [objc_msgSend(MEMORY[0x277D6F380] "sharedInputModeController")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__KSKeyboardListController_supportedBaseInputModesForLanguage___block_invoke;
  v6[3] = &unk_2797F9FE0;
  v6[4] = a3;
  return [v4 objectsAtIndexes:{objc_msgSend(v4, "indexesOfObjectsPassingTest:", v6)}];
}

uint64_t __63__KSKeyboardListController_supportedBaseInputModesForLanguage___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    return 1;
  }

  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  v5 = *(a1 + 32);

  return [LanguageWithRegion isEqualToString:v5];
}

+ (id)softwareLayoutsForBaseInputMode:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  SupportedSoftwareKeyboardsForInputMode = UIKeyboardGetSupportedSoftwareKeyboardsForInputMode();
  if (([a3 isEqualToString:@"ja_JP-Kana"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"ja_JP"))
  {
    v5 = [SupportedSoftwareKeyboardsForInputMode firstObject];
    if (!v5)
    {
      +[KSKeyboardListController softwareLayoutsForBaseInputMode:];
    }

    v9[0] = v5;
    SupportedSoftwareKeyboardsForInputMode = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    goto LABEL_5;
  }

  if (!KSInputModeIsChineseShuangpin())
  {
LABEL_5:
    v6 = *MEMORY[0x277D85DE8];
    return SupportedSoftwareKeyboardsForInputMode;
  }

  v8 = *MEMORY[0x277D85DE8];

  return KSFilteredLayoutsByCurrentShuangpinType(SupportedSoftwareKeyboardsForInputMode);
}

+ (id)supportedInputModesForLanguage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = a1;
  obj = [a1 supportedBaseInputModesForLanguage:a3];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v18 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [v19 softwareLayoutsForBaseInputMode:v7];
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v23;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              if ([(__CFString *)v13 hasPrefix:@"Kana"])
              {
                v13 = @"Kana";
              }

              [objc_msgSend(TIInputModeGetComponentsFromIdentifier() "mutableCopy")];
              IdentifierFromComponents = UIKeyboardInputModeGetIdentifierFromComponents();
              if (([v5 containsObject:IdentifierFromComponents] & 1) == 0)
              {
                [v5 addObject:IdentifierFromComponents];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)availableInputModesForLanguage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v6 = [objc_msgSend(a1 supportedInputModesForLanguage:{a3), "mutableCopy"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (!_os_feature_enabled_impl() || [TIUIInputModeGetMultilingualSet(v11) count] <= 1)
        {
          v12 = [TIInputModeGetComponentsFromIdentifier() mutableCopy];
          [v12 removeObjectForKey:@"hw"];
          if ([objc_msgSend(v12 objectForKey:{@"sw", "hasPrefix:", @"Kana"}])
          {
            [v12 setObject:@"Kana" forKey:@"sw"];
          }

          [v6 removeObject:UIKeyboardInputModeGetIdentifierFromComponents()];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)availableSoftwareLayoutsForBaseInputMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() mutableCopy];
  if (KSInputModeIsChineseShuangpin())
  {
    v4 = [KSFilteredLayoutsByCurrentShuangpinType(v4) mutableCopy];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[KSKeyboardListController inputModes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([a3 isEqualToString:TIInputModeGetNormalizedIdentifier()])
        {
          v11 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
          if ([a3 hasPrefix:@"ja_JP"] && (objc_msgSend(v11, "_containsSubstring:", @"Kana") & 1) != 0)
          {
            [v4 removeAllObjects];
            goto LABEL_16;
          }

          [v4 removeObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)displayNameForHardwareLayout:(id)a3 inputMode:(id)a4
{
  v5 = a3;
  if ([a3 isEqualToString:@"Automatic"])
  {
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Automatic", &stru_28679E3A8, @"KeyboardLayouts"}];
    v5 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  }

  else
  {
    v6 = 0;
  }

  v7 = displayNameForHardwareLayout_inputMode____keyboardLayoutsBundle;
  if (displayNameForHardwareLayout_inputMode____keyboardLayoutsBundle || (v8 = [MEMORY[0x259C42610]() stringByAppendingPathComponent:@"System/Library/KeyboardLayouts/USBKeyboardLayouts.bundle"], v7 = objc_msgSend(MEMORY[0x277CCA8D8], "bundleWithPath:", objc_msgSend(v8, "stringByResolvingSymlinksInPath")), (displayNameForHardwareLayout_inputMode____keyboardLayoutsBundle = v7) != 0) || (NSLog(&cfstr_SErrorCouldNot.isa, "+[KSKeyboardListController displayNameForHardwareLayout:inputMode:]", v8), (v7 = displayNameForHardwareLayout_inputMode____keyboardLayoutsBundle) != 0))
  {
    v5 = [v7 localizedStringForKey:v5 value:0 table:@"InfoPlist"];
    if (v6)
    {
      return [MEMORY[0x277CCACA8] localizedStringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"%@ — %@", &stru_28679E3A8, @"Automatic - <Resolved Keyboard Layout Name>", v6, v5];
    }
  }

  else if (v6)
  {
    return v6;
  }

  return v5;
}

+ (id)attributedTitleForSymbolName:(id)a3 cellTitle:(id)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CCAB48]);
  if (a3)
  {
    v7 = [objc_opt_class() attributedStringForSymbolName:a3];
    if (v7)
    {
      v8 = v7;
      if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] == 1)
      {
        [v6 appendAttributedString:{objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:", @"\u200F"}];
      }

      [v6 appendAttributedString:{objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:", @"\t⁨"}];
      [v6 appendAttributedString:v8];
      [v6 appendAttributedString:{objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:", @"⁩\t"}];
    }
  }

  [v6 appendAttributedString:{objc_msgSend(objc_alloc(MEMORY[0x277CCA898]), "initWithString:", a4)}];
  v9 = [objc_msgSend(MEMORY[0x277D74248] "defaultParagraphStyle")];
  v10 = objc_alloc(MEMORY[0x277D742E0]);
  v11 = MEMORY[0x277CBEC10];
  v16[0] = [v10 initWithTextAlignment:4 location:MEMORY[0x277CBEC10] options:0.0];
  v16[1] = [objc_alloc(MEMORY[0x277D742E0]) initWithTextAlignment:1 location:v11 options:10.0];
  v16[2] = [objc_alloc(MEMORY[0x277D742E0]) initWithTextAlignment:4 location:v11 options:28.0];
  [v9 setTabStops:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 3)}];
  v14 = *MEMORY[0x277D74118];
  v15 = v9;
  [v6 addAttributes:objc_msgSend(MEMORY[0x277CBEAC0] range:{"dictionaryWithObjects:forKeys:count:", &v15, &v14, 1), 0, objc_msgSend(v6, "length")}];
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)attributedStringForSymbolName:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a3];
  v5 = [objc_msgSend(MEMORY[0x277D755B8] systemImageNamed:{a3), "imageWithRenderingMode:", 2}];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
  [v7 setImage:v6];
  if (![v7 image])
  {
    return v4;
  }

  v8 = MEMORY[0x277CCA898];

  return [v8 attributedStringWithAttachment:v7];
}

- (void)emitNavigationEventForKeyboardListController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/KEYBOARDS"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = v4;
  v9 = [v5 initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:v6 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
  -[KSKeyboardListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", v9, [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:2], v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end
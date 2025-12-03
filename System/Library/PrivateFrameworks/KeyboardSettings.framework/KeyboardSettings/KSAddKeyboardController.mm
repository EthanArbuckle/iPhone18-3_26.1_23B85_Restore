@interface KSAddKeyboardController
+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes;
- (id)keyboardTypeSpecifiers;
- (id)koreanEnglishBilingualInputModeIdentifier:(id)identifier enabledInputModes:(id)modes;
- (id)monolingualSpecifiers;
- (id)multilingualSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)doneButtonTapped;
- (void)enableMonolingualKeyboards:(id)keyboards;
- (void)enableMultilingualKeyboards:(id)keyboards;
- (void)setSpecifier:(id)specifier;
- (void)toggleInputMode:(id)mode;
- (void)toggleMultilingualInputMode:(id)mode;
- (void)updateDoneButton;
- (void)viewDidLoad;
@end

@implementation KSAddKeyboardController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSAddKeyboardController *)self newSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

uint64_t __66__KSAddKeyboardController_shouldAddInputMode_toEnabledInputModes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [TIInputModeGetLanguageWithRegion() isEqualToString:@"ja_JP"];
  if (result)
  {
    result = [TIInputModeGetVariant() hasPrefix:@"Kana"];
    if (result)
    {
      result = 1;
      *a4 = 1;
    }
  }

  return result;
}

+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  [modes firstObject];
  v5 = TIGetAddKeyboardUsesPickerForInputMode();
  v6 = v4 | v5;
  if (v4 && (v5 & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [modes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(modes);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
          if ([TIUIGetProposedMultilingualSetsForAddingInputMode(NormalizedIdentifier objc:"sharedInputModeController") msgSend(objc:{"enabledInputModeIdentifiers")), "count"}msgSend(MEMORY[0x277D75688]])
          {
            v6 = 1;
            goto LABEL_14;
          }
        }

        v8 = [modes countByEnumeratingWithState:&v15 objects:v19 count:16];
        v6 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)setSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v18 setSpecifier:specifier];
  v4 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D3FFB8]];
  if (_os_feature_enabled_impl())
  {
    v7 = [KSKeyboardListController supportedBaseInputModesForLanguage:v6];
    if (_os_feature_enabled_impl())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [array addObjectsFromArray:{TIUIGetProposedMultilingualSetsForAddingInputMode(*(*(&v14 + 1) + 8 * v11++), v4)}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier:v6 enabledInputModes:v4];
  }

  else
  {
    v12 = 0;
  }

  [(KSAddKeyboardController *)self setProposedMultilingualInputModes:array];
  [(KSAddKeyboardController *)self setKoreanEnglishBilingualInputModeIdentifier:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (-[KSAddKeyboardController supportsMultilingual](self, "supportsMultilingual") && ([v3 addObjectsFromArray:{-[KSAddKeyboardController keyboardTypeSpecifiers](self, "keyboardTypeSpecifiers")}], !-[KSAddKeyboardController showsMonolingualOption](self, "showsMonolingualOption")))
  {
    if ([(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] count]< 2)
    {
      return v3;
    }

    multilingualSpecifiers = [(KSAddKeyboardController *)self multilingualSpecifiers];
  }

  else
  {
    multilingualSpecifiers = [(KSAddKeyboardController *)self monolingualSpecifiers];
  }

  [v3 addObjectsFromArray:multilingualSpecifiers];
  return v3;
}

- (id)keyboardTypeSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0 name:&stru_28679E3A8];
  [v3 addObject:v4];
  if ([(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier])
  {
    v5 = 0x277CCA000;
    if (![(KSAddKeyboardController *)self showsMonolingualOption])
    {
      v18 = [KSKeyboardListController keyboardDisplayNameForIdentifier:@"ko_KR"];
      v5 = 0x277CCA000uLL;
      [v4 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"localizedStringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_FOOTER", &stru_28679E3A8, @"Keyboard", v18), *MEMORY[0x277D3FF88]}];
    }

    v6 = [KSKeyboardListController keyboardDisplayNameForIdentifier:@"en"];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(*(v5 + 3240) target:"localizedStringWithFormat:" set:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] get:"bundleForClass:" detail:objc_opt_class()) cell:"localizedStringForKey:value:table:" edit:{@"MULTILINGUAL_KEYBOARD_ADD_TITLE_WITH_LANGUAGE", &stru_28679E3A8, @"Keyboard", v6), self, 0, 0, 0, 3, 0}];
    [v7 setButtonAction:sel_enableMultilingualKeyboards_];
    koreanEnglishBilingualInputModeIdentifier = [(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier];
    v9 = *MEMORY[0x277D3FFB8];
    goto LABEL_10;
  }

  if ([(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] count]> 1)
  {
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"MULTILINGUAL_KEYBOARD_ADD_TITLE" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
    [v7 setButtonAction:sel_enableMultilingualKeyboards_];
    v9 = *MEMORY[0x277D3FFB8];
    koreanEnglishBilingualInputModeIdentifier = @"Multilingual";
LABEL_10:
    [v7 setProperty:koreanEnglishBilingualInputModeIdentifier forKey:v9];
    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    goto LABEL_11;
  }

  firstObject = [(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] firstObject];
  if (![(KSAddKeyboardController *)self showsMonolingualOption])
  {
    MultilingualSet = TIUIProposedInputModeGetMultilingualSet(firstObject);
    v13 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(MultilingualSet, 0);
    [v4 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"localizedStringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_FOOTER", &stru_28679E3A8, @"Keyboard", v13), *MEMORY[0x277D3FF88]}];
  }

  Current = TIUIProposedInputModeGetCurrent(firstObject, v11);
  v15 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current, 0);
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(MEMORY[0x277CCACA8] target:"localizedStringWithFormat:" set:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] get:"bundleForClass:" detail:objc_opt_class()) cell:"localizedStringForKey:value:table:" edit:{@"MULTILINGUAL_KEYBOARD_ADD_TITLE_WITH_LANGUAGE", &stru_28679E3A8, @"Keyboard", v15), self, 0, 0, 0, 3, 0}];
  [v7 setButtonAction:sel_enableMultilingualKeyboards_];
  [v7 setProperty:firstObject forKey:*MEMORY[0x277D401A8]];
  v9 = *MEMORY[0x277D3FFB8];
  [v7 setProperty:@"Multilingual" forKey:*MEMORY[0x277D3FFB8]];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v7 setUserInfo:&unk_2867A5100];
LABEL_11:
  [v3 addObject:v7];
  v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"ADD_MONOLINGUAL_KEYBOARD_TITLE" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
  [v16 setButtonAction:sel_enableMonolingualKeyboards_];
  [v16 setProperty:@"Monolingual" forKey:v9];
  [v3 addObject:v16];
  return v3;
}

- (id)multilingualSpecifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v18 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_TITLE", &stru_28679E3A8, @"Keyboard", self, 0, 0, 0, 0, 0)}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  obj = [(KSAddKeyboardController *)self proposedMultilingualInputModes];
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    v8 = *MEMORY[0x277D3FFB8];
    v9 = *MEMORY[0x277D401A8];
    v10 = *MEMORY[0x277D3FD80];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        Current = TIUIProposedInputModeGetCurrent(v12, v5);
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current target:0) set:selfCopy get:0 detail:0 cell:0 edit:{3, 0}];
        [v14 setButtonAction:sel_toggleMultilingualInputMode_];
        [v14 setProperty:@"Multilingual" forKey:v8];
        [v14 setProperty:v12 forKey:v9];
        [v14 setProperty:MEMORY[0x277CBEC38] forKey:v10];
        [v14 setUserInfo:&unk_2867A5128];
        [v18 addObject:v14];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)monolingualSpecifiers
{
  v48 = *MEMORY[0x277D85DE8];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = *MEMORY[0x277D3FFB8];
  obj = +[KSKeyboardListController supportedBaseInputModesForLanguage:](KSKeyboardListController, "supportedBaseInputModesForLanguage:", [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:?]);
  if ([(KSAddKeyboardController *)self supportsMultilingual])
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"MONOLINGUAL_KEYBOARD_TITLE", &stru_28679E3A8, @"Keyboard"}];
  }

  else
  {
    v3 = 0;
  }

  [v28 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v3, self, 0, 0, 0, 0, 0)}];
  v30 = [obj count];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v23 = *v43;
    v4 = *MEMORY[0x277CBE720];
    v26 = *MEMORY[0x277D3FF38];
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v33 = [KSKeyboardListController softwareLayoutsForBaseInputMode:*(*(&v42 + 1) + 8 * v5)];
        [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
        v6 = UIKeyboardInputModesMatchingMode();
        SupportedSoftwareMultiscriptLayouts = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts();
        v25 = v5;
        v34 = v6;
        if ([v6 count])
        {
          [v6 firstObject];
          DefaultHardwareKeyboardForInputMode = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        }

        else
        {
          DefaultHardwareKeyboardForInputMode = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
        }

        v32 = DefaultHardwareKeyboardForInputMode;
        if ([v33 count])
        {
          v29 = [v33 count];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = [v33 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v37)
          {
            v35 = *v39;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v39 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v9 = *(*(&v38 + 1) + 8 * i);
                if (([SupportedSoftwareMultiscriptLayouts containsObject:v9] & 1) == 0)
                {
                  [TIInputModeGetComponentsFromIdentifier() valueForKey:v4];
                  v10 = TUIKeyboardTitle();
                  v11 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v9, &stru_28679E3A8, @"KeyboardLayouts"}];
                  v12 = [v10 length];
                  if (v12)
                  {
                    v13 = v10;
                  }

                  else
                  {
                    v13 = v11;
                  }

                  if (v12 && v30 >= 2 && v29 >= 2)
                  {
                    v31 = MEMORY[0x277CCACA8];
                    selfCopy = self;
                    v15 = MEMORY[0x277CCA8D8];
                    v16 = objc_opt_class();
                    v17 = v15;
                    self = selfCopy;
                    v13 = [v31 stringWithFormat:objc_msgSend(objc_msgSend(v17, "bundleForClass:", v16), "localizedStringForKey:value:table:", @"KEYBOARD_VARIANT_%@_WITH_LAYOUT_%@", &stru_28679E3A8, @"Keyboard", v10, v11];
                  }

                  v18 = UIKeyboardInputModeWithNewSWLayout();
                  if (v32)
                  {
                    v18 = UIKeyboardInputModeWithNewHWLayout();
                  }

                  if ([objc_opt_class() shouldAddInputMode:v18 toEnabledInputModes:v34])
                  {
                    v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];
                    [v19 setButtonAction:sel_toggleInputMode_];
                    [v19 setProperty:v18 forKey:v27];
                    if ([v34 containsObject:v18])
                    {
                      [v19 setProperty:MEMORY[0x277CBEC28] forKey:v26];
                    }

                    [v28 addObject:v19];
                  }
                }
              }

              v37 = [v33 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v37);
          }
        }

        v5 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = KSAddKeyboardController;
  v6 = [(KSAddKeyboardController *)&v11 tableView:view cellForRowAtIndexPath:?];
  v7 = [(KSAddKeyboardController *)self specifierAtIndex:[(KSAddKeyboardController *)self indexForIndexPath:path]];
  v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
  [v6 setAccessibilityIdentifier:v8];
  if ([v6 isUserInteractionEnabled])
  {
    if ([v8 isEqualToString:@"Multilingual"] || -[KSAddKeyboardController koreanEnglishBilingualInputModeIdentifier](self, "koreanEnglishBilingualInputModeIdentifier") && objc_msgSend(v8, "isEqualToString:", -[KSAddKeyboardController koreanEnglishBilingualInputModeIdentifier](self, "koreanEnglishBilingualInputModeIdentifier")))
    {
      showsMonolingualOption = [(KSAddKeyboardController *)self showsMonolingualOption]^ 1;
    }

    else
    {
      if (![v8 isEqualToString:@"Monolingual"])
      {
        return v6;
      }

      showsMonolingualOption = [(KSAddKeyboardController *)self showsMonolingualOption];
    }
  }

  else
  {
    showsMonolingualOption = 1;
  }

  [v6 setChecked:showsMonolingualOption];
  return v6;
}

- (id)koreanEnglishBilingualInputModeIdentifier:(id)identifier enabledInputModes:(id)modes
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [KSKeyboardListController supportedBaseInputModesForLanguage:identifier];
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v18 = *v24;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        if (![modes count] || (objc_msgSend(modes, "firstObject"), (DefaultHardwareKeyboardForInputMode = objc_msgSend(TIInputModeGetComponentsFromIdentifier(), "objectForKey:", @"hw")) == 0))
        {
          DefaultHardwareKeyboardForInputMode = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
        }

        v8 = [KSKeyboardListController softwareLayoutsForBaseInputMode:v6];
        if ([v8 count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
LABEL_12:
            v12 = 0;
            while (1)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              if ([*(*(&v19 + 1) + 8 * v12) isEqualToString:@"Korean-With-QWERTY"])
              {
                v13 = UIKeyboardInputModeWithNewSWLayout();
                if (DefaultHardwareKeyboardForInputMode)
                {
                  v13 = UIKeyboardInputModeWithNewHWLayout();
                }

                if (![modes containsObject:v13])
                {
                  goto LABEL_25;
                }
              }

              if (v10 == ++v12)
              {
                v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v10)
                {
                  goto LABEL_12;
                }

                break;
              }
            }
          }
        }
      }

      v13 = 0;
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)addCheckedInputModes
{
  v24 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  [mEMORY[0x277D75688] setDisableFloatingKeyboardFilter:1];
  enabledInputModeIdentifiers = [mEMORY[0x277D75688] enabledInputModeIdentifiers];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v5 = [specifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = *MEMORY[0x277D40148];
    v9 = *MEMORY[0x277D3FFB8];
    v15 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{v8, v15}];
        v13 = [v11 propertyForKey:v9];
        if ((![v13 isEqualToString:@"Multilingual"] || -[NSArray count](-[KSAddKeyboardController proposedMultilingualInputModes](selfCopy, "proposedMultilingualInputModes"), "count") <= 1) && (objc_msgSend(v13, "isEqualToString:", @"Monolingual") & 1) == 0 && objc_msgSend(v12, "isChecked"))
        {
          if (_os_feature_enabled_impl() && [objc_msgSend(objc_msgSend(v11 "userInfo")])
          {
            enabledInputModeIdentifiers = TIUIGetInputModesByAddingProposedInputMode([v11 propertyForKey:v15], enabledInputModeIdentifiers);
          }

          else if (([enabledInputModeIdentifiers containsObject:v13] & 1) == 0)
          {
            [array addObject:v13];
          }
        }
      }

      v6 = [specifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  +[KSKeyboardListController setInputModes:](KSKeyboardListController, "setInputModes:", [enabledInputModeIdentifiers arrayByAddingObjectsFromArray:array]);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateDoneButton
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v3 = [specifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D40148];
    v8 = *MEMORY[0x277D3FF38];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 propertyForKey:v6];
        if (([v11 isEqualToString:@"Monolingual"] & 1) == 0 && (!objc_msgSend(v11, "isEqualToString:", @"Multilingual") || -[NSArray count](-[KSAddKeyboardController proposedMultilingualInputModes](self, "proposedMultilingualInputModes"), "count") <= 1))
        {
          v12 = [v10 propertyForKey:v7];
          v13 = [v10 propertyForKey:v8];
          if ([v12 isChecked])
          {
            if (!v13 || ([v13 BOOLValue] & 1) != 0)
            {
              v14 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v4 = [specifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_16:
  [objc_msgSend(-[KSAddKeyboardController navigationItem](self "navigationItem")];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableMultilingualKeyboards:(id)keyboards
{
  [(KSAddKeyboardController *)self setShowsMonolingualOption:0];
  [(KSAddKeyboardController *)self reloadSpecifiers];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)enableMonolingualKeyboards:(id)keyboards
{
  [(KSAddKeyboardController *)self setShowsMonolingualOption:1];
  [(KSAddKeyboardController *)self reloadSpecifiers];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)toggleInputMode:(id)mode
{
  v4 = [mode propertyForKey:*MEMORY[0x277D40148]];
  [v4 setChecked:{objc_msgSend(v4, "isChecked") ^ 1}];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)toggleMultilingualInputMode:(id)mode
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        if ([objc_msgSend(objc_msgSend(v11 "userInfo")])
        {
          [v12 setChecked:0];
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(KSAddKeyboardController *)self toggleInputMode:mode];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelButtonTapped
{
  navigationController = [(KSAddKeyboardController *)self navigationController];

  [navigationController popViewControllerAnimated:1];
}

- (void)doneButtonTapped
{
  [(KSAddKeyboardController *)self addCheckedInputModes];
  parentController = [(KSAddKeyboardController *)self parentController];

  [parentController dismissForDone];
}

@end
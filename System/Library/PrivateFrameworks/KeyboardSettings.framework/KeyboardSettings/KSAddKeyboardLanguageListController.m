@interface KSAddKeyboardLanguageListController
- (BOOL)inputMode:(id)a3 matchesPredicate:(id)a4;
- (KSAddKeyboardLanguageListController)init;
- (NSOperationQueue)searchQueue;
- (id)generateSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelButtonTapped;
- (void)createAboutPrivacyControllerIfNeeded:(id)a3;
- (void)dealloc;
- (void)dismissForDone;
- (void)emitNavigationEventForAddKeyboardLanguageListController;
- (void)handleSoleInputModeAddition:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)showAddExtensionKeyboardSheet:(id)a3;
- (void)showAddSystemKeyboardSheet:(id)a3;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation KSAddKeyboardLanguageListController

- (KSAddKeyboardLanguageListController)init
{
  v5.receiver = self;
  v5.super_class = KSAddKeyboardLanguageListController;
  v2 = [(KSAddKeyboardLanguageListController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_willResume name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (NSOperationQueue)searchQueue
{
  result = self->_searchQueue;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    self->_searchQueue = v4;
    [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    return self->_searchQueue;
  }

  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = KSAddKeyboardLanguageListController;
  [(KSAddKeyboardLanguageListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSAddKeyboardLanguageListController;
  [(KSAddKeyboardLanguageListController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
  [-[KSAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [-[KSAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [objc_msgSend(-[KSAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [objc_msgSend(objc_msgSend(-[KSAddKeyboardLanguageListController navigationItem](self "navigationItem")];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  [(KSAddKeyboardLanguageListController *)self setSearchText:a4];
  [(NSOperationQueue *)[(KSAddKeyboardLanguageListController *)self searchQueue] cancelAllOperations];
  v5 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  objc_initWeak(&location, v5);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__KSAddKeyboardLanguageListController_searchBar_textDidChange___block_invoke;
  v6[3] = &unk_2797FA378;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [v5 addExecutionBlock:v6];
  [(NSOperationQueue *)[(KSAddKeyboardLanguageListController *)self searchQueue] addOperation:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __63__KSAddKeyboardLanguageListController_searchBar_textDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generateSpecifiers];
  if (([objc_loadWeak((a1 + 40)) isCancelled] & 1) == 0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __63__KSAddKeyboardLanguageListController_searchBar_textDidChange___block_invoke_2;
    v3[3] = &unk_2797F9F68;
    v3[4] = *(a1 + 32);
    v3[5] = v2;
    dispatch_sync(MEMORY[0x277D85CD0], v3);
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [(NSOperationQueue *)[(KSAddKeyboardLanguageListController *)self searchQueue] cancelAllOperations];
  [(KSAddKeyboardLanguageListController *)self setSearchText:0];

  [(KSAddKeyboardLanguageListController *)self reloadSpecifiers];
}

- (BOOL)inputMode:(id)a3 matchesPredicate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  if ([a4 evaluateWithObject:LanguageWithRegion])
  {
    v6 = 1;
  }

  else
  {
    v7 = [KSKeyboardListController keyboardDisplayNameForIdentifier:LanguageWithRegion];
    v8 = [MEMORY[0x277CBEB58] setWithObject:v7];
    [v8 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale"), "localizedStringForLanguage:context:length:", LanguageWithRegion, 0, 2)}];
    [v8 addObject:TUIKeyboardTitleInLanguage()];
    [v8 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAF8], "localeWithLocaleIdentifier:", LanguageWithRegion), "localizedStringForLocaleIdentifier:", LanguageWithRegion)}];
    v9 = [KSKeyboardListController supportedBaseInputModesForLanguage:LanguageWithRegion];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          [TIInputModeGetComponentsFromIdentifier() valueForKey:@"kCFLocaleVariantCodeKey"];
          v14 = TUIKeyboardTitle();
          if ([v14 length])
          {
            [v8 addObject:v14];
          }

          v15 = TUIKeyboardTitleInLanguage();
          if ([v15 length])
          {
            [v8 addObject:v15];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v16)
    {
      v17 = *v25;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v24 + 1) + 8 * j);
          if ([a4 evaluateWithObject:v19])
          {
            *(v29 + 24) = 1;
            goto LABEL_25;
          }

          v20 = [v19 length];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __66__KSAddKeyboardLanguageListController_inputMode_matchesPredicate___block_invoke;
          v23[3] = &unk_2797FA3A0;
          v23[4] = a4;
          v23[5] = &v28;
          [v19 enumerateSubstringsInRange:0 options:v20 usingBlock:{3, v23}];
          if (v29[3])
          {
            goto LABEL_25;
          }
        }

        v16 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
    v6 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t __66__KSAddKeyboardLanguageListController_inputMode_matchesPredicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSAddKeyboardLanguageListController *)self generateSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (id)generateSpecifiers
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v4 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        if (([v9 isExtensionInputMode] & 1) == 0)
        {
          [v9 identifier];
          LanguageWithRegion = TIInputModeGetLanguageWithRegion();
          if (([v3 containsObject:LanguageWithRegion] & 1) == 0)
          {
            [v3 addObject:LanguageWithRegion];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v6);
  }

  v48 = [MEMORY[0x277CBEB58] set];
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [MEMORY[0x277CBEB18] array];
  v45 = [MEMORY[0x277CBEB38] dictionary];
  val = self;
  if ([(NSString *)[(KSAddKeyboardLanguageListController *)self searchText] length])
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF beginswith[cd] %@", -[KSAddKeyboardLanguageListController searchText](self, "searchText")];
  }

  else
  {
    v11 = 0;
  }

  v58 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  obj = UIKeyboardGetSupportedInputModes();
  v12 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    v46 = *MEMORY[0x277CBEC40];
    v42 = *MEMORY[0x277CBED50];
    v44 = *MEMORY[0x277D40170];
    v47 = *MEMORY[0x277D3FFB8];
    v43 = *MEMORY[0x277D3FE58];
    v39 = *MEMORY[0x277D3FE08];
    v38 = *MEMORY[0x277D3FDB8];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v55 + 1) + 8 * j);
        if ((!v11 || [(KSAddKeyboardLanguageListController *)val inputMode:*(*(&v55 + 1) + 8 * j) matchesPredicate:v11]) && (!_os_feature_enabled_impl() || (TIInputModeIsMultilingualOnly() & 1) == 0))
        {
          v17 = [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:v16];
          if (([v17 isExtensionInputMode] & 1) != 0 || objc_msgSend(+[KSKeyboardListController availableInputModesForLanguage:](KSKeyboardListController, "availableInputModesForLanguage:", v16), "count"))
          {
            if ([v17 isExtensionInputMode])
            {
              v18 = [objc_msgSend(v17 "containingBundle")];
              if (!v18)
              {
                continue;
              }

              v19 = v18;
              v20 = [v17 identifier];
              v21 = [objc_msgSend(v17 "containingBundle")];
              v22 = [objc_msgSend(v17 "containingBundle")];
              if (!v22)
              {
                v22 = [objc_msgSend(v17 "containingBundle")];
              }

              v23 = v22;
            }

            else
            {
              v21 = TIInputModeGetLanguageWithRegion();
              v23 = [KSKeyboardListController keyboardDisplayNameForIdentifier:v21];
              v19 = 0;
              v20 = v21;
            }

            if (![v48 member:v20])
            {
              [v48 addObject:v20];
              if (![v17 isExtensionInputMode] || (v24 = objc_msgSend(v45, "objectForKey:", objc_msgSend(objc_msgSend(v17, "containingBundle"), "bundlePath"))) == 0)
              {
                v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v23 target:val set:0 get:0 detail:0 cell:3 edit:0];
                [v24 setControllerLoadAction:sel_showAddSystemKeyboardSheet_];
                [v24 setProperty:v23 forKey:v44];
                [v24 setProperty:v21 forKey:v47];
                [v24 setProperty:objc_opt_class() forKey:v43];
              }

              if ([v17 isExtensionInputMode])
              {
                v25 = [v24 propertyForKey:@"TIKBAllIdentifiersKey"];
                if (!v25)
                {
                  v25 = [MEMORY[0x277CBEB18] array];
                  [v24 setProperty:v25 forKey:@"TIKBAllIdentifiersKey"];
                }

                [v25 addObject:v17];
                if (([objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")] & 1) == 0)
                {
                  v26 = [v24 propertyForKey:@"TIKBIdentifiersKey"];
                  if (!v26)
                  {
                    v26 = [MEMORY[0x277CBEB18] array];
                    [v24 setProperty:v26 forKey:@"TIKBIdentifiersKey"];
                  }

                  [v26 addObject:v17];
                  [v24 setProperty:v19 forKey:v39];
                  [v24 setProperty:MEMORY[0x277CBEC38] forKey:v38];
                  [v24 setControllerLoadAction:sel_showAddExtensionKeyboardSheet_];
                  [v45 setObject:v24 forKey:v19];
                }
              }

              else
              {
                if ([v3 containsObject:{objc_msgSend(v24, "propertyForKey:", v47)}])
                {
                  v27 = v40;
                }

                else
                {
                  v27 = v41;
                }

                [v27 addObject:v24];
              }
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v13);
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __57__KSAddKeyboardLanguageListController_generateSpecifiers__block_invoke;
  v54[3] = &unk_2797FA3C8;
  v54[4] = v3;
  [v40 sortUsingComparator:v54];
  [v41 sortUsingComparator:&__block_literal_global_10];
  v28 = [objc_msgSend(v45 "allValues")];
  v29 = [v40 count];
  v30 = [v28 count];
  v31 = [v41 count];
  v32 = [MEMORY[0x277CBEB18] array];
  if (v29)
  {
    [v32 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SUGGESTED_KEYBOARDS", &stru_28679E3A8, @"Keyboard"}];
  }

  [v32 addObjectsFromArray:v40];
  if (v30)
  {
    v33 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS", &stru_28679E3A8, @"Keyboard"}];
    [v32 addObject:v33];
    [(KSAddKeyboardLanguageListController *)val createAboutPrivacyControllerIfNeeded:v33];
  }

  else
  {
    objc_initWeak(&location, val);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__KSAddKeyboardLanguageListController_generateSpecifiers__block_invoke_3;
    block[3] = &unk_2797FA3F0;
    objc_copyWeak(&v52, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  [v32 addObjectsFromArray:v28];
  if (v31)
  {
    v34 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DEVICE_KEYBOARDS"];
    v35 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v34, &stru_28679E3A8, @"Keyboard"}];
  }

  else
  {
    v35 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  }

  [v32 addObject:v35];
  [v32 addObjectsFromArray:v41];
  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __57__KSAddKeyboardLanguageListController_generateSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x277D3FFB8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "indexOfObject:", objc_msgSend(a2, "propertyForKey:", *MEMORY[0x277D3FFB8]))}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "indexOfObject:", objc_msgSend(a3, "propertyForKey:", v5))}];

  return [v6 compare:v7];
}

uint64_t __57__KSAddKeyboardLanguageListController_generateSpecifiers__block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak setAboutPrivacyController:0];
}

- (void)createAboutPrivacyControllerIfNeeded:(id)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v5 = __76__KSAddKeyboardLanguageListController_createAboutPrivacyControllerIfNeeded___block_invoke;
  v6 = &unk_2797FA418;
  objc_copyWeak(&v8, &location);
  v7 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5(block);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __76__KSAddKeyboardLanguageListController_createAboutPrivacyControllerIfNeeded___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if ([Weak aboutPrivacyController])
  {
    v3 = *(a1 + 32);
    v4 = [Weak aboutPrivacyController];

    return [v4 setSpecifier:v3];
  }

  else
  {
    v6 = [[KSAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:*(a1 + 32) asHeader:1 inListController:Weak];

    return [Weak setAboutPrivacyController:v6];
  }
}

- (void)handleSoleInputModeAddition:(id)a3
{
  +[KSKeyboardListController setInputModes:](KSKeyboardListController, "setInputModes:", [objc_msgSend(objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")]);
  v4 = [-[KSAddKeyboardLanguageListController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {
    [v4 setNewKeyboardsAdded:1];
    [v4 reloadSpecifiers];
  }

  v5 = [(KSAddKeyboardLanguageListController *)self parentController];

  [v5 dismiss];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = [(KSAddKeyboardLanguageListController *)self aboutPrivacyController];

  [(KSAboutKeyboardPrivacyController *)v7 addPrivacyLinkViewIfNecessaryToHeaderView:a4 forSection:a5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = KSAddKeyboardLanguageListController;
  v6 = [(KSAddKeyboardLanguageListController *)&v9 tableView:a3 cellForRowAtIndexPath:?];
  v7 = [(KSAddKeyboardLanguageListController *)self specifierAtIndex:[(KSAddKeyboardLanguageListController *)self indexForIndexPath:a4]];
  [v6 setAccessibilityIdentifier:{objc_msgSend(v7, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
  return v6;
}

- (void)showAddSystemKeyboardSheet:(id)a3
{
  v5 = [a3 propertyForKey:*MEMORY[0x277D3FFB8]];
  v6 = [KSKeyboardListController supportedInputModesForLanguage:v5];
  if (!+[KSAddKeyboardController shouldShowAddKeyboardControllerForInputModes:](KSAddKeyboardController, "shouldShowAddKeyboardControllerForInputModes:", v6) && (v7 = +[KSKeyboardListController availableInputModesForLanguage:](KSKeyboardListController, "availableInputModesForLanguage:", v5), v8 = [v6 count], v8 == objc_msgSend(v7, "count")) && (v9 = objc_msgSend(v7, "firstObject")) != 0)
  {
    v10 = v9;
    if (UIKeyboardGetDefaultHardwareKeyboardForInputMode())
    {
      v10 = UIKeyboardInputModeWithNewHWLayout();
    }

    [(KSAddKeyboardLanguageListController *)self handleSoleInputModeAddition:v10];
  }

  else
  {
    v11 = objc_alloc_init(KSAddKeyboardController);
    [(KSAddKeyboardController *)v11 setParentController:self];
    [(KSAddKeyboardController *)v11 setSpecifier:a3];
    [a3 setTarget:self];

    [(KSAddKeyboardLanguageListController *)self showController:v11 animate:1];
  }
}

- (void)showAddExtensionKeyboardSheet:(id)a3
{
  v5 = objc_alloc_init(KSAddExtensionKeyboardController);
  [(KSAddExtensionKeyboardController *)v5 setBehavesAsModalForAddSheet:1];
  [(KSAddExtensionKeyboardController *)v5 setParentController:self];
  [(KSAddExtensionKeyboardController *)v5 setSpecifier:a3];
  [a3 setTarget:self];
  if ([-[KSAddExtensionKeyboardController specifiers](v5 "specifiers")])
  {

    [(KSAddKeyboardLanguageListController *)self showController:v5 animate:1];
  }

  else
  {
    v6 = [objc_msgSend(objc_msgSend(a3 propertyForKey:{@"TIKBIdentifiersKey", "firstObject"), "identifier"}];

    [(KSAddKeyboardLanguageListController *)self handleSoleInputModeAddition:v6];
  }
}

- (void)cancelButtonTapped
{
  v2 = [(KSAddKeyboardLanguageListController *)self parentController];

  [v2 dismiss];
}

- (void)dismissForDone
{
  v3 = [-[KSAddKeyboardLanguageListController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {
    [v3 setNewKeyboardsAdded:1];
    [v3 reloadSpecifiers];
  }

  v4 = [(KSAddKeyboardLanguageListController *)self parentController];

  [v4 dismiss];
}

- (void)emitNavigationEventForAddKeyboardLanguageListController
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/KEYBOARDS/AddNewKeyboard"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:v6 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v11[0] = v4;
  v11[1] = v7;
  v12 = [v8 initWithKey:@"ADD_NEW_KEYBOARD_SHORT" table:@"Keyboard" locale:v9 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
  -[KSAddKeyboardLanguageListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", v12, [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3], v3);
  v10 = *MEMORY[0x277D85DE8];
}

@end
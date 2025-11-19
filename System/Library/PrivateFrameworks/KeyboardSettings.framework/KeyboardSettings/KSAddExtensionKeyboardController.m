@interface KSAddExtensionKeyboardController
+ (id)specifiersForExtensionInputMode:(id)a3 parentSpecifier:(id)a4;
- (id)fetchInputModeEnabled:(id)a3;
- (id)newSpecifiers;
- (id)selectedInputModes;
- (id)specifiers;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)doneButtonTapped;
- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)a3;
- (void)setNetworkPolicyValue:(id)a3;
- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4;
- (void)trackExtensionsContainedInApp;
- (void)updateDoneButton;
- (void)updateNetworkPolicyState;
- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)a3;
@end

@implementation KSAddExtensionKeyboardController

+ (id)specifiersForExtensionInputMode:(id)a3 parentSpecifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (![a3 isExtensionInputMode])
  {
    goto LABEL_20;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  [v6 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", objc_msgSend(a3, "safe__extendedDisplayName"))}];
  v7 = [objc_msgSend(a3 "extension")];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:{objc_msgSend(objc_msgSend(v7, "bundleURL"), "URLByAppendingPathComponent:", @"Settings.bundle"}];
  }

  else
  {
    v8 = 0;
  }

  [a4 setProperty:v8 forKey:*MEMORY[0x277D3FD98]];
  v9 = *MEMORY[0x277D3FD90];
  if (![a4 propertyForKey:*MEMORY[0x277D3FD90]])
  {
    [a4 setProperty:objc_msgSend(a4 forKey:{"propertyForKey:", *MEMORY[0x277D3FFB8]), v9}];
  }

  v10 = [v8 pathForResource:@"Root" ofType:@"plist"];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
    v12 = [objc_msgSend(v11 objectForKey:{*MEMORY[0x277D40120]), "stringByDeletingPathExtension"}];
    v13 = [v11 objectForKey:*MEMORY[0x277D40108]];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v15 = MEMORY[0x277CBEBF8];
    if (v14)
    {
      v16 = v14;
      v17 = 0;
      v18 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = [MEMORY[0x277D3F950] specifiersFromDictionary:*(*(&v23 + 1) + 8 * i) stringsTable:v12 parentSpecifier:a4 target:0];
          if (v20)
          {
            [v6 addObjectsFromArray:v20];
            v17 = 1;
          }
        }

        v16 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
      if (v17)
      {
        v15 = v6;
      }
    }
  }

  else
  {
LABEL_20:
    v15 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = KSAddExtensionKeyboardController;
  [(KSAddExtensionKeyboardController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSAddExtensionKeyboardController *)self newSpecifiers];
    *(&self->super.super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)a3
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "extension")])
  {
    -[PSAppListController setSystemPolicy:](self, "setSystemPolicy:", [objc_alloc(MEMORY[0x277D3FB30]) initWithBundleIdentifier:{objc_msgSend(objc_msgSend(a3, "containingBundle"), "bundleIdentifier")}]);
    v5 = [(PSSystemPolicyForApp *)[(PSAppListController *)self systemPolicy] specifiersForPolicyOptions:0x20000 force:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__KSAddExtensionKeyboardController_setNetworkAccessSpecifierForKeyboardInputMode___block_invoke;
    v6[3] = &unk_2797F9E78;
    v6[4] = self;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

uint64_t __82__KSAddExtensionKeyboardController_setNetworkAccessSpecifierForKeyboardInputMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 target];
  if (result)
  {
    [a2 setTarget:*(a1 + 32)];
    result = [*(a1 + 32) setNetworkAccessSpecifier:a2];
    *a4 = 1;
  }

  return result;
}

- (id)newSpecifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277CBEB18] array];
  v18 = self;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [-[KSAddExtensionKeyboardController specifier](self "specifier")];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v7 = *v20;
    v8 = *MEMORY[0x277D3FFB8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v10 target:"displayName") set:v18 get:sel_toggleInputMode_specifier_ detail:sel_fetchInputModeEnabled_ cell:0 edit:{6, 0}];
        [v11 setProperty:objc_msgSend(v10 forKey:{"identifier"), v8}];
        [v3 addObject:v11];
        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "extension")];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  -[KSAddExtensionKeyboardController setModuleSpecifiers:](v18, "setModuleSpecifiers:", [v3 sortedArrayUsingComparator:&__block_literal_global_0]);
  v12 = [(NSArray *)[(KSAddExtensionKeyboardController *)v18 moduleSpecifiers] count];
  v18->_didRequestOpenAccess = v6;
  if (![obj count] || -[KSAddExtensionKeyboardController behavesAsModalForAddSheet](v18, "behavesAsModalForAddSheet") || ((v6 ^ 1) & 1) != 0)
  {
    v13 = v16;
    if (v12 >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    -[KSAddExtensionKeyboardController setNetworkAccessSpecifierForKeyboardInputMode:](v18, "setNetworkAccessSpecifierForKeyboardInputMode:", [obj firstObject]);
    v13 = v16;
    [v16 addObject:{-[KSAddExtensionKeyboardController networkAccessSpecifier](v18, "networkAccessSpecifier")}];
    if (v12 >= 2)
    {
      [v16 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", &stru_28679E3A8)}];
LABEL_19:
      [v13 addObjectsFromArray:{-[KSAddExtensionKeyboardController moduleSpecifiers](v18, "moduleSpecifiers")}];
    }
  }

  [(KSAddExtensionKeyboardController *)v18 trackExtensionsContainedInApp];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __49__KSAddExtensionKeyboardController_newSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 localizedStandardCompare:v5];
}

- (void)trackExtensionsContainedInApp
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6FAB0];
  if (TIStatisticShouldSample())
  {
    v4 = [-[KSAddExtensionKeyboardController specifier](self "specifier")];
    v5 = *MEMORY[0x277D6FA98];
    TIStatisticGetKey();
    [v4 count];
    TIStatisticScalarSetValue();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v4);
          }

          if ([objc_msgSend(objc_opt_class() specifiersForExtensionInputMode:*(*(&v13 + 1) + 8 * i) parentSpecifier:{-[KSAddExtensionKeyboardController specifier](self, "specifier")), "count"}])
          {
            ++v8;
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = *MEMORY[0x277D6FAB8];
    TIStatisticGetKey();
    TIStatisticScalarSetValue();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4
{
  if ([-[PSSpecifier name](-[KSAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")])
  {
    v7 = [-[PSSpecifier identifier](-[KSAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
    v8 = v7;
    if (!self->_hasShownWarning && v7 && [a3 BOOLValue])
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __66__KSAddExtensionKeyboardController_setPrivacyAccess_forSpecifier___block_invoke;
      v23[3] = &unk_2797F9EA0;
      v23[4] = self;
      v9 = MEMORY[0x277CCACA8];
      v10 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ADD_THIRD_PARTY_KEYBOARD_WARNING_TITLE", &stru_28679E3A8, @"Keyboard"}];
      v11 = [(KSAddExtensionKeyboardController *)self specifier];
      v12 = [v9 stringWithFormat:v10, objc_msgSend(v11, "propertyForKey:", *MEMORY[0x277D40170]), v23[0], 3221225472, __66__KSAddExtensionKeyboardController_setPrivacyAccess_forSpecifier___block_invoke, &unk_2797F9EA0, self];
      v13 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ADD_THIRD_PARTY_KEYBOARD_WARNING_MESSAGE", &stru_28679E3A8, @"Keyboard"}];
      v14 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ADD_THIRD_PARTY_KEYBOARD_WARNING_CANCEL", &stru_28679E3A8, @"Keyboard"}];
      v15 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ADD_THIRD_PARTY_KEYBOARD_WARNING_ACTION", &stru_28679E3A8, @"Keyboard"}];
      -[KSAddExtensionKeyboardController setNetworkAccessAlertController:](self, "setNetworkAccessAlertController:", [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v13 preferredStyle:1]);
      -[KSAddExtensionKeyboardController setNetworkAccessAlertActionDefault:](self, "setNetworkAccessAlertActionDefault:", [MEMORY[0x277D750F8] actionWithTitle:v15 style:0 handler:v23]);
      -[KSAddExtensionKeyboardController setNetworkAccessAlertActionCancel:](self, "setNetworkAccessAlertActionCancel:", [MEMORY[0x277D750F8] actionWithTitle:v14 style:1 handler:v23]);
      [(UIAlertController *)[(KSAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(KSAddExtensionKeyboardController *)self networkAccessAlertActionDefault]];
      [(UIAlertController *)[(KSAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(KSAddExtensionKeyboardController *)self networkAccessAlertActionCancel]];
      [(KSAddExtensionKeyboardController *)self setSpecifierForWarning:a4];
      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 addObserver:self selector:sel_didEnterBackground_ name:*MEMORY[0x277D76768] object:0];
      if ([-[KSAddExtensionKeyboardController view](self "view")])
      {
        v17 = self;
      }

      else
      {
        v17 = [objc_msgSend(MEMORY[0x277D75DA0] "keyWindow")];
      }

      v22 = [(KSAddExtensionKeyboardController *)v17 view];
      [objc_msgSend(MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:{v22), "presentViewController:animated:completion:", -[KSAddExtensionKeyboardController networkAccessAlertController](self, "networkAccessAlertController"), 1, 0}];
      return;
    }

    v19 = *MEMORY[0x277D40148];
    [objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D40148]), "setValue:", a3}];
    [objc_msgSend(a4 propertyForKey:{v19), "reloadWithSpecifier:animated:", a4, 1}];
    if (v8)
    {
      [(KSAddExtensionKeyboardController *)self setNetworkPolicyValue:a3];
      self->_didGrantOpenAccess = [a3 BOOLValue];
      return;
    }
  }

  else
  {
    v18 = *MEMORY[0x277D40148];
    [objc_msgSend(a4 propertyForKey:{*MEMORY[0x277D40148]), "setValue:", a3}];
    [objc_msgSend(a4 propertyForKey:{v18), "reloadWithSpecifier:animated:", a4, 1}];
  }

  v20 = [(PSAppListController *)self systemPolicy];
  v21 = *(a4 + *MEMORY[0x277D3FCB0]);

  [(PSSystemPolicyForApp *)v20 performSelector:v21 withObject:a3 withObject:a4];
}

uint64_t __66__KSAddExtensionKeyboardController_setPrivacyAccess_forSpecifier___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) specifierForWarning];
  if (result)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D76768] object:0];
    *(*(a1 + 32) + 1480) = [*(a1 + 32) networkAccessAlertActionDefault] == a2;
    [*(a1 + 32) setPrivacyAccess:objc_msgSend(MEMORY[0x277CCABB0] forSpecifier:{"numberWithBool:"), objc_msgSend(*(a1 + 32), "specifierForWarning")}];
    [objc_msgSend(*(a1 + 32) "networkAccessAlertController")];
    [*(a1 + 32) setSpecifierForWarning:0];
    [*(a1 + 32) setNetworkAccessAlertController:0];
    [*(a1 + 32) setNetworkAccessAlertActionCancel:0];
    v6 = *(a1 + 32);

    return [v6 setNetworkAccessAlertActionDefault:0];
  }

  return result;
}

- (void)didEnterBackground:(id)a3
{
  if ([(KSAddExtensionKeyboardController *)self specifierForWarning])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D76768] object:0];
    [(UIAlertController *)[(KSAddExtensionKeyboardController *)self networkAccessAlertController] dismissViewControllerAnimated:0 completion:0];
    [(KSAddExtensionKeyboardController *)self setSpecifierForWarning:0];
    [(KSAddExtensionKeyboardController *)self setNetworkAccessAlertController:0];
    [(KSAddExtensionKeyboardController *)self setNetworkAccessAlertActionCancel:0];
    [(KSAddExtensionKeyboardController *)self setNetworkAccessAlertActionDefault:0];
  }

  v5 = [(KSAddExtensionKeyboardController *)self networkAccessSpecifier];
  v6 = [(PSSpecifier *)v5 propertyForKey:*MEMORY[0x277D40148]];
  v7 = [(KSAddExtensionKeyboardController *)self networkAccessSpecifier];

  [v6 reloadWithSpecifier:v7 animated:1];
}

- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)a3
{
  v5 = [(KSAddExtensionKeyboardController *)self networkAccessSpecifier];
  if ([(PSSpecifier *)v5 propertyForKey:*MEMORY[0x277D40148]]== a3)
  {

    [(KSAddExtensionKeyboardController *)self updateNetworkPolicyState];
  }
}

- (void)updateNetworkPolicyState
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(KSAddExtensionKeyboardController *)self behavesAsModalForAddSheet])
  {
    LOBYTE(v3) = 0;
    goto LABEL_16;
  }

  cf = CFBundleCreate(0, [objc_msgSend(objc_msgSend(objc_msgSend(-[KSAddExtensionKeyboardController specifier](self "specifier")]);
  v4 = TCCAccessCopyInformationForBundle();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v3 = 0;
    v7 = *v19;
    v8 = MEMORY[0x277D6C0E8];
    v9 = MEMORY[0x277D6C188];
    v10 = MEMORY[0x277D6C0D0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(v12 objectForKey:{*v8), "isEqualToString:", *v9}])
        {
          v3 |= [objc_msgSend(v12 objectForKey:{*v10), "BOOLValue"}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  LOBYTE(v3) = 0;
  if (v4)
  {
LABEL_13:
    CFRelease(v4);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  v13 = [(KSAddExtensionKeyboardController *)self networkAccessSpecifier];
  v14 = *MEMORY[0x277D40148];
  v15 = [(PSSpecifier *)v13 propertyForKey:*MEMORY[0x277D40148]];
  [v15 setValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v3 & 1)}];
  [-[PSSpecifier propertyForKey:](-[KSAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setNetworkPolicyValue:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [-[KSAddExtensionKeyboardController specifier](self "specifier")];
  v5 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(v4 "firstObject")]);
  v6 = *MEMORY[0x277D6C188];
  [a3 BOOLValue];
  TCCAccessSetForBundle();
  CFRelease(v5);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v7 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(objc_msgSend(v12 "extension")])
        {
          v13 = a3;
        }

        else
        {
          v13 = v10;
        }

        v14 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(v12 "extension")]);
        v15 = *MEMORY[0x277D6C188];
        [v13 BOOLValue];
        TCCAccessSetForBundle();
        CFRelease(v14);
        [objc_msgSend(v12 "extension")];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)fetchInputModeEnabled:(id)a3
{
  v3 = [a3 propertyForKey:*MEMORY[0x277D40148]];

  return [v3 controlValue];
}

- (id)selectedInputModes
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(NSArray *)[(KSAddExtensionKeyboardController *)self moduleSpecifiers] count]> 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(KSAddExtensionKeyboardController *)self moduleSpecifiers];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = *MEMORY[0x277D40148];
      v10 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v12 propertyForKey:{v9), "controlValue"), "BOOLValue"}])
          {
            [v3 addObject:{objc_msgSend(v12, "propertyForKey:", v10)}];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [(NSArray *)[(KSAddExtensionKeyboardController *)self moduleSpecifiers] firstObject];
    [v3 addObject:{objc_msgSend(v4, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addCheckedInputModes
{
  v3 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  v4 = [(KSAddExtensionKeyboardController *)self selectedInputModes];
  if ([v4 count])
  {
    +[KSKeyboardListController setInputModes:](KSKeyboardListController, "setInputModes:", [v3 arrayByAddingObjectsFromArray:v4]);
    v5 = *MEMORY[0x277D6FAB0];
    if (TIStatisticShouldSample())
    {
      if (self->_didRequestOpenAccess)
      {
        v6 = *MEMORY[0x277D6FAA8];
        TIStatisticGetKey();
        TIStatisticScalarIncrement();
        if (self->_didGrantOpenAccess)
        {
          v7 = *MEMORY[0x277D6FAA0];
          TIStatisticGetKey();

          TIStatisticScalarIncrement();
        }
      }
    }
  }
}

- (void)updateDoneButton
{
  if ([(KSAddExtensionKeyboardController *)self behavesAsModalForAddSheet])
  {
    v3 = [-[KSAddExtensionKeyboardController selectedInputModes](self "selectedInputModes")] != 0;
    v4 = [-[KSAddExtensionKeyboardController navigationItem](self "navigationItem")];

    [v4 setEnabled:v3];
  }
}

- (void)cancelButtonTapped
{
  v2 = [(KSAddExtensionKeyboardController *)self parentController];

  [v2 dismiss];
}

- (void)doneButtonTapped
{
  [(KSAddExtensionKeyboardController *)self addCheckedInputModes];
  v3 = [(KSAddExtensionKeyboardController *)self parentController];

  [v3 dismissForDone];
}

@end
@interface KSKeyboardExtensionController
+ (id)keyboardsForBundleID:(id)d;
- (id)isKeyboardEnabled:(id)enabled;
- (id)specifiers;
- (void)dealloc;
- (void)setKeyboardEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation KSKeyboardExtensionController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSKeyboardExtensionController;
  [(KSKeyboardExtensionController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSKeyboardExtensionController;
  [(KSKeyboardExtensionController *)&v3 dealloc];
}

- (id)isKeyboardEnabled:(id)enabled
{
  v4 = +[KSKeyboardListController inputModes];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v4 containsObject:{objc_msgSend(enabled, "propertyForKey:", *MEMORY[0x277D3FFB8])}];

  return [v5 numberWithBool:v6];
}

- (void)setKeyboardEnabled:(id)enabled specifier:(id)specifier
{
  v6 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v7 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  v8 = [v7 count];
  if ([enabled BOOLValue])
  {
    if (([v7 containsObject:v6] & 1) == 0)
    {
      [v7 addObject:v6];
    }
  }

  else
  {
    [v7 removeObject:v6];
  }

  if (v8 != [v7 count])
  {
    v9 = [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    if ([v7 count])
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    [v9 saveInputModes:v10];
  }

  if ([(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)self addExtensionKeyboardController] networkAccessSpecifier])
  {
    v11 = [-[KSKeyboardExtensionController specifier](self "specifier")];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__KSKeyboardExtensionController_setKeyboardEnabled_specifier___block_invoke;
    v17[3] = &unk_2797FA0C8;
    v17[4] = v7;
    v12 = [v11 indexOfObjectPassingTest:v17];
    v13 = *MEMORY[0x277D3FC48];
    v14 = *(&self->super.super.super.super.super.isa + v13);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__KSKeyboardExtensionController_setKeyboardEnabled_specifier___block_invoke_2;
    v16[3] = &unk_2797FA0F0;
    v16[4] = self;
    v15 = [v14 indexOfObjectPassingTest:v16];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12 == 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        -[KSKeyboardExtensionController removeSpecifier:animated:](self, "removeSpecifier:animated:", [*(&self->super.super.super.super.super.isa + v13) objectAtIndexedSubscript:v15], 1);
      }
    }

    else
    {
      [(KSKeyboardExtensionController *)self insertSpecifier:[(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)self addExtensionKeyboardController] networkAccessSpecifier] afterSpecifier:[(KSKeyboardExtensionController *)self lastInputModeSpecifier] animated:1];
      [(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)self addExtensionKeyboardController] updateNetworkPolicyState];
    }
  }
}

uint64_t __62__KSKeyboardExtensionController_setKeyboardEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];

  return [v2 containsObject:v3];
}

uint64_t __62__KSKeyboardExtensionController_setKeyboardEnabled_specifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) "addExtensionKeyboardController")];

  return [v3 isEqualToString:v4];
}

- (id)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v25)
  {
    v21 = *MEMORY[0x277D3FC48];
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    -[KSKeyboardExtensionController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARDS_SHORT", &stru_28679E3A8, @"Keyboard"}]);
    v25 = v3;
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v3 addObject:?];
    v4 = objc_opt_class();
    selfCopy = self;
    specifier = [(KSKeyboardExtensionController *)self specifier];
    v6 = [v4 keyboardsForBundleID:{objc_msgSend(specifier, "propertyForKey:", *MEMORY[0x277D3FD90])}];
    v7 = +[KSKeyboardListController inputModes];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v27;
      v12 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v14 target:"displayName") set:selfCopy get:sel_setKeyboardEnabled_specifier_ detail:sel_isKeyboardEnabled_ cell:0 edit:{6, 0}];
          [v15 setProperty:objc_msgSend(v14 forKey:{"identifier"), v12}];
          [v15 setProperty:emptyGroupSpecifier forKey:@"GroupHeader"];
          [v25 addObject:v15];
          v10 |= [v7 containsObject:{objc_msgSend(v14, "identifier")}];
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    -[KSKeyboardExtensionController setLastInputModeSpecifier:](selfCopy, "setLastInputModeSpecifier:", [v25 lastObject]);
    firstObject = [obj firstObject];
    [-[KSKeyboardExtensionController specifier](selfCopy "specifier")];
    [-[KSKeyboardExtensionController specifier](selfCopy "specifier")];
    specifier2 = [(KSKeyboardExtensionController *)selfCopy specifier];
    v18 = +[KSKeyboardListController keyboardDisplayNameForIdentifier:](KSKeyboardListController, "keyboardDisplayNameForIdentifier:", [firstObject identifier]);
    [specifier2 setProperty:v18 forKey:*MEMORY[0x277D40170]];
    [(KSKeyboardExtensionController *)selfCopy setAddExtensionKeyboardController:objc_alloc_init(KSAddExtensionKeyboardController)];
    [(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)selfCopy addExtensionKeyboardController] setSpecifier:[(KSKeyboardExtensionController *)selfCopy specifier]];
    [(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)selfCopy addExtensionKeyboardController] setNetworkAccessSpecifierForKeyboardInputMode:firstObject];
    if ((v10 & 1) != 0 && [(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)selfCopy addExtensionKeyboardController] networkAccessSpecifier])
    {
      [v25 addObject:{-[KSAddExtensionKeyboardController networkAccessSpecifier](-[KSKeyboardExtensionController addExtensionKeyboardController](selfCopy, "addExtensionKeyboardController"), "networkAccessSpecifier")}];
    }

    if ([(KSKeyboardExtensionController *)selfCopy aboutPrivacyController])
    {
      [(KSAboutKeyboardPrivacyController *)[(KSKeyboardExtensionController *)selfCopy aboutPrivacyController] setSpecifier:emptyGroupSpecifier];
    }

    else
    {
      [(KSKeyboardExtensionController *)selfCopy setAboutPrivacyController:[[KSAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:emptyGroupSpecifier asHeader:0 inListController:selfCopy]];
    }

    [v25 addObjectsFromArray:{+[KSAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](KSAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", objc_msgSend(obj, "firstObject"), -[KSKeyboardExtensionController specifier](selfCopy, "specifier"))}];
    *(&selfCopy->super.super.super.super.super.isa + v21) = v25;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  [(KSAddExtensionKeyboardController *)[(KSKeyboardExtensionController *)self addExtensionKeyboardController] updateNetworkPolicyState];
  aboutPrivacyController = [(KSKeyboardExtensionController *)self aboutPrivacyController];

  [(KSAboutKeyboardPrivacyController *)aboutPrivacyController addPrivacyLinkViewIfNecessaryToHeaderView:footerView forSection:section];
}

+ (id)keyboardsForBundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sharedInputModeController = [objc_msgSend(MEMORY[0x277D75688] sharedInputModeController];
  v6 = [sharedInputModeController countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sharedInputModeController);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([d isEqualToString:{objc_msgSend(objc_msgSend(v10, "containingBundle"), "bundleIdentifier")}])
        {
          [array addObject:v10];
        }
      }

      v7 = [sharedInputModeController countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return array;
}

@end
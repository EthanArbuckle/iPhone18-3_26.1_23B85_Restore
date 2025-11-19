@interface KSKeyboardSettingsBundleController
- (id)specifiersWithSpecifier:(id)a3;
- (void)dealloc;
@end

@implementation KSKeyboardSettingsBundleController

- (id)specifiersWithSpecifier:(id)a3
{
  if (!self->_specifier)
  {
    v5 = *MEMORY[0x277D3FFB8];
    if ([objc_msgSend(a3 propertyForKey:{*MEMORY[0x277D3FFB8]), "isEqualToString:", @"General"}])
    {
      v6 = MEMORY[0x277D3FAD8];
      v7 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Keyboard", &stru_28679E3A8, @"Keyboard"}];
      specifier = [v6 preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
      self->_specifier = specifier;
      v9 = @"Keyboard";
    }

    else
    {
      if ([objc_msgSend(a3 propertyForKey:{v5), "isEqualToString:", @"Keyboard"}])
      {
        v10 = MEMORY[0x277D3FAD8];
        v11 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARDS", &stru_28679E3A8, @"Keyboard"}];
        specifier = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:sel_keyboardsValue_ detail:objc_opt_class() cell:2 edit:0];
        self->_specifier = specifier;
      }

      else
      {
        v12 = *MEMORY[0x277D3FD90];
        v13 = [a3 propertyForKey:*MEMORY[0x277D3FD90]];
        if (![+[KSKeyboardExtensionController keyboardsForBundleID:](KSKeyboardExtensionController keyboardsForBundleID:{v13), "count"}])
        {
          return MEMORY[0x277CBEBF8];
        }

        v14 = MEMORY[0x277D3FAD8];
        v15 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARDS", &stru_28679E3A8, @"Keyboard"}];
        v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        self->_specifier = v16;
        [(PSSpecifier *)v16 setProperty:v13 forKey:v12];
        v17 = [MEMORY[0x277D755B8] imageNamed:@"KeyboardSettings" inBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];
        specifier = self->_specifier;
        if (v17)
        {
          [(PSSpecifier *)specifier setProperty:v17 forKey:*MEMORY[0x277D3FFC0]];
          specifier = self->_specifier;
        }
      }

      v9 = @"KEYBOARDS";
    }

    [(PSSpecifier *)specifier setProperty:v9 forKey:v5];
  }

  v18 = MEMORY[0x277CBEA60];
  v19 = self->_specifier;

  return [v18 arrayWithObject:v19];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSKeyboardSettingsBundleController;
  [(KSKeyboardSettingsBundleController *)&v3 dealloc];
}

@end
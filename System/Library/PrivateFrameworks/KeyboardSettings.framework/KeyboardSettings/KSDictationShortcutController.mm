@interface KSDictationShortcutController
+ (id)attributedTitleForDictationShortcutValue:(int64_t)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updatePreferenceForParent;
@end

@implementation KSDictationShortcutController

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_SHORTCUT_EXPLANATION", &stru_28679E3A8, @"Dictation"}];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v3 addObject:v5];
    v6 = [(KSDictationShortcutController *)self specifier];
    [v6 setProperty:&unk_2867A4E48 forKey:*MEMORY[0x277D3FEF0]];
    v7 = [objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
    if (v7)
    {
      v8 = v7;
      v9 = [(KSDictationShortcutController *)self specifier];
      v10 = *MEMORY[0x277D401A8];
      [v9 setProperty:v8 forKey:*MEMORY[0x277D401A8]];
    }

    else
    {
      v10 = *MEMORY[0x277D401A8];
    }

    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Control" cell:self edit:{0, 0, 0, 3, 0}];
    v12 = *MEMORY[0x277D40170];
    [v11 setProperty:@"control" forKey:*MEMORY[0x277D40170]];
    [v11 setProperty:&unk_2867A4E48 forKey:v10];
    [v3 addObject:v11];
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Command" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
    [v13 setProperty:@"command" forKey:v12];
    [v13 setProperty:&unk_2867A4E60 forKey:v10];
    [v3 addObject:v13];
    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"NO_SHORTCUT" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
    [v14 setProperty:@"noshortcut" forKey:v12];
    [v14 setProperty:&unk_2867A4E78 forKey:v10];
    [v3 addObject:v14];
    *(&self->super.super.super.super.super.isa + v2) = v3;
  }

  return v3;
}

+ (id)attributedTitleForDictationShortcutValue:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = @"noshortcut";
  v6 = @"NO_SHORTCUT";
  if (a3 == 1)
  {
    v6 = @"Command";
    v5 = @"command";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Control";
  }

  if (a3)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"control";
  }

  v9 = [v4 localizedStringForKey:v7 value:&stru_28679E3A8 table:@"Keyboard"];

  return [KSKeyboardListController attributedTitleForSymbolName:v8 cellTitle:v9];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = KSDictationShortcutController;
  v6 = [(KSDictationShortcutController *)&v14 tableView:a3 cellForRowAtIndexPath:?];
  v7 = [(KSDictationShortcutController *)self specifierAtIndexPath:a4];
  v8 = [v7 propertyForKey:*MEMORY[0x277D40170]];
  if (v8)
  {
    [objc_msgSend(v6 "titleLabel")];
  }

  else
  {
    [objc_msgSend(v6 "titleLabel")];
  }

  v9 = [(KSDictationShortcutController *)self specifier];
  v10 = *MEMORY[0x277D401A8];
  v11 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
  if (!v11)
  {
    v12 = [(KSDictationShortcutController *)self specifier];
    v11 = [v12 propertyForKey:*MEMORY[0x277D3FEF0]];
  }

  [v6 setChecked:{objc_msgSend(objc_msgSend(v7, "propertyForKey:", v10), "isEqualToNumber:", v11)}];
  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = [(KSDictationShortcutController *)self specifierAtIndexPath:a4];
  v8 = *MEMORY[0x277D401A8];
  v9 = [v7 propertyForKey:*MEMORY[0x277D401A8]];
  [-[KSDictationShortcutController specifier](self "specifier")];
  [(KSDictationShortcutController *)self setPreferenceValue:v9 specifier:[(KSDictationShortcutController *)self specifier]];
  [objc_msgSend(MEMORY[0x277D6F470] "sharedPreferencesController")];
  [(KSDictationShortcutController *)self reloadSpecifiers];
  [(KSDictationShortcutController *)self updatePreferenceForParent];

  [a3 deselectRowAtIndexPath:a4 animated:1];
}

- (void)updatePreferenceForParent
{
  v2 = [(KSDictationShortcutController *)self parentController];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

@end
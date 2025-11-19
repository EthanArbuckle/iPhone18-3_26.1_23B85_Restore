@interface KSFuzzyPinyinController
- (NSArray)fuzzyPinyinPairSpecifiers;
- (id)keyboardPreferenceValue:(id)a3;
- (id)readFuzzyPinyinPairs;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEventForFuzzyPinyinController;
- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation KSFuzzyPinyinController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSFuzzyPinyinController;
  [(KSFuzzyPinyinController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSFuzzyPinyinController;
  [(KSFuzzyPinyinController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (NSArray)fuzzyPinyinPairSpecifiers
{
  v31 = *MEMORY[0x277D85DE8];
  fuzzyPinyinPairSpecifiers = self->_fuzzyPinyinPairSpecifiers;
  if (!fuzzyPinyinPairSpecifiers)
  {
    [(KSFuzzyPinyinController *)self setFuzzyPinyinPairs:[(KSFuzzyPinyinController *)self readFuzzyPinyinPairs]];
    v2 = [MEMORY[0x277D6F338] validFuzzyPinyinPairs];
    fuzzyPinyinPairSpecifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0x277CCA000uLL;
      v6 = *v27;
      v23 = *MEMORY[0x277D3FFB8];
      v22 = *MEMORY[0x277D3FFF0];
      v7 = 0x2797F9000uLL;
      v8 = *MEMORY[0x277D3FE58];
      v20 = *MEMORY[0x277D3FE58];
      v21 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = *(v7 + 1560);
          v12 = [objc_msgSend(*(v5 + 2264) bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"FUZZY_PINYIN_PAIR_FORMAT", &stru_28679E3A8, @"Keyboard"}];
          if ([v10 count] != 2)
          {
            [KSFuzzyPinyinController fuzzyPinyinPairSpecifiers];
          }

          if ([v10 count] == 2)
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:v12, objc_msgSend(v10, "objectAtIndex:", 0), objc_msgSend(v10, "objectAtIndex:", 1)];
            v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];
            v7 = 0x2797F9000;
            [v14 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%@↔︎%@", objc_msgSend(v10, "objectAtIndexedSubscript:", 0), objc_msgSend(v10, "objectAtIndexedSubscript:", 1)), v23}];
            [v14 setProperty:v10 forKey:@"TISpecifierKeyFuzzyPinyinPair"];
            [v14 setProperty:&unk_2867A5028 forKey:v22];
            v15 = MEMORY[0x277CCABB0];
            v16 = [(NSMutableSet *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairs] containsObject:v10];
            v17 = v15;
            v5 = 0x277CCA000;
            [v14 setProperty:objc_msgSend(v17 forKey:{"numberWithBool:", v16), v21}];
            [v14 setProperty:objc_opt_class() forKey:v20];
            [(NSArray *)fuzzyPinyinPairSpecifiers addObject:v14];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v4);
    }

    self->_fuzzyPinyinPairSpecifiers = fuzzyPinyinPairSpecifiers;
  }

  v18 = *MEMORY[0x277D85DE8];
  return fuzzyPinyinPairSpecifiers;
}

- (id)readFuzzyPinyinPairs
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:*MEMORY[0x277D6F628]];
  v4 = [MEMORY[0x277D6F338] validFuzzyPinyinPairs];
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          if ([v4 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = [MEMORY[0x277D6F338] defaultFuzzyPinyinPairs];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v5 addObject:*(*(&v18 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)keyboardPreferenceValue:(id)a3
{
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F630];

  return [v3 valueForPreferenceKey:v4];
}

- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:{@"FUZZY_PINYIN_PAIRS_GROUP", a4}];
  v7 = [a3 BOOLValue];
  v8 = [(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers];
  if (v7)
  {
    [(KSFuzzyPinyinController *)self insertContiguousSpecifiers:v8 afterSpecifier:v6 animated:1];
  }

  else
  {
    [(KSFuzzyPinyinController *)self removeContiguousSpecifiers:v8 animated:1];
    [(KSFuzzyPinyinController *)self setFuzzyPinyinPairSpecifiers:0];
  }

  v9 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v10 = *MEMORY[0x277D6F630];

  [v9 setValue:a3 forPreferenceKey:v10];
}

- (id)specifiers
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    [v5 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithID:", @"FUZZY_PINYIN_GROUP"}];
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"FUZZY_PINYIN_OPTION" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setKeyboardPreferenceValue_forSpecifier_, sel_keyboardPreferenceValue_, 0, 6, 0}];
    v7 = *MEMORY[0x277D3FEF0];
    v18[0] = *MEMORY[0x277D3FEF8];
    v18[1] = v7;
    v19[0] = @"com.apple.InputModePreferences";
    v19[1] = @"0";
    v8 = *MEMORY[0x277D3FFF0];
    v18[2] = *MEMORY[0x277D3FFB8];
    v18[3] = v8;
    v19[2] = @"FuzzyPinyin";
    v19[3] = @"FuzzyPinyin";
    [v6 setProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 4)}];
    [v5 addObject:v6];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FUZZY_PINYIN_PAIRS_GROUP"];
    [v5 addObject:v9];
    v10 = [v5 indexOfObject:v9];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [MEMORY[0x277D6F470] sharedPreferencesController];
      if ([v12 BOOLForPreferenceKey:*MEMORY[0x277D6F630]])
      {
        v13 = v11 + 1;
        v14 = [MEMORY[0x277CCAB58] indexSetWithIndex:v11 + 1];
        v15 = [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count];
        if (v15)
        {
          v16 = v15;
          do
          {
            [v14 addIndex:v13++];
            --v16;
          }

          while (v16);
        }

        [v5 insertObjects:-[KSFuzzyPinyinController fuzzyPinyinPairSpecifiers](self atIndexes:{"fuzzyPinyinPairSpecifiers"), v14}];
      }
    }

    result = v5;
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17.receiver = self;
  v17.super_class = KSFuzzyPinyinController;
  [KSFuzzyPinyinController tableView:sel_tableView_didSelectRowAtIndexPath_ didSelectRowAtIndexPath:?];
  if ([a4 section] == 1)
  {
    v7 = [a4 row];
    if (v7 < [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count])
    {
      v8 = [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] objectAtIndex:v7];
      v9 = [a3 cellForRowAtIndexPath:a4];
      v10 = [v9 accessoryType];
      if (v10 == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }

      [v9 setAccessoryType:v11];
      v12 = [v8 propertyForKey:@"TISpecifierKeyFuzzyPinyinPair"];
      v13 = [(KSFuzzyPinyinController *)self fuzzyPinyinPairs];
      if (v10 == 3)
      {
        [(NSMutableSet *)v13 removeObject:v12];
      }

      else
      {
        [(NSMutableSet *)v13 addObject:v12];
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInt:v10 != 3];
      [v8 setProperty:v14 forKey:*MEMORY[0x277D401A8]];
      v15 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v16 = [(NSMutableSet *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairs] allObjects];
      [v15 setValue:v16 forPreferenceKey:*MEMORY[0x277D6F628]];
    }
  }
}

- (void)emitNavigationEventForFuzzyPinyinController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/FUZZY_PINYIN_OPTION"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = v4;
  v9 = [v5 initWithKey:@"FUZZY_PINYIN_OPTION" table:@"Keyboard" locale:v6 bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}];
  -[KSFuzzyPinyinController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", v9, [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:2], v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end
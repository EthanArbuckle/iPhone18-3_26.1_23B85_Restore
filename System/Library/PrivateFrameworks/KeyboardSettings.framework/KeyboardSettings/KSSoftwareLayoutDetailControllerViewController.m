@interface KSSoftwareLayoutDetailControllerViewController
- (NSArray)multilingualSet;
- (NSString)inputMode;
- (id)newSpecifiers;
- (id)newSpecifiersForChineseShuangpin;
- (id)newSpecifiersForChineseWubi;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)reloadKeyboardSpecifiers;
- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)a3;
- (void)removeInputModeInMultilingualSet:(id)a3;
- (void)setShuangpinType:(id)a3;
- (void)setSoftwareLayout:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTitle;
- (void)viewDidLoad;
@end

@implementation KSSoftwareLayoutDetailControllerViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSSoftwareLayoutDetailControllerViewController;
  [(KSSoftwareLayoutDetailControllerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSSoftwareLayoutDetailControllerViewController;
  [(KSSoftwareLayoutDetailControllerViewController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)updateTitle
{
  if ([(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] count]< 2)
  {
    [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
    v3 = [KSKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()];
  }

  else
  {
    v3 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModes([(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet]);
  }

  v4 = v3;
  v5 = [(KSSoftwareLayoutDetailControllerViewController *)self navigationItem];

  [v5 setTitle:v4];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (id)newSpecifiers
{
  v96 = *MEMORY[0x277D85DE8];
  [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
  if (KSInputModeIsChineseShuangpin())
  {
    v2 = *MEMORY[0x277D85DE8];

    return [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseShuangpin];
  }

  if (KSInputModeIsChineseWubi())
  {
    v4 = *MEMORY[0x277D85DE8];

    return [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseWubi];
  }

  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  v70 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
  v6 = [(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet];
  if (_os_feature_enabled_impl())
  {
    v7 = [(NSArray *)v6 count]> 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277CBEB40];
  TIInputModeGetNormalizedIdentifier();
  v9 = [v8 orderedSetWithArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
  v69 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count") + 1}];
  v61 = NormalizedIdentifier;
  if (_os_feature_enabled_impl())
  {
    v10 = [TIUIGetAddableInputModesForMultilingualSet(v6) count] != 0;
  }

  else
  {
    v10 = 0;
  }

  [(KSSoftwareLayoutDetailControllerViewController *)self setShowingLanguagesSection:v10 || v7];
  if (_os_feature_enabled_impl())
  {
    IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(v6, 0);
  }

  else
  {
    IsMultiscriptInput = 0;
  }

  v11 = MEMORY[0x277CBEB70];
  TIInputModeGetNormalizedIdentifier();
  v63 = [v11 orderedSetWithArray:TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts()];
  v62 = v10 || v7;
  if (v10 || v7)
  {
    if (IsMultiscriptInput)
    {
      v9 = [v63 mutableCopy];
    }

    else if ((TIUIMultilingualSetContainsTransliterationInputModes(v6) & 1) == 0)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v19 = [(NSArray *)v6 countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v88;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v88 != v21)
            {
              objc_enumerationMutation(v6);
            }

            v23 = *(*(&v87 + 1) + 8 * i);
            TIInputModeGetNormalizedIdentifier();
            [v9 addObjectsFromArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
          }

          v20 = [(NSArray *)v6 countByEnumeratingWithState:&v87 objects:v95 count:16];
        }

        while (v20);
      }
    }

    v64 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
    obj = v9;
    v58 = v10;
    v59 = v7;
    if (v7)
    {
      v24 = [(NSArray *)v6 count]!= 2 || v10;
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v24)
      {
        v26 = @"MULTILINGUAL_DETAIL_FOOTER_3";
      }

      else
      {
        v26 = @"MULTILINGUAL_DETAIL_FOOTER_2";
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = @"MULTILINGUAL_DETAIL_FOOTER_1";
    }

    v27 = [v25 localizedStringForKey:v26 value:&stru_28679E3A8 table:@"Keyboard"];
    [v64 setProperty:v27 forKey:*MEMORY[0x277D3FF88]];
    [v69 addObject:v64];
    [(NSArray *)v6 firstObject];
    [MEMORY[0x277CBEAF8] preferredLanguages];
    MultilingualSetFromInputModesWithPreferredLanguages = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();
    v83 = 0u;
    v84 = 0u;
    v60 = v6;
    if ([(NSArray *)MultilingualSetFromInputModesWithPreferredLanguages count])
    {
      v29 = MultilingualSetFromInputModesWithPreferredLanguages;
    }

    else
    {
      v29 = v6;
    }

    v85 = 0uLL;
    v86 = 0uLL;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v83 objects:v94 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v84;
      v33 = *MEMORY[0x277D3FFB8];
      v34 = *MEMORY[0x277D401A8];
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v84 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v83 + 1) + 8 * j);
          if ((TIInputModeIsMultilingualOnly() & 1) == 0)
          {
            v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:+[KSKeyboardListController keyboardDisplayNameForIdentifier:](KSKeyboardListController target:"keyboardDisplayNameForIdentifier:" set:TIInputModeGetLanguageWithRegion()) get:0 detail:0 cell:0 edit:{0, 3, 0}];
            [v37 setProperty:v36 forKey:v33];
            [v37 setProperty:@"language" forKey:v34];
            [v69 addObject:v37];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v83 objects:v94 count:16];
      }

      while (v31);
    }

    if (v58)
    {
      v38 = MEMORY[0x277D3FAD8];
      v39 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_ADD_LANGUAGE", &stru_28679E3A8, @"Keyboard"}];
      v40 = [v38 preferenceSpecifierNamed:v39 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      [v40 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      [v69 addObject:v40];
    }

    v6 = v60;
    if (v59)
    {
      goto LABEL_66;
    }

LABEL_22:
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v12 = +[KSKeyboardListController inputModes];
    v13 = [v12 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v76;
      do
      {
        for (k = 0; k != v14; ++k)
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v75 + 1) + 8 * k);
          if (!_os_feature_enabled_impl() || [TIUIInputModeGetMultilingualSet(v17) count] <= 1)
          {
            if ([v61 isEqualToString:TIInputModeGetNormalizedIdentifier()])
            {
              v18 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
              if (([v18 isEqualToString:v70] & 1) == 0)
              {
                [obj removeObject:v18];
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v14);
    }

    goto LABEL_76;
  }

  obj = v9;
  v64 = 0;
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_66:
  v41 = [MEMORY[0x277D75680] multilingualSetsFromInputModeIdentifiers:{+[KSKeyboardListController inputModes](KSKeyboardListController, "inputModes")}];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v42 = [v41 countByEnumeratingWithState:&v79 objects:v93 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v80;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v80 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v79 + 1) + 8 * m) identifier];
        MultilingualSet = TIInputModeGetMultilingualSet();
        if (TIUIGetMultlingualSetsAreEqual(v6, MultilingualSet))
        {
          [MultilingualSet firstObject];
          v47 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
          if (([v47 isEqualToString:v70] & 1) == 0)
          {
            [obj removeObject:v47];
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v43);
  }

LABEL_76:
  if ((IsMultiscriptInput & 1) == 0)
  {
    [obj minusOrderedSet:v63];
  }

  if ([obj count] >= 2)
  {
    v48 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
    [v48 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v66 = v48;
    [v69 addObject:v48];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v49 = [obj countByEnumeratingWithState:&v71 objects:v91 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v72;
      v52 = *MEMORY[0x277D3FFB8];
      v53 = *MEMORY[0x277D40090];
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v72 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v71 + 1) + 8 * n);
          v56 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:v55 cell:&stru_28679E3A8 edit:{@"KeyboardLayouts", self, 0, 0, 0, 3, 0}];
          [v56 setProperty:v55 forKey:v52];
          if ([v70 isEqualToString:v55])
          {
            [v66 setProperty:v56 forKey:v53];
          }

          [v69 addObject:v56];
        }

        v50 = [obj countByEnumeratingWithState:&v71 objects:v91 count:16];
      }

      while (v50);
    }

    if (v62)
    {
      [v64 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LANGUAGES_TITLE", &stru_28679E3A8, @"Keyboard"}];
      [v66 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LAYOUTS_TITLE", &stru_28679E3A8, @"Keyboard"}];
    }
  }

  v57 = *MEMORY[0x277D85DE8];
  return v69;
}

- (id)newSpecifiersForChineseShuangpin
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = KSGetShuangpinTypes();
  v4 = KSGetCurrentShuangpinType();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v18 = v6;
  [v5 addObject:v6];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x277D3FFB8];
    v17 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 integerValue];
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:KSGetShuangpinNameFromType(v13) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == v13)
        {
          [v18 setProperty:v14 forKey:v17];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)newSpecifiersForChineseWubi
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = KSGetWubiStandards();
  v4 = KSGetCurrentWubiStandard();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v18 = v6;
  [v5 addObject:v6];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x277D3FFB8];
    v17 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 integerValue];
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:KSGetWubiStandardName(v13) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == v13)
        {
          [v18 setProperty:v14 forKey:v17];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = KSSoftwareLayoutDetailControllerViewController;
  [KSSoftwareLayoutDetailControllerViewController tableView:sel_tableView_didSelectRowAtIndexPath_ didSelectRowAtIndexPath:?];
  v7 = [a3 cellForRowAtIndexPath:a4];
  if (v7)
  {
    v8 = v7;
    [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
    if (KSInputModeIsChineseShuangpin())
    {
      v9 = [v8 specifier];
      v10 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
      if (v11)
      {
        [(KSSoftwareLayoutDetailControllerViewController *)self setShuangpinType:v11];
      }
    }

    else
    {
      [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
      IsChineseWubi = KSInputModeIsChineseWubi();
      v13 = [v8 specifier];
      v14 = [v13 propertyForKey:*MEMORY[0x277D3FFB8]];
      v15 = v14;
      if (IsChineseWubi)
      {
        if (v14)
        {
          -[KSSoftwareLayoutDetailControllerViewController setWubiStandard:](self, "setWubiStandard:", [v14 integerValue]);
        }
      }

      else if ([v14 length])
      {
        [(KSSoftwareLayoutDetailControllerViewController *)self setSoftwareLayout:v15];
      }
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    v4 = [(KSSoftwareLayoutDetailControllerViewController *)self specifier];
    result = [objc_msgSend(v4 propertyForKey:{*MEMORY[0x277D3FFB8]), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (NSArray)multilingualSet
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = self->_multilingualSet;
  if (!result)
  {
    v4 = [(KSSoftwareLayoutDetailControllerViewController *)self specifier];
    v5 = [v4 propertyForKey:*MEMORY[0x277D401A8]];
    if (!v5)
    {
      v7[0] = [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }

    result = v5;
    self->_multilingualSet = result;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setSoftwareLayout:(id)a3
{
  v5 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  if (![v5 count])
  {
    [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
  }

  if ([v5 count])
  {
    v6 = [v5 indexOfObject:{-[KSSoftwareLayoutDetailControllerViewController inputMode](self, "inputMode")}];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
    }

    v7 = v6;
    if (!_os_feature_enabled_impl() || [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] count]< 2)
    {
      [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
      v11 = [TIInputModeGetComponentsFromIdentifier() mutableCopy];
      v12 = [v11 objectForKey:@"sw"];
      if (v12 && ([v12 isEqualToString:a3] & 1) != 0)
      {
        return;
      }

      [v11 setObject:a3 forKey:@"sw"];
      IdentifierFromComponents = UIKeyboardInputModeGetIdentifierFromComponents();
      [v5 replaceObjectAtIndex:v7 withObject:IdentifierFromComponents];
      [(KSSoftwareLayoutDetailControllerViewController *)self setInputMode:IdentifierFromComponents];
      goto LABEL_20;
    }

    [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
    MultilingualID = TIInputModeGetMultilingualID();
    if (![MultilingualID length])
    {
      [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
    }

    if ([MultilingualID length] && objc_msgSend(v5, "count"))
    {
      v9 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        [v5 objectAtIndexedSubscript:v9];
        if ([TIInputModeGetMultilingualID() isEqualToString:MultilingualID])
        {
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
          }

          [v5 objectAtIndexedSubscript:v9];
          TIInputModeGetNormalizedIdentifier();
          if ([UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() containsObject:a3])
          {
            break;
          }
        }

        if (++v9 >= [v5 count])
        {
          return;
        }
      }

      [v5 objectAtIndexedSubscript:v9];
      v14 = UIKeyboardInputModeWithNewSWLayout();
      if (v9 == v10)
      {
        [v5 replaceObjectAtIndex:v9 withObject:v14];
      }

      else
      {
        if (v9 <= v10)
        {
          [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
        }

        [v5 removeObjectAtIndex:v9];
        [v5 insertObject:v14 atIndex:v10];
      }

      [(KSSoftwareLayoutDetailControllerViewController *)self setInputMode:v14];
      [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:TIInputModeGetMultilingualSetFromInputModes()];
LABEL_20:

      [KSKeyboardListController setInputModes:v5];
    }
  }
}

- (void)setShuangpinType:(id)a3
{
  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v5 setValue:a3 forPreferenceKey:*MEMORY[0x277D6FA70]];
  KSUpdateShuangpinSWLayout();

  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (void)removeInputModeInMultilingualSet:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = a3;
  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  obj = TIUIGetPairedInputModesForInputMode(NormalizedIdentifier);
  v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v26 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = self;
        v12 = [(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet];
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          do
          {
            v16 = 0;
            do
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v28 + 1) + 8 * v16);
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:v10])
              {
                [v5 addObject:v17];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v14);
        }

        ++v9;
        self = v11;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  v27 = 0;
  if (TIUIMultilingualSetIsMultiscriptInput([(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet], &v27))
  {
    v18 = [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] copy];
    [v18 firstObject];
    TIInputModeGetNormalizedIdentifier();
    if (![UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() firstObject])
    {
      [KSSoftwareLayoutDetailControllerViewController removeInputModeInMultilingualSet:];
    }

    v36 = UIKeyboardInputModeWithNewSWLayout();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
    v18 = MEMORY[0x277CBEBF8];
  }

  v20 = [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] mutableCopy];
  [v20 removeObject:v24];
  [v20 removeObjectsInArray:v5];
  [v20 removeObjectsInArray:v18];
  [v20 addObjectsFromArray:v19];
  -[KSSoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [v20 firstObject]);
  [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:v20];
  v21 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  [v21 removeObject:v24];
  [v21 removeObjectsInArray:v5];
  [v21 removeObjectsInArray:v18];
  [v21 addObjectsFromArray:v19];
  [KSKeyboardListController setInputModes:v21];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
  [(KSSoftwareLayoutDetailControllerViewController *)self updateTitle];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)reloadKeyboardSpecifiers
{
  v2 = [-[KSSoftwareLayoutDetailControllerViewController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)a3
{
  -[KSSoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [a3 firstObject]);
  [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:a3];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];

  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  result = 0;
  if ([(KSSoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
  {
    if (![a4 section] && objc_msgSend(a4, "row") >= 1)
    {
      v7 = [-[KSSoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
      if ([objc_msgSend(v7 propertyForKey:{*MEMORY[0x277D401A8]), "isEqual:", @"language"}])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    if ([(KSSoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
    {
      if (![a5 section] && objc_msgSend(a5, "row") >= 1)
      {
        v7 = [-[KSSoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
        if ([objc_msgSend(v7 propertyForKey:{*MEMORY[0x277D401A8]), "isEqual:", @"language"}])
        {
          v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
          [(KSSoftwareLayoutDetailControllerViewController *)self removeSpecifier:v7 animated:1];

          [(KSSoftwareLayoutDetailControllerViewController *)self removeInputModeInMultilingualSet:v8];
        }
      }
    }
  }
}

@end
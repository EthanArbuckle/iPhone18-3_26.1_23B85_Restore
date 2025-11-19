@interface KSInputModeTableCell
- (KSInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)subtitle;
- (id)title;
- (void)addDownloadIcon;
- (void)dealloc;
- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4;
- (void)updateLabels;
@end

@implementation KSInputModeTableCell

- (KSInputModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = KSInputModeTableCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    -[KSInputModeTableCell setInputMode:](v6, "setInputMode:", [MEMORY[0x277D75680] keyboardInputModeWithIdentifier:{objc_msgSend(a5, "propertyForKey:", *MEMORY[0x277D3FFB8])}]);
    [(KSInputModeTableCell *)v6 updateLabels];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSInputModeTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)updateLabels
{
  [-[KSInputModeTableCell textLabel](self "textLabel")];
  [-[KSInputModeTableCell detailTextLabel](self "detailTextLabel")];
  if ([(KSInputModeTableCell *)self hasDownloadableAssets])
  {

    [(KSInputModeTableCell *)self addDownloadIcon];
  }
}

- (id)title
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] isExtensionInputMode];
  v4 = [(KSInputModeTableCell *)self inputMode];
  if (v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    return [(UIKeyboardInputMode *)v4 safe__extendedDisplayName];
  }

  else
  {
    [(UIKeyboardInputMode *)v4 identifier];
    if ([TIInputModeGetSWLayout() isEqualToString:@"Korean-With-QWERTY"])
    {
      v11[0] = [KSKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()];
      v11[1] = [KSKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()];
      v7 = [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v11 count:{2), "componentsJoinedByString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"LIST_SEPARATOR_2", &stru_28679E3A8, @"Keyboard"}];
    }

    else
    {
      v7 = [KSKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] languageWithRegion]];
      if ([objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
      {
        v8 = TUIKeyboardTitle();
      }

      else
      {
        v8 = 0;
      }

      if ([v8 length])
      {
        result = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"KEYBOARD_LANGUAGE_%@_WITH_VARIANT_%@", &stru_28679E3A8, @"Keyboard", v7, v8];
        v9 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    v10 = *MEMORY[0x277D85DE8];
    return v7;
  }
}

- (id)subtitle
{
  if ([(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] isExtensionInputMode])
  {
    v3 = [MEMORY[0x277CBEAF8] localeForBundleLanguage:{objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle")}];
    v4 = *MEMORY[0x277CBE6C8];
    v5 = [(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] primaryLanguage];

    return [v3 displayNameForKey:v4 value:v5];
  }

  v7 = [(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] identifier];
  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  v9 = [KSKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] languageWithRegion]];
  ComponentsFromIdentifier = TIInputModeGetComponentsFromIdentifier();
  if ([objc_msgSend(ComponentsFromIdentifier objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
  {
    v11 = TUIKeyboardTitle();
  }

  else
  {
    v11 = 0;
  }

  v12 = [ComponentsFromIdentifier objectForKey:@"sw"];
  if ([v12 isEqualToString:@"Korean-With-QWERTY"])
  {
    v13 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BILINGUAL_KEYBOARD_TITLE_SHORT", &stru_28679E3A8, @"Keyboard"}];
  }

  else
  {
    if ([v12 length])
    {
      v14 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v12, &stru_28679E3A8, @"KeyboardLayouts"}];
    }

    else
    {
      v14 = 0;
    }

    if ([v9 isEqualToString:v14] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", v14) & 1) != 0 || (v15 = +[KSKeyboardListController inputModes](KSKeyboardListController, "inputModes"), v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __32__KSInputModeTableCell_subtitle__block_invoke, v16[3] = &unk_2797F9FE0, v16[4] = NormalizedIdentifier, objc_msgSend(objc_msgSend(v15, "indexesOfObjectsPassingTest:", v16), "count") <= 1) && (objc_msgSend(objc_msgSend(+[KSKeyboardListController softwareLayoutsForBaseInputMode:](KSKeyboardListController, "softwareLayoutsForBaseInputMode:", NormalizedIdentifier), "firstObject"), "isEqualToString:", v12))
    {
      v14 = 0;
    }

    if (KSInputModeIsChineseShuangpin())
    {
      v14 = KSGetCurrentShuangpinName();
    }

    if (!KSInputModeIsChineseWubi())
    {
      goto LABEL_21;
    }

    v13 = KSGetCurrentWubiStandardName();
  }

  v14 = v13;
LABEL_21:
  if ([objc_msgSend(MEMORY[0x277D6F378] "sharedManager")] == 2)
  {
    return [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ASSETS_DOWNLOADING_PROGRESS_TITLE", &stru_28679E3A8, @"Keyboard"}];
  }

  return v14;
}

uint64_t __32__KSInputModeTableCell_subtitle__block_invoke(uint64_t a1)
{
  result = [TIInputModeGetNormalizedIdentifier() isEqualToString:*(a1 + 32)];
  if (result)
  {
    return [objc_msgSend(TIInputModeGetComponentsFromIdentifier() objectForKey:{@"sw", "length"}] != 0;
  }

  return result;
}

- (void)addDownloadIcon
{
  if (![(KSInputModeTableCell *)self accessoryView])
  {
    v3 = TIDownloadButton();
    [v3 addTarget:self action:sel_downloadButtonPressed_withEvent_ forControlEvents:64];

    [(KSInputModeTableCell *)self setAccessoryView:v3];
  }
}

- (void)downloadButtonPressed:(id)a3 withEvent:(id)a4
{
  v5 = [MEMORY[0x277D6F378] sharedManager];
  v6 = [(UIKeyboardInputMode *)[(KSInputModeTableCell *)self inputMode] identifier];

  [v5 startDownloadingAssetsForInputMode:v6];
}

@end
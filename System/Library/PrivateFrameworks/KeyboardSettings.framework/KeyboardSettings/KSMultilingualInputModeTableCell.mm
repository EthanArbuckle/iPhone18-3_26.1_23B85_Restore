@interface KSMultilingualInputModeTableCell
- (BOOL)hasDownloadableAssets;
- (KSMultilingualInputModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)subtitle;
- (id)title;
- (void)addDownloadIcon;
- (void)dealloc;
- (void)downloadButtonPressed:(id)pressed withEvent:(id)event;
- (void)updateLabels;
@end

@implementation KSMultilingualInputModeTableCell

- (KSMultilingualInputModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = KSMultilingualInputModeTableCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:?];
  if (v6)
  {
    -[KSMultilingualInputModeTableCell setInputModes:](v6, "setInputModes:", [specifier propertyForKey:*MEMORY[0x277D401A8]]);
    [(KSMultilingualInputModeTableCell *)v6 updateLabels];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSMultilingualInputModeTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)updateLabels
{
  [-[KSMultilingualInputModeTableCell textLabel](self "textLabel")];
  [-[KSMultilingualInputModeTableCell detailTextLabel](self "detailTextLabel")];
  if ([(KSMultilingualInputModeTableCell *)self hasDownloadableAssets])
  {

    [(KSMultilingualInputModeTableCell *)self addDownloadIcon];
  }
}

- (id)title
{
  inputModes = [(KSMultilingualInputModeTableCell *)self inputModes];

  return TIUIGetLocalizedConcatenatedLanguageNamesForInputModes(inputModes);
}

- (id)subtitle
{
  LanguageCount = TIUIMultilingualSetGetLanguageCount([(KSMultilingualInputModeTableCell *)self inputModes]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (LanguageCount == 2)
  {
    v4 = @"BILINGUAL_KEYBOARD_TITLE_SHORT";
  }

  else
  {
    v4 = @"MULTILINGUAL_KEYBOARD_TITLE_SHORT";
  }

  return [v3 localizedStringForKey:v4 value:&stru_28679E3A8 table:@"Keyboard"];
}

- (BOOL)hasDownloadableAssets
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputModes = [(KSMultilingualInputModeTableCell *)self inputModes];
  v3 = [(NSArray *)inputModes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(inputModes);
      }

      v3 = [objc_msgSend(MEMORY[0x277D6F378] "sharedManager")];
      if (v3 == 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [(NSArray *)inputModes countByEnumeratingWithState:&v9 objects:v13 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addDownloadIcon
{
  if (![(KSMultilingualInputModeTableCell *)self accessoryView])
  {
    v3 = TIDownloadButton();
    [v3 addTarget:self action:sel_downloadButtonPressed_withEvent_ forControlEvents:64];

    [(KSMultilingualInputModeTableCell *)self setAccessoryView:v3];
  }
}

- (void)downloadButtonPressed:(id)pressed withEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(KSMultilingualInputModeTableCell *)self inputModes:pressed];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [objc_msgSend(MEMORY[0x277D6F378] "sharedManager")];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end
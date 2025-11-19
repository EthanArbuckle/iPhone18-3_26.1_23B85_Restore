@interface ICAttributionViewConfigurationSharedState
- (BOOL)isTimestampUnread:(id)a3 forUserID:(id)a4;
- (ICAttributionViewConfigurationSharedState)initWithTextView:(id)a3 note:(id)a4;
- (ICBaseTextView)textView;
- (ICTTTextStorage)noteTextStorage;
- (id)disclosureImageWithSymbolName:(id)a3;
- (id)highlightColorForUserID:(id)a3;
- (id)shortNameForUserID:(id)a3;
- (void)synchronouslyLoadDataForEditGroups:(id)a3;
- (void)updateFontStorages;
- (void)updateFonts;
- (void)updateHighlightColorsForUserIDs:(id)a3;
- (void)updateImages;
- (void)updateShortNamesForUserIDs:(id)a3;
@end

@implementation ICAttributionViewConfigurationSharedState

- (ICAttributionViewConfigurationSharedState)initWithTextView:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICAttributionViewConfigurationSharedState;
  v8 = [(ICAttributionViewConfigurationSharedState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_textView, v6);
    objc_storeStrong(&v9->_note, a4);
  }

  return v9;
}

- (ICTTTextStorage)noteTextStorage
{
  v3 = [(ICAttributionViewConfigurationSharedState *)self textView];
  v4 = [v3 editorContainer];
  v5 = [v4 note];

  v6 = [v5 objectID];
  v7 = [(ICAttributionViewConfigurationSharedState *)self note];
  v8 = [v7 objectID];
  if ([v6 isEqual:v8])
  {
    v9 = [v5 textStorageWithoutCreating];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)synchronouslyLoadDataForEditGroups:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) userID];
        [v5 ic_addNonNilObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(ICAttributionViewConfigurationSharedState *)self updateHighlightColorsForUserIDs:v5];
  [(ICAttributionViewConfigurationSharedState *)self updateShortNamesForUserIDs:v5];
  [(ICAttributionViewConfigurationSharedState *)self updateFonts];
  [(ICAttributionViewConfigurationSharedState *)self updateImages];
}

- (void)updateFonts
{
  v3 = *MEMORY[0x277D76938];
  v4 = *MEMORY[0x277D76808];
  v5 = [MEMORY[0x277D74300] ic_preferredFontForStyle:*MEMORY[0x277D76938] symbolicTraits:2 maxContentSizeCategory:*MEMORY[0x277D76808]];
  v6 = [v5 ic_fontWithSingleLineA];
  [(ICAttributionViewConfigurationSharedState *)self setPrimaryFont:v6];

  v7 = [MEMORY[0x277D74300] ic_preferredFontForTextStyle:v3 maxContentSizeCategory:v4];
  v8 = [v7 ic_fontWithSingleLineA];
  [(ICAttributionViewConfigurationSharedState *)self setSecondaryFont:v8];

  [(ICAttributionViewConfigurationSharedState *)self updateFontStorages];
}

- (void)updateImages
{
  v3 = [(ICAttributionViewConfigurationSharedState *)self disclosureImageWithSymbolName:@"chevron.down"];
  [(ICAttributionViewConfigurationSharedState *)self setExpandedDisclosureImage:v3];

  v4 = [(ICAttributionViewConfigurationSharedState *)self disclosureImageWithSymbolName:@"chevron.forward"];
  [(ICAttributionViewConfigurationSharedState *)self setCollapsedDisclosureImage:v4];
}

- (id)disclosureImageWithSymbolName:(id)a3
{
  v4 = MEMORY[0x277D755D0];
  v5 = a3;
  v6 = [(ICAttributionViewConfigurationSharedState *)self primaryFont];
  v7 = [v4 configurationWithFont:v6 scale:1];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:v5 withConfiguration:v7];

  v9 = [MEMORY[0x277D75418] ic_isVision];
  if (v9)
  {
    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [v6 colorWithAlphaComponent:0.4];
  }

  else
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }
  v10 = ;
  v11 = [v8 imageWithTintColor:v10];

  if (v9)
  {

    v10 = v6;
  }

  v12 = [v11 imageWithRenderingMode:1];

  return v12;
}

- (void)updateHighlightColorsForUserIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICAttributionViewConfigurationSharedState *)self textView];
  v6 = [v5 editorContainer];
  v7 = [v6 note];

  v8 = [v7 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ICAttributionViewConfigurationSharedState_updateHighlightColorsForUserIDs___block_invoke;
  v11[3] = &unk_2781AC5B0;
  v11[4] = self;
  v12 = v4;
  v13 = v7;
  v9 = v7;
  v10 = v4;
  [v8 performBlockAndWait:v11];
}

void __77__ICAttributionViewConfigurationSharedState_updateHighlightColorsForUserIDs___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [a1[4] setUserIDToHighlightColor:v2];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [a1[6] collaborationColorManager];
        v10 = [v9 highlightColorForUserID:v8 note:a1[6]];
        v11 = [a1[4] userIDToHighlightColor];
        [v11 setObject:v10 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)highlightColorForUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICAttributionViewConfigurationSharedState *)self userIDToHighlightColor];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277D36760] defaultColor];
  }

  v8 = v7;

  return v8;
}

- (void)updateShortNamesForUserIDs:(id)a3
{
  v4 = a3;
  v5 = [(ICAttributionViewConfigurationSharedState *)self note];
  v6 = [v5 managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ICAttributionViewConfigurationSharedState_updateShortNamesForUserIDs___block_invoke;
  v8[3] = &unk_2781ABEB8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlockAndWait:v8];
}

void __72__ICAttributionViewConfigurationSharedState_updateShortNamesForUserIDs___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setUserIDToShortName:v2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 32) note];
        v10 = [v9 participantForUserID:v8];
        v11 = [v10 ic_activityStreamDisplayName];
        v12 = [*(a1 + 32) userIDToShortName];
        [v12 setObject:v11 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)shortNameForUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICAttributionViewConfigurationSharedState *)self userIDToShortName];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v8 localizedStringForKey:@"Somebody" value:&stru_282757698 table:0];
  }

  return v7;
}

- (BOOL)isTimestampUnread:(id)a3 forUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICAttributionViewConfigurationSharedState *)self note];
  v9 = [v8 account];
  v10 = [v9 userRecordName];
  v11 = [v7 isEqualToString:v10];

  v12 = v11 ^ 1;
  v13 = [(ICAttributionViewConfigurationSharedState *)self noteLastOpenedDate];

  if (v13)
  {
    v14 = [(ICAttributionViewConfigurationSharedState *)self noteLastOpenedDate];
    v12 &= [v6 ic_isLaterThanDate:v14];
  }

  v15 = [(ICAttributionViewConfigurationSharedState *)self note];
  v16 = [v15 lastAttributionsViewedDate];

  if (v16)
  {
    v17 = [(ICAttributionViewConfigurationSharedState *)self note];
    v18 = [v17 lastAttributionsViewedDate];
    v12 &= [v6 ic_isLaterThanDate:v18];
  }

  return v12;
}

- (ICBaseTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (void)updateFontStorages
{
  v2 = self;
  sub_2153D5ECC();
}

@end
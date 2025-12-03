@interface ICAttributionViewConfigurationSharedState
- (BOOL)isTimestampUnread:(id)unread forUserID:(id)d;
- (ICAttributionViewConfigurationSharedState)initWithTextView:(id)view note:(id)note;
- (ICBaseTextView)textView;
- (ICTTTextStorage)noteTextStorage;
- (id)disclosureImageWithSymbolName:(id)name;
- (id)highlightColorForUserID:(id)d;
- (id)shortNameForUserID:(id)d;
- (void)synchronouslyLoadDataForEditGroups:(id)groups;
- (void)updateFontStorages;
- (void)updateFonts;
- (void)updateHighlightColorsForUserIDs:(id)ds;
- (void)updateImages;
- (void)updateShortNamesForUserIDs:(id)ds;
@end

@implementation ICAttributionViewConfigurationSharedState

- (ICAttributionViewConfigurationSharedState)initWithTextView:(id)view note:(id)note
{
  viewCopy = view;
  noteCopy = note;
  v11.receiver = self;
  v11.super_class = ICAttributionViewConfigurationSharedState;
  v8 = [(ICAttributionViewConfigurationSharedState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_textView, viewCopy);
    objc_storeStrong(&v9->_note, note);
  }

  return v9;
}

- (ICTTTextStorage)noteTextStorage
{
  textView = [(ICAttributionViewConfigurationSharedState *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];

  objectID = [note objectID];
  note2 = [(ICAttributionViewConfigurationSharedState *)self note];
  objectID2 = [note2 objectID];
  if ([objectID isEqual:objectID2])
  {
    textStorageWithoutCreating = [note textStorageWithoutCreating];
  }

  else
  {
    textStorageWithoutCreating = 0;
  }

  return textStorageWithoutCreating;
}

- (void)synchronouslyLoadDataForEditGroups:(id)groups
{
  v17 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v5 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = groupsCopy;
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

        userID = [*(*(&v12 + 1) + 8 * v10) userID];
        [v5 ic_addNonNilObject:userID];

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
  ic_fontWithSingleLineA = [v5 ic_fontWithSingleLineA];
  [(ICAttributionViewConfigurationSharedState *)self setPrimaryFont:ic_fontWithSingleLineA];

  v7 = [MEMORY[0x277D74300] ic_preferredFontForTextStyle:v3 maxContentSizeCategory:v4];
  ic_fontWithSingleLineA2 = [v7 ic_fontWithSingleLineA];
  [(ICAttributionViewConfigurationSharedState *)self setSecondaryFont:ic_fontWithSingleLineA2];

  [(ICAttributionViewConfigurationSharedState *)self updateFontStorages];
}

- (void)updateImages
{
  v3 = [(ICAttributionViewConfigurationSharedState *)self disclosureImageWithSymbolName:@"chevron.down"];
  [(ICAttributionViewConfigurationSharedState *)self setExpandedDisclosureImage:v3];

  v4 = [(ICAttributionViewConfigurationSharedState *)self disclosureImageWithSymbolName:@"chevron.forward"];
  [(ICAttributionViewConfigurationSharedState *)self setCollapsedDisclosureImage:v4];
}

- (id)disclosureImageWithSymbolName:(id)name
{
  v4 = MEMORY[0x277D755D0];
  nameCopy = name;
  primaryFont = [(ICAttributionViewConfigurationSharedState *)self primaryFont];
  v7 = [v4 configurationWithFont:primaryFont scale:1];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy withConfiguration:v7];

  ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  if (ic_isVision)
  {
    primaryFont = [MEMORY[0x277D75348] systemGrayColor];
    [primaryFont colorWithAlphaComponent:0.4];
  }

  else
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }
  v10 = ;
  v11 = [v8 imageWithTintColor:v10];

  if (ic_isVision)
  {

    v10 = primaryFont;
  }

  v12 = [v11 imageWithRenderingMode:1];

  return v12;
}

- (void)updateHighlightColorsForUserIDs:(id)ds
{
  dsCopy = ds;
  textView = [(ICAttributionViewConfigurationSharedState *)self textView];
  editorContainer = [textView editorContainer];
  note = [editorContainer note];

  managedObjectContext = [note managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ICAttributionViewConfigurationSharedState_updateHighlightColorsForUserIDs___block_invoke;
  v11[3] = &unk_2781AC5B0;
  v11[4] = self;
  v12 = dsCopy;
  v13 = note;
  v9 = note;
  v10 = dsCopy;
  [managedObjectContext performBlockAndWait:v11];
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

- (id)highlightColorForUserID:(id)d
{
  dCopy = d;
  userIDToHighlightColor = [(ICAttributionViewConfigurationSharedState *)self userIDToHighlightColor];
  v6 = [userIDToHighlightColor objectForKeyedSubscript:dCopy];

  if (v6)
  {
    defaultColor = v6;
  }

  else
  {
    defaultColor = [MEMORY[0x277D36760] defaultColor];
  }

  v8 = defaultColor;

  return v8;
}

- (void)updateShortNamesForUserIDs:(id)ds
{
  dsCopy = ds;
  note = [(ICAttributionViewConfigurationSharedState *)self note];
  managedObjectContext = [note managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ICAttributionViewConfigurationSharedState_updateShortNamesForUserIDs___block_invoke;
  v8[3] = &unk_2781ABEB8;
  v8[4] = self;
  v9 = dsCopy;
  v7 = dsCopy;
  [managedObjectContext performBlockAndWait:v8];
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

- (id)shortNameForUserID:(id)d
{
  dCopy = d;
  userIDToShortName = [(ICAttributionViewConfigurationSharedState *)self userIDToShortName];
  v6 = [userIDToShortName objectForKeyedSubscript:dCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Somebody" value:&stru_282757698 table:0];
  }

  return v7;
}

- (BOOL)isTimestampUnread:(id)unread forUserID:(id)d
{
  unreadCopy = unread;
  dCopy = d;
  note = [(ICAttributionViewConfigurationSharedState *)self note];
  account = [note account];
  userRecordName = [account userRecordName];
  v11 = [dCopy isEqualToString:userRecordName];

  v12 = v11 ^ 1;
  noteLastOpenedDate = [(ICAttributionViewConfigurationSharedState *)self noteLastOpenedDate];

  if (noteLastOpenedDate)
  {
    noteLastOpenedDate2 = [(ICAttributionViewConfigurationSharedState *)self noteLastOpenedDate];
    v12 &= [unreadCopy ic_isLaterThanDate:noteLastOpenedDate2];
  }

  note2 = [(ICAttributionViewConfigurationSharedState *)self note];
  lastAttributionsViewedDate = [note2 lastAttributionsViewedDate];

  if (lastAttributionsViewedDate)
  {
    note3 = [(ICAttributionViewConfigurationSharedState *)self note];
    lastAttributionsViewedDate2 = [note3 lastAttributionsViewedDate];
    v12 &= [unreadCopy ic_isLaterThanDate:lastAttributionsViewedDate2];
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
  selfCopy = self;
  sub_2153D5ECC();
}

@end
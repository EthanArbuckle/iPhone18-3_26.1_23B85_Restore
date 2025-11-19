@interface CKUIThemePad
- (id)_conversationListCellSelectedDateColor;
- (id)_conversationListCellSelectedSummaryColor;
- (id)_conversationListCellSelectedTextColor;
- (id)_conversationListPinnedConversationNameSelectedColor;
- (id)_conversationListSelectedCellColor;
- (id)_readSelectedIndicatorColor;
- (id)conversationListCellSelectedDateColor;
- (id)conversationListCellSelectedSummaryColor;
- (id)conversationListCellSelectedTextColor;
- (id)conversationListPinnedConversationNameSelectedColor;
- (id)conversationListSelectedCellColor;
- (id)readSelectedIndicatorColor;
@end

@implementation CKUIThemePad

- (id)readSelectedIndicatorColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CKUIThemePad_readSelectedIndicatorColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (readSelectedIndicatorColor_once_2298 != -1)
  {
    dispatch_once(&readSelectedIndicatorColor_once_2298, block);
  }

  return readSelectedIndicatorColor_sBehavior_2297;
}

void __42__CKUIThemePad_readSelectedIndicatorColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _readSelectedIndicatorColor];
  v2 = readSelectedIndicatorColor_sBehavior_2297;
  readSelectedIndicatorColor_sBehavior_2297 = v1;
}

- (id)_readSelectedIndicatorColor
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernSplitViewControllerEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)conversationListCellSelectedTextColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKUIThemePad_conversationListCellSelectedTextColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListCellSelectedTextColor_once_2300 != -1)
  {
    dispatch_once(&conversationListCellSelectedTextColor_once_2300, block);
  }

  return conversationListCellSelectedTextColor_sBehavior_2299;
}

void __53__CKUIThemePad_conversationListCellSelectedTextColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _conversationListCellSelectedTextColor];
  v2 = conversationListCellSelectedTextColor_sBehavior_2299;
  conversationListCellSelectedTextColor_sBehavior_2299 = v1;
}

- (id)_conversationListCellSelectedTextColor
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernSplitViewControllerEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)conversationListCellSelectedSummaryColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CKUIThemePad_conversationListCellSelectedSummaryColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListCellSelectedSummaryColor_once_2302 != -1)
  {
    dispatch_once(&conversationListCellSelectedSummaryColor_once_2302, block);
  }

  return conversationListCellSelectedSummaryColor_sBehavior_2301;
}

void __56__CKUIThemePad_conversationListCellSelectedSummaryColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _conversationListCellSelectedSummaryColor];
  v2 = conversationListCellSelectedSummaryColor_sBehavior_2301;
  conversationListCellSelectedSummaryColor_sBehavior_2301 = v1;
}

- (id)_conversationListCellSelectedSummaryColor
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernSplitViewControllerEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    v5 = [v4 colorWithAlphaComponent:0.7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationListCellSelectedDateColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKUIThemePad_conversationListCellSelectedDateColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListCellSelectedDateColor_once_2304 != -1)
  {
    dispatch_once(&conversationListCellSelectedDateColor_once_2304, block);
  }

  return conversationListCellSelectedDateColor_sBehavior_2303;
}

void __53__CKUIThemePad_conversationListCellSelectedDateColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _conversationListCellSelectedDateColor];
  v2 = conversationListCellSelectedDateColor_sBehavior_2303;
  conversationListCellSelectedDateColor_sBehavior_2303 = v1;
}

- (id)_conversationListCellSelectedDateColor
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernSplitViewControllerEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    v5 = [v4 colorWithAlphaComponent:0.7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)conversationListSelectedCellColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIThemePad_conversationListSelectedCellColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListSelectedCellColor_once_2306 != -1)
  {
    dispatch_once(&conversationListSelectedCellColor_once_2306, block);
  }

  return conversationListSelectedCellColor_sBehavior_2305;
}

void __49__CKUIThemePad_conversationListSelectedCellColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _conversationListSelectedCellColor];
  v2 = conversationListSelectedCellColor_sBehavior_2305;
  conversationListSelectedCellColor_sBehavior_2305 = v1;
}

- (id)_conversationListSelectedCellColor
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isModernSplitViewControllerEnabled];

  if (v3)
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }
  v4 = ;

  return v4;
}

- (id)conversationListPinnedConversationNameSelectedColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CKUIThemePad_conversationListPinnedConversationNameSelectedColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListPinnedConversationNameSelectedColor_once_2308 != -1)
  {
    dispatch_once(&conversationListPinnedConversationNameSelectedColor_once_2308, block);
  }

  return conversationListPinnedConversationNameSelectedColor_sBehavior_2307;
}

void __67__CKUIThemePad_conversationListPinnedConversationNameSelectedColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _conversationListPinnedConversationNameSelectedColor];
  v2 = conversationListPinnedConversationNameSelectedColor_sBehavior_2307;
  conversationListPinnedConversationNameSelectedColor_sBehavior_2307 = v1;
}

- (id)_conversationListPinnedConversationNameSelectedColor
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isModernSplitViewControllerEnabled];

  if (v4)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [(CKUITheme *)self conversationListPinnedConversationNameColor];
  }
  v5 = ;

  return v5;
}

@end
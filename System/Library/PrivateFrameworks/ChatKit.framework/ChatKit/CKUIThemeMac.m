@interface CKUIThemeMac
- (id)contactsActionButtonBackgroundColor;
- (id)conversationListBackgroundColor;
- (id)conversationListCellColor;
- (id)conversationListCellPreviewBackgroundColor;
- (id)conversationListCellSelectedDateColor;
- (id)conversationListCellSelectedSummaryColor;
- (id)conversationListCellSelectedTextColor;
- (id)conversationListCollectionViewBackgroundColor;
- (id)conversationListDateColor;
- (id)conversationListEditingPinsSummaryColor;
- (id)conversationListFocusFilterBannerTextColor;
- (id)conversationListPinnedCellSelectorViewColor;
- (id)conversationListPinnedConversationNameSelectedColor;
- (id)conversationListSenderColor;
- (id)conversationListSummaryColor;
- (id)detailsAddButtonBackgroundColor;
- (id)detailsAttachmentsDecorationViewBackgroundColor;
- (id)detailsBackgroundColor;
- (id)detailsCollectionViewBackgroundColor;
- (id)detailsGroupPhotoBackgroundColor;
- (id)detailsHeaderFooterContentViewBackgroundColor;
- (id)entryFieldButtonColor;
- (id)iosMacDetailsCellColor;
- (id)paddleSeparatorColor;
- (id)quickActionButtonGlyphColor;
- (id)readSelectedIndicatorColor;
- (id)selectedConversationListTypingIndicatorBubbleColor;
- (id)spotlightSearchBackgroundColor;
- (id)spotlightSearchBarBackgroundColor;
- (id)spotlightSearchSegmentedControlBackgroundColor;
@end

@implementation CKUIThemeMac

- (id)quickActionButtonGlyphColor
{
  if (quickActionButtonGlyphColor_once_2320 != -1)
  {
    [CKUIThemeMac quickActionButtonGlyphColor];
  }

  v3 = quickActionButtonGlyphColor_sBehavior_2319;

  return v3;
}

void __43__CKUIThemeMac_quickActionButtonGlyphColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v1 = quickActionButtonGlyphColor_sBehavior_2319;
  quickActionButtonGlyphColor_sBehavior_2319 = v0;
}

- (id)entryFieldButtonColor
{
  if (entryFieldButtonColor_once_2324 != -1)
  {
    [CKUIThemeMac entryFieldButtonColor];
  }

  v3 = entryFieldButtonColor_sBehavior_2323;

  return v3;
}

void __37__CKUIThemeMac_entryFieldButtonColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v1 = entryFieldButtonColor_sBehavior_2323;
  entryFieldButtonColor_sBehavior_2323 = v0;
}

- (id)conversationListSenderColor
{
  if (conversationListSenderColor_once_2328 != -1)
  {
    [CKUIThemeMac conversationListSenderColor];
  }

  v3 = conversationListSenderColor_sBehavior_2327;

  return v3;
}

void __43__CKUIThemeMac_conversationListSenderColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] labelColor];
  v1 = conversationListSenderColor_sBehavior_2327;
  conversationListSenderColor_sBehavior_2327 = v0;
}

- (id)conversationListSummaryColor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = conversationListSummaryColor_sBehavior_2332;
  if (conversationListSummaryColor_sBehavior_2332)
  {
    v4 = conversationListSummaryColor_sIsIncreaseContrastEnabled_conversationListSummaryColor_2331 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = conversationListSummaryColor_sBehavior_2332;
    conversationListSummaryColor_sBehavior_2332 = v5;

    conversationListSummaryColor_sIsIncreaseContrastEnabled_conversationListSummaryColor_2331 = v2;
    v3 = conversationListSummaryColor_sBehavior_2332;
  }

  return v3;
}

- (id)conversationListEditingPinsSummaryColor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = conversationListEditingPinsSummaryColor_sBehavior_2334;
  if (conversationListEditingPinsSummaryColor_sBehavior_2334)
  {
    v4 = conversationListEditingPinsSummaryColor_sIsIncreaseContrastEnabled_conversationListEditingPinsSummaryColor_2333 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    v6 = conversationListEditingPinsSummaryColor_sBehavior_2334;
    conversationListEditingPinsSummaryColor_sBehavior_2334 = v5;

    conversationListEditingPinsSummaryColor_sIsIncreaseContrastEnabled_conversationListEditingPinsSummaryColor_2333 = v2;
    v3 = conversationListEditingPinsSummaryColor_sBehavior_2334;
  }

  return v3;
}

- (id)conversationListCellSelectedTextColor
{
  if (conversationListCellSelectedTextColor_once_2336 != -1)
  {
    [CKUIThemeMac conversationListCellSelectedTextColor];
  }

  v3 = conversationListCellSelectedTextColor_sBehavior_2335;

  return v3;
}

void __53__CKUIThemeMac_conversationListCellSelectedTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = conversationListCellSelectedTextColor_sBehavior_2335;
  conversationListCellSelectedTextColor_sBehavior_2335 = v0;
}

- (id)conversationListCellPreviewBackgroundColor
{
  if (conversationListCellPreviewBackgroundColor_once != -1)
  {
    [CKUIThemeMac conversationListCellPreviewBackgroundColor];
  }

  return 0;
}

- (id)conversationListCellSelectedSummaryColor
{
  if (conversationListCellSelectedSummaryColor_once_2342 != -1)
  {
    [CKUIThemeMac conversationListCellSelectedSummaryColor];
  }

  v3 = conversationListCellSelectedSummaryColor_sBehavior_2341;

  return v3;
}

void __56__CKUIThemeMac_conversationListCellSelectedSummaryColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.8];
  v1 = conversationListCellSelectedSummaryColor_sBehavior_2341;
  conversationListCellSelectedSummaryColor_sBehavior_2341 = v0;
}

- (id)readSelectedIndicatorColor
{
  if (readSelectedIndicatorColor_once_2346 != -1)
  {
    [CKUIThemeMac readSelectedIndicatorColor];
  }

  v3 = readSelectedIndicatorColor_sBehavior_2345;

  return v3;
}

void __42__CKUIThemeMac_readSelectedIndicatorColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = readSelectedIndicatorColor_sBehavior_2345;
  readSelectedIndicatorColor_sBehavior_2345 = v0;
}

- (id)conversationListDateColor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = conversationListDateColor_sBehavior_2350;
  if (conversationListDateColor_sBehavior_2350)
  {
    v4 = conversationListDateColor_sIsIncreaseContrastEnabled_conversationListDateColor_2349 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = conversationListDateColor_sBehavior_2350;
    conversationListDateColor_sBehavior_2350 = v5;

    conversationListDateColor_sIsIncreaseContrastEnabled_conversationListDateColor_2349 = v2;
    v3 = conversationListDateColor_sBehavior_2350;
  }

  return v3;
}

- (id)conversationListCellSelectedDateColor
{
  if (conversationListCellSelectedDateColor_once_2352 != -1)
  {
    [CKUIThemeMac conversationListCellSelectedDateColor];
  }

  v3 = conversationListCellSelectedDateColor_sBehavior_2351;

  return v3;
}

void __53__CKUIThemeMac_conversationListCellSelectedDateColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.8];
  v1 = conversationListCellSelectedDateColor_sBehavior_2351;
  conversationListCellSelectedDateColor_sBehavior_2351 = v0;
}

- (id)conversationListCellColor
{
  if (conversationListCellColor_once_2356 != -1)
  {
    [CKUIThemeMac conversationListCellColor];
  }

  v3 = conversationListCellColor_sBehavior_2355;

  return v3;
}

void __41__CKUIThemeMac_conversationListCellColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] clearColor];
  }

  v1 = conversationListCellColor_sBehavior_2355;
  conversationListCellColor_sBehavior_2355 = v0;
}

- (id)conversationListBackgroundColor
{
  if (conversationListBackgroundColor_once_2360 != -1)
  {
    [CKUIThemeMac conversationListBackgroundColor];
  }

  v3 = conversationListBackgroundColor_sBehavior_2359;

  return v3;
}

void __47__CKUIThemeMac_conversationListBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  v1 = conversationListBackgroundColor_sBehavior_2359;
  conversationListBackgroundColor_sBehavior_2359 = v0;
}

- (id)conversationListCollectionViewBackgroundColor
{
  if (conversationListCollectionViewBackgroundColor_once_2364 != -1)
  {
    [CKUIThemeMac conversationListCollectionViewBackgroundColor];
  }

  v3 = conversationListCollectionViewBackgroundColor_sBehavior_2363;

  return v3;
}

void __61__CKUIThemeMac_conversationListCollectionViewBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v1 = conversationListCollectionViewBackgroundColor_sBehavior_2363;
  conversationListCollectionViewBackgroundColor_sBehavior_2363 = v0;
}

- (id)conversationListPinnedCellSelectorViewColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKUIThemeMac_conversationListPinnedCellSelectorViewColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListPinnedCellSelectorViewColor_once_2368 != -1)
  {
    dispatch_once(&conversationListPinnedCellSelectorViewColor_once_2368, block);
  }

  return conversationListPinnedCellSelectorViewColor_sBehavior_2367;
}

void __59__CKUIThemeMac_conversationListPinnedCellSelectorViewColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationListSelectedCellColor];
  v2 = conversationListPinnedCellSelectorViewColor_sBehavior_2367;
  conversationListPinnedCellSelectorViewColor_sBehavior_2367 = v1;
}

- (id)conversationListPinnedConversationNameSelectedColor
{
  if (conversationListPinnedConversationNameSelectedColor_once_2370 != -1)
  {
    [CKUIThemeMac conversationListPinnedConversationNameSelectedColor];
  }

  v3 = conversationListPinnedConversationNameSelectedColor_sBehavior_2369;

  return v3;
}

void __67__CKUIThemeMac_conversationListPinnedConversationNameSelectedColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = conversationListPinnedConversationNameSelectedColor_sBehavior_2369;
  conversationListPinnedConversationNameSelectedColor_sBehavior_2369 = v0;
}

- (id)conversationListFocusFilterBannerTextColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKUIThemeMac_conversationListFocusFilterBannerTextColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (conversationListFocusFilterBannerTextColor_once_2374 != -1)
  {
    dispatch_once(&conversationListFocusFilterBannerTextColor_once_2374, block);
  }

  return conversationListFocusFilterBannerTextColor_sBehavior_2373;
}

void __58__CKUIThemeMac_conversationListFocusFilterBannerTextColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationListSummaryColor];
  v2 = conversationListFocusFilterBannerTextColor_sBehavior_2373;
  conversationListFocusFilterBannerTextColor_sBehavior_2373 = v1;
}

- (id)selectedConversationListTypingIndicatorBubbleColor
{
  if (selectedConversationListTypingIndicatorBubbleColor_once_2376 != -1)
  {
    [CKUIThemeMac selectedConversationListTypingIndicatorBubbleColor];
  }

  v3 = selectedConversationListTypingIndicatorBubbleColor_sBehavior_2375;

  return v3;
}

void __66__CKUIThemeMac_selectedConversationListTypingIndicatorBubbleColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = selectedConversationListTypingIndicatorBubbleColor_sBehavior_2375;
  selectedConversationListTypingIndicatorBubbleColor_sBehavior_2375 = v0;
}

- (id)spotlightSearchBackgroundColor
{
  if (spotlightSearchBackgroundColor_once_2380 != -1)
  {
    [CKUIThemeMac spotlightSearchBackgroundColor];
  }

  v3 = spotlightSearchBackgroundColor_sBehavior_2379;

  return v3;
}

void __46__CKUIThemeMac_spotlightSearchBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v1 = spotlightSearchBackgroundColor_sBehavior_2379;
  spotlightSearchBackgroundColor_sBehavior_2379 = v0;
}

- (id)detailsCollectionViewBackgroundColor
{
  if (detailsCollectionViewBackgroundColor_once_2384 != -1)
  {
    [CKUIThemeMac detailsCollectionViewBackgroundColor];
  }

  v3 = detailsCollectionViewBackgroundColor_sBehavior_2383;

  return v3;
}

void __52__CKUIThemeMac_detailsCollectionViewBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v1 = detailsCollectionViewBackgroundColor_sBehavior_2383;
  detailsCollectionViewBackgroundColor_sBehavior_2383 = v0;
}

- (id)spotlightSearchBarBackgroundColor
{
  if (spotlightSearchBarBackgroundColor_once != -1)
  {
    [CKUIThemeMac spotlightSearchBarBackgroundColor];
  }

  v3 = spotlightSearchBarBackgroundColor_sBehavior;

  return v3;
}

void __49__CKUIThemeMac_spotlightSearchBarBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] systemLightGrayTintColor];
  v1 = spotlightSearchBarBackgroundColor_sBehavior;
  spotlightSearchBarBackgroundColor_sBehavior = v0;
}

- (id)spotlightSearchSegmentedControlBackgroundColor
{
  if (spotlightSearchSegmentedControlBackgroundColor_once_2390 != -1)
  {
    [CKUIThemeMac spotlightSearchSegmentedControlBackgroundColor];
  }

  v3 = spotlightSearchSegmentedControlBackgroundColor_sBehavior_2389;

  return v3;
}

void __62__CKUIThemeMac_spotlightSearchSegmentedControlBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  v1 = spotlightSearchSegmentedControlBackgroundColor_sBehavior_2389;
  spotlightSearchSegmentedControlBackgroundColor_sBehavior_2389 = v0;
}

- (id)contactsActionButtonBackgroundColor
{
  if (contactsActionButtonBackgroundColor_once_2394 != -1)
  {
    [CKUIThemeMac contactsActionButtonBackgroundColor];
  }

  v3 = contactsActionButtonBackgroundColor_sBehavior_2393;

  return v3;
}

void __51__CKUIThemeMac_contactsActionButtonBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v1 = contactsActionButtonBackgroundColor_sBehavior_2393;
  contactsActionButtonBackgroundColor_sBehavior_2393 = v0;
}

- (id)detailsGroupPhotoBackgroundColor
{
  if (detailsGroupPhotoBackgroundColor_once_2398 != -1)
  {
    [CKUIThemeMac detailsGroupPhotoBackgroundColor];
  }

  return 0;
}

- (id)detailsHeaderFooterContentViewBackgroundColor
{
  if (detailsHeaderFooterContentViewBackgroundColor_once_2402 != -1)
  {
    [CKUIThemeMac detailsHeaderFooterContentViewBackgroundColor];
  }

  v3 = detailsHeaderFooterContentViewBackgroundColor_sBehavior_2401;

  return v3;
}

void __61__CKUIThemeMac_detailsHeaderFooterContentViewBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  v1 = detailsHeaderFooterContentViewBackgroundColor_sBehavior_2401;
  detailsHeaderFooterContentViewBackgroundColor_sBehavior_2401 = v0;
}

- (id)iosMacDetailsCellColor
{
  if (iosMacDetailsCellColor_once_2406 != -1)
  {
    [CKUIThemeMac iosMacDetailsCellColor];
  }

  v3 = iosMacDetailsCellColor_sBehavior_2405;

  return v3;
}

void __38__CKUIThemeMac_iosMacDetailsCellColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  v1 = iosMacDetailsCellColor_sBehavior_2405;
  iosMacDetailsCellColor_sBehavior_2405 = v0;
}

- (id)detailsBackgroundColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CKUIThemeMac_detailsBackgroundColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (detailsBackgroundColor_once_2410 != -1)
  {
    dispatch_once(&detailsBackgroundColor_once_2410, block);
  }

  return detailsBackgroundColor_sBehavior_2409;
}

void __38__CKUIThemeMac_detailsBackgroundColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) iosMacDetailsCellColor];
  v2 = detailsBackgroundColor_sBehavior_2409;
  detailsBackgroundColor_sBehavior_2409 = v1;
}

- (id)detailsAddButtonBackgroundColor
{
  if (detailsAddButtonBackgroundColor_once_2412 != -1)
  {
    [CKUIThemeMac detailsAddButtonBackgroundColor];
  }

  v3 = detailsAddButtonBackgroundColor_sBehavior_2411;

  return v3;
}

void __47__CKUIThemeMac_detailsAddButtonBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v1 = detailsAddButtonBackgroundColor_sBehavior_2411;
  detailsAddButtonBackgroundColor_sBehavior_2411 = v0;
}

- (id)detailsAttachmentsDecorationViewBackgroundColor
{
  if (detailsAttachmentsDecorationViewBackgroundColor_once_2416 != -1)
  {
    [CKUIThemeMac detailsAttachmentsDecorationViewBackgroundColor];
  }

  v3 = detailsAttachmentsDecorationViewBackgroundColor_sBehavior_2415;

  return v3;
}

void __63__CKUIThemeMac_detailsAttachmentsDecorationViewBackgroundColor__block_invoke()
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 macApplicationMetricsGatheringEnabled])
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v1 = detailsAttachmentsDecorationViewBackgroundColor_sBehavior_2415;
  detailsAttachmentsDecorationViewBackgroundColor_sBehavior_2415 = v0;
}

- (id)paddleSeparatorColor
{
  if (paddleSeparatorColor_once_2420 != -1)
  {
    [CKUIThemeMac paddleSeparatorColor];
  }

  v3 = paddleSeparatorColor_sBehavior_2419;

  return v3;
}

void __36__CKUIThemeMac_paddleSeparatorColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
  v1 = paddleSeparatorColor_sBehavior_2419;
  paddleSeparatorColor_sBehavior_2419 = v0;
}

@end
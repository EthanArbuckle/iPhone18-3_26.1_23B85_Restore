@interface CKUIBehaviorPad
- (BOOL)_shouldUnreadIndicatorChangeOnSelection;
- (BOOL)canPresentOverKeyboard;
- (BOOL)canShowContactPhotosInConversationList;
- (BOOL)conversationListMultiSelectAccessoryUsesDefaultStyling;
- (BOOL)conversationListPrefersEditButtonOnTrailingEdge;
- (BOOL)entryViewAlwaysUsesConcentricPadding;
- (BOOL)isAppStripInKeyboard;
- (BOOL)isConversationListResizable;
- (BOOL)keyboardSizeDeterminesAppCardDetentHeight;
- (BOOL)lowClearanceInLandscape;
- (BOOL)photoPickerShouldZoomOnSelection;
- (BOOL)presentForwardingUIModally;
- (BOOL)presentsAutocompleteInAPopover;
- (BOOL)presentsQuickLookController;
- (BOOL)shouldAlignRecipientGlyphsWithMargins;
- (BOOL)shouldRefreshAlternateAddressesSheet;
- (BOOL)shouldShowDisclosureChevronInRecipientAtoms;
- (BOOL)shouldSuppressRotationInNewCompose;
- (BOOL)shouldUnreadIndicatorChangeOnSelection;
- (BOOL)showMMSSetup;
- (BOOL)showPendingInConversationList;
- (BOOL)showsConversationListCellChevronImage;
- (BOOL)supportsEntryViewPlusButtonLongPress;
- (BOOL)usesPopovers;
- (BOOL)usesUncollapsedSplitview;
- (CGSize)attachmentBrowserDefaultSizeForSquare;
- (CGSize)detonatedItemBalloonViewSize;
- (CGSize)detonatedItemDocumentIconSize;
- (CGSize)documentIconSize;
- (UIEdgeInsets)contactPhotoTranscriptInsets;
- (UIEdgeInsets)defaultAVPlayerViewContorllerControlsInsets;
- (UIEdgeInsets)minTranscriptMarginInsets;
- (double)appDrawerTitleIconHeight;
- (double)appDrawerTitleIconWidth;
- (double)attachmentBrowserGridInterItemSpacing;
- (double)conversationListMinimumWidthForHiddenContactImage;
- (double)conversationListWidthForInterfaceOrientation:(int64_t)orientation;
- (double)entryViewConcentricPadding;
- (double)entryViewMaxHandWritingPluginShelfHeight;
- (double)photoPickerMaxPopoverPhotoHeight;
- (double)photoPickerPopoverWidth;
- (double)previewMaxWidth;
- (double)searchLinksThumbnailWidth;
- (double)searchPhotosThumbnailWidth;
- (double)transcriptContactImageDiameter;
- (double)transcriptGroupTypingContactImageDiameter;
- (double)transcriptHeaderViewMaxRows;
- (id)fullscreenPickerActionLayoutAxisPrioritiesForWidth:(double)width;
- (id)theme;
- (int64_t)groupRecipientSelectionPresentationStyle;
- (unint64_t)defaultConversationViewingMessageCount;
- (unint64_t)numberOfButtonsInPhotoPicker;
- (unint64_t)suggestedAppStripLimit;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation CKUIBehaviorPad

- (id)theme
{
  if (theme_once_6126 != -1)
  {
    [CKUIBehaviorPad theme];
  }

  v3 = theme_sBehavior_6125;

  return v3;
}

void __24__CKUIBehaviorPad_theme__block_invoke()
{
  v0 = objc_alloc_init(CKUIThemePad);
  v1 = theme_sBehavior_6125;
  theme_sBehavior_6125 = v0;
}

- (BOOL)usesUncollapsedSplitview
{
  if (usesUncollapsedSplitview_once_6131 != -1)
  {
    [CKUIBehaviorPad usesUncollapsedSplitview];
  }

  return usesUncollapsedSplitview_sBehavior_6130;
}

- (BOOL)shouldSuppressRotationInNewCompose
{
  if (shouldSuppressRotationInNewCompose_once_6135 != -1)
  {
    [CKUIBehaviorPad shouldSuppressRotationInNewCompose];
  }

  return 0;
}

- (BOOL)lowClearanceInLandscape
{
  if (lowClearanceInLandscape_once_6139 != -1)
  {
    [CKUIBehaviorPad lowClearanceInLandscape];
  }

  return 0;
}

- (BOOL)usesPopovers
{
  if (usesPopovers_once_6143 != -1)
  {
    [CKUIBehaviorPad usesPopovers];
  }

  return usesPopovers_sBehavior_6142;
}

- (BOOL)canPresentOverKeyboard
{
  if (canPresentOverKeyboard_once_6147 != -1)
  {
    [CKUIBehaviorPad canPresentOverKeyboard];
  }

  return 0;
}

- (BOOL)keyboardSizeDeterminesAppCardDetentHeight
{
  if (keyboardSizeDeterminesAppCardDetentHeight_once_6151 != -1)
  {
    [CKUIBehaviorPad keyboardSizeDeterminesAppCardDetentHeight];
  }

  return 0;
}

- (BOOL)presentsQuickLookController
{
  if (presentsQuickLookController_once_6155 != -1)
  {
    [CKUIBehaviorPad presentsQuickLookController];
  }

  return presentsQuickLookController_sBehavior_6154;
}

- (BOOL)presentForwardingUIModally
{
  if (presentForwardingUIModally_once_6159 != -1)
  {
    [CKUIBehaviorPad presentForwardingUIModally];
  }

  return 0;
}

- (double)transcriptHeaderViewMaxRows
{
  if (transcriptHeaderViewMaxRows_once_6163 != -1)
  {
    [CKUIBehaviorPad transcriptHeaderViewMaxRows];
  }

  return *&transcriptHeaderViewMaxRows_sBehavior_6162;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (supportedInterfaceOrientations_once_6167 != -1)
  {
    [CKUIBehaviorPad supportedInterfaceOrientations];
  }

  if (supportedInterfaceOrientations_sBehavior_6166)
  {
    return 30;
  }

  else
  {
    return 0;
  }
}

- (BOOL)showMMSSetup
{
  if (showMMSSetup_once_6171 != -1)
  {
    [CKUIBehaviorPad showMMSSetup];
  }

  return 0;
}

- (unint64_t)defaultConversationViewingMessageCount
{
  if (defaultConversationViewingMessageCount_once_6175 != -1)
  {
    [CKUIBehaviorPad defaultConversationViewingMessageCount];
  }

  if (defaultConversationViewingMessageCount_sBehavior_6174)
  {
    return 50;
  }

  else
  {
    return 0;
  }
}

- (double)conversationListWidthForInterfaceOrientation:(int64_t)orientation
{
  result = 320.0;
  if ((orientation - 1) >= 2)
  {
    result = 0.0;
  }

  if ((orientation - 3) < 2)
  {
    return 375.0;
  }

  return result;
}

- (BOOL)isConversationListResizable
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  return isModernSplitViewControllerEnabled;
}

- (BOOL)showPendingInConversationList
{
  if (showPendingInConversationList_once_6179 != -1)
  {
    [CKUIBehaviorPad showPendingInConversationList];
  }

  return showPendingInConversationList_sBehavior_6178;
}

- (BOOL)canShowContactPhotosInConversationList
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKUIBehaviorPad_canShowContactPhotosInConversationList__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (canShowContactPhotosInConversationList_once_6183 != -1)
  {
    dispatch_once(&canShowContactPhotosInConversationList_once_6183, block);
  }

  return canShowContactPhotosInConversationList_sBehavior_6182;
}

uint64_t __57__CKUIBehaviorPad_canShowContactPhotosInConversationList__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) conversationListCellUsesLargeTextLayout];
  canShowContactPhotosInConversationList_sBehavior_6182 = result ^ 1;
  return result;
}

- (BOOL)showsConversationListCellChevronImage
{
  if (showsConversationListCellChevronImage_once_6185 != -1)
  {
    [CKUIBehaviorPad showsConversationListCellChevronImage];
  }

  return showsConversationListCellChevronImage_sBehavior_6184;
}

- (BOOL)conversationListPrefersEditButtonOnTrailingEdge
{
  if (conversationListPrefersEditButtonOnTrailingEdge_once_6189 != -1)
  {
    [CKUIBehaviorPad conversationListPrefersEditButtonOnTrailingEdge];
  }

  return conversationListPrefersEditButtonOnTrailingEdge_sBehavior_6188;
}

- (BOOL)conversationListMultiSelectAccessoryUsesDefaultStyling
{
  if (conversationListMultiSelectAccessoryUsesDefaultStyling_once_6193 != -1)
  {
    [CKUIBehaviorPad conversationListMultiSelectAccessoryUsesDefaultStyling];
  }

  return conversationListMultiSelectAccessoryUsesDefaultStyling_sBehavior_6192;
}

- (BOOL)shouldUnreadIndicatorChangeOnSelection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKUIBehaviorPad_shouldUnreadIndicatorChangeOnSelection__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (shouldUnreadIndicatorChangeOnSelection_once_6197 != -1)
  {
    dispatch_once(&shouldUnreadIndicatorChangeOnSelection_once_6197, block);
  }

  return shouldUnreadIndicatorChangeOnSelection_sBehavior_6196;
}

uint64_t __57__CKUIBehaviorPad_shouldUnreadIndicatorChangeOnSelection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldUnreadIndicatorChangeOnSelection];
  shouldUnreadIndicatorChangeOnSelection_sBehavior_6196 = result;
  return result;
}

- (BOOL)_shouldUnreadIndicatorChangeOnSelection
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  return isModernSplitViewControllerEnabled;
}

- (double)conversationListMinimumWidthForHiddenContactImage
{
  if (conversationListMinimumWidthForHiddenContactImage_once_6199 != -1)
  {
    [CKUIBehaviorPad conversationListMinimumWidthForHiddenContactImage];
  }

  return *&conversationListMinimumWidthForHiddenContactImage_sBehavior_6198;
}

- (double)previewMaxWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CKUIBehaviorPad_previewMaxWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (previewMaxWidth_once_6203 != -1)
  {
    dispatch_once(&previewMaxWidth_once_6203, block);
  }

  return *&previewMaxWidth_sBehavior_6202;
}

double __34__CKUIBehaviorPad_previewMaxWidth__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CKUIBehaviorPad;
  objc_msgSendSuper2(&v3, sel_previewMaxWidth);
  result = fmin(v1, 300.0);
  previewMaxWidth_sBehavior_6202 = *&result;
  return result;
}

- (double)transcriptContactImageDiameter
{
  if (transcriptContactImageDiameter_once_6207 != -1)
  {
    [CKUIBehaviorPad transcriptContactImageDiameter];
  }

  return *&transcriptContactImageDiameter_sBehavior_6206;
}

- (double)transcriptGroupTypingContactImageDiameter
{
  if (transcriptGroupTypingContactImageDiameter_once_6211 != -1)
  {
    [CKUIBehaviorPad transcriptGroupTypingContactImageDiameter];
  }

  return *&transcriptGroupTypingContactImageDiameter_sBehavior_6210;
}

- (UIEdgeInsets)contactPhotoTranscriptInsets
{
  if (contactPhotoTranscriptInsets_once != -1)
  {
    [CKUIBehaviorPad contactPhotoTranscriptInsets];
  }

  v3 = *(&contactPhotoTranscriptInsets_sBehavior_6214 + 1);
  v2 = *&contactPhotoTranscriptInsets_sBehavior_6214;
  v4 = *&qword_1EAD75910;
  v5 = unk_1EAD75918;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

__n128 __47__CKUIBehaviorPad_contactPhotoTranscriptInsets__block_invoke()
{
  result = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  contactPhotoTranscriptInsets_sBehavior_6214 = *MEMORY[0x1E69DDCE0];
  *&qword_1EAD75910 = v1;
  return result;
}

- (UIEdgeInsets)minTranscriptMarginInsets
{
  if (minTranscriptMarginInsets_once_6218 != -1)
  {
    [CKUIBehaviorPad minTranscriptMarginInsets];
  }

  v2 = *&minTranscriptMarginInsets_sBehavior_6217_1;
  v3 = *&minTranscriptMarginInsets_sBehavior_6217_3;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)defaultAVPlayerViewContorllerControlsInsets
{
  if (defaultAVPlayerViewContorllerControlsInsets_once_6222 != -1)
  {
    [CKUIBehaviorPad defaultAVPlayerViewContorllerControlsInsets];
  }

  v2 = *&defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_0;
  v3 = *&defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_1;
  v4 = *&defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_2;
  v5 = *&defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __62__CKUIBehaviorPad_defaultAVPlayerViewContorllerControlsInsets__block_invoke()
{
  defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_0 = 0x4020000000000000;
  defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_1 = 0x4020000000000000;
  defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_2 = 0x4020000000000000;
  defaultAVPlayerViewContorllerControlsInsets_sBehavior_6221_3 = 0x4020000000000000;
}

- (CGSize)documentIconSize
{
  if (documentIconSize_once_6226 != -1)
  {
    [CKUIBehaviorPad documentIconSize];
  }

  v2 = *&documentIconSize_sBehavior_6225_0;
  v3 = *&documentIconSize_sBehavior_6225_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldShowDisclosureChevronInRecipientAtoms
{
  if (shouldShowDisclosureChevronInRecipientAtoms_once_6230 != -1)
  {
    [CKUIBehaviorPad shouldShowDisclosureChevronInRecipientAtoms];
  }

  return 0;
}

- (BOOL)shouldRefreshAlternateAddressesSheet
{
  if (shouldRefreshAlternateAddressesSheet_once_6234 != -1)
  {
    [CKUIBehaviorPad shouldRefreshAlternateAddressesSheet];
  }

  return shouldRefreshAlternateAddressesSheet_sBehavior_6233;
}

- (BOOL)presentsAutocompleteInAPopover
{
  if (presentsAutocompleteInAPopover_once_6238 != -1)
  {
    [CKUIBehaviorPad presentsAutocompleteInAPopover];
  }

  return 0;
}

- (BOOL)entryViewAlwaysUsesConcentricPadding
{
  if (entryViewAlwaysUsesConcentricPadding_once_6242 != -1)
  {
    [CKUIBehaviorPad entryViewAlwaysUsesConcentricPadding];
  }

  return entryViewAlwaysUsesConcentricPadding_sBehavior_6241;
}

- (double)entryViewConcentricPadding
{
  if (entryViewConcentricPadding_once_6246 != -1)
  {
    [CKUIBehaviorPad entryViewConcentricPadding];
  }

  return *&entryViewConcentricPadding_sBehavior_6245;
}

- (BOOL)isAppStripInKeyboard
{
  if (isAppStripInKeyboard_once_6250 != -1)
  {
    [CKUIBehaviorPad isAppStripInKeyboard];
  }

  return 0;
}

- (BOOL)supportsEntryViewPlusButtonLongPress
{
  if (supportsEntryViewPlusButtonLongPress_once_6254 != -1)
  {
    [CKUIBehaviorPad supportsEntryViewPlusButtonLongPress];
  }

  return supportsEntryViewPlusButtonLongPress_sBehavior_6253;
}

- (double)entryViewMaxHandWritingPluginShelfHeight
{
  if (entryViewMaxHandWritingPluginShelfHeight_once_6258 != -1)
  {
    [CKUIBehaviorPad entryViewMaxHandWritingPluginShelfHeight];
  }

  return *&entryViewMaxHandWritingPluginShelfHeight_sBehavior_6257;
}

void __59__CKUIBehaviorPad_entryViewMaxHandWritingPluginShelfHeight__block_invoke()
{
  if (CKIsBigIdiom_onceToken != -1)
  {
    __43__CKUIBehavior_entryViewMaxSendLaterHeight__block_invoke_cold_1();
  }

  v0 = 128.0;
  if (CKIsBigIdiom_sBig)
  {
    v0 = 135.0;
  }

  entryViewMaxHandWritingPluginShelfHeight_sBehavior_6257 = *&v0;
}

- (CGSize)attachmentBrowserDefaultSizeForSquare
{
  if (attachmentBrowserDefaultSizeForSquare_once_6262 != -1)
  {
    [CKUIBehaviorPad attachmentBrowserDefaultSizeForSquare];
  }

  v2 = *&attachmentBrowserDefaultSizeForSquare_sBehavior_6261_0;
  v3 = *&attachmentBrowserDefaultSizeForSquare_sBehavior_6261_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)attachmentBrowserGridInterItemSpacing
{
  if (attachmentBrowserGridInterItemSpacing_once_6266 != -1)
  {
    [CKUIBehaviorPad attachmentBrowserGridInterItemSpacing];
  }

  return *&attachmentBrowserGridInterItemSpacing_sBehavior_6265;
}

- (double)photoPickerPopoverWidth
{
  if (photoPickerPopoverWidth_once_6270 != -1)
  {
    [CKUIBehaviorPad photoPickerPopoverWidth];
  }

  return *&photoPickerPopoverWidth_sBehavior_6269;
}

- (unint64_t)numberOfButtonsInPhotoPicker
{
  if (numberOfButtonsInPhotoPicker_once_6274 != -1)
  {
    [CKUIBehaviorPad numberOfButtonsInPhotoPicker];
  }

  if (numberOfButtonsInPhotoPicker_sBehavior_6273)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)photoPickerShouldZoomOnSelection
{
  if (photoPickerShouldZoomOnSelection_once != -1)
  {
    [CKUIBehaviorPad photoPickerShouldZoomOnSelection];
  }

  return photoPickerShouldZoomOnSelection_sBehavior;
}

- (double)photoPickerMaxPopoverPhotoHeight
{
  if (photoPickerMaxPopoverPhotoHeight_once_6280 != -1)
  {
    [CKUIBehaviorPad photoPickerMaxPopoverPhotoHeight];
  }

  return *&photoPickerMaxPopoverPhotoHeight_sBehavior_6279;
}

- (BOOL)shouldAlignRecipientGlyphsWithMargins
{
  if (shouldAlignRecipientGlyphsWithMargins_once_6284 != -1)
  {
    [CKUIBehaviorPad shouldAlignRecipientGlyphsWithMargins];
  }

  return shouldAlignRecipientGlyphsWithMargins_sBehavior_6283;
}

- (int64_t)groupRecipientSelectionPresentationStyle
{
  if (groupRecipientSelectionPresentationStyle_once_6288 != -1)
  {
    [CKUIBehaviorPad groupRecipientSelectionPresentationStyle];
  }

  if (groupRecipientSelectionPresentationStyle_sBehavior_6287)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)fullscreenPickerActionLayoutAxisPrioritiesForWidth:(double)width
{
  if (width >= 550.0)
  {
    v5 = &unk_1F04E69D8;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CKUIBehaviorPad;
    v5 = [(CKUIBehavior *)&v7 fullscreenPickerActionLayoutAxisPrioritiesForWidth:?];
  }

  return v5;
}

- (double)searchPhotosThumbnailWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CKUIBehaviorPad_searchPhotosThumbnailWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (searchPhotosThumbnailWidth_once_6298 != -1)
  {
    dispatch_once(&searchPhotosThumbnailWidth_once_6298, block);
  }

  return *&searchPhotosThumbnailWidth_sBehavior_6297;
}

double __45__CKUIBehaviorPad_searchPhotosThumbnailWidth__block_invoke(uint64_t a1)
{
  [*(a1 + 32) maxConversationListWidth];
  result = v1 * 0.5;
  searchPhotosThumbnailWidth_sBehavior_6297 = *&result;
  return result;
}

- (double)searchLinksThumbnailWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKUIBehaviorPad_searchLinksThumbnailWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (searchLinksThumbnailWidth_once_6300 != -1)
  {
    dispatch_once(&searchLinksThumbnailWidth_once_6300, block);
  }

  return *&searchLinksThumbnailWidth_sBehavior_6299;
}

uint64_t __44__CKUIBehaviorPad_searchLinksThumbnailWidth__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) maxConversationListWidth];
  searchLinksThumbnailWidth_sBehavior_6299 = v2;
  return result;
}

- (unint64_t)suggestedAppStripLimit
{
  if (suggestedAppStripLimit_once_6302 != -1)
  {
    [CKUIBehaviorPad suggestedAppStripLimit];
  }

  if (suggestedAppStripLimit_sBehavior_6301)
  {
    return 30;
  }

  else
  {
    return 0;
  }
}

- (double)appDrawerTitleIconHeight
{
  if (appDrawerTitleIconHeight_once != -1)
  {
    [CKUIBehaviorPad appDrawerTitleIconHeight];
  }

  return *&appDrawerTitleIconHeight_sBehavior;
}

- (double)appDrawerTitleIconWidth
{
  if (appDrawerTitleIconWidth_once != -1)
  {
    [CKUIBehaviorPad appDrawerTitleIconWidth];
  }

  return *&appDrawerTitleIconWidth_sBehavior;
}

- (CGSize)detonatedItemBalloonViewSize
{
  if (detonatedItemBalloonViewSize_once_6310 != -1)
  {
    [CKUIBehaviorPad detonatedItemBalloonViewSize];
  }

  v2 = *&detonatedItemBalloonViewSize_sBehavior_6309_0;
  v3 = *&detonatedItemBalloonViewSize_sBehavior_6309_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)detonatedItemDocumentIconSize
{
  if (detonatedItemDocumentIconSize_once_6314 != -1)
  {
    [CKUIBehaviorPad detonatedItemDocumentIconSize];
  }

  v2 = *&detonatedItemDocumentIconSize_sBehavior_6313_0;
  v3 = *&detonatedItemDocumentIconSize_sBehavior_6313_1;
  result.height = v3;
  result.width = v2;
  return result;
}

@end
@interface CKUIBehaviorMac
- (BOOL)_forceMinTranscriptMarginInsets;
- (BOOL)browserButtonShouldUseMenu;
- (BOOL)canPluginBalloonsUseOpaqueMask;
- (BOOL)canPresentOverKeyboard;
- (BOOL)conversationListHidesSearchBarWhenScrolling;
- (BOOL)effectPickerPresentsSelectionView;
- (BOOL)enableBalloonTextSelection;
- (BOOL)entryViewAlwaysUsesConcentricPadding;
- (BOOL)entryViewCoverHasOuterStroke;
- (BOOL)entryViewFollowsKeyboardLayoutGuide;
- (BOOL)entryViewSupportsBrowserButton;
- (BOOL)entryViewSupportsPlusButton;
- (BOOL)forceMinTranscriptMarginInsets;
- (BOOL)isEntryViewFirstResponderOnViewAppearance;
- (BOOL)isEntryViewInputAccessory;
- (BOOL)isSendButtonEnabledOnPlatform;
- (BOOL)presentsAutocompleteInAPopover;
- (BOOL)recipientSelectionViewClipsToBounds;
- (BOOL)searchControllerObscuresConversationList;
- (BOOL)shouldShowAvatarForWidth:(double)width;
- (BOOL)shouldUnreadIndicatorChangeOnSelection;
- (BOOL)showsBalloonChevron;
- (BOOL)supportsOrbPreviewsInConversationList;
- (BOOL)transcriptMinBottomInsetIsEntryViewHeight;
- (BOOL)useMacToolbar;
- (CGPoint)messageAcknowledgmentTranscriptBalloonRelativePosition;
- (CGPoint)transcriptTypingIndicatorLargeBubbleGrowOffset;
- (CGPoint)transcriptTypingIndicatorLargeBubbleOffset;
- (CGSize)aggregateAcknowledgmentTranscriptBalloonSize;
- (CGSize)audioProgressViewSize;
- (CGSize)avatarSize;
- (CGSize)balloonMaskSize;
- (CGSize)balloonMaskTailSizeForTailShape:(char)shape;
- (CGSize)cancelButtonSize;
- (CGSize)emojiStickerTranscriptBalloonSize;
- (CGSize)entryViewPlusButtonSize;
- (CGSize)macJoinFaceTimeNSToolbarItemSize;
- (CGSize)macNSToolbarItemSize;
- (CGSize)mediaObjectCachedIconSize;
- (CGSize)messageAcknowledgmentAnchorBubbleOffset;
- (CGSize)messageAcknowledgmentAnchorBubbleSize;
- (CGSize)messageAcknowledgmentButtonSize;
- (CGSize)messageAcknowledgmentIntermediateBubbleSize;
- (CGSize)messageAcknowledgmentPickerBarAcknowledgmentImageSize;
- (CGSize)messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize;
- (CGSize)messageAcknowledgmentPickerBarOffsetFromBalloon;
- (CGSize)messageAcknowledgmentPickerBarSize;
- (CGSize)messageAcknowledgmentPillBubbleSize;
- (CGSize)messageAcknowledgmentTranscriptBalloonSize;
- (CGSize)minConversationListWidthComposeButtonSize;
- (CGSize)minWindowSize;
- (CGSize)multilineBalloonMaskSize;
- (CGSize)pinnedConversationActivityBroadShadowDarkOffset;
- (CGSize)pinnedConversationActivityBroadShadowLightOffset;
- (CGSize)pinnedConversationActivityTightShadowDarkOffset;
- (CGSize)pinnedConversationActivityTightShadowLightOffset;
- (CGSize)replyBalloonMaskSize;
- (CGSize)replyDeleteBalloonMaskSize;
- (CGSize)replyMultilineBalloonMaskSize;
- (CGSize)replySkinnyBalloonMaskSize;
- (CGSize)roundBalloonMaskSizeWithTailShape:(char)shape;
- (CGSize)skinnyBalloonMaskSize;
- (CGSize)stickerPopoverSize;
- (CGSize)taillessMultilineBalloonMaskSize;
- (CGSize)thumbnailFillSizeForWidth:(double)width imageSize:(CGSize)size;
- (CGSize)transcriptTypingIndicatorDefaultSize;
- (CGSize)transcriptTypingIndicatorLargeBubbleSize;
- (CGSize)unreadIndicatorImageViewSize;
- (Class)navigationBarClass;
- (NSDirectionalEdgeInsets)collaborationOptionsPopoverInsets;
- (NSDirectionalEdgeInsets)searchConversationSectionInsets;
- (NSDirectionalEdgeInsets)searchMessagesSectionInsets;
- (NSDirectionalEdgeInsets)searchResultsInsets;
- (UIEdgeInsets)_entryViewVerticalCoverInsets;
- (UIEdgeInsets)_entryViewVerticalTextFieldInsets;
- (UIEdgeInsets)_minTranscriptMarginInsets;
- (UIEdgeInsets)attachmentReplyPreviewBalloonAlignmentRectInsets;
- (UIEdgeInsets)conversationListPinnedCellTitleLabelVerticalPadding;
- (UIEdgeInsets)detailsContactCellButtonEdgeInsets;
- (UIEdgeInsets)entryViewHorizontalCoverInsets;
- (UIEdgeInsets)entryViewVerticalCoverInsets;
- (UIEdgeInsets)entryViewVerticalTextFieldInsets;
- (UIEdgeInsets)fieldPlatterMarginInsetsForLayoutMargins:(UIEdgeInsets)margins;
- (UIEdgeInsets)fromFieldMarginInsets;
- (UIEdgeInsets)fromPickerStackMarginInset;
- (UIEdgeInsets)messageAcknowledgmentTranscriptGlyphInset;
- (UIEdgeInsets)messageEntryContentViewSendLaterDateInsets;
- (UIEdgeInsets)messageEntryContentViewSendLaterInsets;
- (UIEdgeInsets)minTranscriptMarginInsets;
- (UIEdgeInsets)replyButtonEdgeInsets;
- (UIEdgeInsets)searchNavbarCanvasInsets;
- (UIEdgeInsets)searchSectionMarginInsets;
- (UIEdgeInsets)sendLaterEditViewInsets;
- (UIEdgeInsets)suggestedActionButtonInsets;
- (UIEdgeInsets)textBalloonPillContentInsets;
- (UIEdgeInsets)textReplyPreviewBalloonAlignmentRectInsets;
- (UIEdgeInsets)textReplyPreviewBalloonPillContentInsets;
- (UIEdgeInsets)toFieldInternalMarginInsets;
- (UIEdgeInsets)toFieldScrollViewInsets;
- (double)_bottomConversationListSpace;
- (double)_entryContentViewTextLeftOffset;
- (double)_entryViewCoverHorizontalMargin;
- (double)_entryViewCoverMinHeight;
- (double)_macEffectPickerTitleLeadingPadding;
- (double)_topConversationListSpace;
- (double)attributionViewMaxWidth;
- (double)attributionViewMinPadding;
- (double)audioHintViewPadding;
- (double)audioReplyPreviewBalloonInset;
- (double)autocompletePopOverLeftOffset;
- (double)avatarContactImageNameMargin;
- (double)avatarNameWidth;
- (double)avatarSpacingMargin;
- (double)balloonContiguousSpace;
- (double)balloonMaskTailWidth;
- (double)balloonMaxWidthPercent;
- (double)balloonNonContiguousSpace;
- (double)balloonSelectionLoadMoreSpinnerHeight;
- (double)balloonSelectionMaxScrollSpeed;
- (double)balloonSelectionScrollThresholdBottom;
- (double)balloonSelectionScrollThresholdTop;
- (double)bottomConversationListSpace;
- (double)chatNavbarLeftMargin;
- (double)chatNavbarRightMargin;
- (double)collaborationDetailsPreferredContentSizeWidth;
- (double)conversationListCellLeftMargin;
- (double)conversationListCellRightMargin;
- (double)conversationListCellRoundSelectorLeftInset;
- (double)conversationListCellRoundSelectorRightInset;
- (double)conversationListContactImageDiameter;
- (double)conversationListContactImageTrailingSpace;
- (double)conversationListDragDistanceThreshold;
- (double)conversationListMinimumWidthForHiddenContactImage;
- (double)conversationListPinnedCellSelectedBackgroundCornerRadius;
- (double)conversationListSenderToDateHorizontalPadding;
- (double)defaultConversationListWidth;
- (double)detailsAddButtonDiameter;
- (double)detailsCellLabelPadding;
- (double)detailsContactCellButtonHeight;
- (double)detailsContactCellButtonWidth;
- (double)detailsContactCellMinimumHeight;
- (double)detailsContactImageDiameter;
- (double)detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode;
- (double)detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode;
- (double)detailsExpanseCellHeight;
- (double)detailsExpanseDescriptionLabelHeight;
- (double)detailsExpanseScreenShareCellHeight;
- (double)detailsGroupButtonHeight;
- (double)detailsGroupButtonWidth;
- (double)detailsInterGroupButtonPadding;
- (double)detailsMapViewInset;
- (double)detailsPreferredContentSizeHeight;
- (double)detailsPreferredContentSizeWidth;
- (double)detailsSectionHeaderPaddingAbove;
- (double)detailsSectionHeaderPaddingLeading;
- (double)detailsToFieldPreferredHeight;
- (double)detailsViewMapHeight;
- (double)emojiButtonSize;
- (double)entryContentViewTextLeftOffset;
- (double)entryViewConcentricPadding;
- (double)entryViewCoverHorizontalMargin;
- (double)entryViewCoverMinHeight;
- (double)entryViewMaxHeight;
- (double)entryViewMaxSendLaterHeight;
- (double)entryViewPlusButtonToTextFieldPadding;
- (double)entryViewWithSendMenuBottomContentInsetWithKeyboardVisible;
- (double)entryViewWithSendMenuBottomContentInsetWithoutKeyboardVisible;
- (double)expandedToolbarHeightForMiiC;
- (double)extraExtraSmallTranscriptSpace;
- (double)extraLargeTranscriptSpace;
- (double)extraSmallTranscriptSpace;
- (double)ktStatusCellImagePadding;
- (double)largeTranscriptSpace;
- (double)legacyMacAppMinConversationListWidth;
- (double)legacyMacAppSnapToMinConversationListWidth;
- (double)macAppKitToolbarHeight;
- (double)macConversationListToolbarHeight;
- (double)macEffectPickerTitleLeadingPadding;
- (double)macNSToolbarItemInterItemSpacing;
- (double)macNavbarBottomMargin;
- (double)macNavbarLeftMargin;
- (double)macNavbarRightMargin;
- (double)macTitleTrailingMargin;
- (double)macToLabelTrailingMargin;
- (double)macToolbarImagePointSize;
- (double)macToolbarStoplightButtonsLeadingPadding;
- (double)macTotalMarginWidth;
- (double)mapPreviewMaxWidth;
- (double)marzNavigationBarHeight;
- (double)maxConversationListWidth;
- (double)mediumLargeTranscriptSpace;
- (double)mediumTranscriptSpace;
- (double)messageAcknowledgementVotingViewHeight;
- (double)messageAcknowledgementVotingViewMaxWidth;
- (double)messageAcknowledgementVotingViewMinPadding;
- (double)messageAcknowledgmentButtonMargin;
- (double)messageAcknowledgmentPhotoGridXOffsetScalar;
- (double)messageAcknowledgmentPhotoGridYOffsetScalar;
- (double)messageAcknowledgmentPickerMinHorizontalMargin;
- (double)messageHighlightButtonGlyphSymbolPointSize;
- (double)minConversationListWidth;
- (double)minWindowWidthPrimaryColumnOffset;
- (double)minimumWaveformHeight;
- (double)newComposeRoundedRectPlatterCornerRadius;
- (double)nicknameIntroViewControllerPreviewBottomPadding;
- (double)nicknameIntroViewControllerPreviewTopPadding;
- (double)paddleDividerInset;
- (double)paddleOverlayRadius;
- (double)pinnedConversationActivityBroadShadowDarkOpacity;
- (double)pinnedConversationActivityBroadShadowDarkRadius;
- (double)pinnedConversationActivityBroadShadowLightOpacity;
- (double)pinnedConversationActivityBroadShadowLightRadius;
- (double)pinnedConversationActivityTightShadowDarkOpacity;
- (double)pinnedConversationActivityTightShadowDarkRadius;
- (double)pinnedConversationActivityTightShadowLightOpacity;
- (double)pinnedConversationActivityTightShadowLightRadius;
- (double)popOverMaxHeight;
- (double)popOverMaxHeightInDetailsView;
- (double)popOverWidth;
- (double)popOverWidthInDetailsView;
- (double)popoverHeightPadding;
- (double)popoverPadding;
- (double)previewMaxWidth;
- (double)replyBalloonMaskTailWidth;
- (double)replyBalloonMinHeight;
- (double)replyButtonPadding;
- (double)replyLineBracketRadius;
- (double)replyLineViewContactImageLayoutHorizontalPadding;
- (double)replyLineViewHorizontalPadding;
- (double)replyLineViewMaxWidth;
- (double)replyLineViewVerticalPadding;
- (double)replyLineWidth;
- (double)searchAttachmentsCellCornerRadius;
- (double)searchCellCornerRadius;
- (double)searchConversationMinAvatarLabelSpacing;
- (double)searchDetailsLeadingAndTrailingMaxPadding;
- (double)searchDropdownAvatarDiameter;
- (double)searchLeadingAndTrailingMaxPadding;
- (double)searchLinksCellCornerRadius;
- (double)searchLocationsCellCornerRadius;
- (double)searchMessagesConversationToSenderSpacing;
- (double)searchMessagesSenderToBalloonSpacing;
- (double)searchPhotosCellCornerRadius;
- (double)searchPhotosCellZKWAndDetailsCornerRadius;
- (double)searchPhotosInterItemSpacing;
- (double)searchPhotosInterItemSpacingDetailsView;
- (double)searchPhotosZKWAndDetailsInterItemSpacing;
- (double)searchResultsTitleHeaderBottomPadding;
- (double)searchResultsTitleHeaderTopPadding;
- (double)sendButtonSize;
- (double)smallTranscriptSpace;
- (double)snapToMinConversationListCellWidth;
- (double)snapToMinConversationListWidth;
- (double)spaceBetweenSearchBarAndComposeButton;
- (double)statusItemInsetFromBalloonEdge;
- (double)statusItemInsetFromReplyPreviewBalloonEdge;
- (double)stopButtonSize;
- (double)suggestedActionButtonMinHeight;
- (double)tipViewCornerRadius;
- (double)toFieldInterItemSpacing;
- (double)toFieldInterlineSpacing;
- (double)toFieldXOffset;
- (double)toFieldYOffset;
- (double)topConversationListSpace;
- (double)transcriptContactImageDiameter;
- (double)transcriptDrawerGestureAcceleration;
- (double)transcriptGroupTypingContactImageDiameter;
- (double)transcriptQuickActionButtonDiameter;
- (double)transcriptReplyPreviewContextContactImageDiameter;
- (double)transcriptSharingFooterBottomSpacing;
- (double)tuConversationBalloonAvatarDimensions;
- (double)tuConversationBalloonContentMinHeight;
- (double)tuConversationBalloonContentStandardMinWidth;
- (double)tuConversationBalloonFaceTimeIconDimensions;
- (double)tuConversationBalloonIconDimensions;
- (double)tuConversationBalloonImageDimensions;
- (double)tuConversationBalloonJoinButtonHeight;
- (double)tuConversationBalloonJoinButtonMaxWidth;
- (double)tuConversationBalloonJoinButtonMinWidth;
- (double)tuConversationInsetPadding;
- (double)tuConversationInteritemSpacing;
- (double)tuConversationJoinButtonCornerRadius;
- (double)tuConversationJoinButtonHeight;
- (double)tuConversationJoinButtonMinWidth;
- (double)unreadIndicatorTotalMargins;
- (double)waveformHeight;
- (id)appMenuAnimojiStickersIconForTraitCollection:(id)collection;
- (id)appMenuApplePayIconForTraitCollection:(id)collection;
- (id)appMenuEffectsIconForTraitCollection:(id)collection;
- (id)appMenuGenerativePlaygroundIconForTraitCollection:(id)collection;
- (id)appMenuGenmojiIconForTraitCollection:(id)collection;
- (id)appMenuHashtagImagesIconForTraitCollection:(id)collection;
- (id)appMenuPhotosIconForTraitCollection:(id)collection;
- (id)appMenuSendLaterMessagesIconForTraitCollection:(id)collection;
- (id)appMenuTitleFont;
- (id)audioBalloonSpeedFont;
- (id)audioBalloonTimeFont;
- (id)audioBalloonTranscriptionFont;
- (id)audioHintFont;
- (id)avatarNameFont;
- (id)balloonTextFont;
- (id)balloonTextFontUserDefaults;
- (id)businessInfoViewDescriptionTextFont;
- (id)businessInfoViewGreetingTextFont;
- (id)businessInfoViewTitleLabelFont;
- (id)chatNavbarColor;
- (id)chromeEffectForInterfaceStyle:(int64_t)style;
- (id)conversationListBoldSummaryFont;
- (id)conversationListPinnedConversationNameFont;
- (id)conversationListSenderFont;
- (id)conversationListSummaryFont;
- (id)emojiStickerTranscriptCellFont;
- (id)entryViewAppButtonName;
- (id)entryViewMacCancelButtonName;
- (id)entryViewMacEmojiButtonImage;
- (id)entryViewMacStopButtonName;
- (id)imageBalloonSelectionOverlayColor;
- (id)iosMacDetailsButtonText;
- (id)livePhotoBadgeImage;
- (id)locationBoldButtonFont;
- (id)locationButtonFont;
- (id)macToolbarDetailsImage;
- (id)macToolbarDetailsImageName;
- (id)macToolbarFaceTimeImage;
- (id)macToolbarFaceTimeImageName;
- (id)macToolbarJoinableFaceTimeAudioImageName;
- (id)macToolbarJoinableFaceTimeVideoImageName;
- (id)macToolbarJoinedFaceTimeAudioImageName;
- (id)macToolbarJoinedFaceTimeVideoImageName;
- (id)macToolbarSymbolConfiguration;
- (id)mentionsCellNameFont;
- (id)messageAcknowledgmentVoteCountFont;
- (id)navbarDefaultLabelFont;
- (id)newComposeImage;
- (id)nicknameUpdatesSubtitleFont;
- (id)nicknameUpdatesTitleFont;
- (id)previewTitleFont;
- (id)quickSaveButtonImage;
- (id)quickSavePinImage;
- (id)recipientNameFont;
- (id)replyBalloonTextFont;
- (id)replyButtonFont;
- (id)searchBarFont;
- (id)searchHeaderButtonFont;
- (id)searchHeaderFont;
- (id)searchIndexingSubtitleFont;
- (id)searchIndexingTitleFont;
- (id)searchMessageBodyTextFont;
- (id)searchResultLabelFont;
- (id)stickerDetailsCellBackgroundColor;
- (id)stickerSaveButtonConfiguration;
- (id)stickerViewButtonConfiguration;
- (id)syncBarHairlineColor;
- (id)syncProgressLabelFont;
- (id)tapbackPickerSizingFont;
- (id)textFontUserDefaults:(id)defaults;
- (id)theme;
- (id)transcriptBoldFont;
- (id)transcriptButtonTextFont;
- (id)transcriptLightFont;
- (id)transcriptMessageStatusDateFont;
- (id)transcriptMessageStatusFont;
- (id)transcriptRegularFont;
- (id)transcriptSenderFont;
- (id)tuConversationBalloonActionButtonFont;
- (id)tuConversationBalloonActionButtonFontStyle;
- (int64_t)_groupRecipientSelectionPresentationStyle;
- (int64_t)detailsActionViewStyle;
- (int64_t)detailsGroupChevronImageScale;
- (int64_t)groupRecipientSelectionPresentationStyle;
- (int64_t)preferredDeleteButtonVisibilityForNewCompose;
- (int64_t)sendMenuPlusSymbolScale;
- (int64_t)syncBarBlurEffectStyle;
- (unint64_t)contactsSettingsCacheSize;
- (unint64_t)defaultConversationLoadMoreCount;
- (unint64_t)detailsSectionCount;
@end

@implementation CKUIBehaviorMac

- (id)theme
{
  if (theme_once_0 != -1)
  {
    [CKUIBehaviorMac theme];
  }

  v3 = theme_sBehavior_0;

  return v3;
}

void __24__CKUIBehaviorMac_theme__block_invoke()
{
  v0 = objc_alloc_init(CKUIThemeMac);
  v1 = theme_sBehavior_0;
  theme_sBehavior_0 = v0;
}

- (BOOL)canPresentOverKeyboard
{
  if (canPresentOverKeyboard_once_0 != -1)
  {
    [CKUIBehaviorMac canPresentOverKeyboard];
  }

  return canPresentOverKeyboard_sBehavior_0;
}

- (double)minWindowWidthPrimaryColumnOffset
{
  if (minWindowWidthPrimaryColumnOffset_once != -1)
  {
    [CKUIBehaviorMac minWindowWidthPrimaryColumnOffset];
  }

  return *&minWindowWidthPrimaryColumnOffset_sBehavior;
}

- (CGSize)minWindowSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CKUIBehaviorMac_minWindowSize__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (minWindowSize_once != -1)
  {
    dispatch_once(&minWindowSize_once, block);
  }

  v2 = *&minWindowSize_sBehavior_0;
  v3 = *&minWindowSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

double __32__CKUIBehaviorMac_minWindowSize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) minConversationListWidth];
  v3 = v2;
  [*(a1 + 32) minWindowWidthPrimaryColumnOffset];
  result = v3 + v4;
  minWindowSize_sBehavior_0 = *&result;
  minWindowSize_sBehavior_1 = 0x4074000000000000;
  return result;
}

- (id)chromeEffectForInterfaceStyle:(int64_t)style
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DC730] effectWithBlurRadius:30.0];
  v5 = 2.0;
  if (style == 2)
  {
    v5 = 1.0;
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  v7 = [MEMORY[0x1E69DC898] colorEffectSaturate:v5];
  v8 = MEMORY[0x1E69DD290];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v10 = [v8 effectCompositingColor:systemBackgroundColor withMode:v6 alpha:0.7];

  v11 = MEMORY[0x1E69DD290];
  v15[0] = v4;
  v15[1] = v7;
  v15[2] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v13 = [v11 effectCombiningEffects:v12];

  return v13;
}

- (BOOL)useMacToolbar
{
  if (useMacToolbar_once_0 != -1)
  {
    [CKUIBehaviorMac useMacToolbar];
  }

  return useMacToolbar_sBehavior;
}

void __32__CKUIBehaviorMac_useMacToolbar__block_invoke()
{
  if (CKIsRunningInMacCatalyst())
  {
    v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v1 = [v0 macToolbarEnabled];
  }

  else
  {
    v1 = 0;
  }

  useMacToolbar_sBehavior = v1;
}

- (double)macToolbarImagePointSize
{
  if (macToolbarImagePointSize_once != -1)
  {
    [CKUIBehaviorMac macToolbarImagePointSize];
  }

  return *&macToolbarImagePointSize_sBehavior;
}

- (id)macToolbarFaceTimeImageName
{
  if (macToolbarFaceTimeImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarFaceTimeImageName];
  }

  v3 = macToolbarFaceTimeImageName_sBehavior;

  return v3;
}

void __46__CKUIBehaviorMac_macToolbarFaceTimeImageName__block_invoke()
{
  v0 = macToolbarFaceTimeImageName_sBehavior;
  macToolbarFaceTimeImageName_sBehavior = @"video";
}

- (id)macToolbarJoinedFaceTimeVideoImageName
{
  if (macToolbarJoinedFaceTimeVideoImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarJoinedFaceTimeVideoImageName];
  }

  v3 = macToolbarJoinedFaceTimeVideoImageName_sBehavior;

  return v3;
}

void __57__CKUIBehaviorMac_macToolbarJoinedFaceTimeVideoImageName__block_invoke()
{
  v0 = macToolbarJoinedFaceTimeVideoImageName_sBehavior;
  macToolbarJoinedFaceTimeVideoImageName_sBehavior = @"video.fill";
}

- (id)macToolbarJoinedFaceTimeAudioImageName
{
  if (macToolbarJoinedFaceTimeAudioImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarJoinedFaceTimeAudioImageName];
  }

  v3 = macToolbarJoinedFaceTimeAudioImageName_sBehavior;

  return v3;
}

void __57__CKUIBehaviorMac_macToolbarJoinedFaceTimeAudioImageName__block_invoke()
{
  v0 = macToolbarJoinedFaceTimeAudioImageName_sBehavior;
  macToolbarJoinedFaceTimeAudioImageName_sBehavior = @"phone.fill";
}

- (id)macToolbarJoinableFaceTimeVideoImageName
{
  if (macToolbarJoinableFaceTimeVideoImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarJoinableFaceTimeVideoImageName];
  }

  v3 = macToolbarJoinableFaceTimeVideoImageName_sBehavior;

  return v3;
}

void __59__CKUIBehaviorMac_macToolbarJoinableFaceTimeVideoImageName__block_invoke()
{
  v0 = macToolbarJoinableFaceTimeVideoImageName_sBehavior;
  macToolbarJoinableFaceTimeVideoImageName_sBehavior = @"video.fill";
}

- (id)macToolbarJoinableFaceTimeAudioImageName
{
  if (macToolbarJoinableFaceTimeAudioImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarJoinableFaceTimeAudioImageName];
  }

  v3 = macToolbarJoinableFaceTimeAudioImageName_sBehavior;

  return v3;
}

void __59__CKUIBehaviorMac_macToolbarJoinableFaceTimeAudioImageName__block_invoke()
{
  v0 = macToolbarJoinableFaceTimeAudioImageName_sBehavior;
  macToolbarJoinableFaceTimeAudioImageName_sBehavior = @"phone.fill";
}

- (id)macToolbarDetailsImageName
{
  if (macToolbarDetailsImageName_once != -1)
  {
    [CKUIBehaviorMac macToolbarDetailsImageName];
  }

  v3 = macToolbarDetailsImageName_sBehavior;

  return v3;
}

void __45__CKUIBehaviorMac_macToolbarDetailsImageName__block_invoke()
{
  v0 = macToolbarDetailsImageName_sBehavior;
  macToolbarDetailsImageName_sBehavior = @"info.circle";
}

- (id)macToolbarFaceTimeImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CKUIBehaviorMac_macToolbarFaceTimeImage__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macToolbarFaceTimeImage_once != -1)
  {
    dispatch_once(&macToolbarFaceTimeImage_once, block);
  }

  return macToolbarFaceTimeImage_sBehavior;
}

void __42__CKUIBehaviorMac_macToolbarFaceTimeImage__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 macToolbarFaceTimeImageName];
  [*(a1 + 32) macToolbarImagePointSize];
  v3 = [v2 imageNamed:v5 pointSize:? insets:?];
  v4 = macToolbarFaceTimeImage_sBehavior;
  macToolbarFaceTimeImage_sBehavior = v3;
}

- (id)macToolbarDetailsImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKUIBehaviorMac_macToolbarDetailsImage__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macToolbarDetailsImage_once != -1)
  {
    dispatch_once(&macToolbarDetailsImage_once, block);
  }

  return macToolbarDetailsImage_sBehavior;
}

void __41__CKUIBehaviorMac_macToolbarDetailsImage__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 macToolbarDetailsImageName];
  [*(a1 + 32) macToolbarImagePointSize];
  v3 = [v2 imageNamed:v5 pointSize:? insets:?];
  v4 = macToolbarDetailsImage_sBehavior;
  macToolbarDetailsImage_sBehavior = v3;
}

- (id)macToolbarSymbolConfiguration
{
  if (macToolbarSymbolConfiguration_once != -1)
  {
    [CKUIBehaviorMac macToolbarSymbolConfiguration];
  }

  v3 = macToolbarSymbolConfiguration_sBehavior;

  return v3;
}

void __48__CKUIBehaviorMac_macToolbarSymbolConfiguration__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:13.0];
  v1 = macToolbarSymbolConfiguration_sBehavior;
  macToolbarSymbolConfiguration_sBehavior = v0;
}

- (id)newComposeImage
{
  if (newComposeImage_once_0 != -1)
  {
    [CKUIBehaviorMac newComposeImage];
  }

  v3 = newComposeImage_sBehavior_0;

  return v3;
}

void __34__CKUIBehaviorMac_newComposeImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v4 = +[CKUIBehavior sharedBehaviors];
  v1 = [v4 macToolbarSymbolConfiguration];
  v2 = [v0 systemImageNamed:@"square.and.pencil" withConfiguration:v1];
  v3 = newComposeImage_sBehavior_0;
  newComposeImage_sBehavior_0 = v2;
}

- (unint64_t)contactsSettingsCacheSize
{
  if (contactsSettingsCacheSize_once_0 != -1)
  {
    [CKUIBehaviorMac contactsSettingsCacheSize];
  }

  if (contactsSettingsCacheSize_sBehavior_0)
  {
    return 1000;
  }

  else
  {
    return 0;
  }
}

- (double)topConversationListSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(topConversationListSpace_sContentSizeCategory_topConversationListSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetopConversationListSpace](self, "ckShouldUpdatetopConversationListSpace") || v10 || topConversationListSpace_sIsBoldTextEnabled_topConversationListSpace_0 != IsBoldTextEnabled || (v11 = topConversationListSpace_sTextFontSize_topConversationListSpace_0, *&topConversationListSpace_sTextFontSize_topConversationListSpace_0 != v5) || (v11 = topConversationListSpace_sCustomTextFontSize_topConversationListSpace_0, *&topConversationListSpace_sCustomTextFontSize_topConversationListSpace_0 != v6) || ([topConversationListSpace_sCustomTextFontName_topConversationListSpace_0 isEqualToString:{v9, *&topConversationListSpace_sCustomTextFontSize_topConversationListSpace_0}] & 1) == 0)
  {
    [(CKUIBehaviorMac *)self _topConversationListSpace];
    topConversationListSpace_sBehavior_0 = v12;
    objc_storeStrong(&topConversationListSpace_sContentSizeCategory_topConversationListSpace_0, v3);
    topConversationListSpace_sIsBoldTextEnabled_topConversationListSpace_0 = IsBoldTextEnabled;
    topConversationListSpace_sTextFontSize_topConversationListSpace_0 = *&v5;
    topConversationListSpace_sCustomTextFontSize_topConversationListSpace_0 = *&v6;
    objc_storeStrong(&topConversationListSpace_sCustomTextFontName_topConversationListSpace_0, v8);
  }

  v13 = *&topConversationListSpace_sBehavior_0;

  return v13;
}

- (double)_topConversationListSpace
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  v5 = 20.0;
  if ((isConversationListRefreshEnabled & 1) == 0)
  {
    conversationListSenderFont = [(CKUIBehaviorMac *)self conversationListSenderFont];
    [conversationListSenderFont _bodyLeading];
    v8 = v7 * 0.6;
    if (CKMainScreenScale_once_62 != -1)
    {
      [CKUIBehaviorMac _topConversationListSpace];
    }

    v9 = *&CKMainScreenScale_sMainScreenScale_62;
    if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
    {
      v9 = 1.0;
    }

    v5 = round(v8 * v9) / v9;
  }

  return v5;
}

- (double)bottomConversationListSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(bottomConversationListSpace_sContentSizeCategory_bottomConversationListSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatebottomConversationListSpace](self, "ckShouldUpdatebottomConversationListSpace") || v10 || bottomConversationListSpace_sIsBoldTextEnabled_bottomConversationListSpace_0 != IsBoldTextEnabled || (v11 = bottomConversationListSpace_sTextFontSize_bottomConversationListSpace_0, *&bottomConversationListSpace_sTextFontSize_bottomConversationListSpace_0 != v5) || (v11 = bottomConversationListSpace_sCustomTextFontSize_bottomConversationListSpace_0, *&bottomConversationListSpace_sCustomTextFontSize_bottomConversationListSpace_0 != v6) || ([bottomConversationListSpace_sCustomTextFontName_bottomConversationListSpace_0 isEqualToString:{v9, *&bottomConversationListSpace_sCustomTextFontSize_bottomConversationListSpace_0}] & 1) == 0)
  {
    [(CKUIBehaviorMac *)self _bottomConversationListSpace];
    bottomConversationListSpace_sBehavior_0 = v12;
    objc_storeStrong(&bottomConversationListSpace_sContentSizeCategory_bottomConversationListSpace_0, v3);
    bottomConversationListSpace_sIsBoldTextEnabled_bottomConversationListSpace_0 = IsBoldTextEnabled;
    bottomConversationListSpace_sTextFontSize_bottomConversationListSpace_0 = *&v5;
    bottomConversationListSpace_sCustomTextFontSize_bottomConversationListSpace_0 = *&v6;
    objc_storeStrong(&bottomConversationListSpace_sCustomTextFontName_bottomConversationListSpace_0, v8);
  }

  v13 = *&bottomConversationListSpace_sBehavior_0;

  return v13;
}

- (double)_bottomConversationListSpace
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

  if (isConversationListRefreshEnabled)
  {
    return 20.0;
  }

  [(CKUIBehavior *)self conversationListSummaryBodyLeading];
  return result;
}

- (unint64_t)defaultConversationLoadMoreCount
{
  if (defaultConversationLoadMoreCount_once_0 != -1)
  {
    [CKUIBehaviorMac defaultConversationLoadMoreCount];
  }

  if (defaultConversationLoadMoreCount_sBehavior_0)
  {
    return 100;
  }

  else
  {
    return 0;
  }
}

- (Class)navigationBarClass
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CKUIBehaviorMac_navigationBarClass__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (navigationBarClass_once_0 != -1)
  {
    dispatch_once(&navigationBarClass_once_0, block);
  }

  return navigationBarClass_sBehavior_0;
}

id __37__CKUIBehaviorMac_navigationBarClass__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CKUIBehaviorMac;
  result = objc_msgSendSuper2(&v2, sel_navigationBarClass);
  navigationBarClass_sBehavior_0 = result;
  return result;
}

- (BOOL)shouldUnreadIndicatorChangeOnSelection
{
  if (shouldUnreadIndicatorChangeOnSelection_once_0 != -1)
  {
    [CKUIBehaviorMac shouldUnreadIndicatorChangeOnSelection];
  }

  return shouldUnreadIndicatorChangeOnSelection_sBehavior;
}

- (double)conversationListContactImageDiameter
{
  if (conversationListContactImageDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListContactImageDiameter];
  }

  return *&conversationListContactImageDiameter_sBehavior_0;
}

- (id)conversationListSenderFont
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(conversationListSenderFont_sContentSizeCategory_conversationListSenderFont_0, v3);
  ckShouldUpdateconversationListSenderFont = [(CKUIBehaviorMac *)self ckShouldUpdateconversationListSenderFont];
  v14 = &unk_1EAD6E000;
  if (ckShouldUpdateconversationListSenderFont || v11 || conversationListSenderFont_sIsIncreaseContrastEnabled_conversationListSenderFont_0 != v4 || conversationListSenderFont_sIsBoldTextEnabled_conversationListSenderFont_0 != IsBoldTextEnabled || (v13 = conversationListSenderFont_sTextFontSize_conversationListSenderFont_0, *&conversationListSenderFont_sTextFontSize_conversationListSenderFont_0 != v6) || (v13 = conversationListSenderFont_sCustomTextFontSize_conversationListSenderFont_0, *&conversationListSenderFont_sCustomTextFontSize_conversationListSenderFont_0 != v7) || ([conversationListSenderFont_sCustomTextFontName_conversationListSenderFont_0 isEqualToString:{v10, *&conversationListSenderFont_sCustomTextFontSize_conversationListSenderFont_0}] & 1) == 0)
  {
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDCF8], *&v13}];
    v30 = *MEMORY[0x1E69DB8F0];
    v28 = *MEMORY[0x1E69DB990];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v29 = v16;
    obj = v9;
    v17 = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = v18 = v3;
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v15 fontDescriptorByAddingAttributes:v20];

    v3 = v18;
    v14 = &unk_1EAD6E000;
    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];

    v10 = v17;
    v23 = conversationListSenderFont_sBehavior_0;
    conversationListSenderFont_sBehavior_0 = v22;

    objc_storeStrong(&conversationListSenderFont_sContentSizeCategory_conversationListSenderFont_0, v18);
    conversationListSenderFont_sIsIncreaseContrastEnabled_conversationListSenderFont_0 = v4;
    conversationListSenderFont_sIsBoldTextEnabled_conversationListSenderFont_0 = IsBoldTextEnabled;
    conversationListSenderFont_sTextFontSize_conversationListSenderFont_0 = *&v6;
    conversationListSenderFont_sCustomTextFontSize_conversationListSenderFont_0 = *&v7;
    objc_storeStrong(&conversationListSenderFont_sCustomTextFontName_conversationListSenderFont_0, obj);
  }

  v24 = v14[445];
  v25 = v24;

  return v24;
}

- (id)conversationListSummaryFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(conversationListSummaryFont_sContentSizeCategory_conversationListSummaryFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListSummaryFont](self, "ckShouldUpdateconversationListSummaryFont") || v11 || conversationListSummaryFont_sIsIncreaseContrastEnabled_conversationListSummaryFont_0 != v4 || conversationListSummaryFont_sIsBoldTextEnabled_conversationListSummaryFont_0 != IsBoldTextEnabled || (v12 = conversationListSummaryFont_sTextFontSize_conversationListSummaryFont_0, *&conversationListSummaryFont_sTextFontSize_conversationListSummaryFont_0 != v6) || (v12 = conversationListSummaryFont_sCustomTextFontSize_conversationListSummaryFont_0, *&conversationListSummaryFont_sCustomTextFontSize_conversationListSummaryFont_0 != v7) || ([conversationListSummaryFont_sCustomTextFontName_conversationListSummaryFont_0 isEqualToString:{v10, *&conversationListSummaryFont_sCustomTextFontSize_conversationListSummaryFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDD80], *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:12.0];

    v15 = conversationListSummaryFont_sBehavior_0;
    conversationListSummaryFont_sBehavior_0 = v14;

    objc_storeStrong(&conversationListSummaryFont_sContentSizeCategory_conversationListSummaryFont_0, v3);
    conversationListSummaryFont_sIsIncreaseContrastEnabled_conversationListSummaryFont_0 = v4;
    conversationListSummaryFont_sIsBoldTextEnabled_conversationListSummaryFont_0 = IsBoldTextEnabled;
    conversationListSummaryFont_sTextFontSize_conversationListSummaryFont_0 = *&v6;
    conversationListSummaryFont_sCustomTextFontSize_conversationListSummaryFont_0 = *&v7;
    objc_storeStrong(&conversationListSummaryFont_sCustomTextFontName_conversationListSummaryFont_0, v9);
  }

  v16 = conversationListSummaryFont_sBehavior_0;
  v17 = conversationListSummaryFont_sBehavior_0;

  return v16;
}

- (id)conversationListBoldSummaryFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(conversationListBoldSummaryFont_sContentSizeCategory_conversationListBoldSummaryFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListBoldSummaryFont](self, "ckShouldUpdateconversationListBoldSummaryFont") || v11 || conversationListBoldSummaryFont_sIsIncreaseContrastEnabled_conversationListBoldSummaryFont_0 != v4 || conversationListBoldSummaryFont_sIsBoldTextEnabled_conversationListBoldSummaryFont_0 != IsBoldTextEnabled || (v12 = conversationListBoldSummaryFont_sTextFontSize_conversationListBoldSummaryFont_0, *&conversationListBoldSummaryFont_sTextFontSize_conversationListBoldSummaryFont_0 != v6) || (v12 = conversationListBoldSummaryFont_sCustomTextFontSize_conversationListBoldSummaryFont_0, *&conversationListBoldSummaryFont_sCustomTextFontSize_conversationListBoldSummaryFont_0 != v7) || ([conversationListBoldSummaryFont_sCustomTextFontName_conversationListBoldSummaryFont_0 isEqualToString:{v10, *&conversationListBoldSummaryFont_sCustomTextFontSize_conversationListBoldSummaryFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:2 options:{0, *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:12.0];

    v15 = conversationListBoldSummaryFont_sBehavior_0;
    conversationListBoldSummaryFont_sBehavior_0 = v14;

    objc_storeStrong(&conversationListBoldSummaryFont_sContentSizeCategory_conversationListBoldSummaryFont_0, v3);
    conversationListBoldSummaryFont_sIsIncreaseContrastEnabled_conversationListBoldSummaryFont_0 = v4;
    conversationListBoldSummaryFont_sIsBoldTextEnabled_conversationListBoldSummaryFont_0 = IsBoldTextEnabled;
    conversationListBoldSummaryFont_sTextFontSize_conversationListBoldSummaryFont_0 = *&v6;
    conversationListBoldSummaryFont_sCustomTextFontSize_conversationListBoldSummaryFont_0 = *&v7;
    objc_storeStrong(&conversationListBoldSummaryFont_sCustomTextFontName_conversationListBoldSummaryFont_0, v9);
  }

  v16 = conversationListBoldSummaryFont_sBehavior_0;
  v17 = conversationListBoldSummaryFont_sBehavior_0;

  return v16;
}

- (id)conversationListPinnedConversationNameFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(conversationListPinnedConversationNameFont_sContentSizeCategory_conversationListPinnedConversationNameFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListPinnedConversationNameFont](self, "ckShouldUpdateconversationListPinnedConversationNameFont") || v11 || conversationListPinnedConversationNameFont_sIsIncreaseContrastEnabled_conversationListPinnedConversationNameFont_0 != v4 || conversationListPinnedConversationNameFont_sIsBoldTextEnabled_conversationListPinnedConversationNameFont_0 != IsBoldTextEnabled || (v12 = conversationListPinnedConversationNameFont_sTextFontSize_conversationListPinnedConversationNameFont_0, *&conversationListPinnedConversationNameFont_sTextFontSize_conversationListPinnedConversationNameFont_0 != v6) || (v12 = conversationListPinnedConversationNameFont_sCustomTextFontSize_conversationListPinnedConversationNameFont_0, *&conversationListPinnedConversationNameFont_sCustomTextFontSize_conversationListPinnedConversationNameFont_0 != v7) || ([conversationListPinnedConversationNameFont_sCustomTextFontName_conversationListPinnedConversationNameFont_0 isEqualToString:{v10, *&conversationListPinnedConversationNameFont_sCustomTextFontSize_conversationListPinnedConversationNameFont_0}] & 1) == 0)
  {
    v13 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD80] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC50], *&v12];
    v14 = conversationListPinnedConversationNameFont_sBehavior_0;
    conversationListPinnedConversationNameFont_sBehavior_0 = v13;

    objc_storeStrong(&conversationListPinnedConversationNameFont_sContentSizeCategory_conversationListPinnedConversationNameFont_0, v3);
    conversationListPinnedConversationNameFont_sIsIncreaseContrastEnabled_conversationListPinnedConversationNameFont_0 = v4;
    conversationListPinnedConversationNameFont_sIsBoldTextEnabled_conversationListPinnedConversationNameFont_0 = IsBoldTextEnabled;
    conversationListPinnedConversationNameFont_sTextFontSize_conversationListPinnedConversationNameFont_0 = *&v6;
    conversationListPinnedConversationNameFont_sCustomTextFontSize_conversationListPinnedConversationNameFont_0 = *&v7;
    objc_storeStrong(&conversationListPinnedConversationNameFont_sCustomTextFontName_conversationListPinnedConversationNameFont_0, v9);
  }

  v15 = conversationListPinnedConversationNameFont_sBehavior_0;
  v16 = conversationListPinnedConversationNameFont_sBehavior_0;

  return v15;
}

- (double)pinnedConversationActivityBroadShadowLightRadius
{
  if (pinnedConversationActivityBroadShadowLightRadius_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowLightRadius];
  }

  return *&pinnedConversationActivityBroadShadowLightRadius_sBehavior_0;
}

- (double)pinnedConversationActivityBroadShadowDarkRadius
{
  if (pinnedConversationActivityBroadShadowDarkRadius_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowDarkRadius];
  }

  return *&pinnedConversationActivityBroadShadowDarkRadius_sBehavior_0;
}

- (double)pinnedConversationActivityTightShadowLightRadius
{
  if (pinnedConversationActivityTightShadowLightRadius_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowLightRadius];
  }

  return *&pinnedConversationActivityTightShadowLightRadius_sBehavior_0;
}

- (double)pinnedConversationActivityTightShadowDarkRadius
{
  if (pinnedConversationActivityTightShadowDarkRadius_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowDarkRadius];
  }

  return *&pinnedConversationActivityTightShadowDarkRadius_sBehavior_0;
}

- (double)pinnedConversationActivityBroadShadowLightOpacity
{
  if (pinnedConversationActivityBroadShadowLightOpacity_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowLightOpacity];
  }

  return *&pinnedConversationActivityBroadShadowLightOpacity_sBehavior_0;
}

- (double)pinnedConversationActivityBroadShadowDarkOpacity
{
  if (pinnedConversationActivityBroadShadowDarkOpacity_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowDarkOpacity];
  }

  return *&pinnedConversationActivityBroadShadowDarkOpacity_sBehavior_0;
}

- (double)pinnedConversationActivityTightShadowLightOpacity
{
  if (pinnedConversationActivityTightShadowLightOpacity_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowLightOpacity];
  }

  return *&pinnedConversationActivityTightShadowLightOpacity_sBehavior_0;
}

- (double)pinnedConversationActivityTightShadowDarkOpacity
{
  if (pinnedConversationActivityTightShadowDarkOpacity_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowDarkOpacity];
  }

  return *&pinnedConversationActivityTightShadowDarkOpacity_sBehavior_0;
}

- (CGSize)pinnedConversationActivityBroadShadowLightOffset
{
  if (pinnedConversationActivityBroadShadowLightOffset_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowLightOffset];
  }

  v2 = *&pinnedConversationActivityBroadShadowLightOffset_sBehavior_1_0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)pinnedConversationActivityBroadShadowDarkOffset
{
  if (pinnedConversationActivityBroadShadowDarkOffset_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityBroadShadowDarkOffset];
  }

  v2 = *&pinnedConversationActivityBroadShadowDarkOffset_sBehavior_1_0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)pinnedConversationActivityTightShadowLightOffset
{
  if (pinnedConversationActivityTightShadowLightOffset_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowLightOffset];
  }

  v3 = *(&pinnedConversationActivityTightShadowLightOffset_sBehavior_0 + 1);
  v2 = *&pinnedConversationActivityTightShadowLightOffset_sBehavior_0;
  result.height = v3;
  result.width = v2;
  return result;
}

__n128 __67__CKUIBehaviorMac_pinnedConversationActivityTightShadowLightOffset__block_invoke()
{
  result = *MEMORY[0x1E695F060];
  pinnedConversationActivityTightShadowLightOffset_sBehavior_0 = *MEMORY[0x1E695F060];
  return result;
}

- (CGSize)pinnedConversationActivityTightShadowDarkOffset
{
  if (pinnedConversationActivityTightShadowDarkOffset_once_0 != -1)
  {
    [CKUIBehaviorMac pinnedConversationActivityTightShadowDarkOffset];
  }

  v3 = *(&pinnedConversationActivityTightShadowDarkOffset_sBehavior_0 + 1);
  v2 = *&pinnedConversationActivityTightShadowDarkOffset_sBehavior_0;
  result.height = v3;
  result.width = v2;
  return result;
}

__n128 __66__CKUIBehaviorMac_pinnedConversationActivityTightShadowDarkOffset__block_invoke()
{
  result = *MEMORY[0x1E695F060];
  pinnedConversationActivityTightShadowDarkOffset_sBehavior_0 = *MEMORY[0x1E695F060];
  return result;
}

- (double)conversationListSenderToDateHorizontalPadding
{
  if (conversationListSenderToDateHorizontalPadding_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListSenderToDateHorizontalPadding];
  }

  return *&conversationListSenderToDateHorizontalPadding_sBehavior_0;
}

- (UIEdgeInsets)conversationListPinnedCellTitleLabelVerticalPadding
{
  if (conversationListPinnedCellTitleLabelVerticalPadding_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListPinnedCellTitleLabelVerticalPadding];
  }

  v2 = *&conversationListPinnedCellTitleLabelVerticalPadding_sBehavior_0_0;
  v3 = *&conversationListPinnedCellTitleLabelVerticalPadding_sBehavior_2_0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (double)conversationListCellRoundSelectorLeftInset
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(conversationListCellRoundSelectorLeftInset_sContentSizeCategory_conversationListCellRoundSelectorLeftInset_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListCellRoundSelectorLeftInset](self, "ckShouldUpdateconversationListCellRoundSelectorLeftInset") || v10 || conversationListCellRoundSelectorLeftInset_sIsBoldTextEnabled_conversationListCellRoundSelectorLeftInset_0 != IsBoldTextEnabled || *&conversationListCellRoundSelectorLeftInset_sTextFontSize_conversationListCellRoundSelectorLeftInset_0 != v5 || *&conversationListCellRoundSelectorLeftInset_sCustomTextFontSize_conversationListCellRoundSelectorLeftInset_0 != v6 || ([conversationListCellRoundSelectorLeftInset_sCustomTextFontName_conversationListCellRoundSelectorLeftInset_0 isEqualToString:{v9, *&conversationListCellRoundSelectorLeftInset_sCustomTextFontSize_conversationListCellRoundSelectorLeftInset_0}] & 1) == 0)
  {
    conversationListCellRoundSelectorLeftInset_sBehavior = 0x4024000000000000;
    objc_storeStrong(&conversationListCellRoundSelectorLeftInset_sContentSizeCategory_conversationListCellRoundSelectorLeftInset_0, v3);
    conversationListCellRoundSelectorLeftInset_sIsBoldTextEnabled_conversationListCellRoundSelectorLeftInset_0 = IsBoldTextEnabled;
    conversationListCellRoundSelectorLeftInset_sTextFontSize_conversationListCellRoundSelectorLeftInset_0 = *&v5;
    conversationListCellRoundSelectorLeftInset_sCustomTextFontSize_conversationListCellRoundSelectorLeftInset_0 = *&v6;
    objc_storeStrong(&conversationListCellRoundSelectorLeftInset_sCustomTextFontName_conversationListCellRoundSelectorLeftInset_0, v8);
  }

  v11 = *&conversationListCellRoundSelectorLeftInset_sBehavior;

  return v11;
}

- (double)conversationListCellRoundSelectorRightInset
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(conversationListCellRoundSelectorRightInset_sContentSizeCategory_conversationListCellRoundSelectorRightInset_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListCellRoundSelectorRightInset](self, "ckShouldUpdateconversationListCellRoundSelectorRightInset") || v10 || conversationListCellRoundSelectorRightInset_sIsBoldTextEnabled_conversationListCellRoundSelectorRightInset_0 != IsBoldTextEnabled || *&conversationListCellRoundSelectorRightInset_sTextFontSize_conversationListCellRoundSelectorRightInset_0 != v5 || *&conversationListCellRoundSelectorRightInset_sCustomTextFontSize_conversationListCellRoundSelectorRightInset_0 != v6 || ([conversationListCellRoundSelectorRightInset_sCustomTextFontName_conversationListCellRoundSelectorRightInset_0 isEqualToString:{v9, *&conversationListCellRoundSelectorRightInset_sCustomTextFontSize_conversationListCellRoundSelectorRightInset_0}] & 1) == 0)
  {
    conversationListCellRoundSelectorRightInset_sBehavior = 0x4024000000000000;
    objc_storeStrong(&conversationListCellRoundSelectorRightInset_sContentSizeCategory_conversationListCellRoundSelectorRightInset_0, v3);
    conversationListCellRoundSelectorRightInset_sIsBoldTextEnabled_conversationListCellRoundSelectorRightInset_0 = IsBoldTextEnabled;
    conversationListCellRoundSelectorRightInset_sTextFontSize_conversationListCellRoundSelectorRightInset_0 = *&v5;
    conversationListCellRoundSelectorRightInset_sCustomTextFontSize_conversationListCellRoundSelectorRightInset_0 = *&v6;
    objc_storeStrong(&conversationListCellRoundSelectorRightInset_sCustomTextFontName_conversationListCellRoundSelectorRightInset_0, v8);
  }

  v11 = *&conversationListCellRoundSelectorRightInset_sBehavior;

  return v11;
}

- (double)conversationListCellLeftMargin
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(conversationListCellLeftMargin_sContentSizeCategory_conversationListCellLeftMargin_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListCellLeftMargin](self, "ckShouldUpdateconversationListCellLeftMargin") || v10 || conversationListCellLeftMargin_sIsBoldTextEnabled_conversationListCellLeftMargin_0 != IsBoldTextEnabled || (v11 = conversationListCellLeftMargin_sTextFontSize_conversationListCellLeftMargin_0, *&conversationListCellLeftMargin_sTextFontSize_conversationListCellLeftMargin_0 != v5) || (v11 = conversationListCellLeftMargin_sCustomTextFontSize_conversationListCellLeftMargin_0, *&conversationListCellLeftMargin_sCustomTextFontSize_conversationListCellLeftMargin_0 != v6) || ([conversationListCellLeftMargin_sCustomTextFontName_conversationListCellLeftMargin_0 isEqualToString:{v9, *&conversationListCellLeftMargin_sCustomTextFontSize_conversationListCellLeftMargin_0}] & 1) == 0)
  {
    [(CKUIBehaviorMac *)self unreadIndicatorTotalMargins];
    v13 = v12;
    [(CKUIBehaviorMac *)self unreadIndicatorImageViewSize];
    *&conversationListCellLeftMargin_sBehavior_0 = v13 + v14;
    objc_storeStrong(&conversationListCellLeftMargin_sContentSizeCategory_conversationListCellLeftMargin_0, v3);
    conversationListCellLeftMargin_sIsBoldTextEnabled_conversationListCellLeftMargin_0 = IsBoldTextEnabled;
    conversationListCellLeftMargin_sTextFontSize_conversationListCellLeftMargin_0 = *&v5;
    conversationListCellLeftMargin_sCustomTextFontSize_conversationListCellLeftMargin_0 = *&v6;
    objc_storeStrong(&conversationListCellLeftMargin_sCustomTextFontName_conversationListCellLeftMargin_0, v8);
  }

  v15 = *&conversationListCellLeftMargin_sBehavior_0;

  return v15;
}

- (double)conversationListCellRightMargin
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(conversationListCellRightMargin_sContentSizeCategory_conversationListCellRightMargin_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateconversationListCellRightMargin](self, "ckShouldUpdateconversationListCellRightMargin") || v10 || conversationListCellRightMargin_sIsBoldTextEnabled_conversationListCellRightMargin_0 != IsBoldTextEnabled || *&conversationListCellRightMargin_sTextFontSize_conversationListCellRightMargin_0 != v5 || *&conversationListCellRightMargin_sCustomTextFontSize_conversationListCellRightMargin_0 != v6 || ([conversationListCellRightMargin_sCustomTextFontName_conversationListCellRightMargin_0 isEqualToString:{v9, *&conversationListCellRightMargin_sCustomTextFontSize_conversationListCellRightMargin_0}] & 1) == 0)
  {
    conversationListCellRightMargin_sBehavior_0 = 0x4024000000000000;
    objc_storeStrong(&conversationListCellRightMargin_sContentSizeCategory_conversationListCellRightMargin_0, v3);
    conversationListCellRightMargin_sIsBoldTextEnabled_conversationListCellRightMargin_0 = IsBoldTextEnabled;
    conversationListCellRightMargin_sTextFontSize_conversationListCellRightMargin_0 = *&v5;
    conversationListCellRightMargin_sCustomTextFontSize_conversationListCellRightMargin_0 = *&v6;
    objc_storeStrong(&conversationListCellRightMargin_sCustomTextFontName_conversationListCellRightMargin_0, v8);
  }

  v11 = *&conversationListCellRightMargin_sBehavior_0;

  return v11;
}

- (CGSize)unreadIndicatorImageViewSize
{
  if (unreadIndicatorImageViewSize_once_0 != -1)
  {
    [CKUIBehaviorMac unreadIndicatorImageViewSize];
  }

  v2 = *&unreadIndicatorImageViewSize_sBehavior_0_0;
  v3 = *&unreadIndicatorImageViewSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)unreadIndicatorTotalMargins
{
  if (unreadIndicatorTotalMargins_once != -1)
  {
    [CKUIBehaviorMac unreadIndicatorTotalMargins];
  }

  return *&unreadIndicatorTotalMargins_sBehavior;
}

- (double)conversationListContactImageTrailingSpace
{
  if (conversationListContactImageTrailingSpace_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListContactImageTrailingSpace];
  }

  return *&conversationListContactImageTrailingSpace_sBehavior_0;
}

- (double)legacyMacAppMinConversationListWidth
{
  if (legacyMacAppMinConversationListWidth_once != -1)
  {
    [CKUIBehaviorMac legacyMacAppMinConversationListWidth];
  }

  return *&legacyMacAppMinConversationListWidth_sBehavior;
}

- (double)legacyMacAppSnapToMinConversationListWidth
{
  if (legacyMacAppSnapToMinConversationListWidth_once != -1)
  {
    [CKUIBehaviorMac legacyMacAppSnapToMinConversationListWidth];
  }

  return *&legacyMacAppSnapToMinConversationListWidth_sBehavior;
}

- (double)conversationListDragDistanceThreshold
{
  if (conversationListDragDistanceThreshold_once != -1)
  {
    [CKUIBehaviorMac conversationListDragDistanceThreshold];
  }

  return *&conversationListDragDistanceThreshold_sBehavior;
}

- (CGSize)minConversationListWidthComposeButtonSize
{
  if (minConversationListWidthComposeButtonSize_once != -1)
  {
    [CKUIBehaviorMac minConversationListWidthComposeButtonSize];
  }

  v2 = *&minConversationListWidthComposeButtonSize_sBehavior_0;
  v3 = *&minConversationListWidthComposeButtonSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)minConversationListWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CKUIBehaviorMac_minConversationListWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (minConversationListWidth_once_0 != -1)
  {
    dispatch_once(&minConversationListWidth_once_0, block);
  }

  return *&minConversationListWidth_sBehavior_0;
}

double __43__CKUIBehaviorMac_minConversationListWidth__block_invoke(uint64_t a1)
{
  [*(a1 + 32) conversationListCellRoundSelectorLeftInset];
  v3 = v2;
  [*(a1 + 32) conversationListCellLeftMargin];
  v5 = v3 + v4;
  [*(a1 + 32) conversationListContactImageDiameter];
  v7 = v5 + v6;
  [*(a1 + 32) conversationListContactImageTrailingSpace];
  v9 = v7 + v8;
  [*(a1 + 32) conversationListCellRightMargin];
  v11 = v9 + v10;
  [*(a1 + 32) conversationListCellRoundSelectorRightInset];
  result = v11 + v12;
  minConversationListWidth_sBehavior_0 = *&result;
  return result;
}

- (double)snapToMinConversationListWidth
{
  if (snapToMinConversationListWidth_once != -1)
  {
    [CKUIBehaviorMac snapToMinConversationListWidth];
  }

  return *&snapToMinConversationListWidth_sBehavior;
}

- (double)snapToMinConversationListCellWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKUIBehaviorMac_snapToMinConversationListCellWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (snapToMinConversationListCellWidth_once != -1)
  {
    dispatch_once(&snapToMinConversationListCellWidth_once, block);
  }

  return *&snapToMinConversationListCellWidth_sBehavior;
}

double __53__CKUIBehaviorMac_snapToMinConversationListCellWidth__block_invoke(uint64_t a1)
{
  [*(a1 + 32) snapToMinConversationListWidth];
  v3 = v2;
  [*(a1 + 32) conversationListCellRoundSelectorLeftInset];
  v5 = v3 - v4;
  [*(a1 + 32) conversationListCellRoundSelectorRightInset];
  result = v5 - v6;
  snapToMinConversationListCellWidth_sBehavior = *&result;
  return result;
}

- (double)defaultConversationListWidth
{
  if (defaultConversationListWidth_once != -1)
  {
    [CKUIBehaviorMac defaultConversationListWidth];
  }

  return *&defaultConversationListWidth_sBehavior;
}

- (double)maxConversationListWidth
{
  if (maxConversationListWidth_once_0 != -1)
  {
    [CKUIBehaviorMac maxConversationListWidth];
  }

  return *&maxConversationListWidth_sBehavior_0;
}

- (double)conversationListMinimumWidthForHiddenContactImage
{
  if (conversationListMinimumWidthForHiddenContactImage_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListMinimumWidthForHiddenContactImage];
  }

  return *&conversationListMinimumWidthForHiddenContactImage_sBehavior_0;
}

- (double)conversationListPinnedCellSelectedBackgroundCornerRadius
{
  if (conversationListPinnedCellSelectedBackgroundCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListPinnedCellSelectedBackgroundCornerRadius];
  }

  return *&conversationListPinnedCellSelectedBackgroundCornerRadius_sBehavior_0;
}

- (double)expandedToolbarHeightForMiiC
{
  if (expandedToolbarHeightForMiiC_once != -1)
  {
    [CKUIBehaviorMac expandedToolbarHeightForMiiC];
  }

  return *&expandedToolbarHeightForMiiC_sBehavior;
}

- (int64_t)preferredDeleteButtonVisibilityForNewCompose
{
  if (preferredDeleteButtonVisibilityForNewCompose_once_0 != -1)
  {
    [CKUIBehaviorMac preferredDeleteButtonVisibilityForNewCompose];
  }

  if (preferredDeleteButtonVisibilityForNewCompose_sBehavior_0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsOrbPreviewsInConversationList
{
  if (supportsOrbPreviewsInConversationList_once_0 != -1)
  {
    [CKUIBehaviorMac supportsOrbPreviewsInConversationList];
  }

  return 0;
}

- (BOOL)searchControllerObscuresConversationList
{
  if (searchControllerObscuresConversationList_once_0 != -1)
  {
    [CKUIBehaviorMac searchControllerObscuresConversationList];
  }

  return 0;
}

- (BOOL)shouldShowAvatarForWidth:(double)width
{
  canShowContactPhotosInConversationList = [(CKUIBehaviorPad *)self canShowContactPhotosInConversationList];
  if (canShowContactPhotosInConversationList)
  {

    LOBYTE(canShowContactPhotosInConversationList) = [(CKUIBehaviorMac *)self contactPhotosEnabled];
  }

  return canShowContactPhotosInConversationList;
}

- (UIEdgeInsets)fieldPlatterMarginInsetsForLayoutMargins:(UIEdgeInsets)margins
{
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  v6 = 8.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)newComposeRoundedRectPlatterCornerRadius
{
  if (newComposeRoundedRectPlatterCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac newComposeRoundedRectPlatterCornerRadius];
  }

  return *&newComposeRoundedRectPlatterCornerRadius_sBehavior_0;
}

- (UIEdgeInsets)toFieldInternalMarginInsets
{
  if (toFieldInternalMarginInsets_once_0 != -1)
  {
    [CKUIBehaviorMac toFieldInternalMarginInsets];
  }

  v2 = *&toFieldInternalMarginInsets_sBehavior_1_0;
  v3 = *&toFieldInternalMarginInsets_sBehavior_3_0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)toFieldScrollViewInsets
{
  if (toFieldScrollViewInsets_once_0 != -1)
  {
    [CKUIBehaviorMac toFieldScrollViewInsets];
  }

  v2 = *&toFieldScrollViewInsets_sBehavior_0;
  v3 = *&toFieldScrollViewInsets_sBehavior_1;
  v4 = *&toFieldScrollViewInsets_sBehavior_3;
  v5 = 0.0;
  result.right = v4;
  result.bottom = v5;
  result.left = v3;
  result.top = v2;
  return result;
}

void __42__CKUIBehaviorMac_toFieldScrollViewInsets__block_invoke()
{
  toFieldScrollViewInsets_sBehavior_0 = 0x4004000000000000;
  toFieldScrollViewInsets_sBehavior_1 = 0x401E000000000000;
  toFieldScrollViewInsets_sBehavior_3 = 0x4024000000000000;
}

- (UIEdgeInsets)fromFieldMarginInsets
{
  if (fromFieldMarginInsets_once_0 != -1)
  {
    [CKUIBehaviorMac fromFieldMarginInsets];
  }

  v2 = *&fromFieldMarginInsets_sBehavior_2_0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)fromPickerStackMarginInset
{
  if (fromPickerStackMarginInset_once_0 != -1)
  {
    [CKUIBehaviorMac fromPickerStackMarginInset];
  }

  v2 = *&fromPickerStackMarginInset_sBehavior_1_0;
  v3 = *&fromPickerStackMarginInset_sBehavior_3_0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v3;
  result.bottom = v5;
  result.left = v2;
  result.top = v4;
  return result;
}

- (double)toFieldInterItemSpacing
{
  if (toFieldInterItemSpacing_once != -1)
  {
    [CKUIBehaviorMac toFieldInterItemSpacing];
  }

  return *&toFieldInterItemSpacing_sBehavior;
}

- (double)toFieldYOffset
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CKUIBehaviorMac_toFieldYOffset__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (toFieldYOffset_once != -1)
  {
    dispatch_once(&toFieldYOffset_once, block);
  }

  return *&toFieldYOffset_sBehavior;
}

double __33__CKUIBehaviorMac_toFieldYOffset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) macAppKitToolbarHeight];
  v3 = v2;
  [*(a1 + 32) macAppKitToolbarHeight];
  v5 = v4;
  [*(a1 + 32) toFieldPreferredHeight];
  result = (v3 - fmin(v5, v6)) * 0.5;
  toFieldYOffset_sBehavior = *&result;
  return result;
}

- (double)toFieldXOffset
{
  if (toFieldXOffset_once != -1)
  {
    [CKUIBehaviorMac toFieldXOffset];
  }

  return *&toFieldXOffset_sBehavior;
}

- (BOOL)recipientSelectionViewClipsToBounds
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CKUIBehaviorMac_recipientSelectionViewClipsToBounds__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (recipientSelectionViewClipsToBounds_once_0 != -1)
  {
    dispatch_once(&recipientSelectionViewClipsToBounds_once_0, block);
  }

  return recipientSelectionViewClipsToBounds_sBehavior_0;
}

uint64_t __54__CKUIBehaviorMac_recipientSelectionViewClipsToBounds__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _recipientSelectionViewClipsToBounds];
  recipientSelectionViewClipsToBounds_sBehavior_0 = result;
  return result;
}

- (BOOL)presentsAutocompleteInAPopover
{
  if (presentsAutocompleteInAPopover_once_0 != -1)
  {
    [CKUIBehaviorMac presentsAutocompleteInAPopover];
  }

  return presentsAutocompleteInAPopover_sBehavior;
}

- (id)audioHintFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(audioHintFont_sContentSizeCategory_audioHintFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateaudioHintFont](self, "ckShouldUpdateaudioHintFont") || v11 || audioHintFont_sIsIncreaseContrastEnabled_audioHintFont_0 != v4 || audioHintFont_sIsBoldTextEnabled_audioHintFont_0 != IsBoldTextEnabled || (v12 = audioHintFont_sTextFontSize_audioHintFont_0, *&audioHintFont_sTextFontSize_audioHintFont_0 != v6) || (v12 = audioHintFont_sCustomTextFontSize_audioHintFont_0, *&audioHintFont_sCustomTextFontSize_audioHintFont_0 != v7) || ([audioHintFont_sCustomTextFontName_audioHintFont_0 isEqualToString:{v10, *&audioHintFont_sCustomTextFontSize_audioHintFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = audioHintFont_sBehavior_0;
    audioHintFont_sBehavior_0 = v13;

    objc_storeStrong(&audioHintFont_sContentSizeCategory_audioHintFont_0, v3);
    audioHintFont_sIsIncreaseContrastEnabled_audioHintFont_0 = v4;
    audioHintFont_sIsBoldTextEnabled_audioHintFont_0 = IsBoldTextEnabled;
    audioHintFont_sTextFontSize_audioHintFont_0 = *&v6;
    audioHintFont_sCustomTextFontSize_audioHintFont_0 = *&v7;
    objc_storeStrong(&audioHintFont_sCustomTextFontName_audioHintFont_0, v9);
  }

  v15 = audioHintFont_sBehavior_0;
  v16 = audioHintFont_sBehavior_0;

  return v15;
}

- (double)audioHintViewPadding
{
  if (audioHintViewPadding_once_0 != -1)
  {
    [CKUIBehaviorMac audioHintViewPadding];
  }

  return *&audioHintViewPadding_sBehavior_0;
}

- (BOOL)isSendButtonEnabledOnPlatform
{
  if (isSendButtonEnabledOnPlatform_once_0 != -1)
  {
    [CKUIBehaviorMac isSendButtonEnabledOnPlatform];
  }

  return 0;
}

- (BOOL)isEntryViewInputAccessory
{
  if (isEntryViewInputAccessory_once_0 != -1)
  {
    [CKUIBehaviorMac isEntryViewInputAccessory];
  }

  return 0;
}

- (BOOL)isEntryViewFirstResponderOnViewAppearance
{
  if (isEntryViewFirstResponderOnViewAppearance_once_0 != -1)
  {
    [CKUIBehaviorMac isEntryViewFirstResponderOnViewAppearance];
  }

  return isEntryViewFirstResponderOnViewAppearance_sBehavior;
}

- (BOOL)entryViewFollowsKeyboardLayoutGuide
{
  if (entryViewFollowsKeyboardLayoutGuide_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewFollowsKeyboardLayoutGuide];
  }

  return 0;
}

- (BOOL)browserButtonShouldUseMenu
{
  if (browserButtonShouldUseMenu_once_0 != -1)
  {
    [CKUIBehaviorMac browserButtonShouldUseMenu];
  }

  return browserButtonShouldUseMenu_sBehavior;
}

- (UIEdgeInsets)messageEntryContentViewSendLaterDateInsets
{
  if (messageEntryContentViewSendLaterDateInsets_once_0 != -1)
  {
    [CKUIBehaviorMac messageEntryContentViewSendLaterDateInsets];
  }

  v2 = *&messageEntryContentViewSendLaterDateInsets_sBehavior_0_0;
  v3 = *&messageEntryContentViewSendLaterDateInsets_sBehavior_1_0;
  v4 = *&messageEntryContentViewSendLaterDateInsets_sBehavior_2_0;
  v5 = *&messageEntryContentViewSendLaterDateInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __61__CKUIBehaviorMac_messageEntryContentViewSendLaterDateInsets__block_invoke()
{
  messageEntryContentViewSendLaterDateInsets_sBehavior_0_0 = 0x4016000000000000;
  messageEntryContentViewSendLaterDateInsets_sBehavior_1_0 = 0x4024000000000000;
  messageEntryContentViewSendLaterDateInsets_sBehavior_2_0 = 0x4016000000000000;
  messageEntryContentViewSendLaterDateInsets_sBehavior_3_0 = 0x4021000000000000;
}

- (double)sendButtonSize
{
  if (sendButtonSize_once_0 != -1)
  {
    [CKUIBehaviorMac sendButtonSize];
  }

  return *&sendButtonSize_sBehavior_0;
}

- (double)emojiButtonSize
{
  if (emojiButtonSize_once != -1)
  {
    [CKUIBehaviorMac emojiButtonSize];
  }

  return *&emojiButtonSize_sBehavior;
}

- (double)stopButtonSize
{
  if (stopButtonSize_once != -1)
  {
    [CKUIBehaviorMac stopButtonSize];
  }

  return *&stopButtonSize_sBehavior;
}

- (CGSize)entryViewPlusButtonSize
{
  if (entryViewPlusButtonSize_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewPlusButtonSize];
  }

  v2 = *&entryViewPlusButtonSize_sBehavior_0_0;
  v3 = *&entryViewPlusButtonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)entryViewWithSendMenuBottomContentInsetWithKeyboardVisible
{
  if (entryViewWithSendMenuBottomContentInsetWithKeyboardVisible_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewWithSendMenuBottomContentInsetWithKeyboardVisible];
  }

  return 0.0;
}

- (double)entryViewWithSendMenuBottomContentInsetWithoutKeyboardVisible
{
  if (entryViewWithSendMenuBottomContentInsetWithoutKeyboardVisible_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewWithSendMenuBottomContentInsetWithoutKeyboardVisible];
  }

  return 0.0;
}

- (int64_t)sendMenuPlusSymbolScale
{
  if (sendMenuPlusSymbolScale_once_0 != -1)
  {
    [CKUIBehaviorMac sendMenuPlusSymbolScale];
  }

  return sendMenuPlusSymbolScale_sBehavior_0;
}

- (double)entryViewCoverMinHeight
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CKUIBehaviorMac_entryViewCoverMinHeight__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewCoverMinHeight_once_0 != -1)
  {
    dispatch_once(&entryViewCoverMinHeight_once_0, block);
  }

  return *&entryViewCoverMinHeight_sBehavior_0;
}

uint64_t __42__CKUIBehaviorMac_entryViewCoverMinHeight__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _entryViewCoverMinHeight];
  entryViewCoverMinHeight_sBehavior_0 = v2;
  return result;
}

- (double)_entryViewCoverMinHeight
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  result = 27.0;
  if (isEntryViewRefreshEnabled)
  {
    return 30.0;
  }

  return result;
}

- (BOOL)entryViewCoverHasOuterStroke
{
  if (entryViewCoverHasOuterStroke_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewCoverHasOuterStroke];
  }

  return 0;
}

- (UIEdgeInsets)entryViewVerticalTextFieldInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKUIBehaviorMac_entryViewVerticalTextFieldInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewVerticalTextFieldInsets_once_0 != -1)
  {
    dispatch_once(&entryViewVerticalTextFieldInsets_once_0, block);
  }

  v2 = *&entryViewVerticalTextFieldInsets_sBehavior_0_0;
  v3 = *&entryViewVerticalTextFieldInsets_sBehavior_1;
  v4 = *&entryViewVerticalTextFieldInsets_sBehavior_2_0;
  v5 = *&entryViewVerticalTextFieldInsets_sBehavior_3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t __51__CKUIBehaviorMac_entryViewVerticalTextFieldInsets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _entryViewVerticalTextFieldInsets];
  entryViewVerticalTextFieldInsets_sBehavior_0_0 = v2;
  entryViewVerticalTextFieldInsets_sBehavior_1 = v3;
  entryViewVerticalTextFieldInsets_sBehavior_2_0 = v4;
  entryViewVerticalTextFieldInsets_sBehavior_3 = v5;
  return result;
}

- (UIEdgeInsets)_entryViewVerticalTextFieldInsets
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  v4 = 5.0;
  if (isEntryViewRefreshEnabled)
  {
    v4 = 7.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  v7 = v4;
  result.right = v6;
  result.bottom = v7;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)entryViewVerticalCoverInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CKUIBehaviorMac_entryViewVerticalCoverInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewVerticalCoverInsets_once_0 != -1)
  {
    dispatch_once(&entryViewVerticalCoverInsets_once_0, block);
  }

  v2 = *&entryViewVerticalCoverInsets_sBehavior_0_0;
  v3 = *&entryViewVerticalCoverInsets_sBehavior_1_0;
  v4 = *&entryViewVerticalCoverInsets_sBehavior_2_0;
  v5 = *&entryViewVerticalCoverInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t __47__CKUIBehaviorMac_entryViewVerticalCoverInsets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _entryViewVerticalCoverInsets];
  entryViewVerticalCoverInsets_sBehavior_0_0 = v2;
  entryViewVerticalCoverInsets_sBehavior_1_0 = v3;
  entryViewVerticalCoverInsets_sBehavior_2_0 = v4;
  entryViewVerticalCoverInsets_sBehavior_3_0 = v5;
  return result;
}

- (UIEdgeInsets)_entryViewVerticalCoverInsets
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v6 = 16.0;
    v4 = 12.0;
    v5 = 0.0;
    v7 = 0.0;
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)entryViewCoverHorizontalMargin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIBehaviorMac_entryViewCoverHorizontalMargin__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewCoverHorizontalMargin_once != -1)
  {
    dispatch_once(&entryViewCoverHorizontalMargin_once, block);
  }

  return *&entryViewCoverHorizontalMargin_sBehavior;
}

uint64_t __49__CKUIBehaviorMac_entryViewCoverHorizontalMargin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _entryViewCoverHorizontalMargin];
  entryViewCoverHorizontalMargin_sBehavior = v2;
  return result;
}

- (double)_entryViewCoverHorizontalMargin
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  result = 16.0;
  if (isEntryViewRefreshEnabled)
  {
    return 10.0;
  }

  return result;
}

- (BOOL)entryViewAlwaysUsesConcentricPadding
{
  if (entryViewAlwaysUsesConcentricPadding_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewAlwaysUsesConcentricPadding];
  }

  return entryViewAlwaysUsesConcentricPadding_sBehavior;
}

- (double)entryViewConcentricPadding
{
  if (entryViewConcentricPadding_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewConcentricPadding];
  }

  return *&entryViewConcentricPadding_sBehavior_0;
}

- (double)entryViewMaxHeight
{
  if (entryViewMaxHeight_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewMaxHeight];
  }

  return *&entryViewMaxHeight_sBehavior_0;
}

- (BOOL)entryViewSupportsPlusButton
{
  if (entryViewSupportsPlusButton_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewSupportsPlusButton];
  }

  return entryViewSupportsPlusButton_sBehavior_0;
}

- (BOOL)entryViewSupportsBrowserButton
{
  if (entryViewSupportsBrowserButton_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewSupportsBrowserButton];
  }

  return 0;
}

- (UIEdgeInsets)messageEntryContentViewSendLaterInsets
{
  if (messageEntryContentViewSendLaterInsets_once_0 != -1)
  {
    [CKUIBehaviorMac messageEntryContentViewSendLaterInsets];
  }

  v2 = *&messageEntryContentViewSendLaterInsets_sBehavior_0_0;
  v3 = *&messageEntryContentViewSendLaterInsets_sBehavior_1_0;
  v4 = *&messageEntryContentViewSendLaterInsets_sBehavior_2_0;
  v5 = *&messageEntryContentViewSendLaterInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __57__CKUIBehaviorMac_messageEntryContentViewSendLaterInsets__block_invoke()
{
  messageEntryContentViewSendLaterInsets_sBehavior_0_0 = 0x401C000000000000;
  messageEntryContentViewSendLaterInsets_sBehavior_1_0 = 0x401C000000000000;
  messageEntryContentViewSendLaterInsets_sBehavior_2_0 = 0x401E000000000000;
  messageEntryContentViewSendLaterInsets_sBehavior_3_0 = 0x401C000000000000;
}

- (double)entryViewMaxSendLaterHeight
{
  if (entryViewMaxSendLaterHeight_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewMaxSendLaterHeight];
  }

  return *&entryViewMaxSendLaterHeight_sBehavior_0;
}

- (id)entryViewAppButtonName
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(entryViewAppButtonName_sContentSizeCategory_entryViewAppButtonName_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateentryViewAppButtonName](self, "ckShouldUpdateentryViewAppButtonName") || v11 || entryViewAppButtonName_sIsIncreaseContrastEnabled_entryViewAppButtonName_0 != v4 || entryViewAppButtonName_sIsBoldTextEnabled_entryViewAppButtonName_0 != IsBoldTextEnabled || *&entryViewAppButtonName_sTextFontSize_entryViewAppButtonName_0 != v6 || *&entryViewAppButtonName_sCustomTextFontSize_entryViewAppButtonName_0 != v7 || ([entryViewAppButtonName_sCustomTextFontName_entryViewAppButtonName_0 isEqualToString:{v10, *&entryViewAppButtonName_sCustomTextFontSize_entryViewAppButtonName_0}] & 1) == 0)
  {
    v12 = entryViewAppButtonName_sBehavior_0;
    entryViewAppButtonName_sBehavior_0 = @"appstore.capsule.2.fill";

    objc_storeStrong(&entryViewAppButtonName_sContentSizeCategory_entryViewAppButtonName_0, v3);
    entryViewAppButtonName_sIsIncreaseContrastEnabled_entryViewAppButtonName_0 = v4;
    entryViewAppButtonName_sIsBoldTextEnabled_entryViewAppButtonName_0 = IsBoldTextEnabled;
    entryViewAppButtonName_sTextFontSize_entryViewAppButtonName_0 = *&v6;
    entryViewAppButtonName_sCustomTextFontSize_entryViewAppButtonName_0 = *&v7;
    objc_storeStrong(&entryViewAppButtonName_sCustomTextFontName_entryViewAppButtonName_0, v9);
  }

  v13 = entryViewAppButtonName_sBehavior_0;
  v14 = entryViewAppButtonName_sBehavior_0;

  return v13;
}

- (id)entryViewMacEmojiButtonImage
{
  if (entryViewMacEmojiButtonImage_once != -1)
  {
    [CKUIBehaviorMac entryViewMacEmojiButtonImage];
  }

  v3 = entryViewMacEmojiButtonImage_sBehavior;

  return v3;
}

void __47__CKUIBehaviorMac_entryViewMacEmojiButtonImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"face.grinning"];
  v1 = entryViewMacEmojiButtonImage_sBehavior;
  entryViewMacEmojiButtonImage_sBehavior = v0;
}

- (id)entryViewMacCancelButtonName
{
  if (entryViewMacCancelButtonName_once != -1)
  {
    [CKUIBehaviorMac entryViewMacCancelButtonName];
  }

  v3 = entryViewMacCancelButtonName_sBehavior;

  return v3;
}

void __47__CKUIBehaviorMac_entryViewMacCancelButtonName__block_invoke()
{
  v0 = entryViewMacCancelButtonName_sBehavior;
  entryViewMacCancelButtonName_sBehavior = @"mac-cancel";
}

- (id)entryViewMacStopButtonName
{
  if (entryViewMacStopButtonName_once != -1)
  {
    [CKUIBehaviorMac entryViewMacStopButtonName];
  }

  v3 = entryViewMacStopButtonName_sBehavior;

  return v3;
}

void __45__CKUIBehaviorMac_entryViewMacStopButtonName__block_invoke()
{
  v0 = entryViewMacStopButtonName_sBehavior;
  entryViewMacStopButtonName_sBehavior = @"mac-stop";
}

- (BOOL)forceMinTranscriptMarginInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIBehaviorMac_forceMinTranscriptMarginInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (forceMinTranscriptMarginInsets_once_0 != -1)
  {
    dispatch_once(&forceMinTranscriptMarginInsets_once_0, block);
  }

  return forceMinTranscriptMarginInsets_sBehavior;
}

uint64_t __49__CKUIBehaviorMac_forceMinTranscriptMarginInsets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _forceMinTranscriptMarginInsets];
  forceMinTranscriptMarginInsets_sBehavior = result;
  return result;
}

- (BOOL)_forceMinTranscriptMarginInsets
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  return isEntryViewRefreshEnabled ^ 1;
}

- (double)entryViewPlusButtonToTextFieldPadding
{
  if (entryViewPlusButtonToTextFieldPadding_once_0 != -1)
  {
    [CKUIBehaviorMac entryViewPlusButtonToTextFieldPadding];
  }

  return *&entryViewPlusButtonToTextFieldPadding_sBehavior_0;
}

- (UIEdgeInsets)entryViewHorizontalCoverInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIBehaviorMac_entryViewHorizontalCoverInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryViewHorizontalCoverInsets_once_0 != -1)
  {
    dispatch_once(&entryViewHorizontalCoverInsets_once_0, block);
  }

  v2 = *&entryViewHorizontalCoverInsets_sBehavior_0;
  v3 = *&entryViewHorizontalCoverInsets_sBehavior_1_0;
  v4 = *&entryViewHorizontalCoverInsets_sBehavior_2;
  v5 = *&entryViewHorizontalCoverInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t __49__CKUIBehaviorMac_entryViewHorizontalCoverInsets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) minTranscriptMarginInsets];
  entryViewHorizontalCoverInsets_sBehavior_0 = v2;
  entryViewHorizontalCoverInsets_sBehavior_1_0 = v3;
  entryViewHorizontalCoverInsets_sBehavior_2 = v4;
  entryViewHorizontalCoverInsets_sBehavior_3_0 = v5;
  return result;
}

- (double)entryContentViewTextLeftOffset
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIBehaviorMac_entryContentViewTextLeftOffset__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (entryContentViewTextLeftOffset_once_0 != -1)
  {
    dispatch_once(&entryContentViewTextLeftOffset_once_0, block);
  }

  return *&entryContentViewTextLeftOffset_sBehavior_0;
}

uint64_t __49__CKUIBehaviorMac_entryContentViewTextLeftOffset__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _entryContentViewTextLeftOffset];
  entryContentViewTextLeftOffset_sBehavior_0 = v2;
  return result;
}

- (double)_entryContentViewTextLeftOffset
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  result = 6.0;
  if (isEntryViewRefreshEnabled)
  {
    return 12.0;
  }

  return result;
}

- (CGSize)transcriptTypingIndicatorDefaultSize
{
  if (transcriptTypingIndicatorDefaultSize_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptTypingIndicatorDefaultSize];
  }

  v2 = *&transcriptTypingIndicatorDefaultSize_sBehavior_0_0;
  v3 = *&transcriptTypingIndicatorDefaultSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)transcriptTypingIndicatorLargeBubbleSize
{
  if (transcriptTypingIndicatorLargeBubbleSize_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptTypingIndicatorLargeBubbleSize];
  }

  v2 = *&transcriptTypingIndicatorLargeBubbleSize_sBehavior_0_0;
  v3 = *&transcriptTypingIndicatorLargeBubbleSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)transcriptTypingIndicatorLargeBubbleGrowOffset
{
  if (transcriptTypingIndicatorLargeBubbleGrowOffset_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptTypingIndicatorLargeBubbleGrowOffset];
  }

  v2 = *&transcriptTypingIndicatorLargeBubbleGrowOffset_sBehavior_0_0;
  v3 = *&transcriptTypingIndicatorLargeBubbleGrowOffset_sBehavior_1_0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)transcriptTypingIndicatorLargeBubbleOffset
{
  if (transcriptTypingIndicatorLargeBubbleOffset_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptTypingIndicatorLargeBubbleOffset];
  }

  v2 = *&transcriptTypingIndicatorLargeBubbleOffset_sBehavior_0_0;
  v3 = *&transcriptTypingIndicatorLargeBubbleOffset_sBehavior_1_0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)suggestedActionButtonInsets
{
  if (suggestedActionButtonInsets_once_0 != -1)
  {
    [CKUIBehaviorMac suggestedActionButtonInsets];
  }

  v2 = *&suggestedActionButtonInsets_sBehavior_2_0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)suggestedActionButtonMinHeight
{
  if (suggestedActionButtonMinHeight_once_0 != -1)
  {
    [CKUIBehaviorMac suggestedActionButtonMinHeight];
  }

  return *&suggestedActionButtonMinHeight_sBehavior_0;
}

- (double)paddleOverlayRadius
{
  if (paddleOverlayRadius_once_0 != -1)
  {
    [CKUIBehaviorMac paddleOverlayRadius];
  }

  return *&paddleOverlayRadius_sBehavior_0;
}

- (double)paddleDividerInset
{
  if (paddleDividerInset_once_0 != -1)
  {
    [CKUIBehaviorMac paddleDividerInset];
  }

  return *&paddleDividerInset_sBehavior;
}

- (id)mentionsCellNameFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

  v5 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v6 = [v5 fontWithDescriptor:v4 size:?];

  return v6;
}

- (double)waveformHeight
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CKUIBehaviorMac_waveformHeight__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (waveformHeight_once_0 != -1)
  {
    dispatch_once(&waveformHeight_once_0, block);
  }

  return *&waveformHeight_sBehavior_0;
}

uint64_t __33__CKUIBehaviorMac_waveformHeight__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) audioWaveformHeight];
  waveformHeight_sBehavior_0 = v2;
  return result;
}

- (double)minimumWaveformHeight
{
  if (minimumWaveformHeight_once_0 != -1)
  {
    [CKUIBehaviorMac minimumWaveformHeight];
  }

  return *&minimumWaveformHeight_sBehavior_0;
}

- (CGSize)audioProgressViewSize
{
  if (audioProgressViewSize_once_0 != -1)
  {
    [CKUIBehaviorMac audioProgressViewSize];
  }

  v2 = *&audioProgressViewSize_sBehavior_0_0;
  v3 = *&audioProgressViewSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)appMenuTitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(appMenuTitleFont_sContentSizeCategory_appMenuTitleFont, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateappMenuTitleFont](self, "ckShouldUpdateappMenuTitleFont") || v11 || appMenuTitleFont_sIsIncreaseContrastEnabled_appMenuTitleFont != v4 || appMenuTitleFont_sIsBoldTextEnabled_appMenuTitleFont != IsBoldTextEnabled || (v12 = appMenuTitleFont_sTextFontSize_appMenuTitleFont, *&appMenuTitleFont_sTextFontSize_appMenuTitleFont != v6) || (v12 = appMenuTitleFont_sCustomTextFontSize_appMenuTitleFont, *&appMenuTitleFont_sCustomTextFontSize_appMenuTitleFont != v7) || ([appMenuTitleFont_sCustomTextFontName_appMenuTitleFont isEqualToString:{v10, *&appMenuTitleFont_sCustomTextFontSize_appMenuTitleFont}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], *&v12}];
    v14 = appMenuTitleFont_sBehavior;
    appMenuTitleFont_sBehavior = v13;

    objc_storeStrong(&appMenuTitleFont_sContentSizeCategory_appMenuTitleFont, v3);
    appMenuTitleFont_sIsIncreaseContrastEnabled_appMenuTitleFont = v4;
    appMenuTitleFont_sIsBoldTextEnabled_appMenuTitleFont = IsBoldTextEnabled;
    appMenuTitleFont_sTextFontSize_appMenuTitleFont = *&v6;
    appMenuTitleFont_sCustomTextFontSize_appMenuTitleFont = *&v7;
    objc_storeStrong(&appMenuTitleFont_sCustomTextFontName_appMenuTitleFont, v9);
  }

  v15 = appMenuTitleFont_sBehavior;
  v16 = appMenuTitleFont_sBehavior;

  return v15;
}

- (id)appMenuPhotosIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy displayScale];
  if (v4 == 1.0)
  {
    v5 = @"1x";
  }

  else
  {
    v5 = @"2x";
  }

  v6 = [@"Mac-PhotosIcon" stringByAppendingString:v5];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v9 = [v6 stringByAppendingString:@"-glass"];

    v6 = v9;
  }

  v10 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v10;
}

- (id)appMenuEffectsIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-EffectsIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-EffectsIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuHashtagImagesIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-HashtagImagesIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-HashtagImagesIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuAnimojiStickersIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-StickersIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-StickersIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuApplePayIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-ApplePayIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-ApplePayIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuGenmojiIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-GenmojiIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-GenmojiIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuSendLaterMessagesIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-SendLaterIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-SendLaterIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (id)appMenuGenerativePlaygroundIconForTraitCollection:(id)collection
{
  collectionCopy = collection;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    v6 = [@"Mac-GenerativePlaygroundIcon" stringByAppendingString:@"-glass"];
  }

  else
  {
    v6 = @"Mac-GenerativePlaygroundIcon";
  }

  v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:v6 compatibleWithTraitCollection:collectionCopy];

  return v7;
}

- (double)popoverPadding
{
  if (popoverPadding_once != -1)
  {
    [CKUIBehaviorMac popoverPadding];
  }

  return *&popoverPadding_sBehavior;
}

- (double)popoverHeightPadding
{
  if (popoverHeightPadding_once != -1)
  {
    [CKUIBehaviorMac popoverHeightPadding];
  }

  return *&popoverHeightPadding_sBehavior;
}

- (double)popOverWidth
{
  if (popOverWidth_once != -1)
  {
    [CKUIBehaviorMac popOverWidth];
  }

  return *&popOverWidth_sBehavior;
}

- (double)popOverWidthInDetailsView
{
  if (popOverWidthInDetailsView_once != -1)
  {
    [CKUIBehaviorMac popOverWidthInDetailsView];
  }

  return *&popOverWidthInDetailsView_sBehavior;
}

- (double)popOverMaxHeight
{
  if (popOverMaxHeight_once != -1)
  {
    [CKUIBehaviorMac popOverMaxHeight];
  }

  return *&popOverMaxHeight_sBehavior;
}

- (double)popOverMaxHeightInDetailsView
{
  if (popOverMaxHeightInDetailsView_once != -1)
  {
    [CKUIBehaviorMac popOverMaxHeightInDetailsView];
  }

  return *&popOverMaxHeightInDetailsView_sBehavior;
}

- (double)autocompletePopOverLeftOffset
{
  if (autocompletePopOverLeftOffset_once != -1)
  {
    [CKUIBehaviorMac autocompletePopOverLeftOffset];
  }

  return *&autocompletePopOverLeftOffset_sBehavior;
}

- (id)iosMacDetailsButtonText
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(iosMacDetailsButtonText_sContentSizeCategory_iosMacDetailsButtonText, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateiosMacDetailsButtonText](self, "ckShouldUpdateiosMacDetailsButtonText") || v11 || iosMacDetailsButtonText_sIsIncreaseContrastEnabled_iosMacDetailsButtonText != v4 || iosMacDetailsButtonText_sIsBoldTextEnabled_iosMacDetailsButtonText != IsBoldTextEnabled || *&iosMacDetailsButtonText_sTextFontSize_iosMacDetailsButtonText != v6 || *&iosMacDetailsButtonText_sCustomTextFontSize_iosMacDetailsButtonText != v7 || ([iosMacDetailsButtonText_sCustomTextFontName_iosMacDetailsButtonText isEqualToString:{v10, *&iosMacDetailsButtonText_sCustomTextFontSize_iosMacDetailsButtonText}] & 1) == 0)
  {
    if (iosMacDetailsButtonText_onceToken != -1)
    {
      [CKUIBehaviorMac iosMacDetailsButtonText];
    }

    objc_storeStrong(&iosMacDetailsButtonText_sBehavior, iosMacDetailsButtonText_detailsText);
    objc_storeStrong(&iosMacDetailsButtonText_sContentSizeCategory_iosMacDetailsButtonText, v3);
    iosMacDetailsButtonText_sIsIncreaseContrastEnabled_iosMacDetailsButtonText = v4;
    iosMacDetailsButtonText_sIsBoldTextEnabled_iosMacDetailsButtonText = IsBoldTextEnabled;
    iosMacDetailsButtonText_sTextFontSize_iosMacDetailsButtonText = *&v6;
    iosMacDetailsButtonText_sCustomTextFontSize_iosMacDetailsButtonText = *&v7;
    objc_storeStrong(&iosMacDetailsButtonText_sCustomTextFontName_iosMacDetailsButtonText, v9);
  }

  v12 = iosMacDetailsButtonText_sBehavior;
  v13 = iosMacDetailsButtonText_sBehavior;

  return v12;
}

void __42__CKUIBehaviorMac_iosMacDetailsButtonText__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] ckColorNamed:@"MarzipanDetailButtonColor"];
  v1 = iosMacDetailsButtonText_blueTextColor;
  iosMacDetailsButtonText_blueTextColor = v0;

  v10[0] = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10[1] = *MEMORY[0x1E69DB650];
  v11[0] = v2;
  v11[1] = iosMacDetailsButtonText_blueTextColor;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v4 = iosMacDetailsButtonText_attributes;
  iosMacDetailsButtonText_attributes = v3;

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 initWithString:v7 attributes:iosMacDetailsButtonText_attributes];
  v9 = iosMacDetailsButtonText_detailsText;
  iosMacDetailsButtonText_detailsText = v8;
}

- (id)navbarDefaultLabelFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(navbarDefaultLabelFont_sContentSizeCategory_navbarDefaultLabelFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatenavbarDefaultLabelFont](self, "ckShouldUpdatenavbarDefaultLabelFont") || v11 || navbarDefaultLabelFont_sIsIncreaseContrastEnabled_navbarDefaultLabelFont_0 != v4 || navbarDefaultLabelFont_sIsBoldTextEnabled_navbarDefaultLabelFont_0 != IsBoldTextEnabled || (v12 = navbarDefaultLabelFont_sTextFontSize_navbarDefaultLabelFont_0, *&navbarDefaultLabelFont_sTextFontSize_navbarDefaultLabelFont_0 != v6) || (v12 = navbarDefaultLabelFont_sCustomTextFontSize_navbarDefaultLabelFont_0, *&navbarDefaultLabelFont_sCustomTextFontSize_navbarDefaultLabelFont_0 != v7) || ([navbarDefaultLabelFont_sCustomTextFontName_navbarDefaultLabelFont_0 isEqualToString:{v10, *&navbarDefaultLabelFont_sCustomTextFontSize_navbarDefaultLabelFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDDC8], *&v12}];
    v14 = navbarDefaultLabelFont_sBehavior_0;
    navbarDefaultLabelFont_sBehavior_0 = v13;

    objc_storeStrong(&navbarDefaultLabelFont_sContentSizeCategory_navbarDefaultLabelFont_0, v3);
    navbarDefaultLabelFont_sIsIncreaseContrastEnabled_navbarDefaultLabelFont_0 = v4;
    navbarDefaultLabelFont_sIsBoldTextEnabled_navbarDefaultLabelFont_0 = IsBoldTextEnabled;
    navbarDefaultLabelFont_sTextFontSize_navbarDefaultLabelFont_0 = *&v6;
    navbarDefaultLabelFont_sCustomTextFontSize_navbarDefaultLabelFont_0 = *&v7;
    objc_storeStrong(&navbarDefaultLabelFont_sCustomTextFontName_navbarDefaultLabelFont_0, v9);
  }

  v15 = navbarDefaultLabelFont_sBehavior_0;
  v16 = navbarDefaultLabelFont_sBehavior_0;

  return v15;
}

- (double)marzNavigationBarHeight
{
  if (marzNavigationBarHeight_once != -1)
  {
    [CKUIBehaviorMac marzNavigationBarHeight];
  }

  return *&marzNavigationBarHeight_sBehavior;
}

void __42__CKUIBehaviorMac_marzNavigationBarHeight__block_invoke()
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v0 = [v2 useMacToolbar];
  v1 = 50.0;
  if (v0)
  {
    v1 = 40.0;
  }

  marzNavigationBarHeight_sBehavior = *&v1;
}

- (double)macAppKitToolbarHeight
{
  if (macAppKitToolbarHeight_once != -1)
  {
    [CKUIBehaviorMac macAppKitToolbarHeight];
  }

  return *&macAppKitToolbarHeight_sBehavior;
}

- (double)toFieldInterlineSpacing
{
  if (toFieldInterlineSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac toFieldInterlineSpacing];
  }

  return *&toFieldInterlineSpacing_sBehavior_0;
}

- (double)macToolbarStoplightButtonsLeadingPadding
{
  if (macToolbarStoplightButtonsLeadingPadding_once != -1)
  {
    [CKUIBehaviorMac macToolbarStoplightButtonsLeadingPadding];
  }

  return *&macToolbarStoplightButtonsLeadingPadding_sBehavior;
}

- (double)macEffectPickerTitleLeadingPadding
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKUIBehaviorMac_macEffectPickerTitleLeadingPadding__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macEffectPickerTitleLeadingPadding_once != -1)
  {
    dispatch_once(&macEffectPickerTitleLeadingPadding_once, block);
  }

  return *&macEffectPickerTitleLeadingPadding_sBehavior;
}

uint64_t __53__CKUIBehaviorMac_macEffectPickerTitleLeadingPadding__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _macEffectPickerTitleLeadingPadding];
  macEffectPickerTitleLeadingPadding_sBehavior = v2;
  return result;
}

- (double)_macEffectPickerTitleLeadingPadding
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  result = 15.0;
  if (isEntryViewRefreshEnabled)
  {
    return 16.0;
  }

  return result;
}

- (BOOL)effectPickerPresentsSelectionView
{
  if (effectPickerPresentsSelectionView_once_0 != -1)
  {
    [CKUIBehaviorMac effectPickerPresentsSelectionView];
  }

  return 0;
}

- (double)macConversationListToolbarHeight
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKUIBehaviorMac_macConversationListToolbarHeight__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macConversationListToolbarHeight_once != -1)
  {
    dispatch_once(&macConversationListToolbarHeight_once, block);
  }

  return *&macConversationListToolbarHeight_sBehavior;
}

double __51__CKUIBehaviorMac_macConversationListToolbarHeight__block_invoke(uint64_t a1)
{
  [*(a1 + 32) macAppKitToolbarHeight];
  v3 = v2;
  [*(a1 + 32) marzNavigationBarHeight];
  result = v3 + v4;
  macConversationListToolbarHeight_sBehavior = *&result;
  return result;
}

- (UIEdgeInsets)searchNavbarCanvasInsets
{
  if (searchNavbarCanvasInsets_once != -1)
  {
    [CKUIBehaviorMac searchNavbarCanvasInsets];
  }

  v2 = *&searchNavbarCanvasInsets_sBehavior_0;
  v3 = *&searchNavbarCanvasInsets_sBehavior_1;
  v4 = *&searchNavbarCanvasInsets_sBehavior_2;
  v5 = *&searchNavbarCanvasInsets_sBehavior_3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __43__CKUIBehaviorMac_searchNavbarCanvasInsets__block_invoke()
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v0 = [v4 useMacToolbar];
  v1 = 12.0;
  v2 = 0.0;
  if (!v0)
  {
    v2 = 12.0;
  }

  searchNavbarCanvasInsets_sBehavior_0 = *&v2;
  searchNavbarCanvasInsets_sBehavior_1 = 0x4024000000000000;
  if (v0)
  {
    v1 = 10.0;
  }

  searchNavbarCanvasInsets_sBehavior_2 = *&v1;
  v3 = 18.0;
  if (v0)
  {
    v3 = 10.0;
  }

  searchNavbarCanvasInsets_sBehavior_3 = *&v3;
}

- (double)spaceBetweenSearchBarAndComposeButton
{
  if (spaceBetweenSearchBarAndComposeButton_once != -1)
  {
    [CKUIBehaviorMac spaceBetweenSearchBarAndComposeButton];
  }

  return *&spaceBetweenSearchBarAndComposeButton_sBehavior;
}

- (CGSize)cancelButtonSize
{
  if (cancelButtonSize_once != -1)
  {
    [CKUIBehaviorMac cancelButtonSize];
  }

  v2 = *&cancelButtonSize_sBehavior_0;
  v3 = *&cancelButtonSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)searchBarFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchBarFont_sContentSizeCategory_searchBarFont, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatesearchBarFont](self, "ckShouldUpdatesearchBarFont") || v11 || searchBarFont_sIsIncreaseContrastEnabled_searchBarFont != v4 || searchBarFont_sIsBoldTextEnabled_searchBarFont != IsBoldTextEnabled || (v12 = searchBarFont_sTextFontSize_searchBarFont, *&searchBarFont_sTextFontSize_searchBarFont != v6) || (v12 = searchBarFont_sCustomTextFontSize_searchBarFont, *&searchBarFont_sCustomTextFontSize_searchBarFont != v7) || ([searchBarFont_sCustomTextFontName_searchBarFont isEqualToString:{v10, *&searchBarFont_sCustomTextFontSize_searchBarFont}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], *&v12}];
    v14 = searchBarFont_sBehavior;
    searchBarFont_sBehavior = v13;

    objc_storeStrong(&searchBarFont_sContentSizeCategory_searchBarFont, v3);
    searchBarFont_sIsIncreaseContrastEnabled_searchBarFont = v4;
    searchBarFont_sIsBoldTextEnabled_searchBarFont = IsBoldTextEnabled;
    searchBarFont_sTextFontSize_searchBarFont = *&v6;
    searchBarFont_sCustomTextFontSize_searchBarFont = *&v7;
    objc_storeStrong(&searchBarFont_sCustomTextFontName_searchBarFont, v9);
  }

  v15 = searchBarFont_sBehavior;
  v16 = searchBarFont_sBehavior;

  return v15;
}

- (id)chatNavbarColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CKUIBehaviorMac_chatNavbarColor__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (chatNavbarColor_once != -1)
  {
    dispatch_once(&chatNavbarColor_once, block);
  }

  return chatNavbarColor_sBehavior;
}

void __34__CKUIBehaviorMac_chatNavbarColor__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) useMacToolbar])
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v2 = chatNavbarColor_sBehavior;
  chatNavbarColor_sBehavior = v1;
}

- (double)chatNavbarLeftMargin
{
  if (chatNavbarLeftMargin_once != -1)
  {
    [CKUIBehaviorMac chatNavbarLeftMargin];
  }

  return *&chatNavbarLeftMargin_sBehavior;
}

- (double)chatNavbarRightMargin
{
  if (chatNavbarRightMargin_once != -1)
  {
    [CKUIBehaviorMac chatNavbarRightMargin];
  }

  return *&chatNavbarRightMargin_sBehavior;
}

- (CGSize)macNSToolbarItemSize
{
  if (macNSToolbarItemSize_once != -1)
  {
    [CKUIBehaviorMac macNSToolbarItemSize];
  }

  v2 = *&macNSToolbarItemSize_sBehavior_0;
  v3 = *&macNSToolbarItemSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)macJoinFaceTimeNSToolbarItemSize
{
  if (macJoinFaceTimeNSToolbarItemSize_once != -1)
  {
    [CKUIBehaviorMac macJoinFaceTimeNSToolbarItemSize];
  }

  v2 = *&macJoinFaceTimeNSToolbarItemSize_sBehavior_0;
  v3 = *&macJoinFaceTimeNSToolbarItemSize_sBehavior_1;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)macNSToolbarItemInterItemSpacing
{
  if (macNSToolbarItemInterItemSpacing_once != -1)
  {
    [CKUIBehaviorMac macNSToolbarItemInterItemSpacing];
  }

  return *&macNSToolbarItemInterItemSpacing_sBehavior;
}

- (double)macNavbarBottomMargin
{
  if (macNavbarBottomMargin_once != -1)
  {
    [CKUIBehaviorMac macNavbarBottomMargin];
  }

  return *&macNavbarBottomMargin_sBehavior;
}

- (double)macNavbarLeftMargin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CKUIBehaviorMac_macNavbarLeftMargin__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macNavbarLeftMargin_once != -1)
  {
    dispatch_once(&macNavbarLeftMargin_once, block);
  }

  return *&macNavbarLeftMargin_sBehavior;
}

uint64_t __38__CKUIBehaviorMac_macNavbarLeftMargin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) useMacToolbar];
  v2 = 13.0;
  if (result)
  {
    v2 = 20.0;
  }

  macNavbarLeftMargin_sBehavior = *&v2;
  return result;
}

- (double)macNavbarRightMargin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CKUIBehaviorMac_macNavbarRightMargin__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macNavbarRightMargin_once != -1)
  {
    dispatch_once(&macNavbarRightMargin_once, block);
  }

  return *&macNavbarRightMargin_sBehavior;
}

uint64_t __39__CKUIBehaviorMac_macNavbarRightMargin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) useMacToolbar];
  v2 = 12.0;
  if (result)
  {
    v2 = 20.0;
  }

  macNavbarRightMargin_sBehavior = *&v2;
  return result;
}

- (double)macToLabelTrailingMargin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CKUIBehaviorMac_macToLabelTrailingMargin__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macToLabelTrailingMargin_once != -1)
  {
    dispatch_once(&macToLabelTrailingMargin_once, block);
  }

  return *&macToLabelTrailingMargin_sBehavior;
}

uint64_t __43__CKUIBehaviorMac_macToLabelTrailingMargin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) useMacToolbar];
  v2 = 9.0;
  if (result)
  {
    v2 = 0.0;
  }

  macToLabelTrailingMargin_sBehavior = *&v2;
  return result;
}

- (double)macTitleTrailingMargin
{
  if (macTitleTrailingMargin_once != -1)
  {
    [CKUIBehaviorMac macTitleTrailingMargin];
  }

  return 0.0;
}

- (double)macTotalMarginWidth
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CKUIBehaviorMac_macTotalMarginWidth__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (macTotalMarginWidth_once != -1)
  {
    dispatch_once(&macTotalMarginWidth_once, block);
  }

  return *&macTotalMarginWidth_sBehavior;
}

double __38__CKUIBehaviorMac_macTotalMarginWidth__block_invoke(uint64_t a1)
{
  [*(a1 + 32) macNavbarLeftMargin];
  v3 = v2;
  [*(a1 + 32) macToLabelTrailingMargin];
  v5 = v3 + v4;
  [*(a1 + 32) macTitleTrailingMargin];
  v7 = v5 + v6;
  [*(a1 + 32) macNavbarRightMargin];
  result = v7 + v8;
  macTotalMarginWidth_sBehavior = *&result;
  return result;
}

- (id)audioBalloonTimeFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(audioBalloonTimeFont_sContentSizeCategory_audioBalloonTimeFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateaudioBalloonTimeFont](self, "ckShouldUpdateaudioBalloonTimeFont") || v11 || audioBalloonTimeFont_sIsIncreaseContrastEnabled_audioBalloonTimeFont_0 != v4 || audioBalloonTimeFont_sIsBoldTextEnabled_audioBalloonTimeFont_0 != IsBoldTextEnabled || (v12 = audioBalloonTimeFont_sTextFontSize_audioBalloonTimeFont_0, *&audioBalloonTimeFont_sTextFontSize_audioBalloonTimeFont_0 != v6) || (v12 = audioBalloonTimeFont_sCustomTextFontSize_audioBalloonTimeFont_0, *&audioBalloonTimeFont_sCustomTextFontSize_audioBalloonTimeFont_0 != v7) || ([audioBalloonTimeFont_sCustomTextFontName_audioBalloonTimeFont_0 isEqualToString:{v10, *&audioBalloonTimeFont_sCustomTextFontSize_audioBalloonTimeFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] __ck_shortMonospacedPreferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = audioBalloonTimeFont_sBehavior_0;
    audioBalloonTimeFont_sBehavior_0 = v13;

    objc_storeStrong(&audioBalloonTimeFont_sContentSizeCategory_audioBalloonTimeFont_0, v3);
    audioBalloonTimeFont_sIsIncreaseContrastEnabled_audioBalloonTimeFont_0 = v4;
    audioBalloonTimeFont_sIsBoldTextEnabled_audioBalloonTimeFont_0 = IsBoldTextEnabled;
    audioBalloonTimeFont_sTextFontSize_audioBalloonTimeFont_0 = *&v6;
    audioBalloonTimeFont_sCustomTextFontSize_audioBalloonTimeFont_0 = *&v7;
    objc_storeStrong(&audioBalloonTimeFont_sCustomTextFontName_audioBalloonTimeFont_0, v9);
  }

  v15 = audioBalloonTimeFont_sBehavior_0;
  v16 = audioBalloonTimeFont_sBehavior_0;

  return v15;
}

- (id)audioBalloonSpeedFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(audioBalloonSpeedFont_sContentSizeCategory_audioBalloonSpeedFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateaudioBalloonSpeedFont](self, "ckShouldUpdateaudioBalloonSpeedFont") || v11 || audioBalloonSpeedFont_sIsIncreaseContrastEnabled_audioBalloonSpeedFont_0 != v4 || audioBalloonSpeedFont_sIsBoldTextEnabled_audioBalloonSpeedFont_0 != IsBoldTextEnabled || (v12 = audioBalloonSpeedFont_sTextFontSize_audioBalloonSpeedFont_0, *&audioBalloonSpeedFont_sTextFontSize_audioBalloonSpeedFont_0 != v6) || (v12 = audioBalloonSpeedFont_sCustomTextFontSize_audioBalloonSpeedFont_0, *&audioBalloonSpeedFont_sCustomTextFontSize_audioBalloonSpeedFont_0 != v7) || ([audioBalloonSpeedFont_sCustomTextFontName_audioBalloonSpeedFont_0 isEqualToString:{v10, *&audioBalloonSpeedFont_sCustomTextFontSize_audioBalloonSpeedFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] __ck_shortMonospacedPreferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = audioBalloonSpeedFont_sBehavior_0;
    audioBalloonSpeedFont_sBehavior_0 = v13;

    objc_storeStrong(&audioBalloonSpeedFont_sContentSizeCategory_audioBalloonSpeedFont_0, v3);
    audioBalloonSpeedFont_sIsIncreaseContrastEnabled_audioBalloonSpeedFont_0 = v4;
    audioBalloonSpeedFont_sIsBoldTextEnabled_audioBalloonSpeedFont_0 = IsBoldTextEnabled;
    audioBalloonSpeedFont_sTextFontSize_audioBalloonSpeedFont_0 = *&v6;
    audioBalloonSpeedFont_sCustomTextFontSize_audioBalloonSpeedFont_0 = *&v7;
    objc_storeStrong(&audioBalloonSpeedFont_sCustomTextFontName_audioBalloonSpeedFont_0, v9);
  }

  v15 = audioBalloonSpeedFont_sBehavior_0;
  v16 = audioBalloonSpeedFont_sBehavior_0;

  return v15;
}

- (id)audioBalloonTranscriptionFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(audioBalloonTranscriptionFont_sContentSizeCategory_audioBalloonTranscriptionFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateaudioBalloonTranscriptionFont](self, "ckShouldUpdateaudioBalloonTranscriptionFont") || v11 || audioBalloonTranscriptionFont_sIsIncreaseContrastEnabled_audioBalloonTranscriptionFont_0 != v4 || audioBalloonTranscriptionFont_sIsBoldTextEnabled_audioBalloonTranscriptionFont_0 != IsBoldTextEnabled || (v12 = audioBalloonTranscriptionFont_sTextFontSize_audioBalloonTranscriptionFont_0, *&audioBalloonTranscriptionFont_sTextFontSize_audioBalloonTranscriptionFont_0 != v6) || (v12 = audioBalloonTranscriptionFont_sCustomTextFontSize_audioBalloonTranscriptionFont_0, *&audioBalloonTranscriptionFont_sCustomTextFontSize_audioBalloonTranscriptionFont_0 != v7) || ([audioBalloonTranscriptionFont_sCustomTextFontName_audioBalloonTranscriptionFont_0 isEqualToString:{v10, *&audioBalloonTranscriptionFont_sCustomTextFontSize_audioBalloonTranscriptionFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = audioBalloonTranscriptionFont_sBehavior_0;
    audioBalloonTranscriptionFont_sBehavior_0 = v13;

    objc_storeStrong(&audioBalloonTranscriptionFont_sContentSizeCategory_audioBalloonTranscriptionFont_0, v3);
    audioBalloonTranscriptionFont_sIsIncreaseContrastEnabled_audioBalloonTranscriptionFont_0 = v4;
    audioBalloonTranscriptionFont_sIsBoldTextEnabled_audioBalloonTranscriptionFont_0 = IsBoldTextEnabled;
    audioBalloonTranscriptionFont_sTextFontSize_audioBalloonTranscriptionFont_0 = *&v6;
    audioBalloonTranscriptionFont_sCustomTextFontSize_audioBalloonTranscriptionFont_0 = *&v7;
    objc_storeStrong(&audioBalloonTranscriptionFont_sCustomTextFontName_audioBalloonTranscriptionFont_0, v9);
  }

  v15 = audioBalloonTranscriptionFont_sBehavior_0;
  v16 = audioBalloonTranscriptionFont_sBehavior_0;

  return v15;
}

- (BOOL)transcriptMinBottomInsetIsEntryViewHeight
{
  if (transcriptMinBottomInsetIsEntryViewHeight_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptMinBottomInsetIsEntryViewHeight];
  }

  return transcriptMinBottomInsetIsEntryViewHeight_sBehavior;
}

- (UIEdgeInsets)minTranscriptMarginInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKUIBehaviorMac_minTranscriptMarginInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (minTranscriptMarginInsets_once_0 != -1)
  {
    dispatch_once(&minTranscriptMarginInsets_once_0, block);
  }

  v2 = *&minTranscriptMarginInsets_sBehavior_0;
  v3 = *&minTranscriptMarginInsets_sBehavior_1_0;
  v4 = *&minTranscriptMarginInsets_sBehavior_2;
  v5 = *&minTranscriptMarginInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t __44__CKUIBehaviorMac_minTranscriptMarginInsets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _minTranscriptMarginInsets];
  minTranscriptMarginInsets_sBehavior_0 = v2;
  minTranscriptMarginInsets_sBehavior_1_0 = v3;
  minTranscriptMarginInsets_sBehavior_2 = v4;
  minTranscriptMarginInsets_sBehavior_3_0 = v5;
  return result;
}

- (UIEdgeInsets)_minTranscriptMarginInsets
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  v4 = 11.0;
  if (!isEntryViewRefreshEnabled)
  {
    v4 = 16.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (double)transcriptSharingFooterBottomSpacing
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(transcriptSharingFooterBottomSpacing_sContentSizeCategory_transcriptSharingFooterBottomSpacing_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptSharingFooterBottomSpacing](self, "ckShouldUpdatetranscriptSharingFooterBottomSpacing") || v10 || transcriptSharingFooterBottomSpacing_sIsBoldTextEnabled_transcriptSharingFooterBottomSpacing_0 != IsBoldTextEnabled || *&transcriptSharingFooterBottomSpacing_sTextFontSize_transcriptSharingFooterBottomSpacing_0 != v5 || *&transcriptSharingFooterBottomSpacing_sCustomTextFontSize_transcriptSharingFooterBottomSpacing_0 != v6 || ([transcriptSharingFooterBottomSpacing_sCustomTextFontName_transcriptSharingFooterBottomSpacing_0 isEqualToString:{v9, *&transcriptSharingFooterBottomSpacing_sCustomTextFontSize_transcriptSharingFooterBottomSpacing_0}] & 1) == 0)
  {
    transcriptSharingFooterBottomSpacing_sBehavior = 0x4030000000000000;
    objc_storeStrong(&transcriptSharingFooterBottomSpacing_sContentSizeCategory_transcriptSharingFooterBottomSpacing_0, v3);
    transcriptSharingFooterBottomSpacing_sIsBoldTextEnabled_transcriptSharingFooterBottomSpacing_0 = IsBoldTextEnabled;
    transcriptSharingFooterBottomSpacing_sTextFontSize_transcriptSharingFooterBottomSpacing_0 = *&v5;
    transcriptSharingFooterBottomSpacing_sCustomTextFontSize_transcriptSharingFooterBottomSpacing_0 = *&v6;
    objc_storeStrong(&transcriptSharingFooterBottomSpacing_sCustomTextFontName_transcriptSharingFooterBottomSpacing_0, v8);
  }

  v11 = *&transcriptSharingFooterBottomSpacing_sBehavior;

  return v11;
}

- (double)balloonMaxWidthPercent
{
  if (balloonMaxWidthPercent_once_0 != -1)
  {
    [CKUIBehaviorMac balloonMaxWidthPercent];
  }

  return *&balloonMaxWidthPercent_sBehavior_0;
}

- (id)balloonTextFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(balloonTextFont_sContentSizeCategory_balloonTextFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateballoonTextFont](self, "ckShouldUpdateballoonTextFont") || v11 || balloonTextFont_sIsIncreaseContrastEnabled_balloonTextFont_0 != v4 || balloonTextFont_sIsBoldTextEnabled_balloonTextFont_0 != IsBoldTextEnabled || (v12 = balloonTextFont_sTextFontSize_balloonTextFont_0, *&balloonTextFont_sTextFontSize_balloonTextFont_0 != v6) || (v12 = balloonTextFont_sCustomTextFontSize_balloonTextFont_0, *&balloonTextFont_sCustomTextFontSize_balloonTextFont_0 != v7) || ([balloonTextFont_sCustomTextFontName_balloonTextFont_0 isEqualToString:{v10, *&balloonTextFont_sCustomTextFontSize_balloonTextFont_0}] & 1) == 0)
  {
    balloonTextFontUserDefaults = [(CKUIBehaviorMac *)self balloonTextFontUserDefaults];
    v14 = balloonTextFont_sBehavior_0;
    balloonTextFont_sBehavior_0 = balloonTextFontUserDefaults;

    objc_storeStrong(&balloonTextFont_sContentSizeCategory_balloonTextFont_0, v3);
    balloonTextFont_sIsIncreaseContrastEnabled_balloonTextFont_0 = v4;
    balloonTextFont_sIsBoldTextEnabled_balloonTextFont_0 = IsBoldTextEnabled;
    balloonTextFont_sTextFontSize_balloonTextFont_0 = *&v6;
    balloonTextFont_sCustomTextFontSize_balloonTextFont_0 = *&v7;
    objc_storeStrong(&balloonTextFont_sCustomTextFontName_balloonTextFont_0, v9);
  }

  v15 = balloonTextFont_sBehavior_0;
  v16 = balloonTextFont_sBehavior_0;

  return v15;
}

- (id)transcriptRegularFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptRegularFont_sContentSizeCategory_transcriptRegularFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptRegularFont](self, "ckShouldUpdatetranscriptRegularFont") || v11 || transcriptRegularFont_sIsIncreaseContrastEnabled_transcriptRegularFont_0 != v4 || transcriptRegularFont_sIsBoldTextEnabled_transcriptRegularFont_0 != IsBoldTextEnabled || (v12 = transcriptRegularFont_sTextFontSize_transcriptRegularFont_0, *&transcriptRegularFont_sTextFontSize_transcriptRegularFont_0 != v6) || (v12 = transcriptRegularFont_sCustomTextFontSize_transcriptRegularFont_0, *&transcriptRegularFont_sCustomTextFontSize_transcriptRegularFont_0 != v7) || ([transcriptRegularFont_sCustomTextFontName_transcriptRegularFont_0 isEqualToString:{v10, *&transcriptRegularFont_sCustomTextFontSize_transcriptRegularFont_0}] & 1) == 0)
  {
    v19.receiver = self;
    v19.super_class = CKUIBehaviorMac;
    transcriptRegularFont = [(CKUIBehavior *)&v19 transcriptRegularFont];
    __ck_fontScaledByUserPreference = [transcriptRegularFont __ck_fontScaledByUserPreference];
    v15 = transcriptRegularFont_sBehavior_0;
    transcriptRegularFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptRegularFont_sContentSizeCategory_transcriptRegularFont_0, v3);
    transcriptRegularFont_sIsIncreaseContrastEnabled_transcriptRegularFont_0 = v4;
    transcriptRegularFont_sIsBoldTextEnabled_transcriptRegularFont_0 = IsBoldTextEnabled;
    transcriptRegularFont_sTextFontSize_transcriptRegularFont_0 = *&v6;
    transcriptRegularFont_sCustomTextFontSize_transcriptRegularFont_0 = *&v7;
    objc_storeStrong(&transcriptRegularFont_sCustomTextFontName_transcriptRegularFont_0, v9);
  }

  v16 = transcriptRegularFont_sBehavior_0;
  v17 = transcriptRegularFont_sBehavior_0;

  return v16;
}

- (id)transcriptMessageStatusFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptMessageStatusFont_sContentSizeCategory_transcriptMessageStatusFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptMessageStatusFont](self, "ckShouldUpdatetranscriptMessageStatusFont") || v11 || transcriptMessageStatusFont_sIsIncreaseContrastEnabled_transcriptMessageStatusFont_0 != v4 || transcriptMessageStatusFont_sIsBoldTextEnabled_transcriptMessageStatusFont_0 != IsBoldTextEnabled || *&transcriptMessageStatusFont_sTextFontSize_transcriptMessageStatusFont_0 != v6 || *&transcriptMessageStatusFont_sCustomTextFontSize_transcriptMessageStatusFont_0 != v7 || ([transcriptMessageStatusFont_sCustomTextFontName_transcriptMessageStatusFont_0 isEqualToString:{v10, *&transcriptMessageStatusFont_sCustomTextFontSize_transcriptMessageStatusFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] __ck_fontForStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB970]];
    __ck_fontScaledByUserPreference = [v12 __ck_fontScaledByUserPreference];
    v14 = transcriptMessageStatusFont_sBehavior_0;
    transcriptMessageStatusFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptMessageStatusFont_sContentSizeCategory_transcriptMessageStatusFont_0, v3);
    transcriptMessageStatusFont_sIsIncreaseContrastEnabled_transcriptMessageStatusFont_0 = v4;
    transcriptMessageStatusFont_sIsBoldTextEnabled_transcriptMessageStatusFont_0 = IsBoldTextEnabled;
    transcriptMessageStatusFont_sTextFontSize_transcriptMessageStatusFont_0 = *&v6;
    transcriptMessageStatusFont_sCustomTextFontSize_transcriptMessageStatusFont_0 = *&v7;
    objc_storeStrong(&transcriptMessageStatusFont_sCustomTextFontName_transcriptMessageStatusFont_0, v9);
  }

  v15 = transcriptMessageStatusFont_sBehavior_0;
  v16 = transcriptMessageStatusFont_sBehavior_0;

  return v15;
}

- (id)transcriptMessageStatusDateFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptMessageStatusDateFont_sContentSizeCategory_transcriptMessageStatusDateFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptMessageStatusDateFont](self, "ckShouldUpdatetranscriptMessageStatusDateFont") || v11 || transcriptMessageStatusDateFont_sIsIncreaseContrastEnabled_transcriptMessageStatusDateFont_0 != v4 || transcriptMessageStatusDateFont_sIsBoldTextEnabled_transcriptMessageStatusDateFont_0 != IsBoldTextEnabled || *&transcriptMessageStatusDateFont_sTextFontSize_transcriptMessageStatusDateFont_0 != v6 || *&transcriptMessageStatusDateFont_sCustomTextFontSize_transcriptMessageStatusDateFont_0 != v7 || ([transcriptMessageStatusDateFont_sCustomTextFontName_transcriptMessageStatusDateFont_0 isEqualToString:{v10, *&transcriptMessageStatusDateFont_sCustomTextFontSize_transcriptMessageStatusDateFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] __ck_fontForStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB978]];
    __ck_fontScaledByUserPreference = [v12 __ck_fontScaledByUserPreference];
    v14 = transcriptMessageStatusDateFont_sBehavior_0;
    transcriptMessageStatusDateFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptMessageStatusDateFont_sContentSizeCategory_transcriptMessageStatusDateFont_0, v3);
    transcriptMessageStatusDateFont_sIsIncreaseContrastEnabled_transcriptMessageStatusDateFont_0 = v4;
    transcriptMessageStatusDateFont_sIsBoldTextEnabled_transcriptMessageStatusDateFont_0 = IsBoldTextEnabled;
    transcriptMessageStatusDateFont_sTextFontSize_transcriptMessageStatusDateFont_0 = *&v6;
    transcriptMessageStatusDateFont_sCustomTextFontSize_transcriptMessageStatusDateFont_0 = *&v7;
    objc_storeStrong(&transcriptMessageStatusDateFont_sCustomTextFontName_transcriptMessageStatusDateFont_0, v9);
  }

  v15 = transcriptMessageStatusDateFont_sBehavior_0;
  v16 = transcriptMessageStatusDateFont_sBehavior_0;

  return v15;
}

- (id)transcriptBoldFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptBoldFont_sContentSizeCategory_transcriptBoldFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptBoldFont](self, "ckShouldUpdatetranscriptBoldFont") || v11 || transcriptBoldFont_sIsIncreaseContrastEnabled_transcriptBoldFont_0 != v4 || transcriptBoldFont_sIsBoldTextEnabled_transcriptBoldFont_0 != IsBoldTextEnabled || *&transcriptBoldFont_sTextFontSize_transcriptBoldFont_0 != v6 || *&transcriptBoldFont_sCustomTextFontSize_transcriptBoldFont_0 != v7 || ([transcriptBoldFont_sCustomTextFontName_transcriptBoldFont_0 isEqualToString:{v10, *&transcriptBoldFont_sCustomTextFontSize_transcriptBoldFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] __ck_fontForStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB970]];
    __ck_fontScaledByUserPreference = [v12 __ck_fontScaledByUserPreference];
    v14 = transcriptBoldFont_sBehavior_0;
    transcriptBoldFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptBoldFont_sContentSizeCategory_transcriptBoldFont_0, v3);
    transcriptBoldFont_sIsIncreaseContrastEnabled_transcriptBoldFont_0 = v4;
    transcriptBoldFont_sIsBoldTextEnabled_transcriptBoldFont_0 = IsBoldTextEnabled;
    transcriptBoldFont_sTextFontSize_transcriptBoldFont_0 = *&v6;
    transcriptBoldFont_sCustomTextFontSize_transcriptBoldFont_0 = *&v7;
    objc_storeStrong(&transcriptBoldFont_sCustomTextFontName_transcriptBoldFont_0, v9);
  }

  v15 = transcriptBoldFont_sBehavior_0;
  v16 = transcriptBoldFont_sBehavior_0;

  return v15;
}

- (id)transcriptLightFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptLightFont_sContentSizeCategory_transcriptLightFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptLightFont](self, "ckShouldUpdatetranscriptLightFont") || v11 || transcriptLightFont_sIsIncreaseContrastEnabled_transcriptLightFont_0 != v4 || transcriptLightFont_sIsBoldTextEnabled_transcriptLightFont_0 != IsBoldTextEnabled || *&transcriptLightFont_sTextFontSize_transcriptLightFont_0 != v6 || *&transcriptLightFont_sCustomTextFontSize_transcriptLightFont_0 != v7 || ([transcriptLightFont_sCustomTextFontName_transcriptLightFont_0 isEqualToString:{v10, *&transcriptLightFont_sCustomTextFontSize_transcriptLightFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] __ck_fontForStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB968]];
    __ck_fontScaledByUserPreference = [v12 __ck_fontScaledByUserPreference];
    v14 = transcriptLightFont_sBehavior_0;
    transcriptLightFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptLightFont_sContentSizeCategory_transcriptLightFont_0, v3);
    transcriptLightFont_sIsIncreaseContrastEnabled_transcriptLightFont_0 = v4;
    transcriptLightFont_sIsBoldTextEnabled_transcriptLightFont_0 = IsBoldTextEnabled;
    transcriptLightFont_sTextFontSize_transcriptLightFont_0 = *&v6;
    transcriptLightFont_sCustomTextFontSize_transcriptLightFont_0 = *&v7;
    objc_storeStrong(&transcriptLightFont_sCustomTextFontName_transcriptLightFont_0, v9);
  }

  v15 = transcriptLightFont_sBehavior_0;
  v16 = transcriptLightFont_sBehavior_0;

  return v15;
}

- (id)transcriptButtonTextFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptButtonTextFont_sContentSizeCategory_transcriptButtonTextFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptButtonTextFont](self, "ckShouldUpdatetranscriptButtonTextFont") || v11 || transcriptButtonTextFont_sIsIncreaseContrastEnabled_transcriptButtonTextFont_0 != v4 || transcriptButtonTextFont_sIsBoldTextEnabled_transcriptButtonTextFont_0 != IsBoldTextEnabled || (v12 = transcriptButtonTextFont_sTextFontSize_transcriptButtonTextFont_0, *&transcriptButtonTextFont_sTextFontSize_transcriptButtonTextFont_0 != v6) || (v12 = transcriptButtonTextFont_sCustomTextFontSize_transcriptButtonTextFont_0, *&transcriptButtonTextFont_sCustomTextFontSize_transcriptButtonTextFont_0 != v7) || ([transcriptButtonTextFont_sCustomTextFontName_transcriptButtonTextFont_0 isEqualToString:{v10, *&transcriptButtonTextFont_sCustomTextFontSize_transcriptButtonTextFont_0}] & 1) == 0)
  {
    transcriptBoldFont = [(CKUIBehaviorMac *)self transcriptBoldFont];
    v14 = transcriptButtonTextFont_sBehavior_0;
    transcriptButtonTextFont_sBehavior_0 = transcriptBoldFont;

    objc_storeStrong(&transcriptButtonTextFont_sContentSizeCategory_transcriptButtonTextFont_0, v3);
    transcriptButtonTextFont_sIsIncreaseContrastEnabled_transcriptButtonTextFont_0 = v4;
    transcriptButtonTextFont_sIsBoldTextEnabled_transcriptButtonTextFont_0 = IsBoldTextEnabled;
    transcriptButtonTextFont_sTextFontSize_transcriptButtonTextFont_0 = *&v6;
    transcriptButtonTextFont_sCustomTextFontSize_transcriptButtonTextFont_0 = *&v7;
    objc_storeStrong(&transcriptButtonTextFont_sCustomTextFontName_transcriptButtonTextFont_0, v9);
  }

  v15 = transcriptButtonTextFont_sBehavior_0;
  v16 = transcriptButtonTextFont_sBehavior_0;

  return v15;
}

- (id)transcriptSenderFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(transcriptSenderFont_sContentSizeCategory_transcriptSenderFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptSenderFont](self, "ckShouldUpdatetranscriptSenderFont") || v11 || transcriptSenderFont_sIsIncreaseContrastEnabled_transcriptSenderFont_0 != v4 || transcriptSenderFont_sIsBoldTextEnabled_transcriptSenderFont_0 != IsBoldTextEnabled || *&transcriptSenderFont_sTextFontSize_transcriptSenderFont_0 != v6 || *&transcriptSenderFont_sCustomTextFontSize_transcriptSenderFont_0 != v7 || ([transcriptSenderFont_sCustomTextFontName_transcriptSenderFont_0 isEqualToString:{v10, *&transcriptSenderFont_sCustomTextFontSize_transcriptSenderFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] __ck_fontForStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB978]];
    __ck_fontScaledByUserPreference = [v12 __ck_fontScaledByUserPreference];
    v14 = transcriptSenderFont_sBehavior_0;
    transcriptSenderFont_sBehavior_0 = __ck_fontScaledByUserPreference;

    objc_storeStrong(&transcriptSenderFont_sContentSizeCategory_transcriptSenderFont_0, v3);
    transcriptSenderFont_sIsIncreaseContrastEnabled_transcriptSenderFont_0 = v4;
    transcriptSenderFont_sIsBoldTextEnabled_transcriptSenderFont_0 = IsBoldTextEnabled;
    transcriptSenderFont_sTextFontSize_transcriptSenderFont_0 = *&v6;
    transcriptSenderFont_sCustomTextFontSize_transcriptSenderFont_0 = *&v7;
    objc_storeStrong(&transcriptSenderFont_sCustomTextFontName_transcriptSenderFont_0, v9);
  }

  v15 = transcriptSenderFont_sBehavior_0;
  v16 = transcriptSenderFont_sBehavior_0;

  return v15;
}

- (id)previewTitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(previewTitleFont_sContentSizeCategory_previewTitleFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatepreviewTitleFont](self, "ckShouldUpdatepreviewTitleFont") || v11 || previewTitleFont_sIsIncreaseContrastEnabled_previewTitleFont_0 != v4 || previewTitleFont_sIsBoldTextEnabled_previewTitleFont_0 != IsBoldTextEnabled || (v12 = previewTitleFont_sTextFontSize_previewTitleFont_0, *&previewTitleFont_sTextFontSize_previewTitleFont_0 != v6) || (v12 = previewTitleFont_sCustomTextFontSize_previewTitleFont_0, *&previewTitleFont_sCustomTextFontSize_previewTitleFont_0 != v7) || ([previewTitleFont_sCustomTextFontName_previewTitleFont_0 isEqualToString:{v10, *&previewTitleFont_sCustomTextFontSize_previewTitleFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] __ck_shortPreferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = previewTitleFont_sBehavior_0;
    previewTitleFont_sBehavior_0 = v13;

    objc_storeStrong(&previewTitleFont_sContentSizeCategory_previewTitleFont_0, v3);
    previewTitleFont_sIsIncreaseContrastEnabled_previewTitleFont_0 = v4;
    previewTitleFont_sIsBoldTextEnabled_previewTitleFont_0 = IsBoldTextEnabled;
    previewTitleFont_sTextFontSize_previewTitleFont_0 = *&v6;
    previewTitleFont_sCustomTextFontSize_previewTitleFont_0 = *&v7;
    objc_storeStrong(&previewTitleFont_sCustomTextFontName_previewTitleFont_0, v9);
  }

  v15 = previewTitleFont_sBehavior_0;
  v16 = previewTitleFont_sBehavior_0;

  return v15;
}

- (double)transcriptContactImageDiameter
{
  if (transcriptContactImageDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptContactImageDiameter];
  }

  return *&transcriptContactImageDiameter_sBehavior_0;
}

- (double)transcriptGroupTypingContactImageDiameter
{
  if (transcriptGroupTypingContactImageDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptGroupTypingContactImageDiameter];
  }

  return *&transcriptGroupTypingContactImageDiameter_sBehavior_0;
}

- (double)transcriptDrawerGestureAcceleration
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(transcriptDrawerGestureAcceleration_sContentSizeCategory_transcriptDrawerGestureAcceleration_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetranscriptDrawerGestureAcceleration](self, "ckShouldUpdatetranscriptDrawerGestureAcceleration") || v10 || transcriptDrawerGestureAcceleration_sIsBoldTextEnabled_transcriptDrawerGestureAcceleration_0 != IsBoldTextEnabled || *&transcriptDrawerGestureAcceleration_sTextFontSize_transcriptDrawerGestureAcceleration_0 != v5 || *&transcriptDrawerGestureAcceleration_sCustomTextFontSize_transcriptDrawerGestureAcceleration_0 != v6 || ([transcriptDrawerGestureAcceleration_sCustomTextFontName_transcriptDrawerGestureAcceleration_0 isEqualToString:{v9, *&transcriptDrawerGestureAcceleration_sCustomTextFontSize_transcriptDrawerGestureAcceleration_0}] & 1) == 0)
  {
    transcriptDrawerGestureAcceleration_sBehavior_0 = 0x4014000000000000;
    objc_storeStrong(&transcriptDrawerGestureAcceleration_sContentSizeCategory_transcriptDrawerGestureAcceleration_0, v3);
    transcriptDrawerGestureAcceleration_sIsBoldTextEnabled_transcriptDrawerGestureAcceleration_0 = IsBoldTextEnabled;
    transcriptDrawerGestureAcceleration_sTextFontSize_transcriptDrawerGestureAcceleration_0 = *&v5;
    transcriptDrawerGestureAcceleration_sCustomTextFontSize_transcriptDrawerGestureAcceleration_0 = *&v6;
    objc_storeStrong(&transcriptDrawerGestureAcceleration_sCustomTextFontName_transcriptDrawerGestureAcceleration_0, v8);
  }

  v11 = *&transcriptDrawerGestureAcceleration_sBehavior_0;

  return v11;
}

- (double)balloonContiguousSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(balloonContiguousSpace_sContentSizeCategory_balloonContiguousSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateballoonContiguousSpace](self, "ckShouldUpdateballoonContiguousSpace") || v10 || balloonContiguousSpace_sIsBoldTextEnabled_balloonContiguousSpace_0 != IsBoldTextEnabled || (v11 = balloonContiguousSpace_sTextFontSize_balloonContiguousSpace_0, *&balloonContiguousSpace_sTextFontSize_balloonContiguousSpace_0 != v5) || (v11 = balloonContiguousSpace_sCustomTextFontSize_balloonContiguousSpace_0, *&balloonContiguousSpace_sCustomTextFontSize_balloonContiguousSpace_0 != v6) || ([balloonContiguousSpace_sCustomTextFontName_balloonContiguousSpace_0 isEqualToString:{v9, *&balloonContiguousSpace_sCustomTextFontSize_balloonContiguousSpace_0}] & 1) == 0)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

    v14 = 3.0;
    if (isRoundTailedBalloonShapeEnabled)
    {
      transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
      [transcriptTextFont _scaledValueForValue:3.0];
      v17 = v16;
      if (CKMainScreenScale_once_62 != -1)
      {
        [CKUIBehaviorMac balloonContiguousSpace];
      }

      v18 = *&CKMainScreenScale_sMainScreenScale_62;
      if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
      {
        v18 = 1.0;
      }

      v14 = round(v17 * v18) / v18;
    }

    balloonContiguousSpace_sBehavior_0 = *&v14;
    objc_storeStrong(&balloonContiguousSpace_sContentSizeCategory_balloonContiguousSpace_0, v3);
    balloonContiguousSpace_sIsBoldTextEnabled_balloonContiguousSpace_0 = IsBoldTextEnabled;
    balloonContiguousSpace_sTextFontSize_balloonContiguousSpace_0 = *&v5;
    balloonContiguousSpace_sCustomTextFontSize_balloonContiguousSpace_0 = *&v6;
    objc_storeStrong(&balloonContiguousSpace_sCustomTextFontName_balloonContiguousSpace_0, v8);
  }

  v19 = *&balloonContiguousSpace_sBehavior_0;

  return v19;
}

- (double)balloonNonContiguousSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(balloonNonContiguousSpace_sContentSizeCategory_balloonNonContiguousSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateballoonNonContiguousSpace](self, "ckShouldUpdateballoonNonContiguousSpace") || v10 || balloonNonContiguousSpace_sIsBoldTextEnabled_balloonNonContiguousSpace_0 != IsBoldTextEnabled || (v11 = balloonNonContiguousSpace_sTextFontSize_balloonNonContiguousSpace_0, *&balloonNonContiguousSpace_sTextFontSize_balloonNonContiguousSpace_0 != v5) || (v11 = balloonNonContiguousSpace_sCustomTextFontSize_balloonNonContiguousSpace_0, *&balloonNonContiguousSpace_sCustomTextFontSize_balloonNonContiguousSpace_0 != v6) || ([balloonNonContiguousSpace_sCustomTextFontName_balloonNonContiguousSpace_0 isEqualToString:{v9, *&balloonNonContiguousSpace_sCustomTextFontSize_balloonNonContiguousSpace_0}] & 1) == 0)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

    v14 = 10.0;
    if (isRoundTailedBalloonShapeEnabled)
    {
      transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
      [transcriptTextFont _scaledValueForValue:8.0];
      v17 = v16;
      if (CKMainScreenScale_once_62 != -1)
      {
        [CKUIBehaviorMac balloonContiguousSpace];
      }

      v18 = *&CKMainScreenScale_sMainScreenScale_62;
      if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
      {
        v18 = 1.0;
      }

      v14 = round(v17 * v18) / v18;
    }

    balloonNonContiguousSpace_sBehavior_0 = *&v14;
    objc_storeStrong(&balloonNonContiguousSpace_sContentSizeCategory_balloonNonContiguousSpace_0, v3);
    balloonNonContiguousSpace_sIsBoldTextEnabled_balloonNonContiguousSpace_0 = IsBoldTextEnabled;
    balloonNonContiguousSpace_sTextFontSize_balloonNonContiguousSpace_0 = *&v5;
    balloonNonContiguousSpace_sCustomTextFontSize_balloonNonContiguousSpace_0 = *&v6;
    objc_storeStrong(&balloonNonContiguousSpace_sCustomTextFontName_balloonNonContiguousSpace_0, v8);
  }

  v19 = *&balloonNonContiguousSpace_sBehavior_0;

  return v19;
}

- (double)extraExtraSmallTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(extraExtraSmallTranscriptSpace_sContentSizeCategory_extraExtraSmallTranscriptSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateextraExtraSmallTranscriptSpace](self, "ckShouldUpdateextraExtraSmallTranscriptSpace") || v10 || extraExtraSmallTranscriptSpace_sIsBoldTextEnabled_extraExtraSmallTranscriptSpace_0 != IsBoldTextEnabled || *&extraExtraSmallTranscriptSpace_sTextFontSize_extraExtraSmallTranscriptSpace_0 != v5 || *&extraExtraSmallTranscriptSpace_sCustomTextFontSize_extraExtraSmallTranscriptSpace_0 != v6 || ([extraExtraSmallTranscriptSpace_sCustomTextFontName_extraExtraSmallTranscriptSpace_0 isEqualToString:{v9, *&extraExtraSmallTranscriptSpace_sCustomTextFontSize_extraExtraSmallTranscriptSpace_0}] & 1) == 0)
  {
    extraExtraSmallTranscriptSpace_sBehavior_0 = 0x4000000000000000;
    objc_storeStrong(&extraExtraSmallTranscriptSpace_sContentSizeCategory_extraExtraSmallTranscriptSpace_0, v3);
    extraExtraSmallTranscriptSpace_sIsBoldTextEnabled_extraExtraSmallTranscriptSpace_0 = IsBoldTextEnabled;
    extraExtraSmallTranscriptSpace_sTextFontSize_extraExtraSmallTranscriptSpace_0 = *&v5;
    extraExtraSmallTranscriptSpace_sCustomTextFontSize_extraExtraSmallTranscriptSpace_0 = *&v6;
    objc_storeStrong(&extraExtraSmallTranscriptSpace_sCustomTextFontName_extraExtraSmallTranscriptSpace_0, v8);
  }

  v11 = *&extraExtraSmallTranscriptSpace_sBehavior_0;

  return v11;
}

- (double)extraSmallTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(extraSmallTranscriptSpace_sContentSizeCategory_extraSmallTranscriptSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateextraSmallTranscriptSpace](self, "ckShouldUpdateextraSmallTranscriptSpace") || v10 || extraSmallTranscriptSpace_sIsBoldTextEnabled_extraSmallTranscriptSpace_0 != IsBoldTextEnabled || *&extraSmallTranscriptSpace_sTextFontSize_extraSmallTranscriptSpace_0 != v5 || *&extraSmallTranscriptSpace_sCustomTextFontSize_extraSmallTranscriptSpace_0 != v6 || ([extraSmallTranscriptSpace_sCustomTextFontName_extraSmallTranscriptSpace_0 isEqualToString:{v9, *&extraSmallTranscriptSpace_sCustomTextFontSize_extraSmallTranscriptSpace_0}] & 1) == 0)
  {
    extraSmallTranscriptSpace_sBehavior_0 = 0x4008000000000000;
    objc_storeStrong(&extraSmallTranscriptSpace_sContentSizeCategory_extraSmallTranscriptSpace_0, v3);
    extraSmallTranscriptSpace_sIsBoldTextEnabled_extraSmallTranscriptSpace_0 = IsBoldTextEnabled;
    extraSmallTranscriptSpace_sTextFontSize_extraSmallTranscriptSpace_0 = *&v5;
    extraSmallTranscriptSpace_sCustomTextFontSize_extraSmallTranscriptSpace_0 = *&v6;
    objc_storeStrong(&extraSmallTranscriptSpace_sCustomTextFontName_extraSmallTranscriptSpace_0, v8);
  }

  v11 = *&extraSmallTranscriptSpace_sBehavior_0;

  return v11;
}

- (double)smallTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = CKUserPreferenceFontSize();
  v5 = CKAccessibilityCustomTextFontSize();
  v6 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"None";
  }

  v8 = v7;
  v9 = UIContentSizeCategoryCompareToCategory(smallTranscriptSpace_sContentSizeCategory_smallTranscriptSpace_0, v3);
  v11 = &unk_1EAD6E000;
  if (![(CKUIBehaviorMac *)self ckShouldUpdatesmallTranscriptSpace]&& v9 == NSOrderedSame && smallTranscriptSpace_sIsBoldTextEnabled_smallTranscriptSpace_0 == IsBoldTextEnabled)
  {
    v10 = smallTranscriptSpace_sTextFontSize_smallTranscriptSpace_0;
    if (*&smallTranscriptSpace_sTextFontSize_smallTranscriptSpace_0 == v4)
    {
      v10 = smallTranscriptSpace_sCustomTextFontSize_smallTranscriptSpace_0;
      if (*&smallTranscriptSpace_sCustomTextFontSize_smallTranscriptSpace_0 == v5 && ([smallTranscriptSpace_sCustomTextFontName_smallTranscriptSpace_0 isEqualToString:{v8, *&smallTranscriptSpace_sCustomTextFontSize_smallTranscriptSpace_0}] & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

  transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
  v15 = transcriptTextFont;
  if (isRoundTailedBalloonShapeEnabled)
  {
    [transcriptTextFont _scaledValueForValue:4.0];
    v17 = v16;
    if (CKMainScreenScale_once_62 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  [transcriptTextFont _scaledValueForValue:5.0];
  v17 = v18;
  if (CKMainScreenScale_once_62 != -1)
  {
LABEL_18:
    [CKUIBehaviorMac balloonContiguousSpace];
  }

LABEL_14:
  v11 = &unk_1EAD6E000;
  v19 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v19 = 1.0;
  }

  v20 = round(v17 * v19) / v19;

  smallTranscriptSpace_sBehavior_0 = *&v20;
  objc_storeStrong(&smallTranscriptSpace_sContentSizeCategory_smallTranscriptSpace_0, v3);
  smallTranscriptSpace_sIsBoldTextEnabled_smallTranscriptSpace_0 = IsBoldTextEnabled;
  smallTranscriptSpace_sTextFontSize_smallTranscriptSpace_0 = *&v4;
  smallTranscriptSpace_sCustomTextFontSize_smallTranscriptSpace_0 = *&v5;
  objc_storeStrong(&smallTranscriptSpace_sCustomTextFontName_smallTranscriptSpace_0, v7);
LABEL_17:
  v21 = v11[259];

  return v21;
}

- (double)mediumTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = CKUserPreferenceFontSize();
  v5 = CKAccessibilityCustomTextFontSize();
  v6 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"None";
  }

  v8 = v7;
  v9 = UIContentSizeCategoryCompareToCategory(mediumTranscriptSpace_sContentSizeCategory_mediumTranscriptSpace_0, v3);
  v11 = &unk_1EAD6E000;
  if (![(CKUIBehaviorMac *)self ckShouldUpdatemediumTranscriptSpace]&& v9 == NSOrderedSame && mediumTranscriptSpace_sIsBoldTextEnabled_mediumTranscriptSpace_0 == IsBoldTextEnabled)
  {
    v10 = mediumTranscriptSpace_sTextFontSize_mediumTranscriptSpace_0;
    if (*&mediumTranscriptSpace_sTextFontSize_mediumTranscriptSpace_0 == v4)
    {
      v10 = mediumTranscriptSpace_sCustomTextFontSize_mediumTranscriptSpace_0;
      if (*&mediumTranscriptSpace_sCustomTextFontSize_mediumTranscriptSpace_0 == v5 && ([mediumTranscriptSpace_sCustomTextFontName_mediumTranscriptSpace_0 isEqualToString:{v8, *&mediumTranscriptSpace_sCustomTextFontSize_mediumTranscriptSpace_0}] & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

  transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
  v15 = transcriptTextFont;
  if (isRoundTailedBalloonShapeEnabled)
  {
    [transcriptTextFont _scaledValueForValue:8.0];
    v17 = v16;
    if (CKMainScreenScale_once_62 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  [transcriptTextFont _scaledValueForValue:12.0];
  v17 = v18;
  if (CKMainScreenScale_once_62 != -1)
  {
LABEL_18:
    [CKUIBehaviorMac balloonContiguousSpace];
  }

LABEL_14:
  v11 = &unk_1EAD6E000;
  v19 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v19 = 1.0;
  }

  v20 = round(v17 * v19) / v19;

  mediumTranscriptSpace_sBehavior_0 = *&v20;
  objc_storeStrong(&mediumTranscriptSpace_sContentSizeCategory_mediumTranscriptSpace_0, v3);
  mediumTranscriptSpace_sIsBoldTextEnabled_mediumTranscriptSpace_0 = IsBoldTextEnabled;
  mediumTranscriptSpace_sTextFontSize_mediumTranscriptSpace_0 = *&v4;
  mediumTranscriptSpace_sCustomTextFontSize_mediumTranscriptSpace_0 = *&v5;
  objc_storeStrong(&mediumTranscriptSpace_sCustomTextFontName_mediumTranscriptSpace_0, v7);
LABEL_17:
  v21 = v11[368];

  return v21;
}

- (double)mediumLargeTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(mediumLargeTranscriptSpace_sContentSizeCategory_mediumLargeTranscriptSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatemediumLargeTranscriptSpace](self, "ckShouldUpdatemediumLargeTranscriptSpace") || v10 || mediumLargeTranscriptSpace_sIsBoldTextEnabled_mediumLargeTranscriptSpace_0 != IsBoldTextEnabled || (v11 = mediumLargeTranscriptSpace_sTextFontSize_mediumLargeTranscriptSpace_0, *&mediumLargeTranscriptSpace_sTextFontSize_mediumLargeTranscriptSpace_0 != v5) || (v11 = mediumLargeTranscriptSpace_sCustomTextFontSize_mediumLargeTranscriptSpace_0, *&mediumLargeTranscriptSpace_sCustomTextFontSize_mediumLargeTranscriptSpace_0 != v6) || ([mediumLargeTranscriptSpace_sCustomTextFontName_mediumLargeTranscriptSpace_0 isEqualToString:{v9, *&mediumLargeTranscriptSpace_sCustomTextFontSize_mediumLargeTranscriptSpace_0}] & 1) == 0)
  {
    transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
    [transcriptTextFont _scaledValueForValue:16.0];
    v14 = v13;
    if (CKMainScreenScale_once_62 != -1)
    {
      [CKUIBehaviorMac balloonContiguousSpace];
    }

    v15 = *&CKMainScreenScale_sMainScreenScale_62;
    if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
    {
      v15 = 1.0;
    }

    *&mediumLargeTranscriptSpace_sBehavior_0 = round(v14 * v15) / v15;

    objc_storeStrong(&mediumLargeTranscriptSpace_sContentSizeCategory_mediumLargeTranscriptSpace_0, v3);
    mediumLargeTranscriptSpace_sIsBoldTextEnabled_mediumLargeTranscriptSpace_0 = IsBoldTextEnabled;
    mediumLargeTranscriptSpace_sTextFontSize_mediumLargeTranscriptSpace_0 = *&v5;
    mediumLargeTranscriptSpace_sCustomTextFontSize_mediumLargeTranscriptSpace_0 = *&v6;
    objc_storeStrong(&mediumLargeTranscriptSpace_sCustomTextFontName_mediumLargeTranscriptSpace_0, v8);
  }

  v16 = *&mediumLargeTranscriptSpace_sBehavior_0;

  return v16;
}

- (double)largeTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = CKUserPreferenceFontSize();
  v6 = CKAccessibilityCustomTextFontSize();
  v7 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"None";
  }

  v9 = v8;
  v10 = UIContentSizeCategoryCompareToCategory(largeTranscriptSpace_sContentSizeCategory_largeTranscriptSpace_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatelargeTranscriptSpace](self, "ckShouldUpdatelargeTranscriptSpace") || v10 || largeTranscriptSpace_sIsBoldTextEnabled_largeTranscriptSpace_0 != IsBoldTextEnabled || (v11 = largeTranscriptSpace_sTextFontSize_largeTranscriptSpace_0, *&largeTranscriptSpace_sTextFontSize_largeTranscriptSpace_0 != v5) || (v11 = largeTranscriptSpace_sCustomTextFontSize_largeTranscriptSpace_0, *&largeTranscriptSpace_sCustomTextFontSize_largeTranscriptSpace_0 != v6) || ([largeTranscriptSpace_sCustomTextFontName_largeTranscriptSpace_0 isEqualToString:{v9, *&largeTranscriptSpace_sCustomTextFontSize_largeTranscriptSpace_0}] & 1) == 0)
  {
    transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
    [transcriptTextFont _scaledValueForValue:20.0];
    v14 = v13;
    if (CKMainScreenScale_once_62 != -1)
    {
      [CKUIBehaviorMac balloonContiguousSpace];
    }

    v15 = *&CKMainScreenScale_sMainScreenScale_62;
    if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
    {
      v15 = 1.0;
    }

    *&largeTranscriptSpace_sBehavior_0 = round(v14 * v15) / v15;

    objc_storeStrong(&largeTranscriptSpace_sContentSizeCategory_largeTranscriptSpace_0, v3);
    largeTranscriptSpace_sIsBoldTextEnabled_largeTranscriptSpace_0 = IsBoldTextEnabled;
    largeTranscriptSpace_sTextFontSize_largeTranscriptSpace_0 = *&v5;
    largeTranscriptSpace_sCustomTextFontSize_largeTranscriptSpace_0 = *&v6;
    objc_storeStrong(&largeTranscriptSpace_sCustomTextFontName_largeTranscriptSpace_0, v8);
  }

  v16 = *&largeTranscriptSpace_sBehavior_0;

  return v16;
}

- (double)extraLargeTranscriptSpace
{
  v3 = CKPreferredContentSizeCategory();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = CKUserPreferenceFontSize();
  v5 = CKAccessibilityCustomTextFontSize();
  v6 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"None";
  }

  v8 = v7;
  v9 = UIContentSizeCategoryCompareToCategory(extraLargeTranscriptSpace_sContentSizeCategory_extraLargeTranscriptSpace_0, v3);
  v11 = &macToolbarSymbolConfiguration_once;
  if (![(CKUIBehaviorMac *)self ckShouldUpdateextraLargeTranscriptSpace]&& v9 == NSOrderedSame && extraLargeTranscriptSpace_sIsBoldTextEnabled_extraLargeTranscriptSpace_0 == IsBoldTextEnabled)
  {
    v10 = extraLargeTranscriptSpace_sTextFontSize_extraLargeTranscriptSpace_0;
    if (*&extraLargeTranscriptSpace_sTextFontSize_extraLargeTranscriptSpace_0 == v4)
    {
      v10 = extraLargeTranscriptSpace_sCustomTextFontSize_extraLargeTranscriptSpace_0;
      if (*&extraLargeTranscriptSpace_sCustomTextFontSize_extraLargeTranscriptSpace_0 == v5 && ([extraLargeTranscriptSpace_sCustomTextFontName_extraLargeTranscriptSpace_0 isEqualToString:{v8, *&extraLargeTranscriptSpace_sCustomTextFontSize_extraLargeTranscriptSpace_0}] & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

  transcriptTextFont = [(CKUIBehavior *)self transcriptTextFont];
  v15 = transcriptTextFont;
  if (isRoundTailedBalloonShapeEnabled)
  {
    [transcriptTextFont _scaledValueForValue:32.0];
    v17 = v16;
    if (CKMainScreenScale_once_62 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  [transcriptTextFont _scaledValueForValue:34.0];
  v17 = v18;
  if (CKMainScreenScale_once_62 != -1)
  {
LABEL_18:
    [CKUIBehaviorMac balloonContiguousSpace];
  }

LABEL_14:
  v11 = &macToolbarSymbolConfiguration_once;
  v19 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v19 = 1.0;
  }

  v20 = round(v17 * v19) / v19;

  extraLargeTranscriptSpace_sBehavior_0 = *&v20;
  objc_storeStrong(&extraLargeTranscriptSpace_sContentSizeCategory_extraLargeTranscriptSpace_0, v3);
  extraLargeTranscriptSpace_sIsBoldTextEnabled_extraLargeTranscriptSpace_0 = IsBoldTextEnabled;
  extraLargeTranscriptSpace_sTextFontSize_extraLargeTranscriptSpace_0 = *&v4;
  extraLargeTranscriptSpace_sCustomTextFontSize_extraLargeTranscriptSpace_0 = *&v5;
  objc_storeStrong(&extraLargeTranscriptSpace_sCustomTextFontName_extraLargeTranscriptSpace_0, v7);
LABEL_17:
  v21 = *(v11 + 217);

  return v21;
}

- (double)statusItemInsetFromBalloonEdge
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKUIBehaviorMac_statusItemInsetFromBalloonEdge__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (statusItemInsetFromBalloonEdge_once_0 != -1)
  {
    dispatch_once(&statusItemInsetFromBalloonEdge_once_0, block);
  }

  return *&statusItemInsetFromBalloonEdge_sBehavior_0;
}

void __49__CKUIBehaviorMac_statusItemInsetFromBalloonEdge__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isRoundTailedBalloonShapeEnabled];

  v4 = 16.0;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) balloonMaskAlignmentRectInsetsWithTailShape:1];
  }

  statusItemInsetFromBalloonEdge_sBehavior_0 = *&v4;
}

- (double)statusItemInsetFromReplyPreviewBalloonEdge
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CKUIBehaviorMac_statusItemInsetFromReplyPreviewBalloonEdge__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (statusItemInsetFromReplyPreviewBalloonEdge_once_0 != -1)
  {
    dispatch_once(&statusItemInsetFromReplyPreviewBalloonEdge_once_0, block);
  }

  return *&statusItemInsetFromReplyPreviewBalloonEdge_sBehavior_0;
}

void __61__CKUIBehaviorMac_statusItemInsetFromReplyPreviewBalloonEdge__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isRoundTailedBalloonShapeEnabled];

  v4 = 10.0;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) balloonMaskAlignmentRectInsetsWithTailShape:1];
  }

  statusItemInsetFromReplyPreviewBalloonEdge_sBehavior_0 = *&v4;
}

- (id)replyBalloonTextFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(replyBalloonTextFont_sContentSizeCategory_replyBalloonTextFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatereplyBalloonTextFont](self, "ckShouldUpdatereplyBalloonTextFont") || v11 || replyBalloonTextFont_sIsIncreaseContrastEnabled_replyBalloonTextFont_0 != v4 || replyBalloonTextFont_sIsBoldTextEnabled_replyBalloonTextFont_0 != IsBoldTextEnabled || (v12 = replyBalloonTextFont_sTextFontSize_replyBalloonTextFont_0, *&replyBalloonTextFont_sTextFontSize_replyBalloonTextFont_0 != v6) || (v12 = replyBalloonTextFont_sCustomTextFontSize_replyBalloonTextFont_0, *&replyBalloonTextFont_sCustomTextFontSize_replyBalloonTextFont_0 != v7) || ([replyBalloonTextFont_sCustomTextFontName_replyBalloonTextFont_0 isEqualToString:{v10, *&replyBalloonTextFont_sCustomTextFontSize_replyBalloonTextFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] __ck_shortPreferredFontForTextStyle:{*MEMORY[0x1E69DDD28], *&v12}];
    v14 = replyBalloonTextFont_sBehavior_0;
    replyBalloonTextFont_sBehavior_0 = v13;

    objc_storeStrong(&replyBalloonTextFont_sContentSizeCategory_replyBalloonTextFont_0, v3);
    replyBalloonTextFont_sIsIncreaseContrastEnabled_replyBalloonTextFont_0 = v4;
    replyBalloonTextFont_sIsBoldTextEnabled_replyBalloonTextFont_0 = IsBoldTextEnabled;
    replyBalloonTextFont_sTextFontSize_replyBalloonTextFont_0 = *&v6;
    replyBalloonTextFont_sCustomTextFontSize_replyBalloonTextFont_0 = *&v7;
    objc_storeStrong(&replyBalloonTextFont_sCustomTextFontName_replyBalloonTextFont_0, v9);
  }

  v15 = replyBalloonTextFont_sBehavior_0;
  v16 = replyBalloonTextFont_sBehavior_0;

  return v15;
}

- (double)transcriptReplyPreviewContextContactImageDiameter
{
  if (transcriptReplyPreviewContextContactImageDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptReplyPreviewContextContactImageDiameter];
  }

  return *&transcriptReplyPreviewContextContactImageDiameter_sBehavior_0;
}

- (CGSize)mediaObjectCachedIconSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKUIBehaviorMac_mediaObjectCachedIconSize__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (mediaObjectCachedIconSize_once_0 != -1)
  {
    dispatch_once(&mediaObjectCachedIconSize_once_0, block);
  }

  v2 = *&mediaObjectCachedIconSize_sBehavior_0_0;
  v3 = *&mediaObjectCachedIconSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

uint64_t __44__CKUIBehaviorMac_mediaObjectCachedIconSize__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) searchPhotosThumbnailWidth];
  v3 = v2 * 0.5;
  if (v3 < 60.0)
  {
    v3 = 60.0;
  }

  mediaObjectCachedIconSize_sBehavior_0_0 = *&v3;
  mediaObjectCachedIconSize_sBehavior_1_0 = *&v3;
  return result;
}

- (double)replyLineWidth
{
  if (replyLineWidth_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineWidth];
  }

  return *&replyLineWidth_sBehavior_0;
}

- (double)replyLineViewVerticalPadding
{
  if (replyLineViewVerticalPadding_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineViewVerticalPadding];
  }

  return *&replyLineViewVerticalPadding_sBehavior_0;
}

- (double)replyLineViewHorizontalPadding
{
  if (replyLineViewHorizontalPadding_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineViewHorizontalPadding];
  }

  return *&replyLineViewHorizontalPadding_sBehavior_0;
}

- (double)replyLineViewContactImageLayoutHorizontalPadding
{
  if (replyLineViewContactImageLayoutHorizontalPadding_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineViewContactImageLayoutHorizontalPadding];
  }

  return *&replyLineViewContactImageLayoutHorizontalPadding_sBehavior_0;
}

- (double)replyLineBracketRadius
{
  if (replyLineBracketRadius_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineBracketRadius];
  }

  return *&replyLineBracketRadius_sBehavior_0;
}

- (double)replyLineViewMaxWidth
{
  if (replyLineViewMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac replyLineViewMaxWidth];
  }

  return *&replyLineViewMaxWidth_sBehavior_0;
}

- (double)transcriptQuickActionButtonDiameter
{
  if (transcriptQuickActionButtonDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac transcriptQuickActionButtonDiameter];
  }

  return *&transcriptQuickActionButtonDiameter_sBehavior_0;
}

- (id)quickSaveButtonImage
{
  if (quickSaveButtonImage_once_0 != -1)
  {
    [CKUIBehaviorMac quickSaveButtonImage];
  }

  v3 = quickSaveButtonImage_sBehavior_0;

  return v3;
}

void __39__CKUIBehaviorMac_quickSaveButtonImage__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:12.0];
  v1 = [v3 imageWithSymbolConfiguration:v0];
  v2 = quickSaveButtonImage_sBehavior_0;
  quickSaveButtonImage_sBehavior_0 = v1;
}

- (id)quickSavePinImage
{
  if (quickSavePinImage_once != -1)
  {
    [CKUIBehaviorMac quickSavePinImage];
  }

  v3 = quickSavePinImage_sBehavior;

  return v3;
}

void __36__CKUIBehaviorMac_quickSavePinImage__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin"];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:12.0];
  v1 = [v3 imageWithSymbolConfiguration:v0];
  v2 = quickSavePinImage_sBehavior;
  quickSavePinImage_sBehavior = v1;
}

- (BOOL)canPluginBalloonsUseOpaqueMask
{
  if (canPluginBalloonsUseOpaqueMask_once_0 != -1)
  {
    [CKUIBehaviorMac canPluginBalloonsUseOpaqueMask];
  }

  return 0;
}

- (CGSize)balloonMaskSize
{
  if (balloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac balloonMaskSize];
  }

  v2 = *&balloonMaskSize_sBehavior_0_0;
  v3 = *&balloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)skinnyBalloonMaskSize
{
  if (skinnyBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac skinnyBalloonMaskSize];
  }

  v2 = *&skinnyBalloonMaskSize_sBehavior_0_0;
  v3 = *&skinnyBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)balloonMaskTailWidth
{
  if (balloonMaskTailWidth_once_0 != -1)
  {
    [CKUIBehaviorMac balloonMaskTailWidth];
  }

  return *&balloonMaskTailWidth_sBehavior_0;
}

void __39__CKUIBehaviorMac_balloonMaskTailWidth__block_invoke()
{
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v1 = [v0 isRoundTailedBalloonShapeEnabled];

  v2 = 5.0;
  if (v1)
  {
    v2 = 0.0;
  }

  balloonMaskTailWidth_sBehavior_0 = *&v2;
}

- (double)replyBalloonMaskTailWidth
{
  if (replyBalloonMaskTailWidth_once != -1)
  {
    [CKUIBehaviorMac replyBalloonMaskTailWidth];
  }

  return *&replyBalloonMaskTailWidth_sBehavior;
}

- (double)replyBalloonMinHeight
{
  if (replyBalloonMinHeight_once_0 != -1)
  {
    [CKUIBehaviorMac replyBalloonMinHeight];
  }

  return *&replyBalloonMinHeight_sBehavior_0;
}

- (CGSize)multilineBalloonMaskSize
{
  if (multilineBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac multilineBalloonMaskSize];
  }

  v2 = *&multilineBalloonMaskSize_sBehavior_0_0;
  v3 = *&multilineBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)taillessMultilineBalloonMaskSize
{
  if (taillessMultilineBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac taillessMultilineBalloonMaskSize];
  }

  v2 = *&taillessMultilineBalloonMaskSize_sBehavior_0_0;
  v3 = *&taillessMultilineBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)replyBalloonMaskSize
{
  if (replyBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac replyBalloonMaskSize];
  }

  v2 = *&replyBalloonMaskSize_sBehavior_0_0;
  v3 = *&replyBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)replySkinnyBalloonMaskSize
{
  if (replySkinnyBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac replySkinnyBalloonMaskSize];
  }

  v2 = *&replySkinnyBalloonMaskSize_sBehavior_0_0;
  v3 = *&replySkinnyBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)replyMultilineBalloonMaskSize
{
  if (replyMultilineBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac replyMultilineBalloonMaskSize];
  }

  v2 = *&replyMultilineBalloonMaskSize_sBehavior_0_0;
  v3 = *&replyMultilineBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)replyDeleteBalloonMaskSize
{
  if (replyDeleteBalloonMaskSize_once_0 != -1)
  {
    [CKUIBehaviorMac replyDeleteBalloonMaskSize];
  }

  v2 = *&replyDeleteBalloonMaskSize_sBehavior_0_0;
  v3 = *&replyDeleteBalloonMaskSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)livePhotoBadgeImage
{
  if (livePhotoBadgeImage_once_0 != -1)
  {
    [CKUIBehaviorMac livePhotoBadgeImage];
  }

  v3 = livePhotoBadgeImage_sBehavior_0;

  return v3;
}

void __38__CKUIBehaviorMac_livePhotoBadgeImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
  v1 = MEMORY[0x1E69DCAD8];
  v2 = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [v1 configurationWithHierarchicalColor:v2];

  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  v6 = [v0 imageWithSymbolConfiguration:v5];

  v7 = livePhotoBadgeImage_sBehavior_0;
  livePhotoBadgeImage_sBehavior_0 = v6;
}

- (UIEdgeInsets)textReplyPreviewBalloonAlignmentRectInsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CKUIBehaviorMac_textReplyPreviewBalloonAlignmentRectInsets__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (textReplyPreviewBalloonAlignmentRectInsets_once != -1)
  {
    dispatch_once(&textReplyPreviewBalloonAlignmentRectInsets_once, block);
  }

  v2 = *&textReplyPreviewBalloonAlignmentRectInsets_sBehavior_0_0;
  v3 = *&textReplyPreviewBalloonAlignmentRectInsets_sBehavior_1_0;
  v4 = *&textReplyPreviewBalloonAlignmentRectInsets_sBehavior_2_0;
  v5 = *&textReplyPreviewBalloonAlignmentRectInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __61__CKUIBehaviorMac_textReplyPreviewBalloonAlignmentRectInsets__block_invoke(uint64_t a1)
{
  [*(a1 + 32) replyBalloonMaskTailWidth];
  v2 = v1;
  if (CKMainScreenScale_once_62 != -1)
  {
    [CKUIBehaviorMac balloonContiguousSpace];
  }

  v3 = *&CKMainScreenScale_sMainScreenScale_62;
  v4 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v3 = 1.0;
  }

  v5 = ceil(v3 * 5.0) / v3;
  v6 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v6 = 1.0;
  }

  v7 = ceil(v6 * 9.0) / v6;
  v8 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v8 = 1.0;
  }

  v9 = ceil(v8 * 5.0) / v8;
  if (*&CKMainScreenScale_sMainScreenScale_62 != 0.0)
  {
    v4 = *&CKMainScreenScale_sMainScreenScale_62;
  }

  textReplyPreviewBalloonAlignmentRectInsets_sBehavior_0_0 = *&v5;
  textReplyPreviewBalloonAlignmentRectInsets_sBehavior_1_0 = *&v7;
  textReplyPreviewBalloonAlignmentRectInsets_sBehavior_2_0 = *&v9;
  *&textReplyPreviewBalloonAlignmentRectInsets_sBehavior_3_0 = ceil((v2 + 9.0) * v4) / v4;
}

- (UIEdgeInsets)attachmentReplyPreviewBalloonAlignmentRectInsets
{
  if (attachmentReplyPreviewBalloonAlignmentRectInsets_once != -1)
  {
    [CKUIBehaviorMac attachmentReplyPreviewBalloonAlignmentRectInsets];
  }

  v2 = *&attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_0_0;
  v3 = *&attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_1_0;
  v4 = *&attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_2_0;
  v5 = *&attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __67__CKUIBehaviorMac_attachmentReplyPreviewBalloonAlignmentRectInsets__block_invoke()
{
  attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_0_0 = 0x4010000000000000;
  attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_1_0 = 0x401C000000000000;
  attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_2_0 = 0x4010000000000000;
  attachmentReplyPreviewBalloonAlignmentRectInsets_sBehavior_3_0 = 0x4018000000000000;
}

- (double)audioReplyPreviewBalloonInset
{
  if (audioReplyPreviewBalloonInset_once_0 != -1)
  {
    [CKUIBehaviorMac audioReplyPreviewBalloonInset];
  }

  return *&audioReplyPreviewBalloonInset_sBehavior_0;
}

- (double)previewMaxWidth
{
  if (previewMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac previewMaxWidth];
  }

  return *&previewMaxWidth_sBehavior_0;
}

- (double)replyButtonPadding
{
  if (replyButtonPadding_once_0 != -1)
  {
    [CKUIBehaviorMac replyButtonPadding];
  }

  return *&replyButtonPadding_sBehavior;
}

- (UIEdgeInsets)replyButtonEdgeInsets
{
  if (replyButtonEdgeInsets_once_0 != -1)
  {
    [CKUIBehaviorMac replyButtonEdgeInsets];
  }

  v2 = *&replyButtonEdgeInsets_sBehavior_0_0;
  v3 = *&replyButtonEdgeInsets_sBehavior_1_0;
  v4 = *&replyButtonEdgeInsets_sBehavior_2_0;
  v5 = *&replyButtonEdgeInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __40__CKUIBehaviorMac_replyButtonEdgeInsets__block_invoke()
{
  replyButtonEdgeInsets_sBehavior_0_0 = 0x4014000000000000;
  replyButtonEdgeInsets_sBehavior_1_0 = 0x4026000000000000;
  replyButtonEdgeInsets_sBehavior_2_0 = 0x4014000000000000;
  replyButtonEdgeInsets_sBehavior_3_0 = 0x4026000000000000;
}

- (id)textFontUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  [defaultsCopy pointSize];
  v6 = v5;
  [(CKUIBehaviorMac *)self fontSizeOffsetUserDefaults];
  v8 = [defaultsCopy fontWithSize:v6 + v7];

  return v8;
}

- (id)balloonTextFontUserDefaults
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CKUIBehaviorMac *)self customFontEnabled])
  {
    customFontNameUserDefaults = [(CKUIBehaviorMac *)self customFontNameUserDefaults];
    if (customFontNameUserDefaults)
    {
      v4 = MEMORY[0x1E69DB878];
      [(CKUIBehaviorMac *)self customFontSizeUserDefaults];
      v5 = [v4 fontWithName:customFontNameUserDefaults size:?];
      if (v5)
      {

        goto LABEL_11;
      }

      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          [(CKUIBehaviorMac *)self customFontSizeUserDefaults];
          v11 = 138412546;
          v12 = customFontNameUserDefaults;
          v13 = 2048;
          v14 = v7;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Custom fonts enabled (fontName: %@, size: %f) but UIFont allocator returned nil. Falling back to default font.", &v11, 0x16u);
        }
      }
    }
  }

  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = MEMORY[0x1E69DB878];
  [(CKUIBehaviorMac *)self fontSizeUserDefaults];
  v5 = [v9 fontWithDescriptor:v8 size:?];

LABEL_11:

  return v5;
}

- (CGSize)balloonMaskTailSizeForTailShape:(char)shape
{
  if (shape >= 2)
  {
    v5 = 5.0;
    v6 = 5.0;
    if (shape != 2)
    {
      v5 = *MEMORY[0x1E695F060];
      v6 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CKUIBehaviorMac;
    [(CKUIBehavior *)&v7 balloonMaskTailSizeForTailShape:?];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)roundBalloonMaskSizeWithTailShape:(char)shape
{
  if (shape >= 2)
  {
    v5 = 28.0;
    v6 = 28.0;
    if (shape != 2)
    {
      v5 = *MEMORY[0x1E695F060];
      v6 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CKUIBehaviorMac;
    [(CKUIBehavior *)&v7 roundBalloonMaskSizeWithTailShape:?];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)thumbnailFillSizeForWidth:(double)width imageSize:(CGSize)size
{
  v6.receiver = self;
  v6.super_class = CKUIBehaviorMac;
  [(CKUIBehavior *)&v6 unconstrainedAspectFillSizeForWidth:width imageSize:size.width, size.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)textBalloonPillContentInsets
{
  if (textBalloonPillContentInsets_once_0 != -1)
  {
    [CKUIBehaviorMac textBalloonPillContentInsets];
  }

  v2 = *&textBalloonPillContentInsets_sBehavior_0_0;
  v3 = *&textBalloonPillContentInsets_sBehavior_1_0;
  v4 = *&textBalloonPillContentInsets_sBehavior_2_0;
  v5 = *&textBalloonPillContentInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __47__CKUIBehaviorMac_textBalloonPillContentInsets__block_invoke()
{
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v1 = [v0 isRoundTailedBalloonShapeEnabled];

  v2 = 5.0;
  v3 = 7.0;
  if (v1)
  {
    v2 = 7.0;
  }

  v4 = 9.0;
  if (v1)
  {
    v4 = 12.0;
  }

  else
  {
    v3 = 6.0;
  }

  textBalloonPillContentInsets_sBehavior_0_0 = *&v2;
  textBalloonPillContentInsets_sBehavior_1_0 = *&v4;
  textBalloonPillContentInsets_sBehavior_2_0 = *&v3;
  textBalloonPillContentInsets_sBehavior_3_0 = *&v4;
}

- (UIEdgeInsets)textReplyPreviewBalloonPillContentInsets
{
  if (textReplyPreviewBalloonPillContentInsets_once_0 != -1)
  {
    [CKUIBehaviorMac textReplyPreviewBalloonPillContentInsets];
  }

  v2 = *&textReplyPreviewBalloonPillContentInsets_sBehavior_0_0;
  v3 = *&textReplyPreviewBalloonPillContentInsets_sBehavior_1_0;
  v4 = *&textReplyPreviewBalloonPillContentInsets_sBehavior_2_0;
  v5 = *&textReplyPreviewBalloonPillContentInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __59__CKUIBehaviorMac_textReplyPreviewBalloonPillContentInsets__block_invoke()
{
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v1 = [v0 isRoundTailedBalloonShapeEnabled];

  v2 = 4.0;
  if (v1)
  {
    v2 = 5.5;
  }

  textReplyPreviewBalloonPillContentInsets_sBehavior_0_0 = *&v2;
  textReplyPreviewBalloonPillContentInsets_sBehavior_1_0 = 0x4020000000000000;
  textReplyPreviewBalloonPillContentInsets_sBehavior_2_0 = *&v2;
  textReplyPreviewBalloonPillContentInsets_sBehavior_3_0 = 0x4020000000000000;
}

- (id)imageBalloonSelectionOverlayColor
{
  if (imageBalloonSelectionOverlayColor_once_0 != -1)
  {
    [CKUIBehaviorMac imageBalloonSelectionOverlayColor];
  }

  v3 = imageBalloonSelectionOverlayColor_sBehavior_0;

  return v3;
}

void __52__CKUIBehaviorMac_imageBalloonSelectionOverlayColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.807843137 green:0.807843137 blue:0.823529412 alpha:0.4];
  v1 = imageBalloonSelectionOverlayColor_sBehavior_0;
  imageBalloonSelectionOverlayColor_sBehavior_0 = v0;
}

- (id)tuConversationBalloonActionButtonFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(tuConversationBalloonActionButtonFont_sContentSizeCategory_tuConversationBalloonActionButtonFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetuConversationBalloonActionButtonFont](self, "ckShouldUpdatetuConversationBalloonActionButtonFont") || v11 || tuConversationBalloonActionButtonFont_sIsIncreaseContrastEnabled_tuConversationBalloonActionButtonFont_0 != v4 || tuConversationBalloonActionButtonFont_sIsBoldTextEnabled_tuConversationBalloonActionButtonFont_0 != IsBoldTextEnabled || (v12 = tuConversationBalloonActionButtonFont_sTextFontSize_tuConversationBalloonActionButtonFont_0, *&tuConversationBalloonActionButtonFont_sTextFontSize_tuConversationBalloonActionButtonFont_0 != v6) || (v12 = tuConversationBalloonActionButtonFont_sCustomTextFontSize_tuConversationBalloonActionButtonFont_0, *&tuConversationBalloonActionButtonFont_sCustomTextFontSize_tuConversationBalloonActionButtonFont_0 != v7) || ([tuConversationBalloonActionButtonFont_sCustomTextFontName_tuConversationBalloonActionButtonFont_0 isEqualToString:{v10, *&tuConversationBalloonActionButtonFont_sCustomTextFontSize_tuConversationBalloonActionButtonFont_0}] & 1) == 0)
  {
    v13 = MEMORY[0x1E69DB878];
    v14 = +[CKUIBehavior sharedBehaviors];
    tuConversationBalloonActionButtonFontStyle = [v14 tuConversationBalloonActionButtonFontStyle];
    v16 = [v13 __ck_fontForStyle:tuConversationBalloonActionButtonFontStyle weight:*MEMORY[0x1E69DB978]];
    v17 = tuConversationBalloonActionButtonFont_sBehavior_0;
    tuConversationBalloonActionButtonFont_sBehavior_0 = v16;

    objc_storeStrong(&tuConversationBalloonActionButtonFont_sContentSizeCategory_tuConversationBalloonActionButtonFont_0, v3);
    tuConversationBalloonActionButtonFont_sIsIncreaseContrastEnabled_tuConversationBalloonActionButtonFont_0 = v4;
    tuConversationBalloonActionButtonFont_sIsBoldTextEnabled_tuConversationBalloonActionButtonFont_0 = IsBoldTextEnabled;
    tuConversationBalloonActionButtonFont_sTextFontSize_tuConversationBalloonActionButtonFont_0 = *&v6;
    tuConversationBalloonActionButtonFont_sCustomTextFontSize_tuConversationBalloonActionButtonFont_0 = *&v7;
    objc_storeStrong(&tuConversationBalloonActionButtonFont_sCustomTextFontName_tuConversationBalloonActionButtonFont_0, v9);
  }

  v18 = tuConversationBalloonActionButtonFont_sBehavior_0;
  v19 = tuConversationBalloonActionButtonFont_sBehavior_0;

  return v18;
}

- (id)tuConversationBalloonActionButtonFontStyle
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(tuConversationBalloonActionButtonFontStyle_sContentSizeCategory_tuConversationBalloonActionButtonFontStyle_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetuConversationBalloonActionButtonFontStyle](self, "ckShouldUpdatetuConversationBalloonActionButtonFontStyle") || v11 || tuConversationBalloonActionButtonFontStyle_sIsIncreaseContrastEnabled_tuConversationBalloonActionButtonFontStyle_0 != v4 || tuConversationBalloonActionButtonFontStyle_sIsBoldTextEnabled_tuConversationBalloonActionButtonFontStyle_0 != IsBoldTextEnabled || *&tuConversationBalloonActionButtonFontStyle_sTextFontSize_tuConversationBalloonActionButtonFontStyle_0 != v6 || *&tuConversationBalloonActionButtonFontStyle_sCustomTextFontSize_tuConversationBalloonActionButtonFontStyle_0 != v7 || ([tuConversationBalloonActionButtonFontStyle_sCustomTextFontName_tuConversationBalloonActionButtonFontStyle_0 isEqualToString:{v10, *&tuConversationBalloonActionButtonFontStyle_sCustomTextFontSize_tuConversationBalloonActionButtonFontStyle_0}] & 1) == 0)
  {
    objc_storeStrong(&tuConversationBalloonActionButtonFontStyle_sBehavior_0, *MEMORY[0x1E69DDD00]);
    objc_storeStrong(&tuConversationBalloonActionButtonFontStyle_sContentSizeCategory_tuConversationBalloonActionButtonFontStyle_0, v3);
    tuConversationBalloonActionButtonFontStyle_sIsIncreaseContrastEnabled_tuConversationBalloonActionButtonFontStyle_0 = v4;
    tuConversationBalloonActionButtonFontStyle_sIsBoldTextEnabled_tuConversationBalloonActionButtonFontStyle_0 = IsBoldTextEnabled;
    tuConversationBalloonActionButtonFontStyle_sTextFontSize_tuConversationBalloonActionButtonFontStyle_0 = *&v6;
    tuConversationBalloonActionButtonFontStyle_sCustomTextFontSize_tuConversationBalloonActionButtonFontStyle_0 = *&v7;
    objc_storeStrong(&tuConversationBalloonActionButtonFontStyle_sCustomTextFontName_tuConversationBalloonActionButtonFontStyle_0, v9);
  }

  v12 = tuConversationBalloonActionButtonFontStyle_sBehavior_0;
  v13 = tuConversationBalloonActionButtonFontStyle_sBehavior_0;

  return v12;
}

- (double)tuConversationBalloonImageDimensions
{
  if (tuConversationBalloonImageDimensions_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonImageDimensions];
  }

  return *&tuConversationBalloonImageDimensions_sBehavior_0;
}

- (double)tuConversationBalloonFaceTimeIconDimensions
{
  if (tuConversationBalloonFaceTimeIconDimensions_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonFaceTimeIconDimensions];
  }

  return *&tuConversationBalloonFaceTimeIconDimensions_sBehavior_0;
}

- (double)tuConversationBalloonIconDimensions
{
  if (tuConversationBalloonIconDimensions_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonIconDimensions];
  }

  return *&tuConversationBalloonIconDimensions_sBehavior_0;
}

- (double)tuConversationBalloonAvatarDimensions
{
  if (tuConversationBalloonAvatarDimensions_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonAvatarDimensions];
  }

  return *&tuConversationBalloonAvatarDimensions_sBehavior_0;
}

- (double)tuConversationBalloonJoinButtonHeight
{
  if (tuConversationBalloonJoinButtonHeight_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonJoinButtonHeight];
  }

  return *&tuConversationBalloonJoinButtonHeight_sBehavior_0;
}

- (double)tuConversationBalloonJoinButtonMinWidth
{
  if (tuConversationBalloonJoinButtonMinWidth_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonJoinButtonMinWidth];
  }

  return *&tuConversationBalloonJoinButtonMinWidth_sBehavior_0;
}

- (double)tuConversationBalloonJoinButtonMaxWidth
{
  if (tuConversationBalloonJoinButtonMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonJoinButtonMaxWidth];
  }

  return *&tuConversationBalloonJoinButtonMaxWidth_sBehavior_0;
}

- (double)tuConversationBalloonContentMinHeight
{
  if (tuConversationBalloonContentMinHeight_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonContentMinHeight];
  }

  return *&tuConversationBalloonContentMinHeight_sBehavior_0;
}

- (double)tuConversationBalloonContentStandardMinWidth
{
  if (tuConversationBalloonContentStandardMinWidth_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationBalloonContentStandardMinWidth];
  }

  return *&tuConversationBalloonContentStandardMinWidth_sBehavior_0;
}

- (double)tipViewCornerRadius
{
  if (tipViewCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac tipViewCornerRadius];
  }

  return *&tipViewCornerRadius_sBehavior_0;
}

- (id)nicknameUpdatesTitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(nicknameUpdatesTitleFont_sContentSizeCategory_nicknameUpdatesTitleFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatenicknameUpdatesTitleFont](self, "ckShouldUpdatenicknameUpdatesTitleFont") || v11 || nicknameUpdatesTitleFont_sIsIncreaseContrastEnabled_nicknameUpdatesTitleFont_0 != v4 || nicknameUpdatesTitleFont_sIsBoldTextEnabled_nicknameUpdatesTitleFont_0 != IsBoldTextEnabled || (v12 = nicknameUpdatesTitleFont_sTextFontSize_nicknameUpdatesTitleFont_0, *&nicknameUpdatesTitleFont_sTextFontSize_nicknameUpdatesTitleFont_0 != v6) || (v12 = nicknameUpdatesTitleFont_sCustomTextFontSize_nicknameUpdatesTitleFont_0, *&nicknameUpdatesTitleFont_sCustomTextFontSize_nicknameUpdatesTitleFont_0 != v7) || ([nicknameUpdatesTitleFont_sCustomTextFontName_nicknameUpdatesTitleFont_0 isEqualToString:{v10, *&nicknameUpdatesTitleFont_sCustomTextFontSize_nicknameUpdatesTitleFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], *&v12}];
    v14 = nicknameUpdatesTitleFont_sBehavior_0;
    nicknameUpdatesTitleFont_sBehavior_0 = v13;

    objc_storeStrong(&nicknameUpdatesTitleFont_sContentSizeCategory_nicknameUpdatesTitleFont_0, v3);
    nicknameUpdatesTitleFont_sIsIncreaseContrastEnabled_nicknameUpdatesTitleFont_0 = v4;
    nicknameUpdatesTitleFont_sIsBoldTextEnabled_nicknameUpdatesTitleFont_0 = IsBoldTextEnabled;
    nicknameUpdatesTitleFont_sTextFontSize_nicknameUpdatesTitleFont_0 = *&v6;
    nicknameUpdatesTitleFont_sCustomTextFontSize_nicknameUpdatesTitleFont_0 = *&v7;
    objc_storeStrong(&nicknameUpdatesTitleFont_sCustomTextFontName_nicknameUpdatesTitleFont_0, v9);
  }

  v15 = nicknameUpdatesTitleFont_sBehavior_0;
  v16 = nicknameUpdatesTitleFont_sBehavior_0;

  return v15;
}

- (id)nicknameUpdatesSubtitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(nicknameUpdatesSubtitleFont_sContentSizeCategory_nicknameUpdatesSubtitleFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatenicknameUpdatesSubtitleFont](self, "ckShouldUpdatenicknameUpdatesSubtitleFont") || v11 || nicknameUpdatesSubtitleFont_sIsIncreaseContrastEnabled_nicknameUpdatesSubtitleFont_0 != v4 || nicknameUpdatesSubtitleFont_sIsBoldTextEnabled_nicknameUpdatesSubtitleFont_0 != IsBoldTextEnabled || (v12 = nicknameUpdatesSubtitleFont_sTextFontSize_nicknameUpdatesSubtitleFont_0, *&nicknameUpdatesSubtitleFont_sTextFontSize_nicknameUpdatesSubtitleFont_0 != v6) || (v12 = nicknameUpdatesSubtitleFont_sCustomTextFontSize_nicknameUpdatesSubtitleFont_0, *&nicknameUpdatesSubtitleFont_sCustomTextFontSize_nicknameUpdatesSubtitleFont_0 != v7) || ([nicknameUpdatesSubtitleFont_sCustomTextFontName_nicknameUpdatesSubtitleFont_0 isEqualToString:{v10, *&nicknameUpdatesSubtitleFont_sCustomTextFontSize_nicknameUpdatesSubtitleFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = nicknameUpdatesSubtitleFont_sBehavior_0;
    nicknameUpdatesSubtitleFont_sBehavior_0 = v13;

    objc_storeStrong(&nicknameUpdatesSubtitleFont_sContentSizeCategory_nicknameUpdatesSubtitleFont_0, v3);
    nicknameUpdatesSubtitleFont_sIsIncreaseContrastEnabled_nicknameUpdatesSubtitleFont_0 = v4;
    nicknameUpdatesSubtitleFont_sIsBoldTextEnabled_nicknameUpdatesSubtitleFont_0 = IsBoldTextEnabled;
    nicknameUpdatesSubtitleFont_sTextFontSize_nicknameUpdatesSubtitleFont_0 = *&v6;
    nicknameUpdatesSubtitleFont_sCustomTextFontSize_nicknameUpdatesSubtitleFont_0 = *&v7;
    objc_storeStrong(&nicknameUpdatesSubtitleFont_sCustomTextFontName_nicknameUpdatesSubtitleFont_0, v9);
  }

  v15 = nicknameUpdatesSubtitleFont_sBehavior_0;
  v16 = nicknameUpdatesSubtitleFont_sBehavior_0;

  return v15;
}

- (double)nicknameIntroViewControllerPreviewTopPadding
{
  if (nicknameIntroViewControllerPreviewTopPadding_once_0 != -1)
  {
    [CKUIBehaviorMac nicknameIntroViewControllerPreviewTopPadding];
  }

  return *&nicknameIntroViewControllerPreviewTopPadding_sBehavior_0;
}

- (double)nicknameIntroViewControllerPreviewBottomPadding
{
  if (nicknameIntroViewControllerPreviewBottomPadding_once_0 != -1)
  {
    [CKUIBehaviorMac nicknameIntroViewControllerPreviewBottomPadding];
  }

  return 0.0;
}

- (id)locationBoldButtonFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(locationBoldButtonFont_sContentSizeCategory_locationBoldButtonFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatelocationBoldButtonFont](self, "ckShouldUpdatelocationBoldButtonFont") || v11 || locationBoldButtonFont_sIsIncreaseContrastEnabled_locationBoldButtonFont_0 != v4 || locationBoldButtonFont_sIsBoldTextEnabled_locationBoldButtonFont_0 != IsBoldTextEnabled || *&locationBoldButtonFont_sTextFontSize_locationBoldButtonFont_0 != v6 || *&locationBoldButtonFont_sCustomTextFontSize_locationBoldButtonFont_0 != v7 || ([locationBoldButtonFont_sCustomTextFontName_locationBoldButtonFont_0 isEqualToString:{v10, *&locationBoldButtonFont_sCustomTextFontSize_locationBoldButtonFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
    v13 = locationBoldButtonFont_sBehavior_0;
    locationBoldButtonFont_sBehavior_0 = v12;

    objc_storeStrong(&locationBoldButtonFont_sContentSizeCategory_locationBoldButtonFont_0, v3);
    locationBoldButtonFont_sIsIncreaseContrastEnabled_locationBoldButtonFont_0 = v4;
    locationBoldButtonFont_sIsBoldTextEnabled_locationBoldButtonFont_0 = IsBoldTextEnabled;
    locationBoldButtonFont_sTextFontSize_locationBoldButtonFont_0 = *&v6;
    locationBoldButtonFont_sCustomTextFontSize_locationBoldButtonFont_0 = *&v7;
    objc_storeStrong(&locationBoldButtonFont_sCustomTextFontName_locationBoldButtonFont_0, v9);
  }

  v14 = locationBoldButtonFont_sBehavior_0;
  v15 = locationBoldButtonFont_sBehavior_0;

  return v14;
}

- (id)locationButtonFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(locationButtonFont_sContentSizeCategory_locationButtonFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatelocationButtonFont](self, "ckShouldUpdatelocationButtonFont") || v11 || locationButtonFont_sIsIncreaseContrastEnabled_locationButtonFont_0 != v4 || locationButtonFont_sIsBoldTextEnabled_locationButtonFont_0 != IsBoldTextEnabled || *&locationButtonFont_sTextFontSize_locationButtonFont_0 != v6 || *&locationButtonFont_sCustomTextFontSize_locationButtonFont_0 != v7 || ([locationButtonFont_sCustomTextFontName_locationButtonFont_0 isEqualToString:{v10, *&locationButtonFont_sCustomTextFontSize_locationButtonFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    v13 = locationButtonFont_sBehavior_0;
    locationButtonFont_sBehavior_0 = v12;

    objc_storeStrong(&locationButtonFont_sContentSizeCategory_locationButtonFont_0, v3);
    locationButtonFont_sIsIncreaseContrastEnabled_locationButtonFont_0 = v4;
    locationButtonFont_sIsBoldTextEnabled_locationButtonFont_0 = IsBoldTextEnabled;
    locationButtonFont_sTextFontSize_locationButtonFont_0 = *&v6;
    locationButtonFont_sCustomTextFontSize_locationButtonFont_0 = *&v7;
    objc_storeStrong(&locationButtonFont_sCustomTextFontName_locationButtonFont_0, v9);
  }

  v14 = locationButtonFont_sBehavior_0;
  v15 = locationButtonFont_sBehavior_0;

  return v14;
}

- (BOOL)enableBalloonTextSelection
{
  if (enableBalloonTextSelection_once_0 != -1)
  {
    [CKUIBehaviorMac enableBalloonTextSelection];
  }

  return enableBalloonTextSelection_sBehavior;
}

- (BOOL)showsBalloonChevron
{
  if (showsBalloonChevron_once_0 != -1)
  {
    [CKUIBehaviorMac showsBalloonChevron];
  }

  return 0;
}

- (CGSize)messageAcknowledgmentTranscriptBalloonSize
{
  if (messageAcknowledgmentTranscriptBalloonSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentTranscriptBalloonSize];
  }

  v2 = *&messageAcknowledgmentTranscriptBalloonSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentTranscriptBalloonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)messageAcknowledgmentTranscriptGlyphInset
{
  if (messageAcknowledgmentTranscriptGlyphInset_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentTranscriptGlyphInset];
  }

  v2 = *&messageAcknowledgmentTranscriptGlyphInset_sBehavior_0_0;
  v3 = *&messageAcknowledgmentTranscriptGlyphInset_sBehavior_1_0;
  v4 = *&messageAcknowledgmentTranscriptGlyphInset_sBehavior_2_0;
  v5 = *&messageAcknowledgmentTranscriptGlyphInset_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __60__CKUIBehaviorMac_messageAcknowledgmentTranscriptGlyphInset__block_invoke()
{
  messageAcknowledgmentTranscriptGlyphInset_sBehavior_0_0 = 0x4008000000000000;
  messageAcknowledgmentTranscriptGlyphInset_sBehavior_1_0 = 0x4008000000000000;
  messageAcknowledgmentTranscriptGlyphInset_sBehavior_2_0 = 0x4008000000000000;
  messageAcknowledgmentTranscriptGlyphInset_sBehavior_3_0 = 0x4008000000000000;
}

- (CGPoint)messageAcknowledgmentTranscriptBalloonRelativePosition
{
  if (messageAcknowledgmentTranscriptBalloonRelativePosition_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentTranscriptBalloonRelativePosition];
  }

  v2 = *&messageAcknowledgmentTranscriptBalloonRelativePosition_sBehavior_0_0;
  v3 = *&messageAcknowledgmentTranscriptBalloonRelativePosition_sBehavior_1_0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)messageAcknowledgmentPhotoGridXOffsetScalar
{
  if (messageAcknowledgmentPhotoGridXOffsetScalar_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPhotoGridXOffsetScalar];
  }

  return *&messageAcknowledgmentPhotoGridXOffsetScalar_sBehavior;
}

- (double)messageAcknowledgmentPhotoGridYOffsetScalar
{
  if (messageAcknowledgmentPhotoGridYOffsetScalar_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPhotoGridYOffsetScalar];
  }

  return *&messageAcknowledgmentPhotoGridYOffsetScalar_sBehavior_0;
}

- (CGSize)messageAcknowledgmentPickerBarSize
{
  if (messageAcknowledgmentPickerBarSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPickerBarSize];
  }

  v2 = *&messageAcknowledgmentPickerBarSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentPickerBarSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentPickerBarAcknowledgmentImageSize
{
  if (messageAcknowledgmentPickerBarAcknowledgmentImageSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPickerBarAcknowledgmentImageSize];
  }

  v2 = *&messageAcknowledgmentPickerBarAcknowledgmentImageSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentPickerBarAcknowledgmentImageSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize
{
  if (messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize];
  }

  v2 = *&messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentPickerBarAcknowledgmentItemBalloonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentPickerBarOffsetFromBalloon
{
  if (messageAcknowledgmentPickerBarOffsetFromBalloon_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPickerBarOffsetFromBalloon];
  }

  v2 = *&messageAcknowledgmentPickerBarOffsetFromBalloon_sBehavior_0_0;
  v3 = *&messageAcknowledgmentPickerBarOffsetFromBalloon_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentAnchorBubbleOffset
{
  if (messageAcknowledgmentAnchorBubbleOffset_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentAnchorBubbleOffset];
  }

  v2 = *&messageAcknowledgmentAnchorBubbleOffset_sBehavior_0_0;
  v3 = *&messageAcknowledgmentAnchorBubbleOffset_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)messageAcknowledgmentPickerMinHorizontalMargin
{
  if (messageAcknowledgmentPickerMinHorizontalMargin_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPickerMinHorizontalMargin];
  }

  return *&messageAcknowledgmentPickerMinHorizontalMargin_sBehavior_0;
}

- (CGSize)messageAcknowledgmentAnchorBubbleSize
{
  if (messageAcknowledgmentAnchorBubbleSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentAnchorBubbleSize];
  }

  v2 = *&messageAcknowledgmentAnchorBubbleSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentAnchorBubbleSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentIntermediateBubbleSize
{
  if (messageAcknowledgmentIntermediateBubbleSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentIntermediateBubbleSize];
  }

  v2 = *&messageAcknowledgmentIntermediateBubbleSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentIntermediateBubbleSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)messageAcknowledgmentPillBubbleSize
{
  if (messageAcknowledgmentPillBubbleSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentPillBubbleSize];
  }

  v2 = *&messageAcknowledgmentPillBubbleSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentPillBubbleSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)messageAcknowledgmentButtonMargin
{
  if (messageAcknowledgmentButtonMargin_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentButtonMargin];
  }

  return *&messageAcknowledgmentButtonMargin_sBehavior_0;
}

- (CGSize)messageAcknowledgmentButtonSize
{
  if (messageAcknowledgmentButtonSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgmentButtonSize];
  }

  v2 = *&messageAcknowledgmentButtonSize_sBehavior_0_0;
  v3 = *&messageAcknowledgmentButtonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)aggregateAcknowledgmentTranscriptBalloonSize
{
  if (aggregateAcknowledgmentTranscriptBalloonSize_once_0 != -1)
  {
    [CKUIBehaviorMac aggregateAcknowledgmentTranscriptBalloonSize];
  }

  v2 = *&aggregateAcknowledgmentTranscriptBalloonSize_sBehavior_0_0;
  v3 = *&aggregateAcknowledgmentTranscriptBalloonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)messageAcknowledgmentVoteCountFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(messageAcknowledgmentVoteCountFont_sContentSizeCategory_messageAcknowledgmentVoteCountFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatemessageAcknowledgmentVoteCountFont](self, "ckShouldUpdatemessageAcknowledgmentVoteCountFont") || v11 || messageAcknowledgmentVoteCountFont_sIsIncreaseContrastEnabled_messageAcknowledgmentVoteCountFont_0 != v4 || messageAcknowledgmentVoteCountFont_sIsBoldTextEnabled_messageAcknowledgmentVoteCountFont_0 != IsBoldTextEnabled || (v12 = messageAcknowledgmentVoteCountFont_sTextFontSize_messageAcknowledgmentVoteCountFont_0, *&messageAcknowledgmentVoteCountFont_sTextFontSize_messageAcknowledgmentVoteCountFont_0 != v6) || (v12 = messageAcknowledgmentVoteCountFont_sCustomTextFontSize_messageAcknowledgmentVoteCountFont_0, *&messageAcknowledgmentVoteCountFont_sCustomTextFontSize_messageAcknowledgmentVoteCountFont_0 != v7) || ([messageAcknowledgmentVoteCountFont_sCustomTextFontName_messageAcknowledgmentVoteCountFont_0 isEqualToString:{v10, *&messageAcknowledgmentVoteCountFont_sCustomTextFontSize_messageAcknowledgmentVoteCountFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = messageAcknowledgmentVoteCountFont_sBehavior_0;
    messageAcknowledgmentVoteCountFont_sBehavior_0 = v13;

    objc_storeStrong(&messageAcknowledgmentVoteCountFont_sContentSizeCategory_messageAcknowledgmentVoteCountFont_0, v3);
    messageAcknowledgmentVoteCountFont_sIsIncreaseContrastEnabled_messageAcknowledgmentVoteCountFont_0 = v4;
    messageAcknowledgmentVoteCountFont_sIsBoldTextEnabled_messageAcknowledgmentVoteCountFont_0 = IsBoldTextEnabled;
    messageAcknowledgmentVoteCountFont_sTextFontSize_messageAcknowledgmentVoteCountFont_0 = *&v6;
    messageAcknowledgmentVoteCountFont_sCustomTextFontSize_messageAcknowledgmentVoteCountFont_0 = *&v7;
    objc_storeStrong(&messageAcknowledgmentVoteCountFont_sCustomTextFontName_messageAcknowledgmentVoteCountFont_0, v9);
  }

  v15 = messageAcknowledgmentVoteCountFont_sBehavior_0;
  v16 = messageAcknowledgmentVoteCountFont_sBehavior_0;

  return v15;
}

- (double)messageAcknowledgementVotingViewHeight
{
  if (messageAcknowledgementVotingViewHeight_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgementVotingViewHeight];
  }

  return *&messageAcknowledgementVotingViewHeight_sBehavior_0;
}

- (double)messageAcknowledgementVotingViewMaxWidth
{
  if (messageAcknowledgementVotingViewMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgementVotingViewMaxWidth];
  }

  return *&messageAcknowledgementVotingViewMaxWidth_sBehavior_0;
}

- (double)messageAcknowledgementVotingViewMinPadding
{
  if (messageAcknowledgementVotingViewMinPadding_once_0 != -1)
  {
    [CKUIBehaviorMac messageAcknowledgementVotingViewMinPadding];
  }

  return *&messageAcknowledgementVotingViewMinPadding_sBehavior_0;
}

- (double)attributionViewMaxWidth
{
  if (attributionViewMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac attributionViewMaxWidth];
  }

  return *&attributionViewMaxWidth_sBehavior_0;
}

- (double)attributionViewMinPadding
{
  if (attributionViewMinPadding_once_0 != -1)
  {
    [CKUIBehaviorMac attributionViewMinPadding];
  }

  return *&attributionViewMinPadding_sBehavior_0;
}

- (id)emojiStickerTranscriptCellFont
{
  if (emojiStickerTranscriptCellFont_once_0 != -1)
  {
    [CKUIBehaviorMac emojiStickerTranscriptCellFont];
  }

  v3 = emojiStickerTranscriptCellFont_sBehavior_0;

  return v3;
}

void __49__CKUIBehaviorMac_emojiStickerTranscriptCellFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB878] systemFontOfSize:52.0];
  v1 = emojiStickerTranscriptCellFont_sBehavior_0;
  emojiStickerTranscriptCellFont_sBehavior_0 = v0;
}

- (CGSize)emojiStickerTranscriptBalloonSize
{
  if (emojiStickerTranscriptBalloonSize_once_0 != -1)
  {
    [CKUIBehaviorMac emojiStickerTranscriptBalloonSize];
  }

  v2 = *&emojiStickerTranscriptBalloonSize_sBehavior_0_0;
  v3 = *&emojiStickerTranscriptBalloonSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)stickerPopoverSize
{
  if (stickerPopoverSize_once_0 != -1)
  {
    [CKUIBehaviorMac stickerPopoverSize];
  }

  v2 = *&stickerPopoverSize_sBehavior_0_0;
  v3 = *&stickerPopoverSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)tapbackPickerSizingFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(tapbackPickerSizingFont_sContentSizeCategory_tapbackPickerSizingFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatetapbackPickerSizingFont](self, "ckShouldUpdatetapbackPickerSizingFont") || v11 || tapbackPickerSizingFont_sIsIncreaseContrastEnabled_tapbackPickerSizingFont_0 != v4 || tapbackPickerSizingFont_sIsBoldTextEnabled_tapbackPickerSizingFont_0 != IsBoldTextEnabled || (v12 = tapbackPickerSizingFont_sTextFontSize_tapbackPickerSizingFont_0, *&tapbackPickerSizingFont_sTextFontSize_tapbackPickerSizingFont_0 != v6) || (v12 = tapbackPickerSizingFont_sCustomTextFontSize_tapbackPickerSizingFont_0, *&tapbackPickerSizingFont_sCustomTextFontSize_tapbackPickerSizingFont_0 != v7) || ([tapbackPickerSizingFont_sCustomTextFontName_tapbackPickerSizingFont_0 isEqualToString:{v10, *&tapbackPickerSizingFont_sCustomTextFontSize_tapbackPickerSizingFont_0}] & 1) == 0)
  {
    v13 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD58] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58], *&v12];
    v14 = [v13 _fontScaledByScaleFactor:0.85];

    v15 = tapbackPickerSizingFont_sBehavior_0;
    tapbackPickerSizingFont_sBehavior_0 = v14;

    objc_storeStrong(&tapbackPickerSizingFont_sContentSizeCategory_tapbackPickerSizingFont_0, v3);
    tapbackPickerSizingFont_sIsIncreaseContrastEnabled_tapbackPickerSizingFont_0 = v4;
    tapbackPickerSizingFont_sIsBoldTextEnabled_tapbackPickerSizingFont_0 = IsBoldTextEnabled;
    tapbackPickerSizingFont_sTextFontSize_tapbackPickerSizingFont_0 = *&v6;
    tapbackPickerSizingFont_sCustomTextFontSize_tapbackPickerSizingFont_0 = *&v7;
    objc_storeStrong(&tapbackPickerSizingFont_sCustomTextFontName_tapbackPickerSizingFont_0, v9);
  }

  v16 = tapbackPickerSizingFont_sBehavior_0;
  v17 = tapbackPickerSizingFont_sBehavior_0;

  return v16;
}

- (id)stickerDetailsCellBackgroundColor
{
  if (stickerDetailsCellBackgroundColor_once_0 != -1)
  {
    [CKUIBehaviorMac stickerDetailsCellBackgroundColor];
  }

  v3 = stickerDetailsCellBackgroundColor_sBehavior;

  return v3;
}

void __52__CKUIBehaviorMac_stickerDetailsCellBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] clearColor];
  v1 = stickerDetailsCellBackgroundColor_sBehavior;
  stickerDetailsCellBackgroundColor_sBehavior = v0;
}

- (id)stickerSaveButtonConfiguration
{
  if (stickerSaveButtonConfiguration_once_0 != -1)
  {
    [CKUIBehaviorMac stickerSaveButtonConfiguration];
  }

  v3 = stickerSaveButtonConfiguration_sBehavior_0;

  return v3;
}

void __49__CKUIBehaviorMac_stickerSaveButtonConfiguration__block_invoke()
{
  v0 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
  v1 = CKFrameworkBundle();
  v2 = [v1 localizedStringForKey:@"STICKER_SAVE_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v0 setTitle:v2];

  [v0 setButtonSize:1];
  [v0 setCornerStyle:4];
  [v0 setMacIdiomStyle:1];
  v3 = stickerSaveButtonConfiguration_sBehavior_0;
  stickerSaveButtonConfiguration_sBehavior_0 = v0;
}

- (id)stickerViewButtonConfiguration
{
  if (stickerViewButtonConfiguration_once_0 != -1)
  {
    [CKUIBehaviorMac stickerViewButtonConfiguration];
  }

  v3 = stickerViewButtonConfiguration_sBehavior_0;

  return v3;
}

void __49__CKUIBehaviorMac_stickerViewButtonConfiguration__block_invoke()
{
  v0 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
  v1 = CKFrameworkBundle();
  v2 = [v1 localizedStringForKey:@"STICKER_VIEW_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v0 setTitle:v2];

  [v0 setButtonSize:1];
  [v0 setCornerStyle:4];
  [v0 setMacIdiomStyle:1];
  v3 = stickerViewButtonConfiguration_sBehavior_0;
  stickerViewButtonConfiguration_sBehavior_0 = v0;
}

- (CGSize)avatarSize
{
  if (avatarSize_once_0 != -1)
  {
    [CKUIBehaviorMac avatarSize];
  }

  v2 = *&avatarSize_sBehavior_0_0;
  v3 = *&avatarSize_sBehavior_1_0;
  result.height = v3;
  result.width = v2;
  return result;
}

double __29__CKUIBehaviorMac_avatarSize__block_invoke()
{
  if (CKPixelWidth_once_9 != -1)
  {
    __29__CKUIBehaviorMac_avatarSize__block_invoke_cold_1();
  }

  result = *&CKPixelWidth_sPixel_9 + 46.0;
  *&avatarSize_sBehavior_0_0 = *&CKPixelWidth_sPixel_9 + 46.0;
  *&avatarSize_sBehavior_1_0 = *&CKPixelWidth_sPixel_9 + 46.0;
  return result;
}

- (double)avatarSpacingMargin
{
  if (avatarSpacingMargin_once_0 != -1)
  {
    [CKUIBehaviorMac avatarSpacingMargin];
  }

  return *&avatarSpacingMargin_sBehavior_0;
}

- (double)avatarNameWidth
{
  if (avatarNameWidth_once_0 != -1)
  {
    [CKUIBehaviorMac avatarNameWidth];
  }

  return *&avatarNameWidth_sBehavior_0;
}

- (double)avatarContactImageNameMargin
{
  if (avatarContactImageNameMargin_once_0 != -1)
  {
    [CKUIBehaviorMac avatarContactImageNameMargin];
  }

  return *&avatarContactImageNameMargin_sBehavior_0;
}

- (id)avatarNameFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(avatarNameFont_sContentSizeCategory_avatarNameFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdateavatarNameFont](self, "ckShouldUpdateavatarNameFont") || v11 || avatarNameFont_sIsIncreaseContrastEnabled_avatarNameFont_0 != v4 || avatarNameFont_sIsBoldTextEnabled_avatarNameFont_0 != IsBoldTextEnabled || (v12 = avatarNameFont_sTextFontSize_avatarNameFont_0, *&avatarNameFont_sTextFontSize_avatarNameFont_0 != v6) || (v12 = avatarNameFont_sCustomTextFontSize_avatarNameFont_0, *&avatarNameFont_sCustomTextFontSize_avatarNameFont_0 != v7) || ([avatarNameFont_sCustomTextFontName_avatarNameFont_0 isEqualToString:{v10, *&avatarNameFont_sCustomTextFontSize_avatarNameFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:{*MEMORY[0x1E69DDD00], *&v12}];
    v14 = avatarNameFont_sBehavior_0;
    avatarNameFont_sBehavior_0 = v13;

    objc_storeStrong(&avatarNameFont_sContentSizeCategory_avatarNameFont_0, v3);
    avatarNameFont_sIsIncreaseContrastEnabled_avatarNameFont_0 = v4;
    avatarNameFont_sIsBoldTextEnabled_avatarNameFont_0 = IsBoldTextEnabled;
    avatarNameFont_sTextFontSize_avatarNameFont_0 = *&v6;
    avatarNameFont_sCustomTextFontSize_avatarNameFont_0 = *&v7;
    objc_storeStrong(&avatarNameFont_sCustomTextFontName_avatarNameFont_0, v9);
  }

  v15 = avatarNameFont_sBehavior_0;
  v16 = avatarNameFont_sBehavior_0;

  return v15;
}

- (UIEdgeInsets)searchSectionMarginInsets
{
  if (searchSectionMarginInsets_once_0 != -1)
  {
    [CKUIBehaviorMac searchSectionMarginInsets];
  }

  v2 = *&searchSectionMarginInsets_sBehavior_0;
  v3 = *&searchSectionMarginInsets_sBehavior_2;
  v4 = *&searchSectionMarginInsets_sBehavior_3_0;
  v5 = 0.0;
  result.right = v4;
  result.bottom = v3;
  result.left = v5;
  result.top = v2;
  return result;
}

void __44__CKUIBehaviorMac_searchSectionMarginInsets__block_invoke()
{
  searchSectionMarginInsets_sBehavior_0 = 0x4024000000000000;
  searchSectionMarginInsets_sBehavior_2 = 0x4024000000000000;
  searchSectionMarginInsets_sBehavior_3_0 = 0x4030000000000000;
}

- (double)searchLeadingAndTrailingMaxPadding
{
  if (searchLeadingAndTrailingMaxPadding_once_0 != -1)
  {
    [CKUIBehaviorMac searchLeadingAndTrailingMaxPadding];
  }

  return *&searchLeadingAndTrailingMaxPadding_sBehavior_0;
}

- (double)searchDetailsLeadingAndTrailingMaxPadding
{
  if (searchDetailsLeadingAndTrailingMaxPadding_once_0 != -1)
  {
    [CKUIBehaviorMac searchDetailsLeadingAndTrailingMaxPadding];
  }

  return *&searchDetailsLeadingAndTrailingMaxPadding_sBehavior_0;
}

- (NSDirectionalEdgeInsets)searchResultsInsets
{
  if (searchResultsInsets_once_0 != -1)
  {
    [CKUIBehaviorMac searchResultsInsets];
  }

  v3 = *(&searchResultsInsets_sBehavior_0 + 1);
  v2 = *&searchResultsInsets_sBehavior_0;
  v4 = *&qword_1EAD649F8;
  v5 = unk_1EAD64A00;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

__n128 __38__CKUIBehaviorMac_searchResultsInsets__block_invoke()
{
  result = *MEMORY[0x1E69DC5C0];
  v1 = *(MEMORY[0x1E69DC5C0] + 16);
  searchResultsInsets_sBehavior_0 = *MEMORY[0x1E69DC5C0];
  *&qword_1EAD649F8 = v1;
  return result;
}

- (double)searchResultsTitleHeaderTopPadding
{
  if (searchResultsTitleHeaderTopPadding_once_0 != -1)
  {
    [CKUIBehaviorMac searchResultsTitleHeaderTopPadding];
  }

  return *&searchResultsTitleHeaderTopPadding_sBehavior_0;
}

- (double)searchResultsTitleHeaderBottomPadding
{
  if (searchResultsTitleHeaderBottomPadding_once_0 != -1)
  {
    [CKUIBehaviorMac searchResultsTitleHeaderBottomPadding];
  }

  return *&searchResultsTitleHeaderBottomPadding_sBehavior_0;
}

- (BOOL)conversationListHidesSearchBarWhenScrolling
{
  if (conversationListHidesSearchBarWhenScrolling_once_0 != -1)
  {
    [CKUIBehaviorMac conversationListHidesSearchBarWhenScrolling];
  }

  return 0;
}

- (double)searchConversationMinAvatarLabelSpacing
{
  if (searchConversationMinAvatarLabelSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac searchConversationMinAvatarLabelSpacing];
  }

  return *&searchConversationMinAvatarLabelSpacing_sBehavior_0;
}

- (NSDirectionalEdgeInsets)searchConversationSectionInsets
{
  if (searchConversationSectionInsets_once_0 != -1)
  {
    [CKUIBehaviorMac searchConversationSectionInsets];
  }

  v2 = *&searchConversationSectionInsets_sBehavior_0_0;
  v3 = *&searchConversationSectionInsets_sBehavior_2_0;
  v4 = 0.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v3;
  result.leading = v4;
  result.top = v2;
  return result;
}

- (double)searchCellCornerRadius
{
  if (searchCellCornerRadius_once != -1)
  {
    [CKUIBehaviorMac searchCellCornerRadius];
  }

  return *&searchCellCornerRadius_sBehavior;
}

- (id)searchHeaderFont
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchHeaderFont_sContentSizeCategory_searchHeaderFont_0, v3);
  ckShouldUpdatesearchHeaderFont = [(CKUIBehaviorMac *)self ckShouldUpdatesearchHeaderFont];
  v14 = &unk_1EAD6D000;
  if (ckShouldUpdatesearchHeaderFont || v11 || searchHeaderFont_sIsIncreaseContrastEnabled_searchHeaderFont_0 != v4 || searchHeaderFont_sIsBoldTextEnabled_searchHeaderFont_0 != IsBoldTextEnabled || (v13 = searchHeaderFont_sTextFontSize_searchHeaderFont_0, *&searchHeaderFont_sTextFontSize_searchHeaderFont_0 != v6) || (v13 = searchHeaderFont_sCustomTextFontSize_searchHeaderFont_0, *&searchHeaderFont_sCustomTextFontSize_searchHeaderFont_0 != v7) || ([searchHeaderFont_sCustomTextFontName_searchHeaderFont_0 isEqualToString:{v10, *&searchHeaderFont_sCustomTextFontSize_searchHeaderFont_0}] & 1) == 0)
  {
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:{0, *&v13}];
    v30 = *MEMORY[0x1E69DB8F0];
    v28 = *MEMORY[0x1E69DB990];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v29 = v16;
    obj = v9;
    v17 = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = v18 = v3;
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v15 fontDescriptorByAddingAttributes:v20];

    v3 = v18;
    v14 = &unk_1EAD6D000;
    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];

    v10 = v17;
    v23 = searchHeaderFont_sBehavior_0;
    searchHeaderFont_sBehavior_0 = v22;

    objc_storeStrong(&searchHeaderFont_sContentSizeCategory_searchHeaderFont_0, v18);
    searchHeaderFont_sIsIncreaseContrastEnabled_searchHeaderFont_0 = v4;
    searchHeaderFont_sIsBoldTextEnabled_searchHeaderFont_0 = IsBoldTextEnabled;
    searchHeaderFont_sTextFontSize_searchHeaderFont_0 = *&v6;
    searchHeaderFont_sCustomTextFontSize_searchHeaderFont_0 = *&v7;
    objc_storeStrong(&searchHeaderFont_sCustomTextFontName_searchHeaderFont_0, obj);
  }

  v24 = v14[128];
  v25 = v24;

  return v24;
}

- (id)searchHeaderButtonFont
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchHeaderButtonFont_sContentSizeCategory_searchHeaderButtonFont_0, v3);
  ckShouldUpdatesearchHeaderButtonFont = [(CKUIBehaviorMac *)self ckShouldUpdatesearchHeaderButtonFont];
  v14 = &unk_1EAD6D000;
  if (ckShouldUpdatesearchHeaderButtonFont || v11 || searchHeaderButtonFont_sIsIncreaseContrastEnabled_searchHeaderButtonFont_0 != v4 || searchHeaderButtonFont_sIsBoldTextEnabled_searchHeaderButtonFont_0 != IsBoldTextEnabled || (v13 = searchHeaderButtonFont_sTextFontSize_searchHeaderButtonFont_0, *&searchHeaderButtonFont_sTextFontSize_searchHeaderButtonFont_0 != v6) || (v13 = searchHeaderButtonFont_sCustomTextFontSize_searchHeaderButtonFont_0, *&searchHeaderButtonFont_sCustomTextFontSize_searchHeaderButtonFont_0 != v7) || ([searchHeaderButtonFont_sCustomTextFontName_searchHeaderButtonFont_0 isEqualToString:{v10, *&searchHeaderButtonFont_sCustomTextFontSize_searchHeaderButtonFont_0}] & 1) == 0)
  {
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:{0, *&v13}];
    v30 = *MEMORY[0x1E69DB8F0];
    v28 = *MEMORY[0x1E69DB990];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
    v29 = v16;
    obj = v9;
    v17 = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = v18 = v3;
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v15 fontDescriptorByAddingAttributes:v20];

    v3 = v18;
    v14 = &unk_1EAD6D000;
    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];

    v10 = v17;
    v23 = searchHeaderButtonFont_sBehavior_0;
    searchHeaderButtonFont_sBehavior_0 = v22;

    objc_storeStrong(&searchHeaderButtonFont_sContentSizeCategory_searchHeaderButtonFont_0, v18);
    searchHeaderButtonFont_sIsIncreaseContrastEnabled_searchHeaderButtonFont_0 = v4;
    searchHeaderButtonFont_sIsBoldTextEnabled_searchHeaderButtonFont_0 = IsBoldTextEnabled;
    searchHeaderButtonFont_sTextFontSize_searchHeaderButtonFont_0 = *&v6;
    searchHeaderButtonFont_sCustomTextFontSize_searchHeaderButtonFont_0 = *&v7;
    objc_storeStrong(&searchHeaderButtonFont_sCustomTextFontName_searchHeaderButtonFont_0, obj);
  }

  v24 = v14[132];
  v25 = v24;

  return v24;
}

- (id)searchResultLabelFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchResultLabelFont_sContentSizeCategory_searchResultLabelFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatesearchResultLabelFont](self, "ckShouldUpdatesearchResultLabelFont") || v11 || searchResultLabelFont_sIsIncreaseContrastEnabled_searchResultLabelFont_0 != v4 || searchResultLabelFont_sIsBoldTextEnabled_searchResultLabelFont_0 != IsBoldTextEnabled || (v12 = searchResultLabelFont_sTextFontSize_searchResultLabelFont_0, *&searchResultLabelFont_sTextFontSize_searchResultLabelFont_0 != v6) || (v12 = searchResultLabelFont_sCustomTextFontSize_searchResultLabelFont_0, *&searchResultLabelFont_sCustomTextFontSize_searchResultLabelFont_0 != v7) || ([searchResultLabelFont_sCustomTextFontName_searchResultLabelFont_0 isEqualToString:{v10, *&searchResultLabelFont_sCustomTextFontSize_searchResultLabelFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD28], *&v12}];
    v14 = searchResultLabelFont_sBehavior_0;
    searchResultLabelFont_sBehavior_0 = v13;

    objc_storeStrong(&searchResultLabelFont_sContentSizeCategory_searchResultLabelFont_0, v3);
    searchResultLabelFont_sIsIncreaseContrastEnabled_searchResultLabelFont_0 = v4;
    searchResultLabelFont_sIsBoldTextEnabled_searchResultLabelFont_0 = IsBoldTextEnabled;
    searchResultLabelFont_sTextFontSize_searchResultLabelFont_0 = *&v6;
    searchResultLabelFont_sCustomTextFontSize_searchResultLabelFont_0 = *&v7;
    objc_storeStrong(&searchResultLabelFont_sCustomTextFontName_searchResultLabelFont_0, v9);
  }

  v15 = searchResultLabelFont_sBehavior_0;
  v16 = searchResultLabelFont_sBehavior_0;

  return v15;
}

- (id)searchMessageBodyTextFont
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchMessageBodyTextFont_sContentSizeCategory_searchMessageBodyTextFont, v3);
  ckShouldUpdatesearchMessageBodyTextFont = [(CKUIBehaviorMac *)self ckShouldUpdatesearchMessageBodyTextFont];
  v14 = &macToolbarSymbolConfiguration_once;
  if (ckShouldUpdatesearchMessageBodyTextFont || v11 || searchMessageBodyTextFont_sIsIncreaseContrastEnabled_searchMessageBodyTextFont != v4 || searchMessageBodyTextFont_sIsBoldTextEnabled_searchMessageBodyTextFont != IsBoldTextEnabled || (v13 = searchMessageBodyTextFont_sTextFontSize_searchMessageBodyTextFont, *&searchMessageBodyTextFont_sTextFontSize_searchMessageBodyTextFont != v6) || (v13 = searchMessageBodyTextFont_sCustomTextFontSize_searchMessageBodyTextFont, *&searchMessageBodyTextFont_sCustomTextFontSize_searchMessageBodyTextFont != v7) || ([searchMessageBodyTextFont_sCustomTextFontName_searchMessageBodyTextFont isEqualToString:{v10, *&searchMessageBodyTextFont_sCustomTextFontSize_searchMessageBodyTextFont}] & 1) == 0)
  {
    v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:{0, *&v13}];
    v30 = *MEMORY[0x1E69DB8F0];
    v28 = *MEMORY[0x1E69DB990];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB978]];
    v29 = v16;
    obj = v9;
    v17 = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v19 = v18 = v3;
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v15 fontDescriptorByAddingAttributes:v20];

    v3 = v18;
    v14 = &macToolbarSymbolConfiguration_once;
    v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];

    v10 = v17;
    v23 = searchMessageBodyTextFont_sBehavior;
    searchMessageBodyTextFont_sBehavior = v22;

    objc_storeStrong(&searchMessageBodyTextFont_sContentSizeCategory_searchMessageBodyTextFont, v18);
    searchMessageBodyTextFont_sIsIncreaseContrastEnabled_searchMessageBodyTextFont = v4;
    searchMessageBodyTextFont_sIsBoldTextEnabled_searchMessageBodyTextFont = IsBoldTextEnabled;
    searchMessageBodyTextFont_sTextFontSize_searchMessageBodyTextFont = *&v6;
    searchMessageBodyTextFont_sCustomTextFontSize_searchMessageBodyTextFont = *&v7;
    objc_storeStrong(&searchMessageBodyTextFont_sCustomTextFontName_searchMessageBodyTextFont, obj);
  }

  v24 = v14[399];
  v25 = v24;

  return v24;
}

- (id)searchIndexingTitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchIndexingTitleFont_sContentSizeCategory_searchIndexingTitleFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatesearchIndexingTitleFont](self, "ckShouldUpdatesearchIndexingTitleFont") || v11 || searchIndexingTitleFont_sIsIncreaseContrastEnabled_searchIndexingTitleFont_0 != v4 || searchIndexingTitleFont_sIsBoldTextEnabled_searchIndexingTitleFont_0 != IsBoldTextEnabled || (v12 = searchIndexingTitleFont_sTextFontSize_searchIndexingTitleFont_0, *&searchIndexingTitleFont_sTextFontSize_searchIndexingTitleFont_0 != v6) || (v12 = searchIndexingTitleFont_sCustomTextFontSize_searchIndexingTitleFont_0, *&searchIndexingTitleFont_sCustomTextFontSize_searchIndexingTitleFont_0 != v7) || ([searchIndexingTitleFont_sCustomTextFontName_searchIndexingTitleFont_0 isEqualToString:{v10, *&searchIndexingTitleFont_sCustomTextFontSize_searchIndexingTitleFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:{0, *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];

    v15 = searchIndexingTitleFont_sBehavior_0;
    searchIndexingTitleFont_sBehavior_0 = v14;

    objc_storeStrong(&searchIndexingTitleFont_sContentSizeCategory_searchIndexingTitleFont_0, v3);
    searchIndexingTitleFont_sIsIncreaseContrastEnabled_searchIndexingTitleFont_0 = v4;
    searchIndexingTitleFont_sIsBoldTextEnabled_searchIndexingTitleFont_0 = IsBoldTextEnabled;
    searchIndexingTitleFont_sTextFontSize_searchIndexingTitleFont_0 = *&v6;
    searchIndexingTitleFont_sCustomTextFontSize_searchIndexingTitleFont_0 = *&v7;
    objc_storeStrong(&searchIndexingTitleFont_sCustomTextFontName_searchIndexingTitleFont_0, v9);
  }

  v16 = searchIndexingTitleFont_sBehavior_0;
  v17 = searchIndexingTitleFont_sBehavior_0;

  return v16;
}

- (id)searchIndexingSubtitleFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(searchIndexingSubtitleFont_sContentSizeCategory_searchIndexingSubtitleFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatesearchIndexingSubtitleFont](self, "ckShouldUpdatesearchIndexingSubtitleFont") || v11 || searchIndexingSubtitleFont_sIsIncreaseContrastEnabled_searchIndexingSubtitleFont_0 != v4 || searchIndexingSubtitleFont_sIsBoldTextEnabled_searchIndexingSubtitleFont_0 != IsBoldTextEnabled || (v12 = searchIndexingSubtitleFont_sTextFontSize_searchIndexingSubtitleFont_0, *&searchIndexingSubtitleFont_sTextFontSize_searchIndexingSubtitleFont_0 != v6) || (v12 = searchIndexingSubtitleFont_sCustomTextFontSize_searchIndexingSubtitleFont_0, *&searchIndexingSubtitleFont_sCustomTextFontSize_searchIndexingSubtitleFont_0 != v7) || ([searchIndexingSubtitleFont_sCustomTextFontName_searchIndexingSubtitleFont_0 isEqualToString:{v10, *&searchIndexingSubtitleFont_sCustomTextFontSize_searchIndexingSubtitleFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD28], *&v12}];
    v14 = searchIndexingSubtitleFont_sBehavior_0;
    searchIndexingSubtitleFont_sBehavior_0 = v13;

    objc_storeStrong(&searchIndexingSubtitleFont_sContentSizeCategory_searchIndexingSubtitleFont_0, v3);
    searchIndexingSubtitleFont_sIsIncreaseContrastEnabled_searchIndexingSubtitleFont_0 = v4;
    searchIndexingSubtitleFont_sIsBoldTextEnabled_searchIndexingSubtitleFont_0 = IsBoldTextEnabled;
    searchIndexingSubtitleFont_sTextFontSize_searchIndexingSubtitleFont_0 = *&v6;
    searchIndexingSubtitleFont_sCustomTextFontSize_searchIndexingSubtitleFont_0 = *&v7;
    objc_storeStrong(&searchIndexingSubtitleFont_sCustomTextFontName_searchIndexingSubtitleFont_0, v9);
  }

  v15 = searchIndexingSubtitleFont_sBehavior_0;
  v16 = searchIndexingSubtitleFont_sBehavior_0;

  return v15;
}

- (id)replyButtonFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(replyButtonFont_sContentSizeCategory_replyButtonFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatereplyButtonFont](self, "ckShouldUpdatereplyButtonFont") || v11 || replyButtonFont_sIsIncreaseContrastEnabled_replyButtonFont_0 != v4 || replyButtonFont_sIsBoldTextEnabled_replyButtonFont_0 != IsBoldTextEnabled || (v12 = replyButtonFont_sTextFontSize_replyButtonFont_0, *&replyButtonFont_sTextFontSize_replyButtonFont_0 != v6) || (v12 = replyButtonFont_sCustomTextFontSize_replyButtonFont_0, *&replyButtonFont_sCustomTextFontSize_replyButtonFont_0 != v7) || ([replyButtonFont_sCustomTextFontName_replyButtonFont_0 isEqualToString:{v10, *&replyButtonFont_sCustomTextFontSize_replyButtonFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDD80], *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:14.0];
    v15 = [(CKUIBehaviorMac *)self textFontUserDefaults:v14];

    v16 = replyButtonFont_sBehavior_0;
    replyButtonFont_sBehavior_0 = v15;

    objc_storeStrong(&replyButtonFont_sContentSizeCategory_replyButtonFont_0, v3);
    replyButtonFont_sIsIncreaseContrastEnabled_replyButtonFont_0 = v4;
    replyButtonFont_sIsBoldTextEnabled_replyButtonFont_0 = IsBoldTextEnabled;
    replyButtonFont_sTextFontSize_replyButtonFont_0 = *&v6;
    replyButtonFont_sCustomTextFontSize_replyButtonFont_0 = *&v7;
    objc_storeStrong(&replyButtonFont_sCustomTextFontName_replyButtonFont_0, v9);
  }

  v17 = replyButtonFont_sBehavior_0;
  v18 = replyButtonFont_sBehavior_0;

  return v17;
}

- (NSDirectionalEdgeInsets)searchMessagesSectionInsets
{
  if (searchMessagesSectionInsets_once_0 != -1)
  {
    [CKUIBehaviorMac searchMessagesSectionInsets];
  }

  v2 = *&searchMessagesSectionInsets_sBehavior_0;
  v3 = *&searchMessagesSectionInsets_sBehavior_2;
  v4 = 0.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v3;
  result.leading = v4;
  result.top = v2;
  return result;
}

- (double)searchMessagesConversationToSenderSpacing
{
  if (searchMessagesConversationToSenderSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac searchMessagesConversationToSenderSpacing];
  }

  return 0.0;
}

- (double)searchMessagesSenderToBalloonSpacing
{
  if (searchMessagesSenderToBalloonSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac searchMessagesSenderToBalloonSpacing];
  }

  return *&searchMessagesSenderToBalloonSpacing_sBehavior_0;
}

- (double)searchPhotosCellCornerRadius
{
  if (searchPhotosCellCornerRadius_once != -1)
  {
    [CKUIBehaviorMac searchPhotosCellCornerRadius];
  }

  return *&searchPhotosCellCornerRadius_sBehavior;
}

- (double)searchPhotosCellZKWAndDetailsCornerRadius
{
  if (searchPhotosCellZKWAndDetailsCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac searchPhotosCellZKWAndDetailsCornerRadius];
  }

  return *&searchPhotosCellZKWAndDetailsCornerRadius_sBehavior_0;
}

- (double)searchPhotosInterItemSpacing
{
  if (searchPhotosInterItemSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac searchPhotosInterItemSpacing];
  }

  return *&searchPhotosInterItemSpacing_sBehavior_0;
}

- (double)searchPhotosZKWAndDetailsInterItemSpacing
{
  if (searchPhotosZKWAndDetailsInterItemSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac searchPhotosZKWAndDetailsInterItemSpacing];
  }

  return *&searchPhotosZKWAndDetailsInterItemSpacing_sBehavior_0;
}

- (double)searchPhotosInterItemSpacingDetailsView
{
  if (searchPhotosInterItemSpacingDetailsView_once_0 != -1)
  {
    [CKUIBehaviorMac searchPhotosInterItemSpacingDetailsView];
  }

  return *&searchPhotosInterItemSpacingDetailsView_sBehavior_0;
}

double __58__CKUIBehaviorMac_searchPhotosInterItemSpacingDetailsView__block_invoke()
{
  if (CKMainScreenScale_once_62 != -1)
  {
    [CKUIBehaviorMac balloonContiguousSpace];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v0 = 1.0;
  }

  result = round(v0 * 10.0) / v0;
  searchPhotosInterItemSpacingDetailsView_sBehavior_0 = *&result;
  return result;
}

- (double)searchLinksCellCornerRadius
{
  if (searchLinksCellCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac searchLinksCellCornerRadius];
  }

  return *&searchLinksCellCornerRadius_sBehavior_0;
}

- (double)searchAttachmentsCellCornerRadius
{
  if (searchAttachmentsCellCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac searchAttachmentsCellCornerRadius];
  }

  return *&searchAttachmentsCellCornerRadius_sBehavior_0;
}

- (double)searchLocationsCellCornerRadius
{
  if (searchLocationsCellCornerRadius_once != -1)
  {
    [CKUIBehaviorMac searchLocationsCellCornerRadius];
  }

  return *&searchLocationsCellCornerRadius_sBehavior;
}

- (double)mapPreviewMaxWidth
{
  if (mapPreviewMaxWidth_once_0 != -1)
  {
    [CKUIBehaviorMac mapPreviewMaxWidth];
  }

  return *&mapPreviewMaxWidth_sBehavior_0;
}

- (double)searchDropdownAvatarDiameter
{
  if (searchDropdownAvatarDiameter_once != -1)
  {
    [CKUIBehaviorMac searchDropdownAvatarDiameter];
  }

  return *&searchDropdownAvatarDiameter_sBehavior;
}

- (id)recipientNameFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(recipientNameFont_sContentSizeCategory_recipientNameFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdaterecipientNameFont](self, "ckShouldUpdaterecipientNameFont") || v11 || recipientNameFont_sIsIncreaseContrastEnabled_recipientNameFont_0 != v4 || recipientNameFont_sIsBoldTextEnabled_recipientNameFont_0 != IsBoldTextEnabled || (v12 = recipientNameFont_sTextFontSize_recipientNameFont_0, *&recipientNameFont_sTextFontSize_recipientNameFont_0 != v6) || (v12 = recipientNameFont_sCustomTextFontSize_recipientNameFont_0, *&recipientNameFont_sCustomTextFontSize_recipientNameFont_0 != v7) || ([recipientNameFont_sCustomTextFontName_recipientNameFont_0 isEqualToString:{v10, *&recipientNameFont_sCustomTextFontSize_recipientNameFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:{0, *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];

    v15 = recipientNameFont_sBehavior_0;
    recipientNameFont_sBehavior_0 = v14;

    objc_storeStrong(&recipientNameFont_sContentSizeCategory_recipientNameFont_0, v3);
    recipientNameFont_sIsIncreaseContrastEnabled_recipientNameFont_0 = v4;
    recipientNameFont_sIsBoldTextEnabled_recipientNameFont_0 = IsBoldTextEnabled;
    recipientNameFont_sTextFontSize_recipientNameFont_0 = *&v6;
    recipientNameFont_sCustomTextFontSize_recipientNameFont_0 = *&v7;
    objc_storeStrong(&recipientNameFont_sCustomTextFontName_recipientNameFont_0, v9);
  }

  v16 = recipientNameFont_sBehavior_0;
  v17 = recipientNameFont_sBehavior_0;

  return v16;
}

- (double)detailsContactCellButtonWidth
{
  if (detailsContactCellButtonWidth_once_0 != -1)
  {
    [CKUIBehaviorMac detailsContactCellButtonWidth];
  }

  return *&detailsContactCellButtonWidth_sBehavior_0;
}

- (double)detailsContactCellButtonHeight
{
  if (detailsContactCellButtonHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsContactCellButtonHeight];
  }

  return *&detailsContactCellButtonHeight_sBehavior_0;
}

- (UIEdgeInsets)detailsContactCellButtonEdgeInsets
{
  if (detailsContactCellButtonEdgeInsets_once_0 != -1)
  {
    [CKUIBehaviorMac detailsContactCellButtonEdgeInsets];
  }

  v2 = *&detailsContactCellButtonEdgeInsets_sBehavior_0_0;
  v3 = *&detailsContactCellButtonEdgeInsets_sBehavior_1_0;
  v4 = *&detailsContactCellButtonEdgeInsets_sBehavior_2_0;
  v5 = *&detailsContactCellButtonEdgeInsets_sBehavior_3_0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __53__CKUIBehaviorMac_detailsContactCellButtonEdgeInsets__block_invoke()
{
  detailsContactCellButtonEdgeInsets_sBehavior_0_0 = 0x4020000000000000;
  detailsContactCellButtonEdgeInsets_sBehavior_1_0 = 0x4018000000000000;
  detailsContactCellButtonEdgeInsets_sBehavior_2_0 = 0x4020000000000000;
  detailsContactCellButtonEdgeInsets_sBehavior_3_0 = 0x4018000000000000;
}

- (double)detailsContactCellMinimumHeight
{
  if (detailsContactCellMinimumHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsContactCellMinimumHeight];
  }

  return *&detailsContactCellMinimumHeight_sBehavior_0;
}

- (int64_t)detailsGroupChevronImageScale
{
  if (detailsGroupChevronImageScale_once_0 != -1)
  {
    [CKUIBehaviorMac detailsGroupChevronImageScale];
  }

  return (detailsGroupChevronImageScale_sBehavior_0 << 63) >> 63;
}

- (double)detailsGroupButtonHeight
{
  if (detailsGroupButtonHeight_once != -1)
  {
    [CKUIBehaviorMac detailsGroupButtonHeight];
  }

  return *&detailsGroupButtonHeight_sBehavior;
}

- (double)detailsGroupButtonWidth
{
  if (detailsGroupButtonWidth_once != -1)
  {
    [CKUIBehaviorMac detailsGroupButtonWidth];
  }

  return *&detailsGroupButtonWidth_sBehavior;
}

- (double)detailsInterGroupButtonPadding
{
  if (detailsInterGroupButtonPadding_once != -1)
  {
    [CKUIBehaviorMac detailsInterGroupButtonPadding];
  }

  return *&detailsInterGroupButtonPadding_sBehavior;
}

- (double)detailsMapViewInset
{
  if (detailsMapViewInset_once != -1)
  {
    [CKUIBehaviorMac detailsMapViewInset];
  }

  return *&detailsMapViewInset_sBehavior;
}

- (double)detailsToFieldPreferredHeight
{
  if (detailsToFieldPreferredHeight_once != -1)
  {
    [CKUIBehaviorMac detailsToFieldPreferredHeight];
  }

  return *&detailsToFieldPreferredHeight_sBehavior;
}

- (double)detailsContactImageDiameter
{
  if (detailsContactImageDiameter_once != -1)
  {
    [CKUIBehaviorMac detailsContactImageDiameter];
  }

  return *&detailsContactImageDiameter_sBehavior;
}

- (double)detailsPreferredContentSizeWidth
{
  if (detailsPreferredContentSizeWidth_once != -1)
  {
    [CKUIBehaviorMac detailsPreferredContentSizeWidth];
  }

  return *&detailsPreferredContentSizeWidth_sBehavior;
}

- (double)collaborationDetailsPreferredContentSizeWidth
{
  if (collaborationDetailsPreferredContentSizeWidth_once != -1)
  {
    [CKUIBehaviorMac collaborationDetailsPreferredContentSizeWidth];
  }

  return *&collaborationDetailsPreferredContentSizeWidth_sBehavior;
}

- (double)detailsPreferredContentSizeHeight
{
  if (detailsPreferredContentSizeHeight_once != -1)
  {
    [CKUIBehaviorMac detailsPreferredContentSizeHeight];
  }

  return *&detailsPreferredContentSizeHeight_sBehavior;
}

- (double)detailsExpanseCellHeight
{
  if (detailsExpanseCellHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsExpanseCellHeight];
  }

  return *&detailsExpanseCellHeight_sBehavior_0;
}

double __43__CKUIBehaviorMac_detailsExpanseCellHeight__block_invoke()
{
  if (CKMainScreenScale_once_62 != -1)
  {
    [CKUIBehaviorMac balloonContiguousSpace];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v0 = 1.0;
  }

  result = round(v0 * 195.0) / v0;
  detailsExpanseCellHeight_sBehavior_0 = *&result;
  return result;
}

- (double)detailsExpanseScreenShareCellHeight
{
  if (detailsExpanseScreenShareCellHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsExpanseScreenShareCellHeight];
  }

  return *&detailsExpanseScreenShareCellHeight_sBehavior_0;
}

double __54__CKUIBehaviorMac_detailsExpanseScreenShareCellHeight__block_invoke()
{
  if (CKMainScreenScale_once_62 != -1)
  {
    [CKUIBehaviorMac balloonContiguousSpace];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v0 = 1.0;
  }

  result = round(v0 * 85.0) / v0;
  detailsExpanseScreenShareCellHeight_sBehavior_0 = *&result;
  return result;
}

- (double)detailsExpanseDescriptionLabelHeight
{
  if (detailsExpanseDescriptionLabelHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsExpanseDescriptionLabelHeight];
  }

  return *&detailsExpanseDescriptionLabelHeight_sBehavior;
}

- (int64_t)detailsActionViewStyle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKUIBehaviorMac_detailsActionViewStyle__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (detailsActionViewStyle_once_0 != -1)
  {
    dispatch_once(&detailsActionViewStyle_once_0, block);
  }

  return detailsActionViewStyle_sBehavior_0;
}

uint64_t __41__CKUIBehaviorMac_detailsActionViewStyle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _detailsActionViewStyle];
  detailsActionViewStyle_sBehavior_0 = result;
  return result;
}

- (double)tuConversationInsetPadding
{
  if (tuConversationInsetPadding_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationInsetPadding];
  }

  return *&tuConversationInsetPadding_sBehavior_0;
}

- (double)tuConversationInteritemSpacing
{
  if (tuConversationInteritemSpacing_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationInteritemSpacing];
  }

  return *&tuConversationInteritemSpacing_sBehavior_0;
}

- (double)tuConversationJoinButtonCornerRadius
{
  if (tuConversationJoinButtonCornerRadius_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationJoinButtonCornerRadius];
  }

  return *&tuConversationJoinButtonCornerRadius_sBehavior_0;
}

- (double)tuConversationJoinButtonHeight
{
  if (tuConversationJoinButtonHeight_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationJoinButtonHeight];
  }

  return *&tuConversationJoinButtonHeight_sBehavior_0;
}

- (double)tuConversationJoinButtonMinWidth
{
  if (tuConversationJoinButtonMinWidth_once_0 != -1)
  {
    [CKUIBehaviorMac tuConversationJoinButtonMinWidth];
  }

  return *&tuConversationJoinButtonMinWidth_sBehavior_0;
}

- (double)detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode
{
  if (detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode_once_0 != -1)
  {
    [CKUIBehaviorMac detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode];
  }

  return *&detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode_sBehavior_0;
}

- (double)detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode
{
  if (detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode_once_0 != -1)
  {
    [CKUIBehaviorMac detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode];
  }

  return *&detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode_sBehavior_0;
}

- (double)detailsSectionHeaderPaddingLeading
{
  if (detailsSectionHeaderPaddingLeading_once_0 != -1)
  {
    [CKUIBehaviorMac detailsSectionHeaderPaddingLeading];
  }

  return *&detailsSectionHeaderPaddingLeading_sBehavior;
}

- (double)detailsSectionHeaderPaddingAbove
{
  if (detailsSectionHeaderPaddingAbove_once_0 != -1)
  {
    [CKUIBehaviorMac detailsSectionHeaderPaddingAbove];
  }

  return *&detailsSectionHeaderPaddingAbove_sBehavior;
}

- (double)detailsCellLabelPadding
{
  if (detailsCellLabelPadding_once_0 != -1)
  {
    [CKUIBehaviorMac detailsCellLabelPadding];
  }

  return *&detailsCellLabelPadding_sBehavior;
}

- (int64_t)groupRecipientSelectionPresentationStyle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CKUIBehaviorMac_groupRecipientSelectionPresentationStyle__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (groupRecipientSelectionPresentationStyle_once_0 != -1)
  {
    dispatch_once(&groupRecipientSelectionPresentationStyle_once_0, block);
  }

  return groupRecipientSelectionPresentationStyle_sBehavior_0;
}

uint64_t __59__CKUIBehaviorMac_groupRecipientSelectionPresentationStyle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _groupRecipientSelectionPresentationStyle];
  groupRecipientSelectionPresentationStyle_sBehavior_0 = result;
  return result;
}

- (int64_t)_groupRecipientSelectionPresentationStyle
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

  if (isRedesignedDetailsViewEnabled)
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

- (double)detailsAddButtonDiameter
{
  if (detailsAddButtonDiameter_once_0 != -1)
  {
    [CKUIBehaviorMac detailsAddButtonDiameter];
  }

  return *&detailsAddButtonDiameter_sBehavior_0;
}

- (double)ktStatusCellImagePadding
{
  if (ktStatusCellImagePadding_once_0 != -1)
  {
    [CKUIBehaviorMac ktStatusCellImagePadding];
  }

  return *&ktStatusCellImagePadding_sBehavior_0;
}

- (double)balloonSelectionScrollThresholdTop
{
  if (balloonSelectionScrollThresholdTop_once != -1)
  {
    [CKUIBehaviorMac balloonSelectionScrollThresholdTop];
  }

  return *&balloonSelectionScrollThresholdTop_sBehavior;
}

- (double)balloonSelectionScrollThresholdBottom
{
  if (balloonSelectionScrollThresholdBottom_once != -1)
  {
    [CKUIBehaviorMac balloonSelectionScrollThresholdBottom];
  }

  return *&balloonSelectionScrollThresholdBottom_sBehavior;
}

- (double)balloonSelectionLoadMoreSpinnerHeight
{
  if (balloonSelectionLoadMoreSpinnerHeight_once != -1)
  {
    [CKUIBehaviorMac balloonSelectionLoadMoreSpinnerHeight];
  }

  return *&balloonSelectionLoadMoreSpinnerHeight_sBehavior;
}

- (double)balloonSelectionMaxScrollSpeed
{
  if (balloonSelectionMaxScrollSpeed_once != -1)
  {
    [CKUIBehaviorMac balloonSelectionMaxScrollSpeed];
  }

  return *&balloonSelectionMaxScrollSpeed_sBehavior;
}

- (double)detailsViewMapHeight
{
  if (detailsViewMapHeight_once_0 != -1)
  {
    [CKUIBehaviorMac detailsViewMapHeight];
  }

  return *&detailsViewMapHeight_sBehavior_0;
}

- (id)businessInfoViewGreetingTextFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(businessInfoViewGreetingTextFont_sContentSizeCategory_businessInfoViewGreetingTextFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatebusinessInfoViewGreetingTextFont](self, "ckShouldUpdatebusinessInfoViewGreetingTextFont") || v11 || businessInfoViewGreetingTextFont_sIsIncreaseContrastEnabled_businessInfoViewGreetingTextFont_0 != v4 || businessInfoViewGreetingTextFont_sIsBoldTextEnabled_businessInfoViewGreetingTextFont_0 != IsBoldTextEnabled || *&businessInfoViewGreetingTextFont_sTextFontSize_businessInfoViewGreetingTextFont_0 != v6 || *&businessInfoViewGreetingTextFont_sCustomTextFontSize_businessInfoViewGreetingTextFont_0 != v7 || ([businessInfoViewGreetingTextFont_sCustomTextFontName_businessInfoViewGreetingTextFont_0 isEqualToString:{v10, *&businessInfoViewGreetingTextFont_sCustomTextFontSize_businessInfoViewGreetingTextFont_0}] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    v13 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD78]];
    v14 = [v13 scaledFontForFont:v12];

    v15 = businessInfoViewGreetingTextFont_sBehavior_0;
    businessInfoViewGreetingTextFont_sBehavior_0 = v14;

    objc_storeStrong(&businessInfoViewGreetingTextFont_sContentSizeCategory_businessInfoViewGreetingTextFont_0, v3);
    businessInfoViewGreetingTextFont_sIsIncreaseContrastEnabled_businessInfoViewGreetingTextFont_0 = v4;
    businessInfoViewGreetingTextFont_sIsBoldTextEnabled_businessInfoViewGreetingTextFont_0 = IsBoldTextEnabled;
    businessInfoViewGreetingTextFont_sTextFontSize_businessInfoViewGreetingTextFont_0 = *&v6;
    businessInfoViewGreetingTextFont_sCustomTextFontSize_businessInfoViewGreetingTextFont_0 = *&v7;
    objc_storeStrong(&businessInfoViewGreetingTextFont_sCustomTextFontName_businessInfoViewGreetingTextFont_0, v9);
  }

  v16 = businessInfoViewGreetingTextFont_sBehavior_0;
  v17 = businessInfoViewGreetingTextFont_sBehavior_0;

  return v16;
}

- (id)businessInfoViewDescriptionTextFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(businessInfoViewDescriptionTextFont_sContentSizeCategory_businessInfoViewDescriptionTextFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatebusinessInfoViewDescriptionTextFont](self, "ckShouldUpdatebusinessInfoViewDescriptionTextFont") || v11 || businessInfoViewDescriptionTextFont_sIsIncreaseContrastEnabled_businessInfoViewDescriptionTextFont_0 != v4 || businessInfoViewDescriptionTextFont_sIsBoldTextEnabled_businessInfoViewDescriptionTextFont_0 != IsBoldTextEnabled || (v12 = businessInfoViewDescriptionTextFont_sTextFontSize_businessInfoViewDescriptionTextFont_0, *&businessInfoViewDescriptionTextFont_sTextFontSize_businessInfoViewDescriptionTextFont_0 != v6) || (v12 = businessInfoViewDescriptionTextFont_sCustomTextFontSize_businessInfoViewDescriptionTextFont_0, *&businessInfoViewDescriptionTextFont_sCustomTextFontSize_businessInfoViewDescriptionTextFont_0 != v7) || ([businessInfoViewDescriptionTextFont_sCustomTextFontName_businessInfoViewDescriptionTextFont_0 isEqualToString:{v10, *&businessInfoViewDescriptionTextFont_sCustomTextFontSize_businessInfoViewDescriptionTextFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD78], *&v12}];
    v14 = businessInfoViewDescriptionTextFont_sBehavior_0;
    businessInfoViewDescriptionTextFont_sBehavior_0 = v13;

    objc_storeStrong(&businessInfoViewDescriptionTextFont_sContentSizeCategory_businessInfoViewDescriptionTextFont_0, v3);
    businessInfoViewDescriptionTextFont_sIsIncreaseContrastEnabled_businessInfoViewDescriptionTextFont_0 = v4;
    businessInfoViewDescriptionTextFont_sIsBoldTextEnabled_businessInfoViewDescriptionTextFont_0 = IsBoldTextEnabled;
    businessInfoViewDescriptionTextFont_sTextFontSize_businessInfoViewDescriptionTextFont_0 = *&v6;
    businessInfoViewDescriptionTextFont_sCustomTextFontSize_businessInfoViewDescriptionTextFont_0 = *&v7;
    objc_storeStrong(&businessInfoViewDescriptionTextFont_sCustomTextFontName_businessInfoViewDescriptionTextFont_0, v9);
  }

  v15 = businessInfoViewDescriptionTextFont_sBehavior_0;
  v16 = businessInfoViewDescriptionTextFont_sBehavior_0;

  return v15;
}

- (id)businessInfoViewTitleLabelFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(businessInfoViewTitleLabelFont_sContentSizeCategory_businessInfoViewTitleLabelFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatebusinessInfoViewTitleLabelFont](self, "ckShouldUpdatebusinessInfoViewTitleLabelFont") || v11 || businessInfoViewTitleLabelFont_sIsIncreaseContrastEnabled_businessInfoViewTitleLabelFont_0 != v4 || businessInfoViewTitleLabelFont_sIsBoldTextEnabled_businessInfoViewTitleLabelFont_0 != IsBoldTextEnabled || (v12 = businessInfoViewTitleLabelFont_sTextFontSize_businessInfoViewTitleLabelFont_0, *&businessInfoViewTitleLabelFont_sTextFontSize_businessInfoViewTitleLabelFont_0 != v6) || (v12 = businessInfoViewTitleLabelFont_sCustomTextFontSize_businessInfoViewTitleLabelFont_0, *&businessInfoViewTitleLabelFont_sCustomTextFontSize_businessInfoViewTitleLabelFont_0 != v7) || ([businessInfoViewTitleLabelFont_sCustomTextFontName_businessInfoViewTitleLabelFont_0 isEqualToString:{v10, *&businessInfoViewTitleLabelFont_sCustomTextFontSize_businessInfoViewTitleLabelFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD78], *&v12}];
    v14 = businessInfoViewTitleLabelFont_sBehavior_0;
    businessInfoViewTitleLabelFont_sBehavior_0 = v13;

    objc_storeStrong(&businessInfoViewTitleLabelFont_sContentSizeCategory_businessInfoViewTitleLabelFont_0, v3);
    businessInfoViewTitleLabelFont_sIsIncreaseContrastEnabled_businessInfoViewTitleLabelFont_0 = v4;
    businessInfoViewTitleLabelFont_sIsBoldTextEnabled_businessInfoViewTitleLabelFont_0 = IsBoldTextEnabled;
    businessInfoViewTitleLabelFont_sTextFontSize_businessInfoViewTitleLabelFont_0 = *&v6;
    businessInfoViewTitleLabelFont_sCustomTextFontSize_businessInfoViewTitleLabelFont_0 = *&v7;
    objc_storeStrong(&businessInfoViewTitleLabelFont_sCustomTextFontName_businessInfoViewTitleLabelFont_0, v9);
  }

  v15 = businessInfoViewTitleLabelFont_sBehavior_0;
  v16 = businessInfoViewTitleLabelFont_sBehavior_0;

  return v15;
}

- (unint64_t)detailsSectionCount
{
  if (detailsSectionCount_once_0 != -1)
  {
    [CKUIBehaviorMac detailsSectionCount];
  }

  if (detailsSectionCount_sBehavior_0)
  {
    return 17;
  }

  else
  {
    return 0;
  }
}

- (id)syncProgressLabelFont
{
  v3 = CKPreferredContentSizeCategory();
  v4 = UIAccessibilityDarkerSystemColorsEnabled();
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v6 = CKUserPreferenceFontSize();
  v7 = CKAccessibilityCustomTextFontSize();
  v8 = CKAccessibilityCustomTextFontName();
  if ([(__CFString *)v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"None";
  }

  v10 = v9;
  v11 = UIContentSizeCategoryCompareToCategory(syncProgressLabelFont_sContentSizeCategory_syncProgressLabelFont_0, v3);
  if (-[CKUIBehaviorMac ckShouldUpdatesyncProgressLabelFont](self, "ckShouldUpdatesyncProgressLabelFont") || v11 || syncProgressLabelFont_sIsIncreaseContrastEnabled_syncProgressLabelFont_0 != v4 || syncProgressLabelFont_sIsBoldTextEnabled_syncProgressLabelFont_0 != IsBoldTextEnabled || (v12 = syncProgressLabelFont_sTextFontSize_syncProgressLabelFont_0, *&syncProgressLabelFont_sTextFontSize_syncProgressLabelFont_0 != v6) || (v12 = syncProgressLabelFont_sCustomTextFontSize_syncProgressLabelFont_0, *&syncProgressLabelFont_sCustomTextFontSize_syncProgressLabelFont_0 != v7) || ([syncProgressLabelFont_sCustomTextFontName_syncProgressLabelFont_0 isEqualToString:{v10, *&syncProgressLabelFont_sCustomTextFontSize_syncProgressLabelFont_0}] & 1) == 0)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDD88], *&v12}];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:10.0];

    v15 = syncProgressLabelFont_sBehavior_0;
    syncProgressLabelFont_sBehavior_0 = v14;

    objc_storeStrong(&syncProgressLabelFont_sContentSizeCategory_syncProgressLabelFont_0, v3);
    syncProgressLabelFont_sIsIncreaseContrastEnabled_syncProgressLabelFont_0 = v4;
    syncProgressLabelFont_sIsBoldTextEnabled_syncProgressLabelFont_0 = IsBoldTextEnabled;
    syncProgressLabelFont_sTextFontSize_syncProgressLabelFont_0 = *&v6;
    syncProgressLabelFont_sCustomTextFontSize_syncProgressLabelFont_0 = *&v7;
    objc_storeStrong(&syncProgressLabelFont_sCustomTextFontName_syncProgressLabelFont_0, v9);
  }

  v16 = syncProgressLabelFont_sBehavior_0;
  v17 = syncProgressLabelFont_sBehavior_0;

  return v16;
}

- (id)syncBarHairlineColor
{
  if (syncBarHairlineColor_once_0 != -1)
  {
    [CKUIBehaviorMac syncBarHairlineColor];
  }

  v3 = syncBarHairlineColor_sBehavior_0;

  return v3;
}

void __39__CKUIBehaviorMac_syncBarHairlineColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] separatorColor];
  v1 = syncBarHairlineColor_sBehavior_0;
  syncBarHairlineColor_sBehavior_0 = v0;
}

- (int64_t)syncBarBlurEffectStyle
{
  if (syncBarBlurEffectStyle_once_0 != -1)
  {
    [CKUIBehaviorMac syncBarBlurEffectStyle];
  }

  if (syncBarBlurEffectStyle_sBehavior_0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (double)messageHighlightButtonGlyphSymbolPointSize
{
  if (messageHighlightButtonGlyphSymbolPointSize_once_0 != -1)
  {
    [CKUIBehaviorMac messageHighlightButtonGlyphSymbolPointSize];
  }

  return *&messageHighlightButtonGlyphSymbolPointSize_sBehavior_0;
}

- (NSDirectionalEdgeInsets)collaborationOptionsPopoverInsets
{
  if (collaborationOptionsPopoverInsets_once != -1)
  {
    [CKUIBehaviorMac collaborationOptionsPopoverInsets];
  }

  v2 = *&collaborationOptionsPopoverInsets_sBehavior_0;
  v3 = *&collaborationOptionsPopoverInsets_sBehavior_1;
  v4 = *&collaborationOptionsPopoverInsets_sBehavior_2;
  v5 = *&collaborationOptionsPopoverInsets_sBehavior_3;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

void __52__CKUIBehaviorMac_collaborationOptionsPopoverInsets__block_invoke()
{
  collaborationOptionsPopoverInsets_sBehavior_0 = 0x4028000000000000;
  collaborationOptionsPopoverInsets_sBehavior_1 = 0x4028000000000000;
  collaborationOptionsPopoverInsets_sBehavior_2 = 0x4028000000000000;
  collaborationOptionsPopoverInsets_sBehavior_3 = 0x4028000000000000;
}

- (UIEdgeInsets)sendLaterEditViewInsets
{
  if (sendLaterEditViewInsets_once != -1)
  {
    [CKUIBehaviorMac sendLaterEditViewInsets];
  }

  v2 = *&sendLaterEditViewInsets_sBehavior_0;
  v3 = *&sendLaterEditViewInsets_sBehavior_1;
  v4 = *&sendLaterEditViewInsets_sBehavior_2;
  v5 = *&sendLaterEditViewInsets_sBehavior_3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

void __42__CKUIBehaviorMac_sendLaterEditViewInsets__block_invoke()
{
  sendLaterEditViewInsets_sBehavior_0 = 0x402E000000000000;
  sendLaterEditViewInsets_sBehavior_1 = 0x4034000000000000;
  sendLaterEditViewInsets_sBehavior_2 = 0x4034000000000000;
  sendLaterEditViewInsets_sBehavior_3 = 0x4034000000000000;
}

@end
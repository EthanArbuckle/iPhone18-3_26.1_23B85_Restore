@interface CKMessageEntryView
+ (CKMessageEntryView)currentEntryView;
+ (UIEdgeInsets)contentViewInsetsForMarginInsets:(UIEdgeInsets)a3 shouldShowPluginButtons:(BOOL)a4 shouldShowCharacterCount:(BOOL)a5 shouldCoverSendButton:(BOOL)a6 isStewieMode:(BOOL)a7;
+ (UIEdgeInsets)coverViewInsetsForMarginInsets:(UIEdgeInsets)a3 shouldShowPluginButtons:(BOOL)a4 shouldShowCharacterCount:(BOOL)a5 shouldCenterCharacterCount:(BOOL *)a6 isStewieMode:(BOOL)a7;
- (BOOL)_canSend;
- (BOOL)_isApplePayCashInShelf;
- (BOOL)_isDictationEnabled;
- (BOOL)_isExceedingByteLimitForService:(id)a3;
- (BOOL)_isPresentingInPopover;
- (BOOL)_shouldEnablePlusButton;
- (BOOL)_shouldMarkForLayoutAfterPropertyUpdate;
- (BOOL)_shouldShrinkEntryViewForSendMenuPresentation;
- (BOOL)_shouldUseConcentricPadding;
- (BOOL)_shouldUseDarkAppearanceFromTraitCollection:(id)a3;
- (BOOL)_shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker;
- (BOOL)audioRecordingIsInEntryView;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)hasRecording;
- (BOOL)isInPencilMode;
- (BOOL)isRecording;
- (BOOL)isSendButtonEnabled;
- (BOOL)isShowingAudioRecordingView;
- (BOOL)messageEntryContentView:(id)a3 canPerformDictationAction:(id)a4;
- (BOOL)messageEntryContentView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)messageEntryContentView:(id)a3 shouldInsertMediaObjects:(id)a4;
- (BOOL)messageEntryContentViewShouldAllowLinkCustomization:(id)a3;
- (BOOL)messageEntryContentViewShouldBeDisabled:(id)a3;
- (BOOL)messageEntryContentViewShouldBeginEditing:(id)a3;
- (BOOL)messageEntryContentViewShouldResignFirstResponder:(id)a3;
- (BOOL)pluginButtonsEnabled;
- (BOOL)sendButtonEnabled;
- (BOOL)shouldAllowSendWhenSendButtonDisabled;
- (BOOL)shouldHideBackgroundView;
- (BOOL)shouldRecordForService:(id)a3;
- (BOOL)shouldReloadBackgroundView;
- (BOOL)shouldShowAudioButton;
- (CGRect)_computedFinalCoverFrameRectForContentSize:(CGSize)a3;
- (CGRect)activeKeyboardHeight;
- (CGRect)anchorRect;
- (CGRect)audioRecordingPillViewFrameInThrowViewCoordinates;
- (CGRect)coverFrameThatFitsInSize:(CGSize)a3;
- (CGRect)sendButtonFrameInScreenCoordinates;
- (CGSize)characterCountSize;
- (CGSize)inputButtonSize;
- (CGSize)messageEntryContentViewMaxShelfPluginViewSize:(id)a3;
- (CGSize)sendButtonSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKComposition)composition;
- (CKEntryViewButton)keyboardButton;
- (CKMessageEntryView)initWithFrame:(CGRect)a3 marginInsets:(UIEdgeInsets)a4 shouldAllowImpact:(BOOL)a5 shouldShowSendButton:(BOOL)a6 shouldShowSubject:(BOOL)a7 shouldShowPluginButtons:(BOOL)a8 shouldShowCharacterCount:(BOOL)a9 traitCollection:(id)a10 shouldDisableAttachments:(BOOL)a11 shouldUseNonEmojiKeyboard:(BOOL)a12 shouldUseNonHandwritingKeyboard:(BOOL)a13 shouldDisableKeyboardStickers:(BOOL)a14 shouldAllowPollSuggestions:(BOOL)a15 translationLanguage:(id)a16;
- (CKMessageEntryViewAudioMessageAppDelegate)audioMessageAppDelegate;
- (CKMessageEntryViewDelegate)delegate;
- (CKMessageEntryViewInputDelegate)inputDelegate;
- (CKSendLaterPluginInfo)sendLaterPluginInfo;
- (UIEdgeInsets)adjustedCoverInsets;
- (UIEdgeInsets)coverInsets;
- (UIEdgeInsets)marginInsets;
- (UIEdgeInsets)safeAreaInsets;
- (_NSRange)rangeOfTappedMention;
- (_UIClickInteractionDelegate)clickInteractionDelegate;
- (char)_balloonColor;
- (char)_sendButtonColor;
- (char)sendButtonColor;
- (double)_bottomInsets;
- (double)_concentricPadding;
- (double)_leftInsets;
- (double)_rightInsets;
- (double)balloonMaxWidthForMessageEntryRichTextView:(id)a3;
- (double)bottomInsetForAppCard;
- (double)calculateOneLinePlaceHolderCenterY:(double)a3;
- (double)coverViewWidth;
- (double)placeholderHeight;
- (double)powerLevelForAudioMessageRecordingView:(id)a3;
- (id)_currentInputDelegate;
- (id)_placeholderTextForConversation:(id)a3;
- (id)_serviceForEntryViewForConversation:(id)a3;
- (id)audioRecordingPillViewSnapshot;
- (id)createDictationButton;
- (id)gradientReferenceViewForMessageEntryContentView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)inputAccessoryViewBackdropColor;
- (id)inputAccessoryViewBackdropEffects;
- (id)pasteBoardTextFromComposition:(id)a3;
- (id)suggestionView:(id)a3 entityAtIndex:(unint64_t)a4;
- (id)suggestionView:(id)a3 indexPathOfEntityWithIdentifier:(id)a4;
- (unint64_t)numberOfSuggestionsInSuggestionView:(id)a3 forSection:(unint64_t)a4;
- (void)_animateMessageEditingBlurOverlayViewIn;
- (void)_animateMessageEditingBlurOverlayViewOut;
- (void)_configureForDisplayModeRecorded;
- (void)_configureForDisplayModeRecording;
- (void)_configureForDisplayModeSending;
- (void)_configureForDisplayModeText;
- (void)_contactLimitsChanged:(id)a3;
- (void)_deleteTemporaryAudioFile;
- (void)_dictationAvailabilityDidChange;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handlePlusButtonTouchInside:(id)a3;
- (void)_handleSendAudioMessage;
- (void)_isDictationEnabled;
- (void)_layoutAudioButtonWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4;
- (void)_layoutBackgroundView;
- (void)_layoutContentViewAndAudioRecordingViewWithCoverFrame:(CGRect)a3;
- (void)_layoutDictationButtonWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4;
- (void)_layoutHintViewWithCoverFrame:(CGRect)a3;
- (void)_layoutSendButtonAndCharacterCountWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4;
- (void)_overrideUserInterfaceStyleForEntryViewStyleIfNeeded:(int64_t)a3;
- (void)_setupAudioMessageRecordingView;
- (void)_showVisionAppsMenu;
- (void)_swipeDownGestureRecognized:(id)a3;
- (void)_trackAudioMessageRecordingStarted;
- (void)_trackAudioMessageSentWithComposition:(id)a3;
- (void)_updateSendMenuPresentationState:(int64_t)a3;
- (void)_updateSendMenuPresentationStatePopoverSendMenu:(int64_t)a3;
- (void)_updateSendMenuPresentationStateVariableSendMenu:(int64_t)a3;
- (void)adjustContentClipViewForSendLater;
- (void)appSelectionInterfaceSelectedItem:(id)a3;
- (void)applicationWillResignActive;
- (void)applyDefaultGlass;
- (void)applySendAnimationGlass;
- (void)audioButtonLongPressed:(id)a3;
- (void)audioController:(id)a3 layoutViewsForScrubbingTime:(double)a4 mediaObject:(id)a5;
- (void)audioController:(id)a3 mediaObjectDidFinishPlaying:(id)a4;
- (void)audioController:(id)a3 mediaObjectProgressDidChange:(id)a4 currentTime:(double)a5 duration:(double)a6;
- (void)audioControllerDidStop:(id)a3;
- (void)audioMessageRecordingViewDidCancel:(id)a3;
- (void)audioMessageRecordingViewDidPause:(id)a3;
- (void)audioMessageRecordingViewDidPlay:(id)a3;
- (void)audioMessageRecordingViewDidResume:(id)a3;
- (void)audioMessageRecordingViewDidSend:(id)a3;
- (void)audioMessageRecordingViewDidStartScrubbing:(id)a3;
- (void)audioMessageRecordingViewDidStopScrubbing:(id)a3 atTime:(double)a4;
- (void)audioMessageRecordingViewDidUpdateScrubbing:(id)a3 atTime:(double)a4;
- (void)audioRecorderDidStartRecording:(id)a3;
- (void)audioRecorderDidUpdateAveragePower:(float)a3;
- (void)audioRecorderRecordingDidChange:(id)a3;
- (void)audioRecorderRecordingDidFail:(id)a3;
- (void)cancelAudioMessage;
- (void)clearAudioRecordingUI;
- (void)compositionWithAcceptedAutocorrection:(id)a3;
- (void)configureForDisplayMode:(unint64_t)a3;
- (void)configurePlusButtonFrameWithOneLinePlaceHolderCenterY:(double)a3;
- (void)configurePocketInteractionForScrollView:(id)a3;
- (void)configureTextViewWithInputContextHistoryFromTranscript;
- (void)conversationPreferredServiceChanged:(id)a3;
- (void)dealloc;
- (void)deferredSetup;
- (void)dictationButtonTapped:(id)a3;
- (void)didMoveToWindow;
- (void)didSelectPlusButton:(id)a3;
- (void)disableRotationWhileRecordingAudioMessage;
- (void)handleContentViewChangeWithCompletion:(id)a3;
- (void)handleLongPress:(id)a3;
- (void)invalidateCompositionForReason:(int64_t)a3;
- (void)keyCommandSend:(id)a3;
- (void)layoutSubviews;
- (void)messageEntryContentView:(id)a3 didAddPluginEntryViewControllerToViewHierarchy:(id)a4;
- (void)messageEntryContentView:(id)a3 didReceiveInputSuggestion:(id)a4;
- (void)messageEntryContentView:(id)a3 didRequestGenerativeContentForImageURL:(id)a4;
- (void)messageEntryContentView:(id)a3 didStagePluginPayload:(id)a4;
- (void)messageEntryContentView:(id)a3 didTapMediaObject:(id)a4;
- (void)messageEntryContentView:(id)a3 updatePluginSendEnablementTo:(BOOL)a4;
- (void)messageEntryContentView:(id)a3 willAddPluginEntryViewControllerToViewHierarchy:(id)a4;
- (void)messageEntryContentViewCancelWasTapped:(id)a3 shelfPluginPayload:(id)a4;
- (void)messageEntryContentViewDidBeginEditing:(id)a3 wasAlreadyActive:(BOOL)a4;
- (void)messageEntryContentViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5;
- (void)messageEntryContentViewDidChangePencilMode:(id)a3;
- (void)messageEntryContentViewDidDismissCustomizationPicker:(id)a3;
- (void)messageEntryContentViewDidEndEditing:(id)a3;
- (void)messageEntryContentViewDidPresentCustomizationPicker:(id)a3;
- (void)messageEntryContentViewDidTapHandwritingKey:(id)a3;
- (void)messageEntryContentViewSendLaterContentsUpdated:(id)a3;
- (void)messageEntryContentViewSendLaterPluginInfoUpdated:(id)a3;
- (void)messageEntryContentViewShelfDidChange:(id)a3;
- (void)messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)a3;
- (void)messageEntryContentViewTranslationDidChange:(id)a3;
- (void)messageEntryContentViewWantsSendLaterPickerPresented:(id)a3;
- (void)messageEntryContentViewWasTapped:(id)a3 isLongPress:(BOOL)a4;
- (void)messageEntryContentViewWillDismissCustomizationPicker:(id)a3;
- (void)messageEntryContentViewWillPresentCustomizationPicker:(id)a3;
- (void)moveFloatingCursorsToOrigin;
- (void)optionDownArrowClicked:(id)a3;
- (void)optionUpArrowClicked:(id)a3;
- (void)plusButtonLongPressed:(id)a3;
- (void)plusButtonTouchCancel:(id)a3;
- (void)plusButtonTouchDown:(id)a3;
- (void)plusButtonTouchDragEnter:(id)a3;
- (void)plusButtonTouchDragExit:(id)a3;
- (void)plusButtonTouchUpOutside:(id)a3;
- (void)popoverSendMenuFrameChanged;
- (void)prepareForResizeAnimationIfNeeded;
- (void)safeAreaInsetsDidChange;
- (void)sendAudioMessage;
- (void)sendCurrentLocationMessage;
- (void)sendEnableRotationAfterRecordingToDelegate;
- (void)sendMenuPopoverMetricsDidChange:(id)a3;
- (void)setAudioComposition:(id)a3;
- (void)setBackdropGroupName:(id)a3;
- (void)setCharacterCountHidden:(BOOL)a3;
- (void)setCharacterCountString;
- (void)setComposingRecipient:(BOOL)a3;
- (void)setComposition:(id)a3 forceUpdateText:(BOOL)a4;
- (void)setConversation:(id)a3;
- (void)setEntryViewSmoothnessForMorphingAppearance;
- (void)setEntryViewTraitCollection:(id)a3 resetStyle:(BOOL)a4;
- (void)setFailedRecipients:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setKeyboardVisible:(BOOL)a3;
- (void)setMarginInsets:(UIEdgeInsets)a3;
- (void)setSendLaterPluginInfo:(id)a3 animated:(BOOL)a4;
- (void)setShouldBlurForMessageEditing:(BOOL)a3;
- (void)setShouldHideBackgroundView:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4;
- (void)setUnreachableEmergencyRecipient:(BOOL)a3;
- (void)setupAudioMessageQuickSendViewAndStopRecording;
- (void)showEffectPicker;
- (void)showHintWithReason:(int64_t)a3;
- (void)startRecording;
- (void)startRecordingForAudioButtonInEntryView;
- (void)startRecordingForRaiseGesture;
- (void)stopRecording;
- (void)stopRecordingForRaiseGestureWithFailure:(BOOL)a3;
- (void)textEffectsWindowOffsetDidChange:(id)a3;
- (void)touchUpInsideSendButton:(id)a3;
- (void)updateAllowPollSuggestions;
- (void)updateAudioMessageRecordingAvailability;
- (void)updateBackgroundView;
- (void)updateEntryView;
- (void)updateKnockoutView;
- (void)updateShouldHideCaretForTextViews;
@end

@implementation CKMessageEntryView

- (UIEdgeInsets)safeAreaInsets
{
  v22.receiver = self;
  v22.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v22 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (v6 > 0.0 || v3 > 0.0)
  {
    v11 = [(CKMessageEntryView *)self window];
    v12 = [v11 windowScene];

    if (v12 && ([v12 interfaceOrientation] - 3) <= 1)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      [v13 landscapeKeyboardInsets];
      v15 = v14;
      v17 = v16;

      if (v7 > 0.0)
      {
        v7 = v15;
      }

      if (v10 > 0.0)
      {
        v10 = v17;
      }
    }
  }

  v18 = v5;
  v19 = v7;
  v20 = v9;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v5 safeAreaInsetsDidChange];
  [(CKMessageEntryView *)self safeAreaInsets];
  if (vabdd_f64(v3, self->_previousBottomSafeAreaInset) > 0.001)
  {
    self->_previousBottomSafeAreaInset = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messageEntryViewSafeAreaInsetsDidChange:self];
  }
}

- (UIEdgeInsets)adjustedCoverInsets
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
    [(CKMessageEntryView *)self _leftInsets];
    v9 = v6 + v8;
    v10 = [(CKMessageEntryView *)self plusButton];

    if (v10)
    {
      v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v12 = [v11 isEntryViewRefreshEnabled];

      if (v12)
      {
        +[CKGlassSendMenuButton buttonSize];
      }

      else
      {
        [(CKMessageEntryView *)self inputButtonSize];
      }

      v33 = v13;
      v34 = +[CKUIBehavior sharedBehaviors];
      [v34 entryViewPlusButtonToTextFieldPadding];
      v9 = v9 + v33 + v35;
    }

    v36 = *v5;
    v37 = v5[2];
    [(CKMessageEntryView *)self _rightInsets];
    v32 = v7 + v38;
    v39 = [(CKMessageEntryView *)self emojiButton];

    if (v39)
    {
      v40 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v41 = [v40 isEntryViewRefreshEnabled];

      v42 = [(CKMessageEntryView *)self emojiButton];
      [v42 bounds];
      if (v41)
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 + -3.0;
      }

      v45 = +[CKUIBehavior sharedBehaviors];
      [v45 entryViewEmojiButtonToTextFieldPadding];
      v32 = v32 + v44 + v46;
    }

    [(CKMessageEntryView *)self _bottomInsets];
    v19 = v37 + v47;
    v48 = +[CKUIBehavior sharedBehaviors];
    [v48 entryViewVerticalCoverInsets];
    v15 = v36 + v49;
  }

  else
  {
    [(CKMessageEntryView *)self coverInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (CKIsRunningInMacCatalyst())
    {
      v22 = [(CKMessageEntryView *)self emojiButton];
      [v22 bounds];
      v24 = v23 + -3.0;

      v25 = [(CKMessageEntryView *)self plusButton];
      if (v25)
      {
        v26 = [(CKMessageEntryView *)self plusButton];
        [v26 frame];
        v28 = v27;
      }

      else
      {
        v28 = 0.0;
      }

      v50 = +[CKUIBehavior sharedBehaviors];
      [v50 minTranscriptMarginInsets];
      v52 = v24 + v51;
      v53 = +[CKUIBehavior sharedBehaviors];
      [v53 entryViewCoverHorizontalMargin];
      v32 = v52 + v54;

      v55 = +[CKUIBehavior sharedBehaviors];
      [v55 minTranscriptMarginInsets];
      v57 = v28 + v56;
      v58 = +[CKUIBehavior sharedBehaviors];
      [v58 entryViewCoverHorizontalMargin];
      v9 = v57 + v59;

      v60 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(v58) = [v60 isModernSplitViewControllerEnabled];

      if (v58)
      {
        [(CKMessageEntryView *)self safeAreaInsets];
        v32 = v32 + v61;
        v9 = v9 + v62;
      }
    }

    else
    {
      [(CKMessageEntryView *)self bottomInsetForAppCard];
      v19 = v19 + v29;
      [(CKMessageEntryView *)self safeAreaInsets];
      v9 = v17 + v30;
      [(CKMessageEntryView *)self safeAreaInsets];
      v32 = v21 + v31;
    }
  }

  v63 = v15;
  v64 = v9;
  v65 = v19;
  v66 = v32;
  result.right = v66;
  result.bottom = v65;
  result.left = v64;
  result.top = v63;
  return result;
}

- (double)_leftInsets
{
  [(CKMessageEntryView *)self coverInsets];
  v4 = v3;
  [(CKMessageEntryView *)self safeAreaInsets];
  v6 = v5;
  if ([(CKMessageEntryView *)self _shouldUseConcentricPadding])
  {
    [(CKMessageEntryView *)self _concentricPadding];
  }

  else
  {
    [(CKMessageEntryView *)self marginInsets];
    v7 = v8;
  }

  return v4 + v6 + v7;
}

- (UIEdgeInsets)coverInsets
{
  top = self->_coverInsets.top;
  left = self->_coverInsets.left;
  bottom = self->_coverInsets.bottom;
  right = self->_coverInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_shouldUseConcentricPadding
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 entryViewAlwaysUsesConcentricPadding];

  if (v4)
  {
    return 1;
  }

  v6 = [(CKMessageEntryView *)self inputDelegate];
  v7 = [v6 isPresentingAppCardForMessageEntryView:self];

  v8 = [(CKMessageEntryView *)self inputDelegate];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 isPresentingBarelyVisibleAppCardForMessageEntryView:self];

    return v10;
  }

  else
  {
    v11 = [v8 messageEntryViewShouldVerticallyInsetForPresentedAppCard:self];

    result = 0;
    if (!self->_keyboardVisible && (v11 & 1) == 0)
    {
      return ![(CKMessageEntryView *)self _shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker];
    }
  }

  return result;
}

- (double)_rightInsets
{
  [(CKMessageEntryView *)self coverInsets];
  v4 = v3;
  [(CKMessageEntryView *)self safeAreaInsets];
  v6 = v5;
  if ([(CKMessageEntryView *)self _shouldUseConcentricPadding])
  {
    [(CKMessageEntryView *)self _concentricPadding];
  }

  else
  {
    [(CKMessageEntryView *)self marginInsets];
    v7 = v8;
  }

  return v4 + v6 + v7;
}

- (double)_concentricPadding
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 entryViewConcentricPadding];
  v4 = v3;

  return v4;
}

- (CKMessageEntryViewInputDelegate)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (BOOL)_shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKMessageEntryView *)self contentView];
  v6 = [v5 textView];

  if (![v6 allowsTextAnimations] || -[UITraitCollection userInterfaceIdiom](self->_entryViewTraitCollection, "userInterfaceIdiom") || (IMIsRunningInMessagesExtension() & 1) != 0)
  {

    return 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CKMessageEntryView__shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker__block_invoke;
  block[3] = &unk_1E72EBA18;
  v9 = v6;
  v11 = v9;
  if (_shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker_onceToken != -1)
  {
    dispatch_once(&_shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker_onceToken, block);
  }

  v7 = _shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker_respondsToIsTextFormattingInProgress == 1 && [v9 performSelector:sel__isTextFormattingInProgress] != 0;

  return v7;
}

- (double)_bottomInsets
{
  [(CKMessageEntryView *)self coverInsets];
  v4 = v3;
  if ([(CKMessageEntryView *)self _shouldUseConcentricPadding])
  {
    [(CKMessageEntryView *)self _concentricPadding];
    return v4 + v5;
  }

  else
  {
    [(CKMessageEntryView *)self bottomInsetForAppCard];
    v8 = v4 + v7;
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 entryViewVerticalCoverInsets];
    v6 = v8 + v10;
  }

  return v6;
}

- (void)layoutSubviews
{
  [CKPPTSubTest start:@"CKMessageEntryView Layoutsubviews"];
  v74.receiver = self;
  v74.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v74 layoutSubviews];
  [(CKMessageEntryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKMessageEntryView *)self messageEditingBlurOverlayView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKMessageEntryView *)self inputButtonContainerView];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isEntryViewRefreshEnabled];

  if (v14)
  {
    [(CKMessageEntryView *)self coverFrameThatFitsInSize:v8, v10];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(CKMessageEntryView *)self contentView];
    [v23 setMaxContentWidthWhenExpanded:v20];
  }

  else
  {
    [(CKMessageEntryView *)self safeAreaInsets];
    [(CKMessageEntryView *)self coverFrameThatFitsInSize:v8, v10 - v24];
    v16 = v25;
    v18 = v26;
    v20 = v27;
    v22 = v28;
  }

  [(CKMessageEntryView *)self calculateOneLinePlaceHolderCenterY:v10];
  v30 = v29;
  [(CKMessageEntryView *)self configurePlusButtonFrameWithOneLinePlaceHolderCenterY:?];
  v31 = [(CKMessageEntryView *)self contentClipView];
  [v31 anchorPoint];
  v33 = v16 + v20 * v32;
  v35 = v18 + v22 * v34;
  [v31 setBounds:{0.0, 0.0, v20, v22}];
  [v31 setCenter:{v33, v35}];
  v36 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v37 = [v36 isEntryViewRefreshEnabled];

  if ((v37 & 1) == 0)
  {
    v38 = [(CKMessageEntryView *)self knockoutView];
    [v38 setFrame:{0.0, 0.0, v20, v22}];

    v39 = [v31 layer];
    v40 = +[CKUIBehavior sharedBehaviors];
    v41 = [v40 theme];
    v42 = [v41 entryFieldBorderColor];
    [v39 setBorderColor:{objc_msgSend(v42, "CGColor")}];

    v43 = +[CKUIBehavior sharedBehaviors];
    v44 = [v43 theme];
    v45 = [v44 dashedEntryFieldBorderColor];
    v46 = [v45 CGColor];
    v47 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
    [v47 setStrokeColor:v46];
  }

  v48 = [(CKMessageEntryView *)self contentView];
  [v48 setFrame:{0.0, 0.0, v20, v22}];
  v49 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v50 = [v49 isEntryViewRefreshEnabled];

  v51 = +[CKUIBehavior sharedBehaviors];
  if (v50)
  {
    [v51 entryContentViewTextLeftOffset];
    v53 = v20 - v52;
    [v48 sendButtonTextInsetWidth];
    v55 = v53 - v54;
    v56 = +[CKUIBehavior sharedBehaviors];
    [v56 bubbleLeftInsetForQuicktationInEntryView];
    v58 = v55 - v57;
  }

  else
  {
    [v51 bubbleLeftInsetForQuicktationInEntryView];
    v60 = v20 + -8.0 - v59;
    v56 = [(CKMessageEntryView *)self sendButton];
    [v56 frame];
    v62 = v60 - v61;
    v63 = +[CKUIBehavior sharedBehaviors];
    [v63 entryViewSendButtonCoverSpace];
    v58 = v62 - v64 + -3.0;
  }

  [v48 setPlaceHolderWidth:v58];
  [v48 setMaxPluginShelfViewWidth:v20];
  [v48 setMaxPreviewContentWidthWhenExpanded:v20];
  v65 = v20;
  if (CKIsRunningInMacCatalyst())
  {
    v66 = [(CKMessageEntryView *)self composition];
    v67 = [v66 hasContent];

    v65 = v20;
    if ((v67 & 1) == 0)
    {
      v68 = [(CKMessageEntryView *)self audioButton];
      [v68 frame];
      v65 = v20 - v69;
    }
  }

  [v48 setMaxContentWidthWhenExpanded:v65];
  [(CKMessageEntryView *)self updateShouldHideCaretForTextViews];
  if (+[CKMessageEntryContentView _platformNeedsConservativeLayoutUpdates])
  {
    v70 = [v48 textView];
    [v70 setNeedsLayout];

    v71 = MEMORY[0x1E69DD250];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __36__CKMessageEntryView_layoutSubviews__block_invoke;
    v72[3] = &unk_1E72EBA18;
    v73 = v48;
    [v71 performWithoutAnimation:v72];
  }

  [(CKMessageEntryView *)self _layoutSendButtonAndCharacterCountWithCoverFrame:v16 oneLinePlaceHolderCenterY:v18, v20, v22, v30];
  [(CKMessageEntryView *)self _layoutAudioButtonWithCoverFrame:v16 oneLinePlaceHolderCenterY:v18, v20, v22, v30];
  [(CKMessageEntryView *)self _layoutDictationButtonWithCoverFrame:v16 oneLinePlaceHolderCenterY:v18, v20, v22, v30];
  [(CKMessageEntryView *)self _layoutKeyboardButtonWithCoverFrame:v16 oneLinePlaceHolderCenterY:v18, v20, v22, v30];
  [(CKMessageEntryView *)self _layoutHintViewWithCoverFrame:v16, v18, v20, v22];
  [(CKMessageEntryView *)self _layoutContentViewAndAudioRecordingViewWithCoverFrame:v16, v18, v20, v22];
  [(CKMessageEntryView *)self _layoutEmojiButtonWithOneLinePlaceholderCenterY:v30];
  [(CKMessageEntryView *)self _layoutBackgroundView];
  [(CKMessageEntryView *)self adjustContentClipViewForSendLater];
  [CKPPTSubTest stop:@"CKMessageEntryView Layoutsubviews"];
}

- (void)_layoutBackgroundView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if ((v4 & 1) == 0)
  {
    [(CKMessageEntryView *)self bounds];
    v6 = v5;
    [(CKMessageEntryView *)self bounds];
    v8 = v7;
    v9 = [(CKMessageEntryView *)self backgroundView];
    [v9 setFrame:{0.0, 0.0, v6, v8}];
  }
}

- (void)adjustContentClipViewForSendLater
{
  v57[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKMessageEntryView *)self sendLaterPluginInfo];

    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 entryFieldCoverLineWidth];
    v8 = v7;
    if (v5)
    {
      v9 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v9 setLineWidth:v8];

      v10 = [(CKMessageEntryView *)self contentClipView];
      v11 = [v10 layer];
      [v11 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v20 lineWidth];
      v22 = v21;
      v23 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v23 lineWidth];
      v25 = v24;
      v59.origin.x = v13;
      v59.origin.y = v15;
      v59.size.width = v17;
      v59.size.height = v19;
      v60 = CGRectInset(v59, v22, v25);
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;

      v30 = MEMORY[0x1E69DC728];
      v31 = [(CKMessageEntryView *)self contentClipView];
      v32 = [v31 layer];
      [v32 cornerRadius];
      v34 = [v30 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v33}];
      v35 = [v34 CGPath];
      v36 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v36 setPath:v35];

      v37 = [(CKMessageEntryView *)self contentClipView];
      v38 = [v37 layer];
      [v38 setBorderWidth:0.0];

      v39 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      v40 = [v39 lineDashPattern];
      v41 = [v40 objectAtIndexedSubscript:0];
      [v41 doubleValue];
      v43 = v42;
      v44 = [(CKMessageEntryView *)self contentClipView];
      v45 = [v44 layer];
      [v45 cornerRadius];
      v47 = CKDashSpacingForCGRect(x, y, width, height, v43, v46);

      v48 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      v49 = [v48 lineDashPattern];
      v50 = [v49 objectAtIndexedSubscript:0];
      v57[0] = v50;
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
      v57[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      v53 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v53 setLineDashPattern:v52];
    }

    else
    {
      v54 = [(CKMessageEntryView *)self contentClipView];
      v55 = [v54 layer];
      [v55 setBorderWidth:v8];

      v56 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [v56 setLineWidth:0.0];
    }
  }
}

- (void)updateShouldHideCaretForTextViews
{
  v3 = [(CKMessageEntryView *)self inputDelegate];
  v4 = [v3 messageEntryShouldHideCaret:self];

  v7 = [(CKMessageEntryView *)self contentView];
  v5 = [v7 textView];
  [v5 setHideCaret:v4];

  v6 = [v7 subjectView];
  [v6 setHideCaret:v4];
}

- (double)placeholderHeight
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 entryViewlayoutMetrics];
  if ([(CKMessageEntryView *)self shouldShowSubject])
  {
    [v4 defaultSubjectEntryViewHeight];
  }

  else
  {
    [v4 defaultEntryViewHeight];
  }

  v6 = v5;
  v7 = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (v7)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 messageEntryContentViewSendLaterInsets];
    v10 = v9;
    v12 = v11;

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 entryViewMaxSendLaterHeight];
    v6 = v6 + v10 + v12 + v14;
  }

  [(CKMessageEntryView *)self adjustedCoverInsets];
  v16 = v15;
  v18 = v17;
  [v3 entryViewVerticalCoverInsets];
  v20 = v18 - v19;
  v22 = v16 - v21;
  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isEntryViewRefreshEnabled];

  if (v24)
  {
    v25 = v20 + v6 + v22;
  }

  else
  {
    [(CKMessageEntryView *)self safeAreaInsets];
    v25 = v20 + v6 + v22 + v26;
  }

  v27 = ceil(v25);

  return v27;
}

- (CKSendLaterPluginInfo)sendLaterPluginInfo
{
  v2 = [(CKMessageEntryView *)self contentView];
  v3 = [v2 sendLaterPluginInfo];

  return v3;
}

- (CKMessageEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isShowingAudioRecordingView
{
  v2 = [(CKMessageEntryView *)self audioRecordingView];
  v3 = v2 != 0;

  return v3;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)bottomInsetForAppCard
{
  v3 = [(CKMessageEntryView *)self inputDelegate];
  v4 = [v3 messageEntryViewShouldVerticallyInsetForPresentedAppCard:self];

  if (self->_keyboardVisible || (v4 & 1) != 0 || [(CKMessageEntryView *)self _shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 entryViewWithSendMenuBottomContentInsetWithKeyboardVisible];
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 entryViewWithSendMenuBottomContentInsetWithoutKeyboardVisible];
  }

  v7 = v6;

  return v7;
}

- (CKComposition)composition
{
  v3 = [(CKMessageEntryView *)self audioComposition];
  if (!v3)
  {
    v4 = [(CKMessageEntryView *)self contentView];
    v3 = [v4 composition];
  }

  return v3;
}

- (void)updateEntryView
{
  v157 = *MEMORY[0x1E69E9840];
  v144 = [(CKMessageEntryView *)self conversation];
  v143 = [v144 sendingService];
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 isSendButtonEnabledOnPlatform])
  {
    v142 = [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v142 = [v4 isSendButtonEnabledOnPlatform];
  }

  v141 = [(CKMessageEntryView *)self shouldRecordForService:v143];
  [(CKMessageEntryView *)self shouldShowAudioButton];
  [(CKMessageEntryView *)self updateAudioMessageRecordingAvailability];
  v5 = [v144 isBlockedByCommunicationLimits];
  [(CKMessageEntryView *)self setUserInteractionEnabled:((v5 | [(CKMessageEntryView *)self shouldBlurForMessageEditing]) & 1) == 0];
  v6 = [(CKMessageEntryView *)self conversation];
  v7 = [v6 chat];

  if (v7)
  {
    v8 = [(CKMessageEntryView *)self conversation];
    v9 = [v8 chat];
    v10 = [v9 supportsCapabilities:0x100000];
  }

  else
  {
    v10 = [v143 supportsCapability:*MEMORY[0x1E69A7A58]];
  }

  v11 = [(CKMessageEntryView *)self contentView];
  v12 = [v11 textView];
  [v12 setExpressiveTextEnabled:v10];

  v13 = [v11 translationView];
  [v13 setExpressiveTextEnabled:v10];

  if (v10)
  {
    v14 = [(CKMessageEntryView *)self contentView];
    [v14 unpauseTextEffectsCoordinator];
  }

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v144 chat];
        v17 = [v16 chatIdentifier];
        *buf = 138412290;
        v154 = v17;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Disabling sendButton due to conversation being blocked by downtime with chatIdentifier: %@", buf, 0xCu);
      }
    }

    goto LABEL_139;
  }

  v140 = [(CKMessageEntryView *)self _placeholderTextForConversation:v144];
  v138 = [(CKMessageEntryView *)self _sendButtonColor];
  [v11 setPlaceholderText:v140];
  [v11 setBalloonColor:{-[CKMessageEntryView _balloonColor](self, "_balloonColor")}];
  [v11 setConversation:v144];
  if ([v144 isStewieConversation])
  {
    v18 = 0;
  }

  else
  {
    v18 = [v144 isEmergencyTranscriptSharingConversation] ^ 1;
  }

  v19 = [v144 recipients];
  v20 = [v19 count];

  v21 = [MEMORY[0x1E69A5B00] sharedInstance];
  v22 = [v21 isMessagingActiveOverSatellite];

  v23 = [v144 handles];
  if ([v23 count])
  {
    v24 = [v144 isSatelliteSendingService] ^ 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = v20 > 1;

  v26 = [v11 textView];
  v27 = v22 & (v25 | v24) & v18 ^ 1u;
  [v26 setEditable:v27];

  v28 = [v11 textView];
  [v28 setUserInteractionEnabled:v27];

  if ([v144 isStewieConversation])
  {
    [v11 setShouldStripEmojis:1];
  }

  v139 = [v144 recipient];
  v29 = [v11 textView];
  v30 = [v139 IDSCanonicalAddress];
  [v29 setAutocorrectionContext:v30];

  v31 = [v144 chat];
  v32 = [v31 valueForChatProperty:*MEMORY[0x1E69A5D50]];
  v33 = [v32 BOOLValue];

  v34 = [v143 supportsCapability:*MEMORY[0x1E69A79F0]] & (v33 ^ 1);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v35 = [v143 supportsCapability:*MEMORY[0x1E69A7928]];
  }

  v36 = [v11 textView];
  [v36 setAcceptsPayloads:v34];

  v37 = [v11 textView];
  [v37 setSendCurrentLocationFromKeyboardEnabled:v35];

  v38 = [v143 __ck_isSMS];
  v39 = [v11 textView];
  [v39 setSmartDashesType:v38];

  v40 = [v11 textView];
  [v40 setSmartQuotesType:v38];

  v41 = [v11 subjectView];
  [v41 setSmartDashesType:v38];

  v42 = [v11 subjectView];
  [v42 setSmartQuotesType:v38];

  v43 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v42) = [v43 isEntryViewRefreshEnabled];

  if (v42)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v44 = ;
  v45 = [v44 isEnabled];

  if (v142 != v45)
  {
    v46 = @"disable";
    if (v142)
    {
      v46 = @"enable";
    }

    v47 = v46;
    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v154 = v47;
        v155 = 2112;
        v156 = v144;
        _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "Will %@ Send Button... for conversation: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = [(CKMessageEntryView *)self conversation];
        v51 = [v50 sendingService];
        *buf = 138412290;
        v154 = v51;
        _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_INFO, "Conversation Sending Service: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = [(CKMessageEntryView *)self conversation];
        v54 = [v53 eligibleToSendWithMadrid];
        *buf = 67109120;
        LODWORD(v154) = v54;
        _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "iMessage enabled: %{BOOL}d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [MEMORY[0x1E69A5CA0] smsEnabled];
        v57 = @"NO";
        if (v56)
        {
          v57 = @"YES";
        }

        *buf = 138412290;
        v154 = v57;
        _os_log_impl(&dword_19020E000, v55, OS_LOG_TYPE_INFO, "SMS enabled: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = [(CKMessageEntryView *)self composition];
        v60 = [v59 text];
        v61 = [(CKMessageEntryView *)self contentView];
        v62 = [v61 textView];
        v63 = [v62 compositionText];
        v64 = [v60 isEqualToAttributedString:v63];
        v65 = @"NO";
        if (v64)
        {
          v65 = @"YES";
        }

        *buf = 138412290;
        v154 = v65;
        _os_log_impl(&dword_19020E000, v58, OS_LOG_TYPE_INFO, "Composition text matches contentView text: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v66 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = [(CKMessageEntryView *)self composition];
        v68 = [v67 text];
        v69 = [v68 length];
        v70 = @"YES";
        if (!v69)
        {
          v70 = @"NO";
        }

        *buf = 138412290;
        v154 = v70;
        _os_log_impl(&dword_19020E000, v66, OS_LOG_TYPE_INFO, "Composition Length > 0: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = [(CKMessageEntryView *)self composition];
        v73 = [v72 hasContent];
        v74 = @"NO";
        if (v73)
        {
          v74 = @"YES";
        }

        *buf = 138412290;
        v154 = v74;
        _os_log_impl(&dword_19020E000, v71, OS_LOG_TYPE_INFO, "Composition has content: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = [(CKMessageEntryView *)self conversation];
        v77 = [v76 sendingService];
        v78 = [(CKMessageEntryView *)self shouldRecordForService:v77];
        v79 = @"NO";
        if (v78)
        {
          v79 = @"YES";
        }

        *buf = 138412290;
        v154 = v79;
        _os_log_impl(&dword_19020E000, v75, OS_LOG_TYPE_INFO, "shouldRecordForService: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v80 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = [(CKMessageEntryView *)self contentView];
        v82 = [v81 isShowingDictationPlaceholder];
        v83 = @"NO";
        if (v82)
        {
          v83 = @"YES";
        }

        *buf = 138412290;
        v154 = v83;
        _os_log_impl(&dword_19020E000, v80, OS_LOG_TYPE_INFO, "isShowingDictationPlaceholder: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        v85 = [(CKMessageEntryView *)self conversation];
        v86 = [v85 pendingHandles];
        v87 = [v86 count];
        *buf = 134217984;
        v154 = v87;
        _os_log_impl(&dword_19020E000, v84, OS_LOG_TYPE_INFO, "Conversation pendingHandles count: %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v88 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        v89 = [(CKMessageEntryView *)self conversation];
        v90 = [v89 chat];
        v91 = [v90 participants];
        v92 = [v91 count];
        *buf = 134217984;
        v154 = v92;
        _os_log_impl(&dword_19020E000, v88, OS_LOG_TYPE_INFO, "Conversation chat participant count: %lu", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v93 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v94 = [(CKMessageEntryView *)self conversation];
        v95 = [v94 recipientCount];
        v96 = @"YES";
        if (!v95)
        {
          v96 = @"NO";
        }

        *buf = 138412290;
        v154 = v96;
        _os_log_impl(&dword_19020E000, v93, OS_LOG_TYPE_INFO, "Recipient Count > 0: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v97 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = [(CKMessageEntryView *)self isComposingRecipient];
        v99 = @"NO";
        if (v98)
        {
          v99 = @"YES";
        }

        *buf = 138412290;
        v154 = v99;
        _os_log_impl(&dword_19020E000, v97, OS_LOG_TYPE_INFO, "Composing Recipients: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v100 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        v101 = [(CKMessageEntryView *)self hasFailedRecipients];
        v102 = @"NO";
        if (v101)
        {
          v102 = @"YES";
        }

        *buf = 138412290;
        v154 = v102;
        _os_log_impl(&dword_19020E000, v100, OS_LOG_TYPE_INFO, "Has Failed Recipients: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v103 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        v104 = [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient];
        v105 = @"NO";
        if (v104)
        {
          v105 = @"YES";
        }

        *buf = 138412290;
        v154 = v105;
        _os_log_impl(&dword_19020E000, v103, OS_LOG_TYPE_INFO, "Has Unreachable Emergency Recipient: %@", buf, 0xCu);
      }
    }
  }

  [(CKMessageEntryView *)self updateAllowPollSuggestions];
  v106 = [(CKMessageEntryView *)self _isDictationEnabled];
  if (!v141)
  {
    v107 = 0;
    goto LABEL_116;
  }

  v107 = v106;
  if ([(CKMessageEntryView *)self displayMode]!= 1)
  {
LABEL_116:
    v108 = 0;
    goto LABEL_117;
  }

  v108 = v27 & [MEMORY[0x1E69DCBF0] dictationInputModeIsFunctional];
LABEL_117:
  v109 = [(CKMessageEntryView *)self shouldShowAudioButton];
  v110 = [(CKMessageEntryView *)self displayMode]!= 1;
  v111 = [(CKMessageEntryView *)self delegate];
  v112 = [v111 messageEntryViewIsSendingMessage:self];

  v113 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v111) = [v113 isEntryViewRefreshEnabled];

  v114 = !v109;
  v115 = v109 || !v107;
  v116 = v110 || v141;
  if (v111)
  {
    v117 = [(CKMessageEntryView *)self audioRecordingView];

    if (v117)
    {
      v115 = 1;
      v114 = 1;
      v116 = 1;
    }
  }

  v145[0] = MEMORY[0x1E69E9820];
  v145[1] = 3221225472;
  v145[2] = __37__CKMessageEntryView_updateEntryView__block_invoke;
  v145[3] = &unk_1E72F47E8;
  v145[4] = self;
  v146 = v115 & 1;
  v147 = v108;
  v148 = v114;
  v149 = v112 ^ 1;
  v150 = v138;
  v151 = v142;
  v152 = v116 & 1;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v145];
  v118 = [(CKMessageEntryView *)self sendButtonClickInteraction];
  v119 = v118 == 0;

  if (v119)
  {
    v120 = objc_alloc_init(MEMORY[0x1E69DD3D8]);
    [(CKMessageEntryView *)self setSendButtonClickInteraction:v120];
  }

  v121 = [(CKMessageEntryView *)self clickInteractionDelegate];

  if (v121)
  {
    v122 = [(CKMessageEntryView *)self clickInteractionDelegate];
    v123 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    [v123 setDelegate:v122];
  }

  v124 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v125 = [v124 isEntryViewRefreshEnabled];

  if (v125)
  {
    v126 = [(CKMessageEntryView *)self glassSendButton];
    v127 = [v126 interactions];
    v128 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    v129 = [v127 containsObject:v128];

    if (!(v129 & 1 | ![(CKMessageEntryView *)self shouldAllowImpactSend]))
    {
      v130 = [(CKMessageEntryView *)self glassSendButton];
      v131 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [v130 addInteraction:v131];
      goto LABEL_133;
    }

    if (![(CKMessageEntryView *)self shouldAllowImpactSend]&& (v129 & 1) != 0)
    {
      v130 = [(CKMessageEntryView *)self glassSendButton];
      v131 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [v130 removeInteraction:v131];
LABEL_133:
    }
  }

  else
  {
    v132 = [(CKMessageEntryView *)self sendButton];
    v133 = [v132 interactions];
    v134 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    v135 = [v133 containsObject:v134];

    if (!(v135 & 1 | ![(CKMessageEntryView *)self shouldAllowImpactSend]))
    {
      v130 = [(CKMessageEntryView *)self sendButton];
      v131 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [v130 addInteraction:v131];
      goto LABEL_133;
    }

    if (![(CKMessageEntryView *)self shouldAllowImpactSend]&& (v135 & 1) != 0)
    {
      v130 = [(CKMessageEntryView *)self sendButton];
      v131 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [v130 removeInteraction:v131];
      goto LABEL_133;
    }
  }

  v136 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v137 = [v136 isEntryViewRefreshEnabled];

  if ((v137 & 1) == 0)
  {
    [(CKMessageEntryView *)self updateKnockoutView];
    [(CKMessageEntryView *)self updateBackgroundView];
  }

  if ([(CKMessageEntryView *)self _shouldMarkForLayoutAfterPropertyUpdate])
  {
    [(CKMessageEntryView *)self setNeedsLayout];
  }

LABEL_139:
}

- (BOOL)sendButtonEnabled
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessageEntryView *)self composition];
  v4 = [v3 hasContent];

  v5 = [(CKMessageEntryView *)self conversation];
  v6 = [v5 sendingService];

  if ((v4 & 1) == 0 && !-[CKMessageEntryView shouldRecordForService:](self, "shouldRecordForService:", v6) || (-[CKMessageEntryView contentView](self, "contentView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isShowingDictationPlaceholder], v7, v8))
  {
    v9 = [(CKMessageEntryView *)self shouldRecordForService:v6];
    v10 = [(CKMessageEntryView *)self contentView];
    v11 = [v10 isShowingDictationPlaceholder];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v60 = 67109632;
        v61 = v4;
        v62 = 1024;
        v63 = v11;
        v64 = 1024;
        v65 = v9;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Send Button: Disabled > hasContent: %{BOOL}d, isShowingDictationPlaceholder: %{BOOL}d, isAudioMessagingAvailable: %{BOOL}d", &v60, 0x14u);
      }

LABEL_7:
    }

LABEL_50:
    v48 = 0;
    goto LABEL_51;
  }

  v13 = [(CKMessageEntryView *)self conversation];
  v14 = [v13 isStewieConversation];

  if (v14)
  {
    v15 = [(CKMessageEntryView *)self composition];
    v16 = [v15 text];
    v17 = [v16 string];
    v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v19 = [v17 stringByTrimmingCharactersInSet:v18];

    if (![v19 length])
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Send Button: Disabled > conversation is Stewie and trimmed text length is 0", &v60, 2u);
        }

        goto LABEL_24;
      }

      goto LABEL_49;
    }

    v20 = [MEMORY[0x1E69A5B00] sharedInstance];
    v21 = [v20 isStewieActive];

    if ((v21 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Send Button: Disabled > conversation is Stewie and stewie is not active", &v60, 2u);
        }

        goto LABEL_24;
      }

LABEL_49:

      goto LABEL_50;
    }

    v22 = [(CKMessageEntryView *)self conversation];
    v23 = [v22 chat];
    if ([v23 isStewieEmergencyChat])
    {
      v24 = [MEMORY[0x1E69A5B00] sharedInstance];
      v25 = [v24 isStewieEmergencyActive];

      if ((v25 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            LOWORD(v60) = 0;
            _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Send Button: Disabled > conversation is Stewie emergency chat and stewie emergency is not active", &v60, 2u);
          }

LABEL_24:

          goto LABEL_49;
        }

        goto LABEL_49;
      }
    }

    else
    {
    }

    v27 = [(CKMessageEntryView *)self conversation];
    v28 = [v27 chat];
    v29 = [v28 isStewieRoadsideChat];

    if (v29)
    {
      v30 = [MEMORY[0x1E69A5B00] sharedInstance];
      v31 = [v30 isStewieRoadsideActive];

      v32 = [MEMORY[0x1E69A5B00] sharedInstance];
      v33 = [v32 mostRecentlyUsedRoadsideChatIdentifier];

      if (!v31 || (-[CKMessageEntryView conversation](self, "conversation"), v34 = objc_claimAutoreleasedReturnValue(), [v34 chat], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "chatIdentifier"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", v33), v36, v35, v34, (v37 & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v47 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            LOWORD(v60) = 0;
            _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "Send Button: Disabled > conversation is Stewie roadside chat and stewie roadside is not active or current chat is not mostRecentlyUsedRoadsideChatIdentifier.", &v60, 2u);
          }
        }

        goto LABEL_49;
      }
    }
  }

  if (![(CKMessageEntryView *)self pluginSendingEnabled])
  {
    v38 = [(CKMessageEntryView *)self composition];
    v39 = [v38 shelfPluginPayload];

    if (v39)
    {
      goto LABEL_50;
    }
  }

  if ([(CKMessageEntryView *)self _isExceedingByteLimitForService:v6])
  {
    goto LABEL_50;
  }

  if ([(CKMessageEntryView *)self hasFailedRecipients]|| [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient])
  {
    v40 = [(CKMessageEntryView *)self hasFailedRecipients];
    v41 = [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_50;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v60 = 67109376;
      v61 = v40;
      v62 = 1024;
      v63 = v41;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Send Button: Disabled > hasFailedRecipients: %{BOOL}d, hasUnreachableEmergencyRecipient: %{BOOL}d", &v60, 0xEu);
    }

    goto LABEL_7;
  }

  v42 = [(CKMessageEntryView *)self conversation];
  if (![v42 isPending])
  {
    goto LABEL_53;
  }

  v43 = [(CKMessageEntryView *)self conversation];
  v44 = [v43 recipients];
  if ([v44 count] <= 1)
  {

LABEL_53:
    goto LABEL_54;
  }

  v45 = [MEMORY[0x1E69A5B00] sharedInstance];
  v46 = [v45 isMessagingActiveOverSatellite];

  if (v46)
  {
    goto LABEL_50;
  }

LABEL_54:
  v50 = [(CKMessageEntryView *)self conversation];
  if ([v50 isStewieConversation])
  {
  }

  else
  {
    v51 = [MEMORY[0x1E69A5B00] sharedInstance];
    v52 = [v51 isMessagingActiveOverSatellite];

    if (v52)
    {
      v53 = [(CKMessageEntryView *)self conversation];
      v54 = [v53 isSatelliteSendingService];

      if (!v54)
      {
        goto LABEL_50;
      }
    }
  }

  if ([(CKMessageEntryView *)self shouldBlurForMessageEditing])
  {
    goto LABEL_50;
  }

  v55 = [(CKMessageEntryView *)self conversation];
  v56 = [v55 recipientCount];

  v57 = [(CKMessageEntryView *)self isComposingRecipient];
  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v60 = 67109376;
      v61 = v56 != 0;
      v62 = 1024;
      v63 = v57;
      _os_log_impl(&dword_19020E000, v58, OS_LOG_TYPE_INFO, "Send Button: > hasRecipients: %{BOOL}d, isComposingRecipient: %{BOOL}d", &v60, 0xEu);
    }
  }

  v59 = [(CKMessageEntryView *)self conversation];
  if ([v59 recipientCount])
  {
    v48 = 1;
  }

  else
  {
    v48 = [(CKMessageEntryView *)self isComposingRecipient];
  }

LABEL_51:
  return v48;
}

- (BOOL)shouldShowAudioButton
{
  v3 = [(CKMessageEntryView *)self audioButton];
  v4 = [v3 isHidden];

  v5 = [(CKMessageEntryView *)self conversation];
  v6 = [v5 sendingService];
  v7 = [(CKMessageEntryView *)self shouldRecordForService:v6];

  if (v7)
  {
    if ([(CKMessageEntryView *)self displayMode]!= 1)
    {
      if ((v4 & 1) == 0)
      {
        v8 = IMOSLoggingEnabled();
        if (v8)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v30 = 0;
            v10 = "Hiding audio button because the display mode is not text";
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        return v8;
      }

      goto LABEL_18;
    }

    if ([(CKMessageEntryView *)self _isRunningInMVS])
    {
      if ((v4 & 1) == 0)
      {
        v8 = IMOSLoggingEnabled();
        if (v8)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v30 = 0;
            v10 = "Hiding the audio button because we are running in MessagesViewService";
LABEL_16:
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, v10, v30, 2u);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        return v8;
      }

LABEL_18:
      LOBYTE(v8) = 0;
      return v8;
    }

    if ([(CKMessageEntryView *)self isRunningInNotificationExtension])
    {
      if (v4)
      {
        goto LABEL_18;
      }

      v8 = IMOSLoggingEnabled();
      if (!v8)
      {
        return v8;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *v30 = 0;
      v10 = "Not showing the audio button because we are running in the Notification Extension";
      goto LABEL_16;
    }

    v11 = [(CKMessageEntryView *)self conversation];
    v12 = [v11 isStewieConversation];

    if (v12)
    {
      if (v4)
      {
        goto LABEL_18;
      }

      v8 = IMOSLoggingEnabled();
      if (!v8)
      {
        return v8;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *v30 = 0;
      v10 = "Not showing the audio button because this is a stewie conversation";
      goto LABEL_16;
    }

    v13 = [(CKMessageEntryView *)self conversation];
    v14 = [v13 chat];
    if (v14)
    {
      v15 = v14;
      v16 = [(CKMessageEntryView *)self conversation];
      v17 = [v16 chat];
      v18 = [v17 supportsCapabilities:0x10000];

      if ((v18 & 1) == 0)
      {
        v8 = IMOSLoggingEnabled();
        if (!v8)
        {
          return v8;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *v30 = 0;
        v10 = "Not showing the audio button because chat does not support capability.";
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (CKIsRunningInMacCatalyst())
    {
      v19 = [(CKMessageEntryView *)self contentView];
      v20 = [v19 textView];
      v21 = [v20 text];
      v22 = [v21 length];

      if (v22)
      {
        goto LABEL_18;
      }

      v23 = [(CKMessageEntryView *)self sendLaterPluginInfo];

      if (v23)
      {
        v8 = IMOSLoggingEnabled();
        if (!v8)
        {
          return v8;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *v30 = 0;
        v10 = "Not showing audioButton because we have SendLater staged.";
        goto LABEL_16;
      }

      if (!v4 || !IMOSLoggingEnabled())
      {
        goto LABEL_62;
      }

      v27 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      *v30 = 0;
      v28 = "Showing the audio button because we are running on Catalyst and the send button is hidden";
    }

    else if ([(CKMessageEntryView *)self _isDictationEnabled])
    {
      v24 = [(CKMessageEntryView *)self conversation];
      v25 = [v24 chat];
      v26 = [v25 shouldShowAudioButtonInEntryView];

      if (!v26)
      {
        if (v4)
        {
          goto LABEL_18;
        }

        v8 = IMOSLoggingEnabled();
        if (!v8)
        {
          return v8;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *v30 = 0;
        v10 = "Defaulting to hiding the audio button";
        goto LABEL_16;
      }

      if (!v4 || !IMOSLoggingEnabled())
      {
        goto LABEL_62;
      }

      v27 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      *v30 = 0;
      v28 = "Showing the audio button because the chat prefers it";
    }

    else
    {
      if (!v4 || !IMOSLoggingEnabled())
      {
        goto LABEL_62;
      }

      v27 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
LABEL_61:

LABEL_62:
        LOBYTE(v8) = 1;
        return v8;
      }

      *v30 = 0;
      v28 = "Showing the audio button because dictation is disabled";
    }

    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, v28, v30, 2u);
    goto LABEL_61;
  }

  if (v4)
  {
    goto LABEL_18;
  }

  v8 = IMOSLoggingEnabled();
  if (v8)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v30 = 0;
      v10 = "Hiding audio button because the send button is showing";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  return v8;
}

- (BOOL)_isDictationEnabled
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getAFPreferencesClass_softClass;
  v22 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAFPreferencesClass_block_invoke;
    v17 = &unk_1E72EB968;
    v18 = &v19;
    __getAFPreferencesClass_block_invoke(&v14);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [v3 sharedPreferences];
  if ([v5 dictationIsEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 suppressDictationOptIn] ^ 1;
  }

  v7 = [(CKMessageEntryView *)self dictationEnabledForLanguage];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v8 = getAFDictationRestrictedSymbolLoc_ptr;
  v22 = getAFDictationRestrictedSymbolLoc_ptr;
  if (!getAFDictationRestrictedSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getAFDictationRestrictedSymbolLoc_block_invoke;
    v17 = &unk_1E72EB968;
    v18 = &v19;
    v9 = AssistantServicesLibrary();
    v10 = dlsym(v9, "AFDictationRestricted");
    *(v18[1] + 24) = v10;
    getAFDictationRestrictedSymbolLoc_ptr = *(v18[1] + 24);
    v8 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v8)
  {
    [CKMessageEntryView _isDictationEnabled];
  }

  v11 = v7 & (v8() ^ 1);
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateAudioMessageRecordingAvailability
{
  v9 = [(CKMessageEntryView *)self conversation];
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 supportsCapabilities:64];

  v6 = v9;
  if (v5)
  {
    v7 = [v9 sendingService];
    if ([(CKMessageEntryView *)self shouldRecordForService:v7])
    {
      v8 = [(CKMessageEntryView *)self composition];
      [v8 hasContent];
    }

    v6 = v9;
  }
}

- (BOOL)pluginButtonsEnabled
{
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = [v3 recipientCount];

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self composition];
    v6 = [v5 mediaObjects];

    v7 = [(CKMessageEntryView *)self conversation];
    if ([v7 canAcceptMediaObjectType:2 givenMediaObjects:v6])
    {
    }

    else
    {
      v8 = [(CKMessageEntryView *)self conversation];
      v9 = [v8 canAcceptMediaObjectType:3 givenMediaObjects:v6];

      if (!v9)
      {
        return 0;
      }
    }
  }

  v10 = [(CKMessageEntryView *)self conversation];
  v11 = [v10 sendingService];
  v12 = [v11 __ck_isSatelliteSMS];

  if (v12)
  {
    return 0;
  }

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 stewieEnabled];

  if (v15)
  {
    v16 = [(CKMessageEntryView *)self conversation];
    v17 = [v16 isStewieConversation];

    if (v17)
    {
      return 0;
    }
  }

  return ![(CKMessageEntryView *)self _isRunningInMVS];
}

- (char)_sendButtonColor
{
  v2 = self;
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = v3;
  if (v3 && ([v3 recipients], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    if ([(CKMessageEntryView *)v2 _isApplePayCashInShelf])
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      v8 = [v7 theme];
      LOBYTE(v2) = [v8 applyPayCashSendButtonColorForEntryViewStyle:{-[CKMessageEntryView style](v2, "style")}];
    }

    else
    {
      v10 = [(CKMessageEntryView *)v2 sendLaterPluginInfo];

      if (v10)
      {
        LOBYTE(v2) = 15;
      }

      else
      {
        v2 = [v4 sendButtonColor];
      }
    }
  }

  else
  {
    LOBYTE(v2) = -1;
  }

  return v2;
}

- (BOOL)_isApplePayCashInShelf
{
  v3 = [(CKMessageEntryView *)self composition];
  v4 = [v3 shelfPluginPayload];
  v5 = [v4 pluginBundleID];
  if ([v5 containsString:*MEMORY[0x1E69A6A38]])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CKMessageEntryView *)self composition];
    v8 = [v7 shelfPluginPayload];
    v9 = [v8 pluginBundleID];
    v6 = [v9 containsString:*MEMORY[0x1E69A6A40]];
  }

  return v6;
}

- (char)_balloonColor
{
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = v3;
  if (v3 && ([v3 recipients], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 applyPayCashSendButtonColorForEntryViewStyle:{-[CKMessageEntryView style](self, "style")}];

    if (![(CKMessageEntryView *)self _isApplePayCashInShelf])
    {
      v9 = [v4 sendButtonColor];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __37__CKMessageEntryView_updateEntryView__block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) dictationButton];
  [v11 setHidden:*(a1 + 40)];
  [v11 setEnabled:*(a1 + 41)];
  v2 = [*(a1 + 32) audioButton];
  [v2 setHidden:*(a1 + 42)];

  v3 = [*(a1 + 32) audioButton];
  [v3 setUserInteractionEnabled:*(a1 + 43)];

  if ([*(a1 + 32) shouldShowSendButton] && !CKIsRunningInMacCatalyst())
  {
    v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v5 = [v4 isEntryViewRefreshEnabled];

    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 glassSendButton];
    }

    else
    {
      [v6 sendButton];
    }
    v7 = ;
    [v7 setCkTintColor:*(a1 + 44)];
    [v7 setEnabled:*(a1 + 45)];
    [v7 setHidden:*(a1 + 46)];
    [v7 setUserInteractionEnabled:*(a1 + 43)];
  }

  if ([*(a1 + 32) shouldShowPluginButtons])
  {
    v8 = [*(a1 + 32) _shouldEnablePlusButton];
    v9 = [*(a1 + 32) plusButton];
    [v9 setUserInteractionEnabled:v8];

    v10 = [*(a1 + 32) plusButton];
    [v10 setSendMenuButtonEnabled:v8];
  }
}

- (BOOL)_shouldEnablePlusButton
{
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = [v3 chat];

  if (v4)
  {
    v5 = [v4 supportsCapabilities:2048];
  }

  else
  {
    v6 = [(CKMessageEntryView *)self conversation];
    v7 = [v6 sendingService];
    v8 = [v7 supportsCapability:*MEMORY[0x1E69A78F0]];

    if (v8 && ([MEMORY[0x1E69A5B00] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSatelliteConnectionActive"), v9, (IMIsRunningInMessagesViewService() & 1) == 0))
    {
      v5 = (IMIsRunningInMessagesTranscriptExtension() | v10) ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (_UIClickInteractionDelegate)clickInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clickInteractionDelegate);

  return WeakRetained;
}

+ (CKMessageEntryView)currentEntryView
{
  WeakRetained = objc_loadWeakRetained(&__currentEntryView);

  return WeakRetained;
}

- (void)dealloc
{
  if ([(UIActivityIndicatorView *)self->_sendButtonSpinner isAnimating])
  {
    [(UIActivityIndicatorView *)self->_sendButtonSpinner stopAnimating];
  }

  [(CKAudioMessageRecordingView *)self->_audioRecordingView setDelegate:0];
  [(CKAudioMessageRecordingView *)self->_audioRecordingView invalidateDisplayLink];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKMessageEntryContentView *)self->_contentView setDelegate:0];
  [(CKAudioRecorder *)self->_recorder setDelegate:0];
  [(CKAudioRecorder *)self->_recorder resetState];
  v4 = [(CKMessageEntryView *)self sendButtonClickInteraction];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v6 = [v5 isEntryViewRefreshEnabled];

    if (v6)
    {
      [(CKMessageEntryView *)self glassSendButton];
    }

    else
    {
      [(CKMessageEntryView *)self sendButton];
    }
    v7 = ;
    v8 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    [v7 removeInteraction:v8];

    [(CKMessageEntryView *)self setSendButtonClickInteraction:0];
  }

  v9.receiver = self;
  v9.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v9 dealloc];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v5 didMoveToWindow];
  v3 = [(CKMessageEntryView *)self window];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageEntryView:self didMoveToWindow:v3];
}

- (void)configurePlusButtonFrameWithOneLinePlaceHolderCenterY:(double)a3
{
  v29 = [(CKMessageEntryView *)self plusButton];
  v5 = [(CKMessageEntryView *)self shouldShowPluginButtons];
  v6 = v29;
  if (v5)
  {
    if (v29)
    {
      v7 = [v29 isHidden];
      v6 = v29;
      if ((v7 & 1) == 0)
      {
        v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v9 = [v8 isEntryViewRefreshEnabled];

        if (v9)
        {
          +[CKGlassSendMenuButton buttonSize];
        }

        else
        {
          [(CKMessageEntryView *)self inputButtonSize];
        }

        v12 = v10;
        v13 = v11;
        v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v15 = [v14 isEntryViewRefreshEnabled];

        if (v15)
        {
          [(CKMessageEntryView *)self _leftInsets];
        }

        else
        {
          [(CKMessageEntryView *)self safeAreaInsets];
          v18 = v17;
          v19 = +[CKUIBehavior sharedBehaviors];
          [v19 entryViewHorizontalCoverInsets];
          v21 = v20;

          v16 = v18 + v21;
        }

        v22 = v12 * 0.5 + v16;
        v23 = [(CKMessageEntryView *)self traitCollection];
        [v23 displayScale];
        v25 = round(v22 * v24) / v24;

        [v29 setCenter:{v25, a3}];
        [v29 setBounds:{0.0, 0.0, v12, v13}];
        v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v27 = [v26 isEntryViewRefreshEnabled];

        v6 = v29;
        if (v27)
        {
          v28 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
          [v29 frame];
          [v28 setFrame:?];

          v6 = v29;
        }
      }
    }
  }
}

- (void)setCharacterCountString
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessageEntryView *)self characterCountLabel];
  if (![(CKMessageEntryView *)self isCharacterCountHidden])
  {
    v4 = [(CKMessageEntryView *)self contentView];
    v5 = [v4 isSingleLine];

    if ((v5 & 1) == 0)
    {
      v91 = 0;
      v7 = [(CKMessageEntryView *)self composition];
      v8 = [v7 text];
      v89 = [v8 string];

      v9 = [(CKMessageEntryView *)self conversation];
      LODWORD(v7) = [v9 isStewieConversation];

      if (v7)
      {
        v10 = [v89 lengthOfBytesUsingEncoding:4];
        v91 = v10;
        v11 = MEMORY[0x1E696AEC0];
        v12 = CKFrameworkBundle();
        v13 = [v12 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        v15 = CKLocalizedStringForNumber(v14);
        v16 = CKLocalizedStringForNumber(&unk_1F04E7ED8);
        v17 = [v11 stringWithFormat:v13, v15, v16];

        v18 = [MEMORY[0x1E69DC668] sharedApplication];
        v19 = [v18 userInterfaceLayoutDirection];

        if (v19 == 1)
        {
          v20 = @"\u200F";
        }

        else
        {
          v20 = @"\u200E";
        }

        v21 = [(__CFString *)v20 stringByAppendingString:v17];

        v6 = v10 < 80;
        if (v10 >= 80)
        {
          if (v10 > 0x9F)
          {
            [MEMORY[0x1E69DC888] systemRedColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] systemOrangeColor];
          }
          v83 = ;
          [v3 setTextColor:v83];
        }

        v84 = [(CKMessageEntryView *)self characterCountLabel];
        [v84 setText:v21];

        goto LABEL_35;
      }

      v90 = 0;
      v22 = [MEMORY[0x1E69A7F68] sharedInstance];
      v23 = [v22 ctSubscriptionInfo];
      v88 = [v23 preferredOrDefaultSubscriptionContext];

      v24 = [(CKMessageEntryView *)self conversation];
      v25 = [v24 sendingService];
      if ([v25 __ck_isiMessageLite])
      {
        v26 = 1;
      }

      else
      {
        v27 = [(CKMessageEntryView *)self conversation];
        v28 = [v27 chat];
        v26 = [v28 shouldDisplayOffGridModeStatus];
      }

      v29 = [(CKMessageEntryView *)self conversation];
      v30 = [v29 sendingService];
      v31 = [v30 __ck_isSatelliteSMS];

      if (v26)
      {
        v32 = [MEMORY[0x1E69A5C90] iMessageLiteService];
        v91 = [v89 lengthOfBytesUsingEncoding:4];
        v33 = [v32 serviceProperties];
        v34 = [v33 valueForKey:*MEMORY[0x1E69A7B30]];
        v35 = [v34 intValue];
        v36 = v35;
        v90 = v35;

        v37 = MEMORY[0x1E696AEC0];
        v38 = CKFrameworkBundle();
        v39 = [v38 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v40 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
        v41 = CKLocalizedStringForNumber(v40);
        v42 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
        v43 = CKLocalizedStringForNumber(v42);
        v44 = [v37 stringWithFormat:v39, v41, v43];

        v45 = [MEMORY[0x1E69DC668] sharedApplication];
        v46 = [v45 userInterfaceLayoutDirection];

        if (v46 == 1)
        {
          v47 = @"\u200F";
        }

        else
        {
          v47 = @"\u200E";
        }

        v48 = [(__CFString *)v47 stringByAppendingString:v44];

        v49 = [(CKMessageEntryView *)self characterCountLabel];
        [v49 setText:v48];
      }

      else if (v31)
      {
        v91 = [v89 lengthOfBytesUsingEncoding:4];
        v50 = [(CKMessageEntryView *)self conversation];
        v51 = [v50 sendingService];
        v52 = [v51 serviceProperties];
        v53 = [v52 valueForKey:*MEMORY[0x1E69A7B30]];
        v54 = [v53 intValue];
        v55 = v54;
        v90 = v54;

        v56 = MEMORY[0x1E696AEC0];
        v57 = CKFrameworkBundle();
        v58 = [v57 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v59 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
        v60 = CKLocalizedStringForNumber(v59);
        v61 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
        v62 = CKLocalizedStringForNumber(v61);
        v63 = [v56 stringWithFormat:v58, v60, v62];

        v64 = [MEMORY[0x1E69DC668] sharedApplication];
        v65 = [v64 userInterfaceLayoutDirection];

        if (v65 == 1)
        {
          v66 = @"\u200F";
        }

        else
        {
          v66 = @"\u200E";
        }

        v67 = [(__CFString *)v66 stringByAppendingString:v63];

        v68 = [(CKMessageEntryView *)self characterCountLabel];
        [v68 setText:v67];
      }

      else
      {
        if (!v88 || ([CTMessageCenterClass() sharedMessageCenter], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "getCharacterCountForSub:count:andMessageSplitThreshold:forSmsText:", v88, &v91, &v90, v89), v69, !v70))
        {
          if (IMOSLoggingEnabled())
          {
            v85 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
            {
              v86 = [MEMORY[0x1E696AD98] numberWithInteger:v90];
              v87 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
              *buf = 138412802;
              v93 = v86;
              v94 = 2112;
              v95 = v87;
              v96 = 2112;
              v97 = v88;
              _os_log_impl(&dword_19020E000, v85, OS_LOG_TYPE_INFO, "Not showing character count: %@/%@ - subscription: %@", buf, 0x20u);
            }
          }

          v6 = 1;
          goto LABEL_31;
        }

        v71 = MEMORY[0x1E696AEC0];
        v72 = CKFrameworkBundle();
        v73 = [v72 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v74 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
        v75 = CKLocalizedStringForNumber(v74);
        v76 = [MEMORY[0x1E696AD98] numberWithInteger:v90];
        v77 = CKLocalizedStringForNumber(v76);
        v78 = [v71 stringWithFormat:v73, v75, v77];

        v79 = [MEMORY[0x1E69DC668] sharedApplication];
        LODWORD(v76) = [v79 userInterfaceLayoutDirection] == 1;

        if (v76)
        {
          v80 = @"\u200F";
        }

        else
        {
          v80 = @"\u200E";
        }

        v81 = [(__CFString *)v80 stringByAppendingString:v78];

        v82 = [(CKMessageEntryView *)self characterCountLabel];
        [v82 setText:v81];
      }

      v6 = 0;
LABEL_31:

LABEL_35:
      goto LABEL_36;
    }
  }

  v6 = 1;
LABEL_36:
  [v3 setHidden:v6];
}

- (void)_layoutSendButtonAndCharacterCountWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isEntryViewRefreshEnabled];

  if (v8)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v59 = ;
  v58 = y;
  v10 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  if (CKIsRunningInMacCatalyst())
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 entryViewSendButtonCoverSpace];
    v15 = v14;
    v16 = [(CKMessageEntryView *)self contentView];
    [v16 setSendButtonTextInsetWidth:v15];
  }

  else if ([(CKMessageEntryView *)self shouldShowSendButton])
  {
    v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v18 = [v17 isEntryViewRefreshEnabled];

    if (v18)
    {
      +[CKGlassSendButton buttonSize];
    }

    else
    {
      [(CKMessageEntryView *)self sendButtonSize];
    }

    v11 = v19;
    v12 = v20;
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 entryViewSendButtonCoverSpace];
    v23 = v11 + v22;

    v61.origin.x = x;
    v61.size.width = width;
    v61.size.height = height;
    v61.origin.y = v58;
    v24 = CGRectGetMaxX(v61) - v23;
    v25 = [(CKMessageEntryView *)self traitCollection];
    [v25 displayScale];
    v10 = round(v24 * v26) / v26;

    v27 = [(CKMessageEntryView *)self conversation];
    v28 = [v27 isStewieConversation];

    v29 = 0.0;
    if (v28)
    {
      v29 = 10.0;
    }

    v30 = v23 + v29;
    v31 = [(CKMessageEntryView *)self contentView];
    [v31 setSendButtonTextInsetWidth:v30];

    v32 = [(CKMessageEntryView *)self traitCollection];
    [v32 displayScale];
    v9 = round((a4 + v12 * -0.5) * v33) / v33;

    v34 = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:v34 toView:v10, v9, v11, v12];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [v59 setFrame:{v36, v38, v40, v42}];
  }

  if ([(CKMessageEntryView *)self shouldShowCharacterCount]&& [(CKMessageEntryView *)self shouldShowSendButton])
  {
    [(CKMessageEntryView *)self characterCountSize];
    v44 = v43;
    v54 = v45;
    if ([(CKMessageEntryView *)self shouldCenterCharacterCount])
    {
      v62.origin.x = x;
      v62.size.width = width;
      v62.size.height = height;
      v46 = v58;
      v62.origin.y = v58;
      v47 = CGRectGetMaxX(v62) + 3.5;
    }

    else
    {
      v63.origin.x = v10;
      v63.origin.y = v9;
      v63.size.width = v11;
      v63.size.height = v12;
      v47 = CGRectGetMaxX(v63) - v44;
      v46 = v58;
    }

    v48 = [(CKMessageEntryView *)self characterCountLabel];
    v64.origin.x = v10;
    v64.origin.y = v9;
    v64.size.width = v11;
    v64.size.height = v12;
    MinY = CGRectGetMinY(v64);
    v65.origin.x = v47;
    v65.origin.y = v46;
    v65.size.width = v44;
    v65.size.height = v54;
    v50 = MinY - CGRectGetHeight(v65);
    v51 = +[CKUIBehavior sharedBehaviors];
    [v51 entryViewSendButtonCoverSpace];
    v53 = v50 - v52;

    [v48 setFrame:{v47, v53, v44, v54}];
    [(CKMessageEntryView *)self setCharacterCountString];
  }
}

- (void)_layoutAudioButtonWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CKMessageEntryView *)self shouldShowSendButton]&& !CKIsRunningInMacCatalyst())
  {
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    MaxX = CGRectGetMaxX(v76);
    v45 = +[CKUIBehavior sharedBehaviors];
    [v45 audioButtonSize];
    v47 = MaxX - v46;
    v48 = +[CKUIBehavior sharedBehaviors];
    [v48 entryViewAudioButtonCoverSpace];
    v50 = v47 - v49;
    v51 = +[CKUIBehavior sharedBehaviors];
    [v51 audioButtonSize];
    v53 = a4 + v52 * -0.5;
    v54 = +[CKUIBehavior sharedBehaviors];
    [v54 audioButtonSize];
    v56 = v55;
    v57 = +[CKUIBehavior sharedBehaviors];
    [v57 audioButtonSize];
    v59 = v58;

    v60 = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:v60 toView:v50, v53, v56, v59];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v69 = [(CKMessageEntryView *)self audioButton];
    [v69 setFrame:{v62, v64, v66, v68}];

    v39 = [(CKMessageEntryView *)self sendButtonSpinner];
    v70 = v39;
    v42 = v50;
    v43 = v53;
    v40 = v56;
    v41 = v59;
  }

  else
  {
    if (!CKIsRunningInMacCatalyst())
    {
      return;
    }

    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v10 = CGRectGetMaxX(v72) + -29.0;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 entryViewAudioButtonCoverSpace];
    v13 = v10 - v12;
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    v14 = CGRectGetMidY(v73) + -10.0;

    v15 = [(CKMessageEntryView *)self traitCollection];
    [v15 displayScale];
    v17 = round(v13 * v16) / v16;
    v18 = round(v14 * v16) / v16;
    v19 = round(v16 * 29.0) / v16;
    v20 = round(v16 * 20.0) / v16;

    v21 = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:v21 toView:v17, v18, v19, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [(CKMessageEntryView *)self audioButton];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [(CKMessageEntryView *)self contentView];
    [v31 frame];
    v32 = CGRectGetMaxX(v74) + -29.0;
    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 entryViewSendButtonCoverSpace];
    v35 = v32 - v34;
    v36 = [(CKMessageEntryView *)self contentView];
    v37 = [v36 textView];
    [v37 frame];
    v38 = CGRectGetMidY(v75) + -10.0;

    v39 = [(CKMessageEntryView *)self sendButtonSpinner];
    v40 = 29.0;
    v41 = 20.0;
    v70 = v39;
    v42 = v35;
    v43 = v38;
  }

  [v39 setFrame:{v42, v43, v40, v41}];
}

- (void)_layoutDictationButtonWithCoverFrame:(CGRect)a3 oneLinePlaceHolderCenterY:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CKMessageEntryView *)self shouldShowDictationButton])
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 dictationButtonSize];
    v12 = v11;
    v14 = v13;

    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v15 = CGRectGetMaxX(v32) - v12;
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 entryViewDictationButtonCoverSpace];
    v18 = v15 - v17;
    v19 = a4 + v14 * -0.5;

    v20 = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:v20 toView:v18, v19, v12, v14];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [(CKMessageEntryView *)self dictationButton];
    [v29 setFrame:{v22, v24, v26, v28}];

    v30 = [(CKMessageEntryView *)self sendButtonSpinner];
    [v30 setFrame:{v18, v19, v12, v14}];
  }
}

- (void)_layoutHintViewWithCoverFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 audioHintViewPadding];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 audioButtonSize];
  v13 = width - v12;
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 bubbleLeftInsetForQuicktationInEntryView];
  v16 = v13 - v15;
  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 entryViewAudioButtonCoverSpace];
  v19 = v16 - v18 + v10 * -2.0;

  v20 = [(CKMessageEntryView *)self hintLabel];
  [v20 sizeThatFits:{v19, 1.79769313e308}];
  v22 = v21;
  v24 = v23;

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 bubbleLeftInsetForQuicktationInEntryView];
  v27 = (v19 - v22) * 0.5 + v10 + v26;

  v28 = v24 + v10 * 2.0;
  v29 = +[CKUIBehavior sharedBehaviors];
  [v29 entryViewCoverMinHeight];
  v31 = v30;

  if (v28 >= v31)
  {
    v31 = v28;
  }

  v32 = [(CKMessageEntryView *)self hintLabel];
  [v32 setFrame:{v27, 0.0, v22, v31}];

  if ([(CKMessageEntryView *)self shouldShowHintLabel])
  {
    v33 = [(CKMessageEntryView *)self contentClipView];
    [v33 anchorPoint];
    v35 = x + width * v34;
    v37 = y - (v31 - height) + v31 * v36;

    v38 = [(CKMessageEntryView *)self contentClipView];
    [v38 setBounds:{0.0, 0.0, width, v31}];

    v39 = [(CKMessageEntryView *)self contentClipView];
    [v39 setCenter:{v35, v37}];
  }
}

- (void)_layoutContentViewAndAudioRecordingViewWithCoverFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isEntryViewRefreshEnabled];

  if (!v8)
  {
    v36 = [(CKMessageEntryView *)self contentView];
    [v36 setAlpha:1.0];

    [(CKMessageEntryView *)self bounds];
    v38 = v37;
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 audioRecordingViewButtonSpacing];
    v41 = v40;
    [(CKMessageEntryView *)self safeAreaInsets];
    v43 = v42;

    v44 = +[CKUIBehavior sharedBehaviors];
    [v44 audioRecordingViewButtonSpacing];
    v46 = v38 + v45 * -2.0;
    [(CKMessageEntryView *)self safeAreaInsets];
    v48 = v46 - v47;
    [(CKMessageEntryView *)self safeAreaInsets];
    v50 = v48 - v49;

    v51 = [(CKMessageEntryView *)self audioRecordingView];
    [v51 sizeThatFits:{v50, 1.79769313e308}];
    v53 = v52;
    v55 = v54;

    if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      v55 = height + (v55 - height) * 0.3;
    }

    [(CKMessageEntryView *)self bounds];
    v57 = v56;
    [(CKMessageEntryView *)self bottomInsetForAppCard];
    v59 = v57 - v58;
    [(CKMessageEntryView *)self safeAreaInsets];
    v61 = (v59 - v60 - v55) * 0.5;
    if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      v62 = [(CKMessageEntryView *)self audioRecordingView];
      [v62 setFrame:{x, v61, width, v55}];

      v63 = [(CKMessageEntryView *)self contentClipView];
      [v63 setFrame:{x, v61, width, v55}];

      v64 = [(CKMessageEntryView *)self contentClipView];
      v65 = [(CKMessageEntryView *)self contentClipView];
      [v65 frame];
      [v64 _setContinuousCornerRadius:v66 * 0.5];

      v67 = [(CKMessageEntryView *)self contentClipView];
      [v67 setAlpha:0.0];
    }

    else
    {
      v68 = [(CKMessageEntryView *)self audioRecordingView];
      [v68 setFrame:{v41 + v43, v61, v53, v55}];

      v69 = +[CKUIBehavior sharedBehaviors];
      [v69 entryViewCoverMinHeight];
      v71 = v70;

      v67 = [(CKMessageEntryView *)self contentClipView];
      [v67 _setContinuousCornerRadius:v71 * 0.5];
    }

    v72 = [(CKMessageEntryView *)self audioRecordingView];
    [v72 setCornerRadius:v55 * 0.5];

    v73 = [(CKMessageEntryView *)self audioRecordingView];

    if (v73)
    {
      [(CKMessageEntryView *)self audioRecordingView];
    }

    else
    {
      [(CKMessageEntryView *)self contentClipView];
    }
    v118 = ;
    [v118 setAlpha:1.0];
    goto LABEL_34;
  }

  v9 = [(CKMessageEntryView *)self audioRecordingView];
  [v9 sizeThatFits:{width, 1.79769313e308}];
  v11 = v10;
  v13 = v12;

  if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
  {
    v13 = height + (v13 - height) * 0.3;
  }

  if (![(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage]&& [(CKMessageEntryView *)self displayMode]!= 2 && [(CKMessageEntryView *)self displayMode]!= 3)
  {
    v98 = [(CKMessageEntryView *)self contentClipView];
    [v98 frame];
    v100 = v99 * 0.5;
    v101 = [(CKMessageEntryView *)self contentClipView];
    [v101 frame];
    v103 = v102 * 0.5;

    v104 = [(CKMessageEntryView *)self audioRecordingView];
    [v104 setCenter:{v100, v103}];

    v105 = +[CKUIBehavior sharedBehaviors];
    [v105 entryViewCoverMinHeight];
    v107 = v106;

    v81 = [(CKMessageEntryView *)self contentClipView];
    [v81 _setContinuousCornerRadius:v107 * 0.5];
    goto LABEL_22;
  }

  [(CKMessageEntryView *)self adjustedCoverInsets];
  v15 = v14;
  if (![(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 minTranscriptMarginInsets];
    x = v17;

    [(CKMessageEntryView *)self bounds];
    v19 = v18;
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 minTranscriptMarginInsets];
    v22 = v19 - v21;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 minTranscriptMarginInsets];
    v11 = v22 - v24;

    v25 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v25 sizeThatFits:{100.0, 100.0}];
    v27 = v26;
    v29 = v28;

    v30 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 minTranscriptMarginInsets];
    [v30 setFrame:{v32, v15 + (v13 - v29) * 0.5, v27, v29}];

    v33 = [(CKMessageEntryView *)self plusButton];
    v34 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v34 frame];
    [v33 setFrame:?];

    v35 = [(CKMessageEntryView *)self audioRecordingView];
    if ([v35 state] == 2)
    {

LABEL_20:
      v76 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [v76 frame];
      x = CGRectGetMaxX(v120) + 16.0;

      v77 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [v77 frame];
      v11 = v11 - (v78 + 16.0);

      goto LABEL_21;
    }

    v74 = [(CKMessageEntryView *)self audioRecordingView];
    v75 = [v74 state];

    if (v75 == 3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v79 = [(CKMessageEntryView *)self audioRecordingView];
  [v79 setFrame:{0.0, 0.0, v11, v13}];

  v80 = [(CKMessageEntryView *)self contentClipView];
  [v80 setFrame:{x, v15, v11, v13}];

  v81 = [(CKMessageEntryView *)self contentClipView];
  v82 = [(CKMessageEntryView *)self contentClipView];
  [v82 frame];
  [v81 _setContinuousCornerRadius:v83 * 0.5];

LABEL_22:
  if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage]|| [(CKMessageEntryView *)self displayMode]== 2 || [(CKMessageEntryView *)self displayMode]== 3)
  {
    v84 = [(CKMessageEntryView *)self audioRecordingView];
    [v84 setAlpha:1.0];

    v85 = [(CKMessageEntryView *)self contentView];
    [v85 setAlpha:0.0];

    v86 = [(CKMessageEntryView *)self audioButton];
    [v86 setAlpha:0.0];

    v87 = [(CKMessageEntryView *)self dictationButton];
    [v87 setAlpha:0.0];

    if (![(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      v88 = [(CKMessageEntryView *)self plusButton];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v90 = [(CKMessageEntryView *)self plusButton];
        [v90 animateBlurTo:10.0];
      }

      v91 = [(CKMessageEntryView *)self emojiButton];
      objc_opt_class();
      v92 = objc_opt_isKindOfClass();

      if (v92)
      {
        v93 = [(CKMessageEntryView *)self emojiButton];
        [v93 animateBlurTo:10.0];
      }
    }

    v94 = [(CKMessageEntryView *)self audioRecordingView];
    v95 = [v94 state];

    v96 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    v118 = v96;
    if (v95 == 1)
    {
      v97 = 10.0;
    }

    else
    {
      v97 = 0.0;
    }

    goto LABEL_33;
  }

  v108 = [(CKMessageEntryView *)self audioRecordingView];
  [v108 setAlpha:0.0];

  v109 = [(CKMessageEntryView *)self contentView];
  [v109 setAlpha:1.0];

  v110 = [(CKMessageEntryView *)self audioButton];
  [v110 setAlpha:1.0];

  v111 = [(CKMessageEntryView *)self dictationButton];
  [v111 setAlpha:1.0];

  v112 = [(CKMessageEntryView *)self plusButton];
  objc_opt_class();
  v113 = objc_opt_isKindOfClass();

  if (v113)
  {
    v114 = [(CKMessageEntryView *)self plusButton];
    [v114 animateBlurTo:0.0];

    v115 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v115 animateBlurTo:10.0];
  }

  v116 = [(CKMessageEntryView *)self emojiButton];
  objc_opt_class();
  v117 = objc_opt_isKindOfClass();

  if (v117)
  {
    v96 = [(CKMessageEntryView *)self emojiButton];
    v97 = 0.0;
    v118 = v96;
LABEL_33:
    [v96 animateBlurTo:v97];
LABEL_34:
  }
}

- (double)calculateOneLinePlaceHolderCenterY:(double)a3
{
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  if (v6)
  {
    v7 = [(CKMessageEntryView *)self contentView];
    v8 = [v7 textView];
    [v8 textContainerInset];
    v10 = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 entryViewTextOneLineHeight];
    v13 = v12 * -0.5;

    [(CKMessageEntryView *)self adjustedCoverInsets];
    v15 = a3 - v10 + v13;
  }

  else
  {
    [(CKMessageEntryView *)self bottomInsetForAppCard];
    v17 = v16;
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 entryViewVerticalCoverInsets];
    v20 = v19;

    v21 = [(CKMessageEntryView *)self contentView];
    v22 = [v21 textView];
    [v22 textContainerInset];
    v24 = v23;

    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 entryViewTextOneLineHeight];
    v27 = v26 * -0.5;

    [(CKMessageEntryView *)self safeAreaInsets];
    v15 = a3 - v17 - v20 - v24 + v27;
  }

  v28 = v15 - v14;
  if (CKIsRunningInMacCatalyst())
  {
    if (CKMainScreenScale_once_58 != -1)
    {
      [CKMessageEntryView calculateOneLinePlaceHolderCenterY:];
    }

    v29 = *&CKMainScreenScale_sMainScreenScale_58;
    if (*&CKMainScreenScale_sMainScreenScale_58 == 0.0)
    {
      v29 = 1.0;
    }

    v30 = floor(v28 * v29);
  }

  else
  {
    if (CKMainScreenScale_once_58 != -1)
    {
      [CKMessageEntryView calculateOneLinePlaceHolderCenterY:];
    }

    v29 = *&CKMainScreenScale_sMainScreenScale_58;
    if (*&CKMainScreenScale_sMainScreenScale_58 == 0.0)
    {
      v29 = 1.0;
    }

    v30 = round(v28 * v29);
  }

  return v30 / v29;
}

- (void)setEntryViewSmoothnessForMorphingAppearance
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self contentClipView];
    [v5 ck_applyGlassBackgroundWithSmoothness:20.0];

    v6 = [(CKMessageEntryView *)self plusButton];
    [v6 ck_applyGlassBackgroundWithSmoothness:20.0];

    v7 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v7 ck_applyGlassBackgroundWithSmoothness:20.0];

    v8 = [(CKMessageEntryView *)self emojiButton];
    [v8 ck_applyGlassBackgroundWithSmoothness:20.0];
  }
}

- (void)applyDefaultGlass
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 entryViewPlusButtonToTextFieldPadding];
    v7 = v6;

    v8 = [(CKMessageEntryView *)self contentClipView];
    [v8 ck_applyGlassBackgroundWithSmoothness:v7];

    v9 = [(CKMessageEntryView *)self plusButton];
    [v9 ck_applyGlassBackgroundWithSmoothness:v7];

    v10 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v10 ck_applyGlassBackgroundWithSmoothness:v7];

    v11 = [(CKMessageEntryView *)self emojiButton];
    [v11 ck_applyGlassBackgroundWithSmoothness:v7];
  }
}

- (void)configurePocketInteractionForScrollView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKMessageEntryView *)self scrollPocketInteraction];

    if (v5)
    {
      v6 = [(CKMessageEntryView *)self scrollPocketInteraction];
      [(CKMessageEntryView *)self removeInteraction:v6];
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v4 edge:4];

    [(CKMessageEntryView *)self setScrollPocketInteraction:v7];
    [(CKMessageEntryView *)self addInteraction:v7];
  }
}

- (void)applySendAnimationGlass
{
  v2 = [(CKMessageEntryView *)self contentClipView];
  [v2 ck_applySendAnimationEntryViewGlass];
}

- (BOOL)_isPresentingInPopover
{
  v3 = [(CKMessageEntryView *)self delegate];
  v4 = [v3 messageEntryViewActiveSendMenuPresentation:self];

  if (v4)
  {
    v5 = [v4 presentationStyle] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldShrinkEntryViewForSendMenuPresentation
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v5 = [(CKMessageEntryView *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  return v6 == 2;
}

- (void)_updateSendMenuPresentationStatePopoverSendMenu:(int64_t)a3
{
  sendMenuPresentationState = self->_sendMenuPresentationState;
  if (sendMenuPresentationState == a3)
  {
    return;
  }

  self->_sendMenuPresentationState = a3;
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [(CKMessageEntryView *)self _shouldShrinkEntryViewForSendMenuPresentation];
  v8 = [v6 entryViewSendMenuContentViewWidthAnimator];
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isPopoverSendMenuEnabled];

  if (v10)
  {
    if (a3 != 3)
    {
      if (a3 || sendMenuPresentationState != 3)
      {
        v7 = 0;
      }

      else
      {
        v11 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        v7 = 0;
        v8 = v11;
      }
    }

    goto LABEL_22;
  }

  v12 = [v6 entryViewSendMenuPresentationStateAnimator];
  v13 = [v6 entryViewSendMenuContentViewWidthAnimator];
  v14 = 1.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v22 = [v21 isPopoverSendMenuEnabled];

      v7 &= v22 ^ 1;
      goto LABEL_19;
    }

    if (a3 == 3)
    {
      v17 = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

      v16 = 1.0;
      v12 = v17;
LABEL_20:
      v15 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    if (sendMenuPresentationState == 3)
    {
      v18 = [v6 entryViewSendMenuPlusButtonDismissScaleAnimator];

      v19 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

      v20 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

      v7 = 0;
      v16 = 1.0;
      v12 = v18;
      v13 = v19;
      v15 = 1.0;
      v8 = v20;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a3 != 1)
  {
LABEL_17:
    v7 = 0;
LABEL_19:
    v16 = 1.0;
    goto LABEL_20;
  }

  v7 = 0;
  v15 = 0.8;
  v16 = 0.94;
  v14 = 1.02;
LABEL_21:
  v23 = [(CKMessageEntryView *)self plusButton];
  v24 = [v23 button];

  v25 = [(CKMessageEntryView *)self contentClipView];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke;
  v37[3] = &unk_1E72ED810;
  v38 = v24;
  v39 = v15;
  v26 = v24;
  [v12 addAnimations:v37];
  [v12 startAnimation];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_2;
  v33[3] = &unk_1E72F1058;
  v34 = v25;
  v35 = v14;
  v36 = v16;
  v27 = v25;
  [v13 addAnimations:v33];
  [v13 startAnimation];

LABEL_22:
  if (self->_shouldCoverViewBeShrunkenForSendMenu != v7)
  {
    v28 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v29 = [v28 isEntryViewRefreshEnabled];

    if ((v29 & 1) == 0)
    {
      if (v7)
      {
        v30 = [(CKMessageEntryView *)self inputButtonContainerView];
        [(CKMessageEntryView *)self bringSubviewToFront:v30];
      }
    }

    [(CKMessageEntryView *)self layoutIfNeeded];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_3;
    v31[3] = &unk_1E72ED8D8;
    v31[4] = self;
    v32 = v7;
    [v8 addAnimations:v31];
    [v8 startAnimation];
  }
}

uint64_t __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke(uint64_t a1)
{
  CATransform3DMakeScale(&v5, *(a1 + 40), *(a1 + 40), 1.0);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform3D:&v4];
}

uint64_t __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_2(uint64_t a1)
{
  CATransform3DMakeScale(&v5, *(a1 + 40), *(a1 + 48), 1.0);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform3D:&v4];
}

uint64_t __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 425) = *(a1 + 40);
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateSendMenuPresentationStateVariableSendMenu:(int64_t)a3
{
  sendMenuPresentationState = self->_sendMenuPresentationState;
  if (sendMenuPresentationState != a3)
  {
    self->_sendMenuPresentationState = a3;
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [(CKMessageEntryView *)self _isPresentingInPopover];
    v8 = [v6 entryViewSendMenuPresentationStateAnimator];
    v54 = [v6 entryViewSendMenuPresentationStateAnimator];
    v9 = [v6 entryViewSendMenuPresentationStateAnimator];
    v50 = [v6 entryViewSendMenuContentViewWidthAnimator];
    v10 = [v6 entryViewSendMenuContentViewWidthAnimator];
    v11 = 0;
    v12 = 0.0;
    v13 = 1.0;
    v52 = v10;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v53 = v9;
        v15 = [v6 entryViewPlusButtonDefaultBackgroundColor];
        v11 = 0;
        v16 = v7;
        v20 = 1.0;
        if (v7)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 1.0;
        }

        if (v7)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.8;
        }

        if (v7)
        {
          v18 = 1.0;
        }

        else
        {
          v18 = 1.02;
        }

        if (v7)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 0.96;
        }
      }

      else if (a3 == 3)
      {
        v13 = 0.0;
        if (v7)
        {
          v12 = 0.0;
        }

        else
        {
          v12 = 6.0;
        }

        v19 = 1.0;
        if (v7)
        {
          v20 = 1.0;
        }

        else
        {
          v20 = 0.25;
        }

        v15 = [v6 entryViewPlusButtonSendMenuOpenBackgroundColor];
        v47 = [v6 entryViewSendMenuPlusButtonSymbolDisappearanceOpacityAnimator];

        v21 = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

        v22 = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

        v17 = 1.0;
        if (!v7)
        {
          [(CKMessageEntryView *)self bounds];
          v24 = v23 * 1.1;
          v25 = [(CKMessageEntryView *)self plusButton];
          [v25 bounds];
          v17 = v24 / v26;
        }

        v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
        v16 = 1;
        v8 = v21;
        v53 = v22;
        v54 = v47;
        v18 = 1.0;
      }

      else
      {
        v53 = v9;
        v16 = 0;
        v19 = 1.0;
        v18 = 1.0;
        v17 = 1.0;
        v15 = 0;
        v20 = 1.0;
      }

      v14 = v50;
    }

    else if (a3)
    {
      v14 = v50;
      v53 = v9;
      if (a3 == 1)
      {
        v15 = [v6 entryViewPlusButtonDefaultBackgroundColor];
        v16 = 0;
        v11 = 0;
        v17 = 0.8;
        v18 = 1.02;
        v19 = 0.94;
      }

      else
      {
        v16 = 0;
        v19 = 1.0;
        v18 = 1.0;
        v17 = 1.0;
        v15 = 0;
      }

      v20 = 1.0;
    }

    else
    {
      v27 = v10;
      v48 = [v6 entryViewPlusButtonDefaultBackgroundColor];
      v14 = v50;
      if (sendMenuPresentationState == 3)
      {
        v46 = [v6 entryViewSendMenuPlusButtonDismissBlurAnimator];

        v45 = [v6 entryViewSendMenuPlusButtonDismissBlurAnimator];

        v44 = [v6 entryViewSendMenuPlusButtonDismissScaleAnimator];

        v28 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        v29 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        v16 = 0;
        v11 = 0;
        v8 = v46;
        v19 = 1.0;
        v18 = 1.0;
        v53 = v44;
        v54 = v45;
        v14 = v28;
        v17 = 1.0;
        v52 = v29;
      }

      else
      {
        v53 = v9;
        v16 = 0;
        v11 = 0;
        v19 = 1.0;
        v18 = 1.0;
        v17 = 1.0;
      }

      v20 = 1.0;
      v15 = v48;
    }

    v30 = [(CKMessageEntryView *)self plusButton];
    v31 = [(CKMessageEntryView *)self contentClipView];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke;
    v67[3] = &unk_1E72F4798;
    v32 = v30;
    v68 = v32;
    v72 = v12;
    v73 = v12;
    v74 = v20;
    v51 = v15;
    v69 = v51;
    v70 = 0;
    v33 = v11;
    v71 = v33;
    [v8 addAnimations:v67];
    [v8 startAnimation];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_2;
    v64[3] = &unk_1E72ED810;
    v34 = v32;
    v65 = v34;
    v66 = v13;
    [v54 addAnimations:v64];
    [v54 startAnimation];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_3;
    v61[3] = &unk_1E72ED810;
    v35 = v34;
    v62 = v35;
    v63 = v17;
    v36 = v53;
    [v53 addAnimations:v61];
    [v53 startAnimation];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_4;
    v57[3] = &unk_1E72F1058;
    v37 = v31;
    v58 = v37;
    v59 = v18;
    v60 = v19;
    [v14 addAnimations:v57];
    [v14 startAnimation];
    if (self->_shouldCoverViewBeShrunkenForSendMenu != v16)
    {
      v38 = v14;
      v39 = v16;
      v49 = v8;
      v40 = v38;
      v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v42 = [v41 isEntryViewRefreshEnabled];

      if ((v42 & 1) == 0)
      {
        if (v39)
        {
          v43 = [(CKMessageEntryView *)self inputButtonContainerView];
          [(CKMessageEntryView *)self bringSubviewToFront:v43];
        }
      }

      [(CKMessageEntryView *)self layoutIfNeeded];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_5;
      v55[3] = &unk_1E72ED8D8;
      v55[4] = self;
      v56 = v39;
      [v52 addAnimations:v55];
      [v52 startAnimation];
      v14 = v40;
      v8 = v49;
      v36 = v53;
    }
  }
}

uint64_t __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundBlurRadiusLightMode:*(a1 + 64)];
  [*(a1 + 32) setBackgroundBlurRadiusDarkMode:*(a1 + 72)];
  [*(a1 + 32) setBackgroundBlurRasterizationPercentage:*(a1 + 80)];
  [*(a1 + 32) setPlusButtonBackgroundColor:*(a1 + 40)];
  [*(a1 + 32) setBackgroundCompositingFilterForLightMode:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);

  return [v3 setBackgroundCompositingFilterForDarkMode:v2];
}

void __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_3(uint64_t a1)
{
  CATransform3DMakeScale(&v4, *(a1 + 40), *(a1 + 40), 1.0);
  v2 = [*(a1 + 32) layer];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_4(uint64_t a1)
{
  CATransform3DMakeScale(&v4, *(a1 + 40), *(a1 + 48), 1.0);
  v2 = [*(a1 + 32) layer];
  v3 = v4;
  [v2 setTransform:&v3];
}

uint64_t __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_5(uint64_t a1)
{
  *(*(a1 + 32) + 425) = *(a1 + 40);
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateSendMenuPresentationState:(int64_t)a3
{
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isPopoverSendMenuEnabled];

  if (v6)
  {

    [(CKMessageEntryView *)self _updateSendMenuPresentationStatePopoverSendMenu:a3];
  }

  else
  {

    [(CKMessageEntryView *)self _updateSendMenuPresentationStateVariableSendMenu:a3];
  }
}

- (id)inputAccessoryViewBackdropColor
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView inputAccessoryViewBackdropColor];
  }

  return v5;
}

- (id)inputAccessoryViewBackdropEffects
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView inputAccessoryViewBackdropEffects];
  }

  return v5;
}

uint64_t __79__CKMessageEntryView__shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker__block_invoke()
{
  result = objc_opt_respondsToSelector();
  _shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker_respondsToIsTextFormattingInProgress = result & 1;
  return result;
}

- (void)setKeyboardVisible:(BOOL)a3
{
  if (self->_keyboardVisible != a3)
  {
    self->_keyboardVisible = a3;
    [(CKMessageEntryView *)self setNeedsLayout];
    v5 = [(CKMessageEntryView *)self delegate];
    [v5 messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
  }
}

- (BOOL)_shouldUseDarkAppearanceFromTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = v4 == 2;
  v6 = [MEMORY[0x1E69DD2E8] keyWindow];
  v7 = [v6 windowScene];
  v8 = [v7 _enhancedWindowingEnabled];

  if ((v8 & 1) == 0)
  {
    v9 = [(CKMessageEntryView *)self isRunningInNotificationExtension];
    return v4 == 2 || v9;
  }

  return v5;
}

- (void)setEntryViewTraitCollection:(id)a3 resetStyle:(BOOL)a4
{
  v4 = a4;
  v44[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKMessageEntryView *)self _shouldUseDarkAppearanceFromTraitCollection:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v9 = MEMORY[0x1E69DD1B8];
    v44[0] = v6;
    v44[1] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v11 = [v9 traitCollectionWithTraitsFromCollections:v10];

    v6 = v11;
  }

  if (v4 || (style = self->_style) == 0 || v7 != CKMessageEntryViewStyleIsForDarkAppearance([(CKMessageEntryView *)self style]) && (style = CKMessageEntryViewStyleInvert([(CKMessageEntryView *)self style])) == 0)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = v14;
    if (v7)
    {
      v16 = [v14 entryViewDarkStyle];
    }

    else
    {
      v16 = [v14 entryViewStyle];
    }

    style = v16;
  }

  entryViewTraitCollection = self->_entryViewTraitCollection;
  if (entryViewTraitCollection && (-[UITraitCollection displayScale](entryViewTraitCollection, "displayScale"), v19 = v18, [v6 displayScale], v19 == v20) && (v21 = -[UITraitCollection horizontalSizeClass](self->_entryViewTraitCollection, "horizontalSizeClass"), v21 == objc_msgSend(v6, "horizontalSizeClass")) && (v22 = -[UITraitCollection verticalSizeClass](self->_entryViewTraitCollection, "verticalSizeClass"), v22 == objc_msgSend(v6, "verticalSizeClass")) && (v23 = -[UITraitCollection userInterfaceStyle](self->_entryViewTraitCollection, "userInterfaceStyle"), v23 == objc_msgSend(v6, "userInterfaceStyle")) && (-[UITraitCollection preferredContentSizeCategory](self->_entryViewTraitCollection, "preferredContentSizeCategory"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "preferredContentSizeCategory"), v25 = objc_claimAutoreleasedReturnValue(), v26 = UIContentSizeCategoryCompareToCategory(v24, v25) == NSOrderedSame, v25, v24, v26) && (v27 = -[UITraitCollection activeAppearance](self->_entryViewTraitCollection, "activeAppearance"), v27 == objc_msgSend(v6, "activeAppearance")) && (v28 = -[UITraitCollection userInterfaceLevel](self->_entryViewTraitCollection, "userInterfaceLevel"), v28 == objc_msgSend(v6, "userInterfaceLevel")))
  {
    v29 = [(UITraitCollection *)self->_entryViewTraitCollection isTranscriptBackgroundActive];
    v30 = v29 ^ [v6 isTranscriptBackgroundActive];
  }

  else
  {
    v30 = 1;
  }

  v31 = [(CKMessageEntryView *)self style];
  v32 = v31;
  if (((v4 | v30) & 1) != 0 || v31 != style)
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v40 = 67109632;
        *v41 = v4;
        *&v41[4] = 1024;
        *&v41[6] = v30;
        v42 = 1024;
        v43 = v32 != style;
        _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "resetStyle: %{BOOL}d traitCollectionChanged: %{BOOL}d styleChange: %{BOOL}d", &v40, 0x14u);
      }
    }

    objc_storeStrong(&self->_entryViewTraitCollection, v6);
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [(UITraitCollection *)self->_entryViewTraitCollection description];
        v40 = 138412290;
        *v41 = v35;
        _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Updated _entryViewTraitCollection property. Description: {%@}", &v40, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(CKMessageEntryView *)self isRunningInNotificationExtension];
        v38 = @"NO";
        if (v37)
        {
          v38 = @"YES";
        }

        v40 = 138412290;
        *v41 = v38;
        _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Update style. isRunningInNotificationExtension: {%@}", &v40, 0xCu);
      }
    }

    [(CKMessageEntryView *)self setStyle:style];
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Returned from [CKMessageEntryView setStyle:]", &v40, 2u);
      }
    }

    [(CKMessageEntryView *)self updateEntryView];
    [(CKMessageEntryView *)self updateAppsMenu];
    [(CKMessageEntryView *)self setNeedsLayout];
    [(CKMessageEntryView *)self layoutIfNeeded];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  [(CKMessageEntryView *)self setStyle:[(CKMessageEntryView *)self style]];

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)prepareForResizeAnimationIfNeeded
{
  v24 = [(CKMessageEntryView *)self contentView];
  v2 = [v24 pluginView];
  if (v2 && [v24 shouldShowPlugin])
  {
    [v24 computedPluginViewFrame];
    width = v26.size.width;
    v26.size.height = 0.0;
    MinX = CGRectGetMinX(v26);
    v5 = [v24 pluginView];
    [v5 setFrame:{MinX, 0.0, width, 0.0}];

    [v24 computedClearPluginButtonFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v27.origin.y = 0.0;
    v27.size.height = 0.0;
    v27.origin.x = MinX;
    v27.size.width = width;
    MidX = CGRectGetMidX(v27);
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    v15 = MidX - CGRectGetWidth(v28) * 0.5;
    v29.origin.y = 0.0;
    v29.size.height = 0.0;
    v29.origin.x = MinX;
    v29.size.width = width;
    MidY = CGRectGetMidY(v29);
    v30.origin.x = v7;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    v17 = MidY - CGRectGetHeight(v30) * 0.5;
    v18 = [v24 clearPluginButton];
    [v18 setAlpha:0.0];

    v19 = [v24 clearPluginButton];
    [v19 setFrame:{v15, v17, v11, v13}];

    [v24 bounds];
    v21 = v20;
    if (CKPixelWidth_once_8 != -1)
    {
      [CKMessageEntryView prepareForResizeAnimationIfNeeded];
    }

    v22 = *&CKPixelWidth_sPixel_8;
    v23 = [v24 pluginDividerLine];
    [v23 setFrame:{0.0, 0.0, v21, v22}];
  }
}

- (void)_configureForDisplayModeSending
{
  v3 = [(CKMessageEntryView *)self sendButtonSpinner];
  [v3 startAnimating];

  v4 = [(CKMessageEntryView *)self audioButton];
  [v4 setHidden:1];

  v5 = [(CKMessageEntryView *)self plusButton];
  [v5 setHidden:0];

  v6 = [(CKMessageEntryView *)self emojiButton];
  [v6 setHidden:0];

  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isEntryViewRefreshEnabled];

  if (v8)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v9 = ;
  [v9 setHidden:1];

  v10 = [(CKMessageEntryView *)self dictationButton];
  [v10 setHidden:1];

  v11 = [(CKMessageEntryView *)self contentClipView];
  [v11 setHidden:0];

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isEntryViewRefreshEnabled];

  if (v13)
  {
    v14 = [(CKMessageEntryView *)self contentView];
    [v14 setHidden:0];
  }
}

- (void)_configureForDisplayModeText
{
  v3 = [(CKMessageEntryView *)self sendButtonSpinner];
  [v3 stopAnimating];

  v4 = [(CKMessageEntryView *)self shouldShowAudioButton];
  v5 = [(CKMessageEntryView *)self audioButton];
  [v5 setHidden:v4 ^ 1];

  v6 = [(CKMessageEntryView *)self dictationButton];
  [v6 setHidden:v4];

  v7 = [(CKMessageEntryView *)self dictationButton];
  [v7 setEnabled:{objc_msgSend(MEMORY[0x1E69DCBF0], "dictationInputModeIsFunctional")}];

  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v6) = [v8 isEntryViewRefreshEnabled];

  if (v6)
  {
    v9 = [(CKMessageEntryView *)self glassSendButton];
    [v9 setHidden:1];
  }

  else
  {
    v10 = [(CKMessageEntryView *)self sendButton];
    [v10 setHidden:1];

    v9 = [(CKMessageEntryView *)self inputButtonContainerView];
    [v9 setAlpha:1.0];
  }

  v11 = [(CKMessageEntryView *)self hintLabel];
  [v11 setHidden:1];

  v12 = [(CKMessageEntryView *)self contentClipView];
  [v12 setHidden:0];

  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isEntryViewRefreshEnabled];

  if (v14)
  {
    [(CKMessageEntryView *)self contentView];
  }

  else
  {
    v15 = [(CKMessageEntryView *)self plusButton];
    [v15 setHidden:0];

    [(CKMessageEntryView *)self emojiButton];
  }
  v16 = ;
  [v16 setHidden:0];
}

- (void)_configureForDisplayModeRecording
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKMessageEntryView *)self audioButton];
    [v5 setHidden:1];

    v6 = [(CKMessageEntryView *)self plusButton];
    [v6 setHidden:1];

    v7 = [(CKMessageEntryView *)self emojiButton];
    [v7 setHidden:1];

    v8 = [(CKMessageEntryView *)self contentClipView];
    [v8 setHidden:1];
  }

  [(CKMessageEntryView *)self _setupAudioMessageRecordingView];
}

- (void)_configureForDisplayModeRecorded
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(CKMessageEntryView *)self audioButton];
    [v5 setHidden:1];

    v6 = [(CKMessageEntryView *)self plusButton];
    [v6 setHidden:1];

    v7 = [(CKMessageEntryView *)self emojiButton];
    [v7 setHidden:1];

    v8 = [(CKMessageEntryView *)self contentClipView];
    [v8 setHidden:1];
  }

  [(CKMessageEntryView *)self _setupAudioMessageRecordingView];
  v9 = [(CKMessageEntryView *)self audioRecordingView];
  [v9 setState:2];
}

- (void)configureForDisplayMode:(unint64_t)a3
{
  if ([(CKMessageEntryView *)self displayMode]!= a3)
  {
    [(CKMessageEntryView *)self setDisplayMode:a3];
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeRecorded];
        goto LABEL_16;
      }

      if (a3 == 4)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeSending];
        goto LABEL_16;
      }
    }

    else
    {
      if (a3 == 1)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeText];
        v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        v7 = [v6 isEntryViewRefreshEnabled];

        if ((v7 & 1) == 0)
        {
          [(CKMessageEntryView *)self clearAudioRecordingUI];
        }

        goto LABEL_16;
      }

      if (a3 == 2)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeRecording];
LABEL_16:
        [(CKMessageEntryView *)self setNeedsLayout];
        return;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Attempting to configure the entry view with an un-configured display mode.", v8, 2u);
      }
    }

    goto LABEL_16;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CKMessageEntryView *)self adjustedCoverInsets:a3.width];
  v6 = v5;
  v8 = v7;
  v11 = width - (v9 + v10);
  v12 = [(CKMessageEntryView *)self contentView];
  [v12 sizeThatFits:{v11, 1.79769313e308}];
  v14 = v13;
  v15 = [(CKMessageEntryView *)self audioRecordingView];

  if (v15)
  {
    v16 = [(CKMessageEntryView *)self audioRecordingView];
    [(CKMessageEntryView *)self bounds];
    v18 = v17;
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 audioRecordingViewButtonSpacing];
    [v16 sizeThatFits:{v18 + v20 * -2.0, 1.79769313e308}];
    v22 = v21;

    if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      v22 = v14 + (v22 - v14) * 0.3;
    }
  }

  else if ([(CKMessageEntryView *)self shouldShowHintLabel])
  {
    v23 = [(CKMessageEntryView *)self hintLabel];
    [v23 frame];
    v22 = v24;
  }

  else
  {
    v22 = v14;
  }

  v25 = v8 + v6 + v22;
  v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v27 = [v26 isEntryViewRefreshEnabled];

  if ((v27 & 1) == 0)
  {
    [(CKMessageEntryView *)self safeAreaInsets];
    v25 = v25 + v28;
  }

  v29 = ceil(width);
  v30 = ceil(v25);
  result.height = v30;
  result.width = v29;
  return result;
}

- (CGRect)coverFrameThatFitsInSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKMessageEntryView *)self adjustedCoverInsets];
  v8 = width - (v6 + v7);
  v11 = height - (v9 + v10);
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 entryViewCoverMinHeight];
  v14 = v13;

  if (v14 < v11)
  {
    v14 = v11;
  }

  v15 = [(CKMessageEntryView *)self contentView];
  [v15 sizeThatFits:{v8, v14}];
  [(CKMessageEntryView *)self _computedFinalCoverFrameRectForContentSize:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)popoverSendMenuFrameChanged
{
  [(CKMessageEntryView *)self setNeedsLayout];

  [(CKMessageEntryView *)self layoutIfNeeded];
}

- (CGRect)_computedFinalCoverFrameRectForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKMessageEntryView *)self adjustedCoverInsets];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isEntryViewRefreshEnabled];

  if (v11)
  {
    [(CKMessageEntryView *)self bounds];
    v13 = v12;
    [(CKMessageEntryView *)self bounds];
    v15 = v14 - height - v7;
  }

  else
  {
    [(CKMessageEntryView *)self safeAreaInsets];
    v17 = v16;
    [(CKMessageEntryView *)self bounds];
    v13 = v18;
    [(CKMessageEntryView *)self bounds];
    v15 = v19 - height - (v7 + v17);
  }

  v20 = v13 - width - v9;
  if (self->_shouldCoverViewBeShrunkenForSendMenu)
  {
    v21 = [(CKMessageEntryView *)self delegate];
    v22 = [v21 messageEntryViewActiveSendMenuPresentation:self];

    if (v22)
    {
      v23 = [v22 newPopoverLayoutMetrics];
      if (v23)
      {
        v56 = v15;
        v24 = [(CKMessageEntryView *)self window];
        v25 = [v23 coordinateSpace];
        [v23 frame];
        [v25 convertRect:v24 toCoordinateSpace:?];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        [(CKMessageEntryView *)self convertRect:0 fromView:v27, v29, v31, v33];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        [(CKMessageEntryView *)self bounds];
        MinX = CGRectGetMinX(v57);
        v58.origin.x = v35;
        v58.origin.y = v37;
        v58.size.width = v39;
        v58.size.height = v41;
        v43 = CGRectGetMinX(v58);
        if (MinX >= v43)
        {
          v43 = MinX;
        }

        [(CKMessageEntryView *)self bounds];
        MaxX = CGRectGetMaxX(v59);
        v60.origin.x = v35;
        v60.origin.y = v37;
        v60.size.width = v39;
        v60.size.height = v41;
        v45 = CGRectGetMaxX(v60);
        if (MaxX < v45)
        {
          v45 = MaxX;
        }

        v46 = v45 - v55 + 24.0;
        v47 = vabdd_f64(v20, v46);
        v48 = 0.0;
        if (self->_shouldCoverViewBeShrunkenForSendMenu)
        {
          v49 = +[CKUIBehavior sharedBehaviors];
          [v49 sendMenuEntryViewHorizontalPositionAdjustment];
          v48 = v50;
        }

        v20 = v46 - v48;
        width = width - (v47 + v48);

        v15 = v56;
      }
    }
  }

  v51 = v20;
  v52 = v15;
  v53 = width;
  v54 = height;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v73 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v70.receiver = self;
  v70.super_class = CKMessageEntryView;
  v8 = [(CKMessageEntryView *)&v70 hitTest:v7 withEvent:x, y];
  v9 = [(CKMessageEntryView *)self audioRecordingView];
  if (v9)
  {
    v10 = [(CKMessageEntryView *)self audioRecordingView];
    v11 = [(CKEntryViewButton *)v8 isDescendantOfView:v10];

    if (v11)
    {
      v12 = v8;
      goto LABEL_46;
    }
  }

  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 isEntryViewRefreshEnabled];

  if (v14)
  {
    v15 = [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    v16 = [(CKMessageEntryView *)self sendButton];
    v15 = [v16 button];
  }

  [(CKEntryViewButton *)v15 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(CKEntryViewButton *)v15 superview];
  [(CKMessageEntryView *)self convertRect:v25 fromView:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(CKMessageEntryView *)self frame];
  if (v8 == v15)
  {
    goto LABEL_24;
  }

  if (v8 == self->_audioButton)
  {
    goto LABEL_24;
  }

  v77.size.width = v32 - v27;
  v77.origin.x = v27;
  v77.origin.y = v29;
  v77.size.height = v31;
  v75.x = x;
  v75.y = y;
  if (!CGRectContainsPoint(v77, v75))
  {
    goto LABEL_24;
  }

  v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v34 = [v33 isEntryViewRefreshEnabled];

  if (v34)
  {
    v35 = [(CKMessageEntryView *)self glassSendButton];
    if ([v35 isEnabled])
    {
      v36 = [(CKMessageEntryView *)self glassSendButton];
      v37 = [v36 isHidden];

      goto LABEL_15;
    }

LABEL_17:

    goto LABEL_18;
  }

  v35 = [(CKMessageEntryView *)self sendButton];
  if (![v35 isEnabled])
  {
    goto LABEL_17;
  }

  v38 = [(CKMessageEntryView *)self sendButton];
  v37 = [v38 isHidden];

LABEL_15:
  if ((v37 & 1) == 0)
  {
    v39 = v15;
LABEL_22:
    v40 = v8;
    v8 = v39;
    goto LABEL_23;
  }

LABEL_18:
  if ([(CKEntryViewButton *)self->_audioButton isEnabled]&& ([(CKEntryViewButton *)self->_audioButton isHidden]& 1) == 0)
  {
    v39 = [(CKEntryViewButton *)self->_audioButton button];
    goto LABEL_22;
  }

  v40 = [(CKMessageEntryView *)self delegate];
  [v40 messageEntryViewSendButtonHitWhileDisabled:self];
LABEL_23:

LABEL_24:
  v41 = [(CKSendMenuButtonProtocol *)self->_plusButton button];
  if ([(CKMessageEntryView *)self isUserInteractionEnabled])
  {
    WeakRetained = [(CKEntryViewButton *)v41 window];
    if (!WeakRetained || ![(CKEntryViewButton *)v41 isEnabled]|| ([(CKEntryViewButton *)v41 isHidden]& 1) != 0)
    {
      goto LABEL_33;
    }

    v43 = [(CKMessageEntryView *)self audioRecordingView];
    v44 = v43 == 0;

    if (v44)
    {
      [(CKEntryViewButton *)v41 frame];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = [(CKEntryViewButton *)v41 superview];
      [(CKMessageEntryView *)self convertRect:v53 fromView:v46, v48, v50, v52];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v78.origin.x = v55;
      v78.origin.y = v57;
      v78.size.width = v59;
      v78.size.height = v61;
      MaxX = CGRectGetMaxX(v78);
      if (v8 == v41)
      {
LABEL_32:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messageEntryViewPlusButtonHit:self];
LABEL_33:

        goto LABEL_34;
      }

      v79.size.width = MaxX;
      v79.origin.x = 0.0;
      v79.origin.y = v57;
      v79.size.height = v61;
      v76.x = x;
      v76.y = y;
      if (CGRectContainsPoint(v79, v76))
      {
        v63 = v41;

        v8 = v63;
        goto LABEL_32;
      }
    }
  }

LABEL_34:
  if (IMOSLoggingEnabled())
  {
    v64 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v72 = v8;
      _os_log_impl(&dword_19020E000, v64, OS_LOG_TYPE_INFO, "hitTest was called with hitView: %@", buf, 0xCu);
    }
  }

  if (v8 == v15)
  {
    v65 = [(CKMessageEntryView *)self delegate];
    v66 = [v65 messageEntryViewIsSendingMessage:self];

    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = @"NO";
        if (v66)
        {
          v68 = @"YES";
        }

        *buf = 138412290;
        v72 = v68;
        _os_log_impl(&dword_19020E000, v67, OS_LOG_TYPE_INFO, "hitTest - isSendingMessage == %@", buf, 0xCu);
      }
    }
  }

  v12 = v8;

LABEL_46:

  return v12;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 entryViewFollowsKeyboardLayoutGuide];

  if (v9)
  {
    goto LABEL_13;
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 isEntryViewInputAccessory];

  if (v11)
  {
    v22 = 0.0;
    v23 = 0.0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v13 messageEntryViewWidth:&v23 andOffset:&v22];

      if (v14)
      {
        x = v22;
        width = v23;
      }

      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  v15 = [(CKMessageEntryView *)self superview];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [(CKMessageEntryView *)self superview];
  [v16 bounds];
  v18 = v17;

  y = v18 - height;
  v23 = 0.0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  v20 = [v19 chatFooterViewOffset:&v23];

  if (v20)
  {
    y = y - v23;
  }

LABEL_13:
  v21.receiver = self;
  v21.super_class = CKMessageEntryView;
  [(CKMessageEntryView *)&v21 setFrame:x, y, width, height];
}

+ (UIEdgeInsets)coverViewInsetsForMarginInsets:(UIEdgeInsets)a3 shouldShowPluginButtons:(BOOL)a4 shouldShowCharacterCount:(BOOL)a5 shouldCenterCharacterCount:(BOOL *)a6 isStewieMode:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  right = a3.right;
  left = a3.left;
  v49[1] = *MEMORY[0x1E69E9840];
  v13 = [CKUIBehavior sharedBehaviors:a3.top];
  [v13 entryViewVerticalCoverInsets];
  v15 = v14;
  v17 = v16;

  v18 = 0.0;
  if (v9)
  {
    if (v7)
    {
      v19 = sMaximumCharacterCountString(1);
      v48 = *MEMORY[0x1E69DB648];
      v20 = +[CKUIBehavior sharedBehaviors];
      v21 = [v20 characterCountSatelliteFont];
      v49[0] = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = v49;
      v24 = &v48;
    }

    else
    {
      v19 = sMaximumCharacterCountString(0);
      v46 = *MEMORY[0x1E69DB648];
      v20 = +[CKUIBehavior sharedBehaviors];
      v21 = [v20 characterCountFont];
      v47 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v47;
      v24 = &v46;
    }

    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    [v19 sizeWithAttributes:v25];
    v27 = ceil(v26);

    v18 = v27 + 7.0;
  }

  v28 = +[CKUIBehavior sharedBehaviors];
  [v28 entryViewHorizontalCoverInsets];
  v30 = v29;

  if (v30 >= right)
  {
    right = v30;
  }

  if (!v10)
  {
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 entryViewHorizontalCoverInsets];
    v38 = v40;
    goto LABEL_14;
  }

  v31 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v32 = [v31 isEntryViewRefreshEnabled];

  if (!v32)
  {
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 entryViewNonCollapsableLeftPadding];
    v38 = v41;
LABEL_14:

    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  +[CKGlassSendMenuButton buttonSize];
  v34 = v33;
  v35 = +[CKUIBehavior sharedBehaviors];
  [v35 entryViewPlusButtonToTextFieldPadding];
  v37 = v36;

  v38 = left + v34 + v37;
  if (a6)
  {
LABEL_15:
    *a6 = right >= v18;
  }

LABEL_16:
  if (v38 >= left)
  {
    v42 = v38;
  }

  else
  {
    v42 = left;
  }

  v43 = v15;
  v44 = v17;
  v45 = right;
  result.right = v45;
  result.bottom = v44;
  result.left = v42;
  result.top = v43;
  return result;
}

+ (UIEdgeInsets)contentViewInsetsForMarginInsets:(UIEdgeInsets)a3 shouldShowPluginButtons:(BOOL)a4 shouldShowCharacterCount:(BOOL)a5 shouldCoverSendButton:(BOOL)a6 isStewieMode:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v17 = [v16 isEntryViewRefreshEnabled];

  if (v17)
  {
    [a1 coverViewInsetsForMarginInsets:v10 shouldShowPluginButtons:v9 shouldShowCharacterCount:0 shouldCenterCharacterCount:v7 isStewieMode:{top, left, bottom, right}];
    top = v18;
    left = v19;
    bottom = v20;
    right = v21;
  }

  v22 = 0.0;
  if (!CKIsRunningInMacCatalyst())
  {
    v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v24 = [v23 isEntryViewRefreshEnabled];

    if (v24)
    {
      +[CKGlassSendButton buttonSize];
      if (a6)
      {
        goto LABEL_10;
      }

      v26 = v25;
      v27 = +[CKUIBehavior sharedBehaviors];
      [v27 entryViewSendButtonCoverSpace];
      v22 = v26 + v28;
    }

    else
    {
      if (a6)
      {
        goto LABEL_10;
      }

      v27 = +[CKUIBehavior sharedBehaviors];
      [v27 entryViewSendButtonCoverSpace];
      v30 = v29;
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 sendButtonSize];
      v22 = v30 + v32;
    }
  }

LABEL_10:
  v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v34 = [v33 isEntryViewRefreshEnabled];

  if (v34)
  {
    v35 = +[CKUIBehavior sharedBehaviors];
    [v35 balloonLineFragmentPadding];
    v37 = v36;

    v38 = +[CKUIBehavior sharedBehaviors];
    [v38 entryContentViewTextLeftOffset];
    v40 = v39 - v37;

    v41 = left + v40;
    v42 = right + v22;
  }

  else
  {
    [a1 coverViewInsetsForMarginInsets:v10 shouldShowPluginButtons:v9 shouldShowCharacterCount:0 shouldCenterCharacterCount:v7 isStewieMode:{top, left, bottom, right}];
    top = v43;
    v45 = v44;
    bottom = v46;
    v48 = v47;
    v49 = +[CKUIBehavior sharedBehaviors];
    [v49 entryFieldCoverLineWidth];
    v41 = v45 + 8.0;
    v42 = v48 + v22 + v50 * 2.0;
  }

  v51 = bottom + 0.0;
  v52 = top + 0.0;
  v53 = v41;
  v54 = v42;
  result.right = v54;
  result.bottom = v51;
  result.left = v53;
  result.top = v52;
  return result;
}

- (void)setMarginInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(CKMessageEntryView *)self marginInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_marginInsets.top = top;
    self->_marginInsets.left = left;
    self->_marginInsets.bottom = bottom;
    self->_marginInsets.right = right;
    v15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v16 = [v15 isEntryViewRefreshEnabled];

    if (!v16)
    {
      v39 = 0;
      v17 = 0;
      if ([(CKMessageEntryView *)self shouldShowPluginButtons])
      {
        v18 = [(CKMessageEntryView *)self plusButton];
        v17 = v18 != 0;
      }

      if ([(CKConversation *)self->_conversation isStewieConversation])
      {
        v19 = 1;
      }

      else
      {
        v20 = [(CKConversation *)self->_conversation sendingService];
        if ([v20 __ck_isiMessageLite])
        {
          v19 = 1;
        }

        else
        {
          v21 = [(CKMessageEntryView *)self conversation];
          v22 = [v21 sendingService];
          if ([v22 __ck_isSatelliteSMS])
          {
            v19 = 1;
          }

          else
          {
            v23 = [(CKMessageEntryView *)self conversation];
            v24 = [v23 chat];
            v19 = [v24 shouldDisplayOffGridModeStatus];
          }
        }
      }

      [CKMessageEntryView coverViewInsetsForMarginInsets:v17 shouldShowPluginButtons:[(CKMessageEntryView *)self shouldShowCharacterCount] shouldShowCharacterCount:&v39 shouldCenterCharacterCount:v19 isStewieMode:top, left, bottom, right];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [(CKMessageEntryView *)self coverInsets];
      if (v36 == v28 && v33 == v26 && v35 == v32 && v34 == v30)
      {
        v37 = [(CKMessageEntryView *)self shouldCenterCharacterCount];
        v38 = v39;
        if (v39 == v37)
        {
          return;
        }
      }

      else
      {
        v38 = v39;
      }

      [(CKMessageEntryView *)self setShouldCenterCharacterCount:v38 & 1];
      [(CKMessageEntryView *)self setCoverInsets:v26, v28, v30, v32];
      [(CKMessageEntryView *)self setNeedsLayout];
      return;
    }

    [(CKMessageEntryView *)self setNeedsLayout];
  }
}

- (void)setBackdropGroupName:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  backdropGroupName = self->_backdropGroupName;
  if (v6)
  {
    self->_backdropGroupName = 0;
  }

  else if (![(NSString *)backdropGroupName isEqualToString:v4])
  {
    v8 = [v4 copy];
    v9 = self->_backdropGroupName;
    self->_backdropGroupName = v8;

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Setting backdrop group name %@", &v11, 0xCu);
      }
    }

    [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView setBackdropGroupName:self->_backdropGroupName];
  }
}

- (double)coverViewWidth
{
  v2 = [(CKMessageEntryView *)self contentClipView];
  [v2 bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (CGRect)sendButtonFrameInScreenCoordinates
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v5 = ;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v6 = v7;
  }

  else
  {
    v7 = [(CKMessageEntryView *)self audioButton];
  }

  v8 = v7;

  v9 = [v8 superview];
  [v8 frame];
  [v9 convertRect:0 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)activeKeyboardHeight
{
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CKMessageEntryView)initWithFrame:(CGRect)a3 marginInsets:(UIEdgeInsets)a4 shouldAllowImpact:(BOOL)a5 shouldShowSendButton:(BOOL)a6 shouldShowSubject:(BOOL)a7 shouldShowPluginButtons:(BOOL)a8 shouldShowCharacterCount:(BOOL)a9 traitCollection:(id)a10 shouldDisableAttachments:(BOOL)a11 shouldUseNonEmojiKeyboard:(BOOL)a12 shouldUseNonHandwritingKeyboard:(BOOL)a13 shouldDisableKeyboardStickers:(BOOL)a14 shouldAllowPollSuggestions:(BOOL)a15 translationLanguage:(id)a16
{
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v240[5] = *MEMORY[0x1E69E9840];
  v30 = a10;
  v31 = a16;
  v239.receiver = self;
  v239.super_class = CKMessageEntryView;
  v32 = [(CKMessageEntryView *)&v239 initWithFrame:x, y, width, height];
  if (!v32)
  {
    goto LABEL_78;
  }

  v233 = a9;
  v235 = v31;
  [CKMessageEntryView setCurrentEntryView:v32];
  [(CKMessageEntryView *)v32 setPluginSendingEnabled:1];
  v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v34 = [v33 isEntryViewRefreshEnabled];

  if (v34)
  {
    [(UIView *)v32 ck_applyGlassGroup];
  }

  v35 = a11;
  v36 = [(CKMessageEntryView *)v32 conversation];
  v37 = [v36 sendingService];
  v230 = v30;
  v231 = v18;
  v236 = v19;
  if ([v37 __ck_isiMessageLite])
  {
    v38 = v17;
    v39 = 1;
  }

  else
  {
    v228 = v20;
    v40 = [(CKMessageEntryView *)v32 conversation];
    v41 = [v40 sendingService];
    v38 = v17;
    if ([v41 __ck_isSatelliteSMS])
    {
      v39 = 1;
    }

    else
    {
      v42 = [(CKMessageEntryView *)v32 conversation];
      v43 = [v42 chat];
      v39 = [v43 shouldDisplayOffGridModeStatus];

      v35 = a11;
    }

    v18 = v231;
    v20 = v228;
  }

  v44 = [(CKMessageEntryView *)v32 conversation];
  v45 = [v44 isStewieConversation] | v39;

  v223 = v45;
  v46 = v45 | v233;
  v238 = 0;
  [(CKMessageEntryView *)v32 setMarginInsets:top, left, bottom, right];
  v47 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v44) = [v47 isEntryViewRefreshEnabled];

  if ((v44 & 1) == 0)
  {
    [CKMessageEntryView coverViewInsetsForMarginInsets:v38 shouldShowPluginButtons:v46 & 1 shouldShowCharacterCount:&v238 shouldCenterCharacterCount:v223 & 1 isStewieMode:top, left, bottom, right];
    [(CKMessageEntryView *)v32 setCoverInsets:?];
  }

  [(CKMessageEntryView *)v32 setShouldShowSendButton:v236];
  [(CKMessageEntryView *)v32 setShouldShowSubject:v18];
  [(CKMessageEntryView *)v32 setShouldShowPluginButtons:v38];
  [(CKMessageEntryView *)v32 setShouldShowCharacterCount:v46 & 1];
  [(CKMessageEntryView *)v32 setShouldCenterCharacterCount:v238];
  [(CKMessageEntryView *)v32 setShouldDisableAttachments:v35];
  [(CKMessageEntryView *)v32 setShouldAllowImpactSend:v20];
  v48 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v49 = [v48 enabledDictationLanguages];
  -[CKMessageEntryView setDictationEnabledForLanguage:](v32, "setDictationEnabledForLanguage:", [v49 count] != 0);

  [(CKMessageEntryView *)v32 setShouldShowDictationButton:1];
  [(CKMessageEntryView *)v32 setAccessibilityIdentifier:@"entryView"];
  v50 = [MEMORY[0x1E696AD88] defaultCenter];
  [v50 addObserver:v32 selector:sel_textEffectsWindowOffsetDidChange_ name:*MEMORY[0x1E69DE5A8] object:0];

  v51 = [MEMORY[0x1E696AD88] defaultCenter];
  [v51 addObserver:v32 selector:sel__keyboardsSettingsChanged_ name:@"AppleKeyboardsSettingsChangedNotification" object:0];

  v52 = [MEMORY[0x1E696AD88] defaultCenter];
  [v52 addObserver:v32 selector:sel__dictationAvailabilityDidChange name:*MEMORY[0x1E69DDF60] object:0];

  v53 = [MEMORY[0x1E696AD88] defaultCenter];
  [v53 addObserver:v32 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  v54 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v49) = [v54 entryViewFollowsKeyboardLayoutGuide];

  if (v49)
  {
    [(CKMessageEntryView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v55 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v56 = [v55 isEntryViewRefreshEnabled];

    if ((v56 & 1) == 0)
    {
      v57 = [(CKMessageEntryView *)v32 layer];
      [v57 setAnchorPoint:{1.0, 1.0}];
    }
  }

  v225 = v35;
  [(CKMessageEntryView *)v32 setOpaque:0];
  v58 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v59 = [v58 isEntryViewRefreshEnabled];

  if ((v59 & 1) == 0)
  {
    [(CKMessageEntryView *)v32 updateBackgroundView];
  }

  v60 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v61 = [v60 isSendMenuEnabled];

  v62 = +[CKUIBehavior sharedBehaviors];
  v63 = [v62 entryViewSupportsPlusButton];

  v64 = [[CKMessageEntryViewButtonContainerView alloc] initWithFrame:x, y, width, height];
  [(CKMessageEntryViewButtonContainerView *)v64 setClipsToBounds:v61 ^ 1u];
  v65 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v62) = [v65 isEntryViewRefreshEnabled];

  if ((v62 & 1) == 0)
  {
    v66 = [(CKMessageEntryViewButtonContainerView *)v64 layer];
    [v66 setAnchorPoint:{0.0, 0.0}];
  }

  [(CKMessageEntryView *)v32 addSubview:v64];
  [(CKMessageEntryView *)v32 setInputButtonContainerView:v64];
  v67 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v68 = [v67 isEntryViewRefreshEnabled];

  if ((v68 & 1) == 0)
  {
    v69 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{x, y, width, height}];
    [(CKMessageEntryView *)v32 setMessageEditingBlurOverlayView:v69];
    [(CKMessageEntryView *)v32 addSubview:v69];
    [v69 setHidden:1];
  }

  v70 = +[CKUIBehavior sharedBehaviors];
  v71 = v70;
  if (v63)
  {
    [v70 entryViewPlusButtonSize];
  }

  else
  {
    [v70 browserButtonSize];
  }

  v73 = v72;

  [(CKMessageEntryView *)v32 setInputButtonSize:v73, v73];
  v74 = +[CKUIBehavior sharedBehaviors];
  v75 = [v74 entryViewPlusButtonClass];

  v76 = objc_alloc_init(v75);
  v77 = +[CKUIBehavior sharedBehaviors];
  LODWORD(v75) = [v77 browserButtonShouldUseMenu];

  v78 = [v76 button];
  v79 = v78;
  if (v75)
  {
    [v78 setContextMenuIsPrimary:1];

    v80 = [v76 button];
    [v80 setContextMenuEnabled:1];
LABEL_29:

    goto LABEL_30;
  }

  [v78 addTarget:v32 action:sel_plusButtonTouchDown_ forEvents:1];

  v81 = [v76 button];
  [v81 addTarget:v32 action:sel_plusButtonTouchUpOutside_ forEvents:128];

  v82 = [v76 button];
  [v82 addTarget:v32 action:sel_plusButtonTouchCancel_ forEvents:256];

  v83 = [v76 button];
  [v83 addTarget:v32 action:sel_plusButtonTouchDragExit_ forEvents:32];

  v84 = [v76 button];
  [v84 addTarget:v32 action:sel_plusButtonTouchDragEnter_ forEvents:16];

  v85 = [v76 button];
  [v85 addTarget:v32 action:sel_didSelectPlusButton_ forEvents:64];

  v86 = +[CKUIBehavior sharedBehaviors];
  v87 = [v86 supportsEntryViewPlusButtonLongPress];

  if (v87)
  {
    v80 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v32 action:sel_plusButtonLongPressed_];
    v88 = +[CKUIBehavior sharedBehaviors];
    [v88 entryViewPlusButtonLongPressDuration];
    v90 = v89;

    [v80 setMinimumPressDuration:v90];
    v91 = [v76 button];
    [v91 addGestureRecognizer:v80];

    v92 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v93 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v92 view:v76];
    plusButtonFeedbackGenerator = v32->_plusButtonFeedbackGenerator;
    v32->_plusButtonFeedbackGenerator = v93;

    goto LABEL_29;
  }

LABEL_30:
  v95 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v96 = [v95 isPopoverSendMenuEnabled];

  if ((v96 & 1) == 0)
  {
    v97 = +[CKUIBehavior sharedBehaviors];
    v98 = [v97 entryViewPlusButtonDefaultBackgroundColor];
    [v76 setPlusButtonBackgroundColor:v98];
  }

  [v76 accessibilitySetIdentification:@"Apps Button"];
  [v76 setExclusiveTouch:0];
  [v76 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v73, v73}];
  if ([(CKMessageEntryView *)v32 shouldShowPluginButtons])
  {
    [(CKMessageEntryView *)v32 setPlusButton:v76];
    [(CKMessageEntryViewButtonContainerView *)v64 addSubview:v76];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v99 = [MEMORY[0x1E696AD88] defaultCenter];
    [v99 addObserver:v32 selector:sel_visiblePluginsChanged_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
  }

  v100 = objc_alloc(MEMORY[0x1E69DD250]);
  v101 = *MEMORY[0x1E695F058];
  v102 = *(MEMORY[0x1E695F058] + 8);
  v103 = *(MEMORY[0x1E695F058] + 16);
  v104 = *(MEMORY[0x1E695F058] + 24);
  v105 = [v100 initWithFrame:{*MEMORY[0x1E695F058], v102, v103, v104}];
  v106 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v107 = [v106 isEntryViewRefreshEnabled];

  if ((v107 & 1) == 0)
  {
    [v105 setOpaque:0];
  }

  v227 = v76;
  [v105 setClipsToBounds:1];
  v234 = +[CKUIBehavior sharedBehaviors];
  [v234 entryViewCoverMinHeight];
  v109 = v108 * 0.5;
  [v105 _setContinuousCornerRadius:v108 * 0.5];
  v110 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v111 = [v110 isEntryViewRefreshEnabled];

  if ((v111 & 1) == 0)
  {
    [v234 entryFieldCoverLineWidth];
    v113 = v112;
    v114 = [v105 layer];
    [v114 setBorderWidth:v113];
  }

  v229 = v64;
  v115 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v116 = [v115 isEntryViewRefreshEnabled];

  if ((v116 & 1) == 0)
  {
    v117 = [MEMORY[0x1E69794A0] layer];
    v118 = +[CKUIBehavior sharedBehaviors];
    v119 = [v118 theme];
    v120 = [v119 entryFieldBorderColor];
    [v117 setStrokeColor:{objc_msgSend(v120, "CGColor")}];

    [v117 setFillColor:0];
    [v117 setLineJoin:*MEMORY[0x1E6979E98]];
    [v117 setLineCap:*MEMORY[0x1E6979E78]];
    v121 = [v234 entryViewDashedLinePattern];
    [v117 setLineDashPattern:v121];

    [v117 setLineWidth:0.0];
    [v117 setCornerRadius:v109];
    [v117 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v117 setAllowsEdgeAntialiasing:1];
    v122 = [v105 layer];
    [v122 addSublayer:v117];

    [(CKMessageEntryView *)v32 setDashedContentClipViewLayer:v117];
  }

  v237 = v105;
  v123 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v124 = [v123 isEntryViewRefreshEnabled];

  if ((v124 & 1) == 0)
  {
    v125 = [v105 layer];
    [v125 setAnchorPoint:{1.0, 0.5}];

    v126 = +[CKUIBehavior sharedBehaviors];
    v127 = [v126 theme];
    v128 = [v127 entryViewContentBackgroundColor];
    [v105 setBackgroundColor:v128];
  }

  [(CKMessageEntryView *)v32 setContentClipView:v105];
  [(CKMessageEntryView *)v32 addSubview:v105];
  v129 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v130 = [v129 isEntryViewRefreshEnabled];

  if (v130)
  {
    [(CKMessageEntryView *)v32 _updateEntryViewMaterials];
  }

  else
  {
    [(CKMessageEntryView *)v32 updateKnockoutView];
  }

  [(CKMessageEntryView *)v32 setTranslationLanguage:v235];
  v131 = [[CKMessageEntryContentView alloc] initWithFrame:v231 shouldShowSubject:v225 shouldDisableAttachments:a12 shouldUseNonEmojiKeyboard:a13 shouldUseNonHandwritingKeyboard:a14 shouldDisableKeyboardStickers:a15 shouldAllowPollSuggestions:v101 translationLanguage:v102, v103, v104, v235];
  v132 = +[CKUIBehavior sharedBehaviors];
  [v132 entryFieldCoverLineWidth];
  v134 = v133;

  [(CKMessageEntryContentView *)v131 setContainerViewLineWidth:v134];
  v135 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v136 = [v135 isEntryViewRefreshEnabled];

  if (v136)
  {
    +[CKGlassSendButton buttonSize];
    v138 = v137;
    v139 = +[CKUIBehavior sharedBehaviors];
    [v139 entryViewSendButtonCoverSpace];
    [(CKMessageEntryContentView *)v131 setSendButtonTextInsetWidth:v138 + v140];
  }

  else
  {
    v139 = +[CKUIBehavior sharedBehaviors];
    [v139 sendButtonSize];
    v142 = v141;
    v143 = +[CKUIBehavior sharedBehaviors];
    [v143 entryViewSendButtonCoverSpace];
    [(CKMessageEntryContentView *)v131 setSendButtonTextInsetWidth:v142 + v144];
  }

  [(CKMessageEntryContentView *)v131 setOpaque:0];
  [(CKMessageEntryContentView *)v131 setDelegate:v32];
  [(CKMessageEntryView *)v32 setContentView:v131];
  [v105 addSubview:v131];
  v145 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v146 = [v145 isEntryViewRefreshEnabled];

  if ((v146 & 1) == 0)
  {
    [(CKMessageEntryView *)v32 coverFrameThatFitsInSize:width, height];
    [(CKMessageEntryContentView *)v131 setMaxContentWidthWhenExpanded:v147];
  }

  v232 = v131;
  v148 = [(CKMessageEntryView *)v32 recorder];

  if (!v148)
  {
    v149 = objc_alloc_init(CKAudioRecorder);
    [(CKAudioRecorder *)v149 setDelegate:v32];
    [(CKMessageEntryView *)v32 setRecorder:v149];
  }

  [(CKMessageEntryView *)v32 configureForDisplayMode:1];
  if ([(CKMessageEntryView *)v32 shouldShowCharacterCount])
  {
    v150 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v101, v102, v103, v104}];
    v151 = v150;
    if (v238)
    {
      v152 = 1;
    }

    else
    {
      v152 = 2;
    }

    [v150 setTextAlignment:v152];
    v153 = [(CKMessageEntryView *)v32 conversation];
    v154 = [v153 isStewieConversation];

    v155 = +[CKUIBehavior sharedBehaviors];
    v156 = v155;
    if (v154)
    {
      [v155 characterCountSatelliteFont];
    }

    else
    {
      [v155 characterCountFont];
    }
    v157 = ;

    [v151 setFont:v157];
    v158 = +[CKUIBehavior sharedBehaviors];
    v159 = [v158 theme];
    v160 = [v159 entryFieldPlaceholderColor];
    [v151 setTextColor:v160];

    [v151 setBackgroundColor:0];
    [v151 setOpaque:0];
    [v151 setHidden:1];
    [(CKMessageEntryView *)v32 setCharacterCountLabel:v151];
    [(CKMessageEntryView *)v32 addSubview:v151];
    v161 = sMaximumCharacterCountString(v223 & 1);
    [v151 setText:v161];

    [v151 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(CKMessageEntryView *)v32 setCharacterCountSize:?];
    [v151 setText:0];
    [(CKMessageEntryView *)v32 setCharacterCountHidden:1];
  }

  if ([(CKMessageEntryView *)v32 shouldShowSendButton]&& !CKIsRunningInMacCatalyst())
  {
    v162 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v163 = [v162 isEntryViewRefreshEnabled];

    if (v163)
    {
      v164 = objc_alloc_init(CKGlassSendButton);
      [(CKGlassSendButton *)v164 setOpaque:0];
      [(CKGlassSendButton *)v164 setEnabled:0];
      [(CKGlassSendButton *)v164 addTarget:v32 action:sel_touchUpInsideSendButton_ forControlEvents:64];
      [(CKGlassSendButton *)v164 setDisabledDimsImage:1];
      [(CKGlassSendButton *)v164 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v164 setExclusiveTouch:1];
      [(CKGlassSendButton *)v164 setAccessibilityLabel:@"Send Button"];
      [(CKMessageEntryView *)v32 setGlassSendButton:v164];
    }

    else
    {
      v164 = [CKEntryViewButton entryViewButtonOfType:0 wantsVibrancy:0];
      [(CKGlassSendButton *)v164 setOpaque:0];
      [(CKGlassSendButton *)v164 setEnabled:0];
      v165 = [(CKGlassSendButton *)v164 button];
      [v165 addTarget:v32 action:sel_touchUpInsideSendButton_ forControlEvents:64];

      v166 = [(CKGlassSendButton *)v164 button];
      [v166 setDisabledDimsImage:1];

      [(CKGlassSendButton *)v164 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v164 setExclusiveTouch:1];
      v167 = [(CKGlassSendButton *)v164 layer];
      [v167 setAnchorPoint:{1.0, 1.0}];

      [(CKGlassSendButton *)v164 setAccessibilityLabel:@"Send Button"];
      [(CKMessageEntryView *)v32 setSendButton:v164];
    }

    v168 = [(CKMessageEntryView *)v32 contentClipView];
    [v168 addSubview:v164];

    v169 = [CKEntryViewButton entryViewButtonOfType:1 wantsVibrancy:0];
    [v169 setOpaque:0];
    [v169 accessibilitySetIdentification:@"audioButton"];
    [v169 setExclusiveTouch:1];
    v170 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v32 action:sel_audioButtonLongPressed_];
    [v170 setMinimumPressDuration:0.0];
    v171 = [v169 button];
    [v171 addGestureRecognizer:v170];

    [(CKMessageEntryView *)v32 setAudioButton:v169];
    v172 = [(CKMessageEntryView *)v32 contentClipView];
    [v172 addSubview:v169];

    v173 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v174 = [v173 isEntryViewRefreshEnabled];

    if (v174)
    {
      +[CKGlassSendButton buttonSize];
      v176 = v175;
      v178 = v177;
    }

    else
    {
      v179 = +[CKUIBehavior sharedBehaviors];
      [v179 sendButtonSize];
      v176 = v180;
      v181 = +[CKUIBehavior sharedBehaviors];
      [v181 sendButtonSize];
      v178 = v182;
    }

    [(CKMessageEntryView *)v32 setSendButtonSize:v176, v178];
  }

  v183 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v101, v102, v103, v104}];
  [v183 setNumberOfLines:0];
  v184 = CKFrameworkBundle();
  v185 = [v184 localizedStringForKey:@"AUDIO_HINT_TAP" value:&stru_1F04268F8 table:@"ChatKit"];
  [v183 setText:v185];

  [v183 setHidden:1];
  [v183 setTextAlignment:1];
  v186 = +[CKUIBehavior sharedBehaviors];
  v187 = [v186 audioHintFont];
  [v183 setFont:v187];

  [v183 setAdjustsFontSizeToFitWidth:1];
  v188 = +[CKUIBehavior sharedBehaviors];
  v189 = [v188 theme];
  v190 = [v189 transcriptTextColor];
  [v183 setTextColor:v190];

  [v183 setOpaque:0];
  [(CKMessageEntryView *)v32 setHintLabel:v183];
  v191 = [(CKMessageEntryView *)v32 contentClipView];
  v226 = v183;
  [v191 addSubview:v183];

  v192 = [(CKMessageEntryView *)v32 createDictationButton];
  [(CKMessageEntryView *)v32 setDictationButton:v192];
  v193 = [(CKMessageEntryView *)v32 contentClipView];
  v224 = v192;
  [v193 addSubview:v192];

  v194 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(CKMessageEntryView *)v32 setSendButtonSpinner:v194];

  v195 = [(CKMessageEntryView *)v32 sendButtonSpinner];
  [v195 setUserInteractionEnabled:1];

  v196 = [(CKMessageEntryView *)v32 sendButtonSpinner];
  [v196 setOpaque:0];

  if (CKIsRunningInMacCatalyst())
  {
    v197 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v198 = [v197 isEntryViewRefreshEnabled];

    if (v198)
    {
      v199 = objc_alloc_init(CKGlassEmojiButton);
    }

    else
    {
      v199 = [MEMORY[0x1E69DC738] buttonWithType:0];
      v200 = +[CKUIBehavior sharedBehaviors];
      v201 = [v200 entryViewMacEmojiButtonImage];
      [(CKGlassEmojiButton *)v199 setImage:v201 forState:0];

      v202 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:3 scale:16.0];
      [(CKGlassEmojiButton *)v199 setPreferredSymbolConfiguration:v202 forImageInState:0];

      v203 = +[CKUIBehavior sharedBehaviors];
      v204 = [v203 theme];
      v205 = [v204 entryFieldButtonColor];
      [(CKGlassEmojiButton *)v199 setTintColor:v205];

      [(CKGlassEmojiButton *)v199 setAdjustsImageWhenHighlighted:1];
    }

    [(CKGlassEmojiButton *)v199 addTarget:v32 action:sel_showEmojiPicker forControlEvents:64];
    [(CKMessageEntryView *)v32 setEmojiButton:v199];
    v206 = [(CKMessageEntryView *)v32 contentClipView];
    [(CKMessageEntryView *)v32 insertSubview:v199 belowSubview:v206];

    v207 = [CKEntryViewButton entryViewButtonOfType:1 wantsVibrancy:0];
    [v207 setOpaque:0];
    [v207 accessibilitySetIdentification:@"audioButton"];
    [v207 setExclusiveTouch:1];
    v208 = [v207 button];
    [v208 addTarget:v32 action:sel_audioButtonTappedInEntryView_ forControlEvents:64];

    [v207 setCkTintColor:0xFFFFFFFFLL];
    [(CKMessageEntryView *)v32 setAudioButton:v207];
    v209 = [(CKMessageEntryView *)v32 contentClipView];
    [v209 addSubview:v207];

    v210 = [(CKMessageEntryView *)v32 contentView];
    v211 = [(CKMessageEntryView *)v32 sendButtonSpinner];
    [v210 addSubview:v211];
  }

  else
  {
    v199 = [(CKMessageEntryView *)v32 sendButtonSpinner];
    [(CKMessageEntryView *)v32 addSubview:v199];
  }

  v212 = MEMORY[0x1E69DCBA0];
  v213 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 3];
  v214 = [v212 keyCommandWithInput:v213 modifierFlags:0 action:sel_keyCommandSend_];

  [v214 setWantsPriorityOverSystemBehavior:1];
  v215 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_keyCommandSend_];
  [v215 setWantsPriorityOverSystemBehavior:1];
  v216 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x10000 action:sel_keyCommandSend_];
  [v216 setWantsPriorityOverSystemBehavior:1];
  v217 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x80000 action:sel_optionUpArrowClicked_];
  [v217 setWantsPriorityOverSystemBehavior:1];
  v218 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x80000 action:sel_optionDownArrowClicked_];
  [v218 setWantsPriorityOverSystemBehavior:1];
  v240[0] = v214;
  v240[1] = v215;
  v240[2] = v216;
  v240[3] = v217;
  v240[4] = v218;
  v219 = [MEMORY[0x1E695DEC8] arrayWithObjects:v240 count:5];
  [(CKMessageEntryView *)v32 setKeyCommands:v219];
  v30 = v230;
  [(CKMessageEntryView *)v32 setEntryViewTraitCollection:v230];
  v220 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:v32 action:sel__swipeDownGestureRecognized_];
  [v220 setDelegate:v32];
  [v220 setDirection:8];
  [(CKMessageEntryView *)v32 addGestureRecognizer:v220];
  [(CKMessageEntryView *)v32 setSwipeGestureRecognizer:v220];
  [(CKMessageEntryView *)v32 applyDefaultGlass];
  v221 = [(CKMessageEntryView *)v32 layer];
  [v221 setHitTestsAsOpaque:1];

  v31 = v235;
LABEL_78:

  return v32;
}

- (id)createDictationButton
{
  v3 = [CKEntryViewButton entryViewButtonOfType:2 wantsVibrancy:0];
  [v3 setCkTintColor:0xFFFFFFFFLL];
  [v3 setEnabled:1];
  [v3 setOpaque:0];
  [v3 accessibilitySetIdentification:@"dictationButton"];
  v4 = [v3 button];
  [v4 addTarget:self action:sel_dictationButtonTapped_ forControlEvents:64];

  v5 = [v3 button];
  [v5 setDisabledDimsImage:1];

  v6 = [v3 button];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [v3 button];
    [v7 _setIsMicButton:1];
  }

  return v3;
}

- (CKEntryViewButton)keyboardButton
{
  keyboardButton = self->_keyboardButton;
  if (!keyboardButton)
  {
    v4 = [CKEntryViewButton entryViewButtonOfType:3 wantsVibrancy:0];
    [(CKEntryViewButton *)v4 setCkTintColor:0xFFFFFFFFLL];
    [(CKEntryViewButton *)v4 setEnabled:1];
    [(CKEntryViewButton *)v4 setOpaque:0];
    [(CKEntryViewButton *)v4 accessibilitySetIdentification:@"keyboardButton"];
    v5 = [(CKEntryViewButton *)v4 button];
    [v5 addTarget:self action:sel_keyboardButtonTapped_ forControlEvents:64];

    v6 = [(CKEntryViewButton *)v4 button];
    [v6 setDisabledDimsImage:1];

    v7 = self->_keyboardButton;
    self->_keyboardButton = v4;

    keyboardButton = self->_keyboardButton;
  }

  return keyboardButton;
}

- (void)optionUpArrowClicked:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewPopulatePreviousSentMessage:self];
  }
}

- (void)optionDownArrowClicked:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewPopulateNextSentMessage:self];
  }
}

- (void)showEffectPicker
{
  v3 = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self delegate];
    [v5 messageEntryViewWantsEffectPicker:self];
  }
}

- (void)handleLongPress:(id)a3
{
  if ([a3 state] == 1 && !-[CKMessageEntryView hasRecording](self, "hasRecording"))
  {

    [(CKMessageEntryView *)self showEffectPicker];
  }
}

- (void)deferredSetup
{
  [MEMORY[0x1E69DCBB8] setPredictionViewPrewarmsPredictiveCandidates:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 browserButtonShouldUseMenu];

  if (v4)
  {
    v9 = [(CKMessageEntryView *)self plusButton];
    v5 = [v9 button];
    v6 = [(CKMessageEntryView *)self entryViewTraitCollection];
    v7 = [(CKMessageEntryView *)self conversation];
    v8 = [CKAppMenuDataSource appMenuWithTarget:self traitCollection:v6 conversation:v7];
    [v5 setMenu:v8];
  }
}

- (void)updateKnockoutView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    return;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 entryViewUsesTransparentBackground];

  v7 = [(CKMessageEntryView *)self knockoutView];

  if (!v7)
  {
    if (v6)
    {
      v15 = objc_alloc(MEMORY[0x1E69DD298]);
      [(CKMessageEntryView *)self bounds];
      v16 = [v15 initWithFrame:?];
      knockoutVisualEffectView = self->_knockoutVisualEffectView;
      self->_knockoutVisualEffectView = v16;

      v18 = self->_knockoutVisualEffectView;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    }

    v19 = v18;
    v20 = [(CKMessageEntryView *)self contentClipView];
    [v20 insertSubview:v19 atIndex:0];

    [(CKMessageEntryView *)self setKnockoutView:v19];
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (UIAccessibilityIsReduceTransparencyEnabled() || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 knockoutViewShouldUseBackgroundColor], v21, (v22 & 1) == 0))
    {
      v27 = [(CKMessageEntryView *)self knockoutView];
      [v27 setBackgroundColor:0];
    }

    else
    {
      if (CKMessageEntryViewStyleIsForDarkFullscreenMoment([(CKMessageEntryView *)self style]))
      {
        [MEMORY[0x1E69DC888] blackColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] systemBackgroundColor];
      }
      v23 = ;
      v24 = [(CKMessageEntryView *)self entryViewTraitCollection];
      v25 = [v23 resolvedColorForTraitCollection:v24];

      v27 = [v25 colorWithAlphaComponent:0.300000012];

      v26 = [(CKMessageEntryView *)self knockoutView];
      [v26 setBackgroundColor:v27];
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v27 = [v9 messageEntryViewTextFieldBackgroundColor];

  v10 = [(CKMessageEntryView *)self entryViewTraitCollection];
  v11 = [v27 resolvedColorForTraitCollection:v10];

  [(UIVisualEffectView *)self->_knockoutVisualEffectView setBackgroundColor:v11];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 messageEntryViewTextFieldBackgroundEffects];
  [(UIVisualEffectView *)self->_knockoutVisualEffectView setBackgroundEffects:v14];

LABEL_16:
}

- (void)updateBackgroundView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 entryFieldShouldUseBackdropView];

    if (v6)
    {
      if (!self->_backgroundView)
      {
        v7 = +[CKUIBehavior sharedBehaviors];
        v8 = [v7 entryViewBackgroundClass];

        v9 = objc_alloc_init(v8);
        backgroundView = self->_backgroundView;
        self->_backgroundView = v9;

        [(CKMessageEntryView *)self addSubview:self->_backgroundView];
      }

      v11 = [(CKMessageEntryView *)self entryViewTraitCollection];
      [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView setEntryViewTraitCollection:v11];

      v12 = [(CKMessageEntryView *)self style];
      v13 = self->_backgroundView;

      [(CKMessageEntryBackgroundViewProtocol *)v13 setStyle:v12];
    }
  }
}

- (BOOL)shouldReloadBackgroundView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    return 0;
  }

  v6 = [(CKMessageEntryView *)self backgroundView];
  v7 = objc_opt_class();

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 entryViewBackgroundClass];

  return v7 != v9;
}

- (void)setShouldHideBackgroundView:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEntryViewRefreshEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [(CKMessageEntryView *)self backgroundView];
    [v7 setHidden:v3];
  }
}

- (BOOL)shouldHideBackgroundView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    return 1;
  }

  v6 = [(CKMessageEntryView *)self backgroundView];
  v7 = [v6 isHidden];

  return v7;
}

- (void)setStyle:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_style == 6 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Message entry view doesn't support transitioning from CKMessageEntryViewStyleNotificationDarkTransparent", v14, 2u);
    }
  }

  self->_style = a3;
  [(CKMessageEntryView *)self _overrideUserInterfaceStyleForEntryViewStyleIfNeeded:a3];
  v6 = [(CKMessageEntryView *)self contentView];
  [v6 setStyle:self->_style];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = a3;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Returned from [CKMessageEntryContentView setStyle:]. style={%d}", v14, 8u);
    }
  }

  v8 = CKMessageEntryViewStyleIsForDarkFullscreenMoment([(CKMessageEntryView *)self style]);
  v9 = [(CKMessageEntryView *)self inputButtonContainerView];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 theme];
  v12 = v11;
  if (v8)
  {
    [v11 entryFieldDarkEffectButtonColor];
  }

  else
  {
    [v11 entryFieldButtonColor];
  }
  v13 = ;
  [v9 setTintColor:v13];

  [(CKMessageEntryView *)self configureTextViewWithInputContextHistoryFromTranscript];
  [(CKMessageEntryView *)self updateEntryView];
}

- (void)_overrideUserInterfaceStyleForEntryViewStyleIfNeeded:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CKMessageEntryView *)self entryViewTraitCollection];
      v7 = [v6 description];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Call to _overrideUserInterfaceStyleForEntryViewStyleIfNeeded. entryViewTraitCollection: {%@}", &v10, 0xCu);
    }
  }

  v8 = [(CKMessageEntryView *)self entryViewTraitCollection];
  v9 = [v8 userInterfaceStyle];
  if (a3 <= 6 && ((1 << a3) & 0x4E) != 0)
  {
    if ([v8 isTranscriptBackgroundActive] && (objc_msgSend(v8, "isDiffusedSystemGlassSettingEnabled") & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  [(CKMessageEntryView *)self _setOverrideUserInterfaceStyle:v9];
  [(CKMessageEntryView *)self setNeedsLayout];
}

- (void)setConversation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_conversation != v5)
  {
    objc_storeStrong(&self->_conversation, a3);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"CKConversationPreferredServiceChangedNotification" object:0];
    [v6 removeObserver:self name:*MEMORY[0x1E69A5828] object:0];
    v7 = *MEMORY[0x1E69A56E8];
    [v6 removeObserver:self name:*MEMORY[0x1E69A56E8] object:0];
    v8 = *MEMORY[0x1E69A5938];
    [v6 removeObserver:self name:*MEMORY[0x1E69A5938] object:0];
    [v6 removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];
    if (v5)
    {
      [v6 addObserver:self selector:sel_conversationPreferredServiceChanged_ name:@"CKConversationPreferredServiceChangedNotification" object:v5];
      v9 = [(CKConversation *)v5 chat];
      [v6 addObserver:self selector:sel__contactLimitsChanged_ name:v7 object:v9];

      [v6 addObserver:self selector:sel_updateEntryView name:v8 object:0];
      [v6 addObserver:self selector:sel_updateEntryView name:*MEMORY[0x1E69A7C38] object:0];
      [v6 addObserver:self selector:sel_interruptAudioRecorder_ name:*MEMORY[0x1E69580D8] object:0];
      [v6 addObserver:self selector:sel_updateEntryView name:*MEMORY[0x1E69A5908] object:0];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation was provided: %@. Added core observers.", &v13, 0xCu);
        }

LABEL_10:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Conversation was nil. Did not add core observers.", &v13, 2u);
      }

      goto LABEL_10;
    }

    [(CKMessageEntryView *)self updateEntryView];
    [(CKMessageEntryView *)self updateAppsMenu];
    v11 = [(CKMessageEntryView *)self audioRecordingView];
    v12 = [v11 sendButton];
    [v12 setEnabled:{-[CKMessageEntryView sendButtonEnabled](self, "sendButtonEnabled")}];

    [(CKMessageEntryView *)self configureTextViewWithInputContextHistoryFromTranscript];
  }
}

- (void)invalidateCompositionForReason:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "invalidating composition for reason: %ld", &v16, 0xCu);
    }
  }

  switch(a3)
  {
    case 2:
      v10 = [(CKMessageEntryView *)self composition];
      v11 = [CKComposition alloc];
      v12 = [v10 text];
      v13 = [v10 subject];
      v14 = [(CKComposition *)v11 initWithText:v12 subject:v13 shelfPluginPayload:0];

      v15 = [v10 sendLaterPluginInfo];
      [(CKComposition *)v14 setSendLaterPluginInfo:v15];

      [(CKMessageEntryView *)self setComposition:v14];
      break;
    case 1:
      v6 = [(CKMessageEntryView *)self composition];
      v7 = [[CKComposition alloc] initWithText:0 subject:0];
      v8 = [v6 sendLaterPluginInfo];
      [(CKComposition *)v7 setSendLaterPluginInfo:v8];

      [(CKMessageEntryView *)self setComposition:v7];
      v9 = [(CKMessageEntryView *)self contentView];
      [v9 hideTextEffectsPickerIfNeededAndResetTypingAttributes];

      break;
    case 0:
      [(CKMessageEntryView *)self setComposition:0];
      break;
  }
}

- (void)setComposition:(id)a3 forceUpdateText:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([v7 isAudioComposition])
  {
    [(CKMessageEntryView *)self setAudioComposition:v7];
  }

  else
  {
    [(CKMessageEntryView *)self setAudioComposition:0];
    v6 = [(CKMessageEntryView *)self contentView];
    [v6 setComposition:v7 forceUpdateText:v4];
  }
}

- (void)compositionWithAcceptedAutocorrection:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryView *)self composition];
  v6 = [v5 isAudioComposition];

  if (v6)
  {
    if (v4)
    {
      v7 = [(CKMessageEntryView *)self composition];
      v4[2](v4, v7);
    }
  }

  else
  {
    v8 = [(CKMessageEntryView *)self contentView];
    v9 = [(CKMessageEntryView *)self conversation];
    v10 = [v9 chat];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__CKMessageEntryView_compositionWithAcceptedAutocorrection___block_invoke;
    v11[3] = &unk_1E72ED638;
    v11[4] = self;
    v12 = v4;
    [v8 acceptAutocorrectionForChat:v10 completionHandler:v11];
  }
}

void __60__CKMessageEntryView_compositionWithAcceptedAutocorrection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = [v2 textView];
  [v3 acceptAutomaticMentionConfirmation];

  v4 = [*(a1 + 32) composition];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v4;
    (*(v5 + 16))();
    v4 = v6;
  }
}

- (void)setSendLaterPluginInfo:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKMessageEntryView *)self contentView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CKMessageEntryView_setSendLaterPluginInfo_animated___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [v7 setSendLaterPluginInfo:v6 animated:v4 completionHandler:v8];
}

- (void)updateAllowPollSuggestions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessageEntryView *)self contentView];
  v4 = [v3 textView];

  v5 = [(CKMessageEntryView *)self composition];
  v6 = [v5 shelfPluginPayload];

  v7 = [v6 pluginBundleID];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [v7 isEqualToString:v8];

  v10 = [(CKMessageEntryView *)self conversation];
  v11 = [v10 supportsPolls] & (v9 ^ 1);

  if (v11 != [v4 allowPollSuggestions])
  {
    v12 = [(CKMessageEntryView *)self conversation];
    v13 = [(CKMessageEntryView *)self _serviceForEntryViewForConversation:v12];
    v14 = [v13 __ck_entryViewDisplayName];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        *v18 = 138413058;
        if (v11)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        *&v18[4] = v17;
        *&v18[12] = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        *&v18[14] = v16;
        v19 = 2112;
        v20 = v17;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "[Polls] Changing Allow Poll Suggestions to %@ (Existing Polls Payload? %@ Conversation supports Polls? %@ Service name: %@)", v18, 0x2Au);
      }
    }

    [v4 setAllowPollSuggestions:{v11, *v18}];
  }
}

- (void)setCharacterCountHidden:(BOOL)a3
{
  if (self->_characterCountHidden != a3)
  {
    self->_characterCountHidden = a3;
    if ([(CKMessageEntryView *)self shouldShowCharacterCount])
    {

      [(CKMessageEntryView *)self setNeedsLayout];
    }
  }
}

- (BOOL)isInPencilMode
{
  v2 = [(CKMessageEntryView *)self contentView];
  v3 = [v2 textView];
  if ([v3 isInPencilMode])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 subjectView];
    v4 = [v5 isInPencilMode];
  }

  return v4;
}

- (BOOL)isRecording
{
  v2 = [(CKMessageEntryView *)self recorder];
  v3 = [v2 isRecording];

  return v3;
}

- (BOOL)hasRecording
{
  v2 = [(CKMessageEntryView *)self audioComposition];
  v3 = v2 != 0;

  return v3;
}

- (id)_currentInputDelegate
{
  v3 = [(CKMessageEntryView *)self contentView];
  v4 = [v3 activeView];

  v5 = [(CKMessageEntryView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 textViewOnscreenWithEntryView];
    if ([v6 isFirstResponder])
    {
      v7 = v6;

      v4 = v7;
    }
  }

  return v4;
}

- (void)setShouldBlurForMessageEditing:(BOOL)a3
{
  if (self->_shouldBlurForMessageEditing == a3)
  {
    return;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  self->_shouldBlurForMessageEditing = a3;
  if (!a3)
  {
    [(CKMessageEntryView *)self _animateMessageEditingBlurOverlayViewOut];
    [(CKMessageEntryView *)self setUserInteractionEnabled:1];
    v16 = [(CKMessageEntryView *)self audioButton];
    v17 = [v16 button];
    [v17 setUserInteractionEnabled:1];

    v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v17) = [v18 isEntryViewRefreshEnabled];

    if (v17)
    {
      v13 = [(CKMessageEntryView *)self glassSendButton];
      v14 = v13;
      v15 = 1;
      goto LABEL_7;
    }

    v14 = [(CKMessageEntryView *)self sendButton];
    v19 = [v14 button];
    v20 = v19;
    v21 = 1;
LABEL_10:
    [v19 setUserInteractionEnabled:{v21, v6, v22, v23, v24, v7}];

    goto LABEL_11;
  }

  [(CKMessageEntryView *)self _animateMessageEditingBlurOverlayViewIn];
  [(CKMessageEntryView *)self setUserInteractionEnabled:0];
  v10 = [(CKMessageEntryView *)self audioButton];
  v11 = [v10 button];
  [v11 setUserInteractionEnabled:0];

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v11) = [v12 isEntryViewRefreshEnabled];

  if (!v11)
  {
    v14 = [(CKMessageEntryView *)self sendButton];
    v19 = [v14 button];
    v20 = v19;
    v21 = 0;
    goto LABEL_10;
  }

  v13 = [(CKMessageEntryView *)self glassSendButton];
  v14 = v13;
  v15 = 0;
LABEL_7:
  [v13 setUserInteractionEnabled:{v15, v6, v22, v23, v24, v7}];
LABEL_11:

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)_animateMessageEditingBlurOverlayViewIn
{
  v3 = [(CKMessageEntryView *)self messageEditingBlurOverlayView];
  [v3 setHidden:0];

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 messageEditingAnimateInDuration];
  v6 = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 messageEditingAnimateInDamping];
  v9 = v8;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKMessageEntryView__animateMessageEditingBlurOverlayViewIn__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v10 usingSpringWithDamping:&__block_literal_global_159 initialSpringVelocity:v6 options:0.0 animations:v9 completion:0.0];
}

void __61__CKMessageEntryView__animateMessageEditingBlurOverlayViewIn__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 setAlpha:0.5];
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 messageEditingTranscriptOverlayBackgroundEffects];
    v8 = [*(a1 + 32) messageEditingBlurOverlayView];
    [v8 setBackgroundEffects:v7];

    v12 = +[CKUIBehavior sharedBehaviors];
    v9 = [v12 theme];
    v10 = [v9 messageEditingTranscriptOverlayBackgroundColor];
    v11 = [*(a1 + 32) messageEditingBlurOverlayView];
    [v11 setBackgroundColor:v10];
  }
}

- (void)_animateMessageEditingBlurOverlayViewOut
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 messageEditingAnimateOutDuration];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 messageEditingAnimateOutDamping];
  v8 = v7;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__CKMessageEntryView__animateMessageEditingBlurOverlayViewOut__block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CKMessageEntryView__animateMessageEditingBlurOverlayViewOut__block_invoke_2;
  v11[3] = &unk_1E72EB9C8;
  v11[4] = self;
  v10 = _Block_copy(v11);
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v9 usingSpringWithDamping:v10 initialSpringVelocity:v5 options:0.0 animations:v8 completion:0.0];
}

void __62__CKMessageEntryView__animateMessageEditingBlurOverlayViewOut__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageEditingBlurOverlayView];
  [v2 setBackgroundEffects:MEMORY[0x1E695E0F0]];

  v3 = [*(a1 + 32) messageEditingBlurOverlayView];
  [v3 setBackgroundColor:0];
}

void __62__CKMessageEntryView__animateMessageEditingBlurOverlayViewOut__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  v4 = *(a1 + 32);
  if (v3)
  {

    [v4 setAlpha:1.0];
  }

  else
  {
    v5 = [v4 messageEditingBlurOverlayView];
    [v5 setHidden:1];
  }
}

- (CGRect)anchorRect
{
  v3 = [(CKMessageEntryView *)self contentView];
  v4 = [v3 textView];

  [v4 textContainerInset];
  v6 = v5;
  v8 = v7;
  [(CKMessageEntryView *)self rangeOfTappedMention];
  if (v9)
  {
    v10 = [v4 textLayoutManager];
    v11 = [v10 documentRange];
    v12 = [v11 location];
    v13 = [v10 locationFromLocation:v12 withOffset:{-[CKMessageEntryView rangeOfTappedMention](self, "rangeOfTappedMention")}];

    [(CKMessageEntryView *)self rangeOfTappedMention];
    v15 = [v10 locationFromLocation:v13 withOffset:v14];
    v16 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v13 endLocation:v15];
    v17 = [v10 documentRange];
    [v10 ensureLayoutForRange:v17];

    v31 = 0;
    v32 = &v31;
    v33 = 0x4010000000;
    v34 = &unk_190F92BB2;
    v35 = 0u;
    v36 = 0u;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __32__CKMessageEntryView_anchorRect__block_invoke;
    v30[3] = &unk_1E72F1468;
    v30[4] = &v31;
    [v10 enumerateTextSegmentsInRange:v16 type:0 options:0 usingBlock:v30];
    [v4 convertRect:self toView:{v8 + v32[4], v6 + v32[5], v32[6], v32[7]}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v19 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
  }

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

uint64_t __32__CKMessageEntryView_anchorRect__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = a5;
  return 0;
}

- (id)pasteBoardTextFromComposition:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryView *)self contentView];
  v6 = [v5 textView];

  v7 = [v4 text];

  v8 = [v6 attributedTextForCompositionText:v7];

  return v8;
}

- (void)setComposingRecipient:(BOOL)a3
{
  if (self->_composingRecipient != a3)
  {
    self->_composingRecipient = a3;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setFailedRecipients:(BOOL)a3
{
  if (self->_failedRecipients != a3)
  {
    self->_failedRecipients = a3;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setUnreachableEmergencyRecipient:(BOOL)a3
{
  if (self->_unreachableEmergencyRecipient != a3)
  {
    self->_unreachableEmergencyRecipient = a3;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setAudioComposition:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKMessageEntryView *)self audioController];
  v7 = [v6 isPlaying];

  if ((v7 & 1) == 0)
  {
    if (self->_audioComposition != v5)
    {
      objc_storeStrong(&self->_audioComposition, a3);
    }

    if ([(CKComposition *)v5 isAudioComposition])
    {
      v8 = [(CKComposition *)v5 mediaObjects];
      v9 = [v8 firstObject];

      if (v9)
      {
        [(CKMessageEntryView *)self setAudioController:0];
        v10 = [CKAudioController alloc];
        v30[0] = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v12 = [(CKMessageEntryView *)self conversation];
        v13 = [(CKAudioController *)v10 initWithMediaObjects:v11 conversation:v12];

        [(CKAudioController *)v13 setDelegate:self];
        [(CKMessageEntryView *)self setAudioController:v13];
        v14 = [(CKMessageEntryView *)self audioRecordingView];
        LODWORD(v11) = v14 == 0;

        if (v11)
        {
          [(CKMessageEntryView *)self configureForDisplayMode:3];
          v15 = [(CKMessageEntryView *)self audioRecordingView];
          [v15 setState:2];

          v16 = [(CKMessageEntryView *)self audioRecordingView];
          [v16 setPlaybackCurrentTime:NAN];

          [v9 duration];
          v18 = v17;
          v19 = [(CKMessageEntryView *)self audioRecordingView];
          [v19 setPlaybackDuration:v18];

          v20 = [(CKMessageEntryView *)self audioRecordingView];
          v21 = [v9 powerLevels];
          [v20 setWithIntensities:v21];

          v22 = [(CKMessageEntryView *)self recorder];
          [v22 resetState];

          v23 = [(CKMessageEntryView *)self recorder];
          [v23 setPaused:1];

          v24 = [(CKMessageEntryView *)self recorder];
          [v24 setTotalPacketsCount:{objc_msgSend(v9, "totalPacketsCount")}];

          v25 = [(CKMessageEntryView *)self recorder];
          v26 = [v9 temporaryFileURL];
          [v25 setFileURL:v26];
        }
      }

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v29 = 0;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "[Event] Audio Composition loaded into entry view. Calling updateEntryView.", v29, 2u);
        }
      }

      [(CKMessageEntryView *)self updateEntryView];
      v28 = [(CKMessageEntryView *)self delegate];
      [v28 messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
    }
  }
}

- (BOOL)messageEntryContentView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (![(CKMessageEntryView *)self audioRecordingIsInEntryView])
  {
    v12 = [(CKMessageEntryView *)self delegate];
    if (!v12 || (-[CKMessageEntryView delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696B098] valueWithRange:{location, length}], v14 = objc_claimAutoreleasedReturnValue(), v20[0] = v14, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "messageEntryView:shouldChangeTextInRanges:replacementText:", self, v15, v10), v15, v14, v13, v12, (v16 & 1) != 0))
    {
      v11 = 1;
      goto LABEL_6;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "MessageEntryView text should not be changed.", v19, 2u);
      }
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)messageEntryContentViewShouldResignFirstResponder:(id)a3
{
  v4 = [(CKMessageEntryView *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(CKMessageEntryView *)self inputDelegate];
  v7 = [v6 messageEntryViewShouldResignFirstResponder:self];

  return v7;
}

- (BOOL)messageEntryContentView:(id)a3 canPerformDictationAction:(id)a4
{
  v5 = [a4 isEqualToString:@"UITextInputDictationActionTypeSend"];
  if (v5)
  {

    LOBYTE(v5) = [(CKMessageEntryView *)self _canSend];
  }

  return v5;
}

- (unint64_t)numberOfSuggestionsInSuggestionView:(id)a3 forSection:(unint64_t)a4
{
  v5 = a3;
  v6 = [(CKMessageEntryView *)self mentionSuggestionView];

  if (v6 != v5)
  {
    return 0;
  }

  v8 = [(CKMessageEntryView *)self currentMentionSuggestions];
  v9 = [v8 count];

  return v9;
}

- (id)suggestionView:(id)a3 entityAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKMessageEntryView *)self mentionSuggestionView];

  if (v7 != v6)
  {
    v8 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(CKMessageEntryView *)self currentMentionSuggestions];
  v10 = [v9 count];

  if (v10 > a4)
  {
    v7 = [(CKMessageEntryView *)self currentMentionSuggestions];
    v8 = [v7 objectAtIndex:a4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)suggestionView:(id)a3 indexPathOfEntityWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__43;
  v19 = __Block_byref_object_dispose__43;
  v20 = 0;
  v8 = [(CKMessageEntryView *)self mentionSuggestionView];

  if (v8 == v6)
  {
    v9 = [(CKMessageEntryView *)self currentMentionSuggestions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__CKMessageEntryView_suggestionView_indexPathOfEntityWithIdentifier___block_invoke;
    v12[3] = &unk_1E72F1440;
    v13 = v7;
    v14 = &v15;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __69__CKMessageEntryView_suggestionView_indexPathOfEntityWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 defaultIMHandle];
  v8 = [v7 ID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (void)messageEntryContentView:(id)a3 willAddPluginEntryViewControllerToViewHierarchy:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self delegate];
  v7 = [v6 parentViewControllerForPluginViewControllerInMessageEntryView:self];

  [v7 addChildViewController:v5];
}

- (void)messageEntryContentView:(id)a3 didAddPluginEntryViewControllerToViewHierarchy:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self delegate];
  v7 = [v6 parentViewControllerForPluginViewControllerInMessageEntryView:self];

  [v5 didMoveToParentViewController:v7];
}

- (double)balloonMaxWidthForMessageEntryRichTextView:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(CKMessageEntryView *)self delegate];
  [v6 balloonMaxWidthForMessageEntryView:self];
  v8 = v7;

  return v8;
}

- (BOOL)messageEntryContentViewShouldAllowLinkCustomization:(id)a3
{
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = [v3 sendingService];
  v5 = [v4 supportsCapability:*MEMORY[0x1E69A79F0]];

  return v5;
}

- (void)messageEntryContentViewWillPresentCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewWillPresentCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewDidPresentCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewDidPresentCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewWillDismissCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewWillDismissCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewDidDismissCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewDidDismissCustomizationPicker:self];
  }
}

- (id)gradientReferenceViewForMessageEntryContentView:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = [v4 gradientReferenceViewForMessageEntryView:self];

  return v5;
}

- (void)messageEntryContentView:(id)a3 updatePluginSendEnablementTo:(BOOL)a4
{
  v4 = a4;
  if ([(CKMessageEntryView *)self pluginSendingEnabled]!= a4)
  {
    [(CKMessageEntryView *)self setPluginSendingEnabled:v4];

    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)messageEntryContentViewCancelWasTapped:(id)a3 shelfPluginPayload:(id)a4
{
  v22 = a4;
  v5 = [v22 pluginBundleID];
  if ([v5 length])
  {
    v6 = [v22 pluginBundleID];
    v7 = [v6 rangeOfString:*MEMORY[0x1E69A69F0]];

    v8 = v22;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v9 = +[CKBalloonPluginManager sharedInstance];
    v10 = [v22 pluginBundleID];
    v5 = [v9 viewControllerForPluginIdentifier:v10];

    [v22 setLiveEditableInEntryView:0];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CKMessageEntryView *)self conversation];
      v12 = [v11 senderIdentifier];
      [v5 setSender:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(CKMessageEntryView *)self conversation];
      v14 = [v13 recipientStrings];

      [v5 setRecipients:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 didCancelSendingPluginPayload:v22];
    }

    v15 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v16 = [v22 associatedMessageGUID];
    v17 = [v22 pluginBundleID];
    v18 = [v15 existingDataSourceForMessageGUID:v16 bundleID:v17];

    v19 = [v18 pluginPayload];
    [v19 setLiveEditableInEntryView:0];

    [v18 endShowingLastConsumedBreadcrumb];
    if ([(CKMessageEntryView *)self isKeyboardVisible])
    {
      v20 = [(CKMessageEntryView *)self contentView];
      v21 = [v20 textView];
      [v21 becomeFirstResponder];
    }
  }

  v8 = v22;
LABEL_13:
}

- (void)messageEntryContentView:(id)a3 didRequestGenerativeContentForImageURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (v7)
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = +[CKBalloonPluginManager sharedInstance];
    v10 = [v9 viewControllerForPluginIdentifier:v8];

    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke;
      v11[3] = &unk_1E72EC128;
      v12 = v10;
      v13 = v7;
      objc_copyWeak(&v14, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v11);
      objc_destroyWeak(&v14);
    }
  }

  objc_destroyWeak(&location);
}

void __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke_2;
  v3[3] = &unk_1E72F47C0;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 didSelectGPAsset:v2 recipeData:0 completion:v3];
  objc_destroyWeak(&v4);
}

void __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke_3;
  v3[3] = &unk_1E72F13B8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __85__CKMessageEntryView_messageEntryContentView_didRequestGenerativeContentForImageURL___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 messageEntryViewWantsGenerativePlaygroundPluginPresented:v3 presentationStyle:*(a1 + 40)];
}

- (void)messageEntryContentView:(id)a3 didStagePluginPayload:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self delegate];
  [v6 messageEntryView:self didInsertPluginPayload:v5];
}

- (void)messageEntryContentViewDidChange:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  v8 = [(CKMessageEntryView *)self delegate];
  [v8 messageEntryViewDidChange:self isTextChange:v6 isShelfChange:v5 isTranslationChange:0];
}

- (void)messageEntryContentViewTranslationDidChange:(id)a3
{
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:1];
}

- (void)messageEntryContentViewShelfDidChange:(id)a3
{
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = [v4 messageEntryViewIsSendingMessage:self];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewDidChange:self isTextChange:0 isShelfChange:1 isTranslationChange:0];
  }
}

- (void)messageEntryContentViewWantsSendLaterPickerPresented:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewWantsSendLaterPickerPresented:self];
}

- (void)messageEntryContentViewSendLaterPluginInfoUpdated:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewSendLaterPluginInfoUpdated:self];

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)messageEntryContentViewSendLaterContentsUpdated:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewSendLaterContentsUpdated:self];
}

- (void)handleContentViewChangeWithCompletion:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

  [(CKMessageEntryView *)self setAudioComposition:0];
  [(CKMessageEntryView *)self configureForDisplayMode:1];
  v5 = [(CKMessageEntryView *)self conversation];
  v6 = [(CKMessageEntryView *)self composition];
  if ([(CKMessageEntryView *)self shouldShowCharacterCount])
  {
    if (![v5 shouldShowCharacterCount] || !objc_msgSend(v6, "isTextOnly") || (objc_msgSend(v6, "subject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
    {
      [(CKMessageEntryView *)self setCharacterCountHidden:1];
LABEL_8:
      [(CKMessageEntryView *)self setNeedsLayout];
      goto LABEL_9;
    }

    v9 = [v6 hasContent];
    v10 = v9;
    [(CKMessageEntryView *)self setCharacterCountHidden:v9 ^ 1u];
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  [(CKMessageEntryView *)self updateEntryView];
}

- (BOOL)audioRecordingIsInEntryView
{
  if ([(CKMessageEntryView *)self isRecording])
  {
    return 1;
  }

  v4 = [(CKMessageEntryView *)self audioComposition];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)messageEntryContentViewShouldBeginEditing:(id)a3
{
  if ([(CKMessageEntryView *)self audioRecordingIsInEntryView])
  {
    return 0;
  }

  v5 = [(CKMessageEntryView *)self delegate];
  v6 = [v5 messageEntryViewShouldBeginEditing:self];

  return v6;
}

- (CGSize)messageEntryContentViewMaxShelfPluginViewSize:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewMaxShelfPluginViewSize:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)messageEntryContentViewDidBeginEditing:(id)a3 wasAlreadyActive:(BOOL)a4
{
  v6 = [(CKMessageEntryView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKMessageEntryView *)self delegate];
    [v8 messageEntryViewDidBeginEditing:self];
  }

  if (!a4)
  {
    v9 = [(CKMessageEntryView *)self delegate];
    [v9 messageEntryViewDidBeginEditingNotAlreadyActive:self];

    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)messageEntryContentViewDidEndEditing:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewDidEndEditing:self];
}

- (void)messageEntryContentViewDidChangePencilMode:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewDidChangePencilMode:self];
}

- (BOOL)messageEntryContentView:(id)a3 shouldInsertMediaObjects:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self delegate];
  LOBYTE(self) = [v6 messageEntryView:self shouldInsertMediaObjects:v5];

  return self;
}

- (void)messageEntryContentView:(id)a3 didTapMediaObject:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self delegate];
  [v6 messageEntryView:self didTapMediaObject:v5];
}

- (void)messageEntryContentViewWasTapped:(id)a3 isLongPress:(BOOL)a4
{
  v5 = [(CKMessageEntryView *)self inputDelegate:a3];
  [v5 messageEntryViewInputDidTakeFocus:self];
}

- (void)messageEntryContentViewDidTapHandwritingKey:(id)a3
{
  v4 = [(CKMessageEntryView *)self inputDelegate];
  [v4 messageEntryViewHandwritingButtonHit:self];
}

- (void)messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewTextFormattingAnimationsOptionsPresentationInProgress:v3];
}

- (void)messageEntryContentView:(id)a3 didReceiveInputSuggestion:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryView *)self inputDelegate];
  [v6 messageEntryView:self didReceiveInputSuggestion:v5];
}

- (BOOL)messageEntryContentViewShouldBeDisabled:(id)a3
{
  v3 = self;
  v4 = [(CKMessageEntryView *)self delegate];
  LOBYTE(v3) = [v4 messageEntryViewShouldBeDisabled:v3];

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKMessageEntryView *)self swipeGestureRecognizer];

  if (v8 == v7)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v11 isEqualToString:@"UIVariableDelayLoupeGesture"];

    v9 = v12 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_handlePlusButtonTouchInside:(id)a3
{
  v4 = [(CKMessageEntryView *)self composition];
  v5 = [v4 hasContent];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(CKMessageEntryView *)self _updateSendMenuPresentationState:v6];
}

- (void)plusButtonTouchDown:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchDown:];
  }

  [(CKMessageEntryView *)self _handlePlusButtonTouchInside:v4];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchDownInsidePlusButton:v4];
  }

  if (!self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 1;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionStarted];
  }
}

- (void)plusButtonTouchUpOutside:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchUpOutside:];
  }

  [(CKMessageEntryView *)self _updateSendMenuPresentationState:0];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchUpOutsidePlusButton:v4];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)plusButtonTouchCancel:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchCancel:];
  }

  [(CKMessageEntryView *)self _updateSendMenuPresentationState:0];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchCancelForPlusButton:v4];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionCancelled];
  }
}

- (void)plusButtonTouchDragEnter:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchDragEnter:];
  }

  [(CKMessageEntryView *)self _handlePlusButtonTouchInside:v4];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchDragEnterForPlusButton:v4];
  }

  if (!self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 1;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionStarted];
  }
}

- (void)plusButtonTouchDragExit:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchDragExit:];
  }

  [(CKMessageEntryView *)self _updateSendMenuPresentationState:0];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchDragExitForPlusButton:v4];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)didSelectPlusButton:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView didSelectPlusButton:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self didSelectPlusButton:v4];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)plusButtonLongPressed:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonLongPressed:];
  }

  v6 = [v4 state];
  if (v6 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) != 0 && (v9 = objc_loadWeakRetained(&self->_inputDelegate), v10 = [v9 shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:self], v9, !v10))
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CKMessageEntryView plusButtonLongPressed:];
      }
    }

    else
    {
      v11 = [v4 view];
      v12 = objc_loadWeakRetained(&self->_inputDelegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_inputDelegate);
        [v14 messageEntryView:self didLongPressPlusButton:v11];
      }

      if (self->_plusButtonFeedbackGeneratorIsActive)
      {
        [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator selectionChanged];
        self->_plusButtonFeedbackGeneratorIsActive = 0;
        [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
      }
    }
  }

  else
  {
    v15 = v6;
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CKMessageEntryView *)v15 plusButtonLongPressed:v11];
    }
  }
}

- (void)dictationButtonTapped:(id)a3
{
  v7 = objc_alloc_init(MEMORY[0x1E69DC950]);
  [v7 setInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonInMessagesTextField"];
  v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v5 = [(CKMessageEntryView *)self contentView];
  v6 = [v5 textView];
  [v4 toggleDictationForResponder:v6 WithOptions:v7];
}

- (void)sendMenuPopoverMetricsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryView *)self delegate];
  v6 = [v5 messageEntryViewActiveSendMenuPresentation:self];

  if (v6)
  {
    v7 = [v6 newPopoverLayoutMetrics];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 state];
      if (v4 && [v4 state] == v9 || (v9 - 1) >= 2)
      {
        [(CKMessageEntryView *)self setNeedsLayout];
      }

      else
      {
        [(CKMessageEntryView *)self layoutIfNeeded];
        v10 = +[CKUIBehavior sharedBehaviors];
        v11 = [v10 entryViewSendMenuContentViewWidthAnimator];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __54__CKMessageEntryView_sendMenuPopoverMetricsDidChange___block_invoke;
        v12[3] = &unk_1E72EBA18;
        v12[4] = self;
        [v11 addAnimations:v12];
        [v11 startAnimation];
      }
    }
  }
}

uint64_t __54__CKMessageEntryView_sendMenuPopoverMetricsDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)keyCommandSend:(id)a3
{
  v4 = a3;
  if ([(CKMessageEntryView *)self sendButtonEnabled]&& [(CKMessageEntryView *)self shouldAllowSendWhenSendButtonDisabled])
  {
    [(CKMessageEntryView *)self touchUpInsideSendButton:v4];
  }
}

- (void)touchUpInsideSendButton:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_19020E000, "com.apple.messages.SendButtonTapped", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Send button pressed", v14, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"CKMessageEntryViewSendButtonPressedNotification" object:0];

  v8 = [(CKMessageEntryView *)self contentView];
  [v8 collapseTextFieldsIfInPencilMode];

  v9 = [(CKMessageEntryView *)self delegate];
  [v9 messageEntryViewSendButtonHit:self];

  v10 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [v10 updateLayout];

  if ([(CKMessageEntryView *)self _isRunningInMVS])
  {
    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isEntryViewRefreshEnabled];

    if (v12)
    {
      [(CKMessageEntryView *)self glassSendButton];
    }

    else
    {
      [(CKMessageEntryView *)self sendButton];
    }
    v13 = ;
    [v13 setEnabled:0];
  }

  os_activity_scope_leave(&state);
}

- (BOOL)_canSend
{
  v3 = [(CKMessageEntryView *)self conversation];
  v4 = [v3 sendingService];
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 isSendButtonEnabledOnPlatform])
  {
    v6 = [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v6 = [v7 isSendButtonEnabledOnPlatform];
  }

  v8 = ![(CKMessageEntryView *)self shouldRecordForService:v4];
  return v6 & v8;
}

- (void)conversationPreferredServiceChanged:(id)a3
{
  [(CKMessageEntryView *)self updateEntryView];
  [(CKMessageEntryView *)self updateAppsMenu];
  v6 = [(CKMessageEntryView *)self conversation];
  v4 = [v6 sendingService];
  v5 = [(CKMessageEntryView *)self audioRecordingView];
  [v5 setService:v4];
}

- (BOOL)shouldRecordForService:(id)a3
{
  v4 = [(CKMessageEntryView *)self contentView];
  v5 = [v4 pluginView];

  if (v5)
  {
    return 0;
  }

  v7 = [(CKMessageEntryView *)self contentView];
  v8 = [v7 composition];
  v9 = [v8 hasContent];

  return v9 ^ 1;
}

- (BOOL)_shouldMarkForLayoutAfterPropertyUpdate
{
  if (+[CKMessageEntryContentView _platformNeedsConservativeLayoutUpdates])
  {
    return 1;
  }

  v4 = [(CKMessageEntryView *)self contentView];
  if (([v4 shouldShowSubject] & 1) != 0 || (objc_msgSend(v4, "shouldShowPlugin") & 1) != 0 || -[CKMessageEntryView displayMode](self, "displayMode") != 1 || -[CKMessageEntryView isRecording](self, "isRecording") || -[CKMessageEntryView hasRecording](self, "hasRecording") || -[CKMessageEntryView isInPencilMode](self, "isInPencilMode"))
  {
    v3 = 1;
  }

  else
  {
    v6 = [(CKMessageEntryView *)self sendLaterPluginInfo];
    v3 = v6 != 0;
  }

  return v3;
}

- (id)_serviceForEntryViewForConversation:(id)a3
{
  v3 = a3;
  v4 = [v3 sendingService];
  v5 = [v3 chat];
  v6 = [v5 isInterworking];

  if (v6)
  {
    v7 = MEMORY[0x1E69A5C90];
    v8 = [v3 chat];
    v9 = [v8 interworkingService];
    v10 = [v7 serviceWithName:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v4;
    }

    v13 = v12;

    v4 = v13;
  }

  return v4;
}

- (id)_placeholderTextForConversation:(id)a3
{
  v4 = a3;
  if (![v4 recipientCount])
  {
    v11 = &stru_1F04268F8;
    goto LABEL_10;
  }

  v5 = [v4 chat];
  v6 = [v5 isStewieEmergencyChat];

  if (v6)
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"STEWIE_EMERGENCY_TEXT_ENTRY_PLACEHOLDER";
    v10 = @"ChatKit-SYDROB_FEATURES";
LABEL_7:
    v14 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:v10];
LABEL_8:
    v11 = v14;
LABEL_9:

    goto LABEL_10;
  }

  v12 = [v4 chat];
  v13 = [v12 shouldDisplayOffGridModeStatus];

  if (v13)
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
    v10 = @"ChatKit-CarrierPigeon";
    goto LABEL_7;
  }

  v16 = [v4 chat];
  v17 = [v16 isStewieRoadsideChat];

  if (v17)
  {
    v18 = [MEMORY[0x1E69A5B00] sharedInstance];
    v19 = [v4 chat];
    v20 = [v19 chatIdentifier];
    v8 = [v18 roadsideProviderNameForChatIdentifier:v20];

    v21 = MEMORY[0x1E696AEC0];
    v22 = CKFrameworkBundle();
    v23 = [v22 localizedStringForKey:@"STEWIE_ROADSIDE_TEXT_ENTRY_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
    v11 = [v21 localizedStringWithFormat:v23, v8];

    goto LABEL_9;
  }

  if ([v4 isMapKitBusinessConversation])
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = CKFrameworkBundle();
    v26 = [v25 localizedStringForKey:@"BUSINESS_CHAT_TO" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = [v4 recipient];
    v28 = [v27 name];
    v8 = [v24 stringWithFormat:v26, v28];

    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 userInterfaceLayoutDirection];

    if (v30 == 1)
    {
      v31 = @"\u200F";
    }

    else
    {
      v31 = @"\u200E";
    }

    v14 = [(__CFString *)v31 stringByAppendingString:v8];
    goto LABEL_8;
  }

  if (CKMessageEntryViewStyleIsForReply([(CKMessageEntryView *)self style]))
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"INLINE_REPLY_TEXT_ENTRY_PLACEHOLDER";
LABEL_24:
    v10 = @"ChatKit";
    goto LABEL_7;
  }

  v32 = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (v32)
  {
    v7 = CKFrameworkBundle();
    v8 = v7;
    v9 = @"SEND_LATER_TEXT_ENTRY_PLACEHOLDER";
    goto LABEL_24;
  }

  v33 = [(CKMessageEntryView *)self _serviceForEntryViewForConversation:v4];
  v11 = [v33 __ck_entryViewDisplayName];

  v8 = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![v8 isInternalInstall])
  {
    goto LABEL_9;
  }

  v34 = IMGetCachedDomainBoolForKey();

  if (v34 && [v4 supportsEncryption])
  {
    v14 = [(__CFString *)v11 stringByAppendingString:@" Encrypted"];
    v8 = v11;
    goto LABEL_8;
  }

LABEL_10:

  return v11;
}

- (void)_contactLimitsChanged:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[Event] Contact limits changed.", v6, 2u);
    }
  }

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)configureTextViewWithInputContextHistoryFromTranscript
{
  v8 = [(CKMessageEntryView *)self delegate];
  v3 = [v8 inputContextHistoryForMessageEntryView:self];
  v4 = [(CKMessageEntryView *)self contentView];
  v5 = [v4 textView];

  v6 = [v5 inputContextHistory];
  if (v3 != v6)
  {
    [v5 setInputContextHistory:v3];
    v7 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [v7 responseContextDidChange];
  }
}

- (char)sendButtonColor
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v5 = ;
  v6 = [v5 ckTintColor];

  return v6;
}

- (BOOL)isSendButtonEnabled
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {

    return [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    v6 = [(CKMessageEntryView *)self sendButton];
    v7 = [v6 isEnabled];

    return v7;
  }
}

- (BOOL)_isExceedingByteLimitForService:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessageEntryView *)self conversation];
  v6 = [v5 chat];
  v7 = [v6 shouldDisplayOffGridModeStatus];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5C90] iMessageLiteService];

    v4 = v8;
  }

  v9 = [v4 serviceProperties];
  v10 = [v9 valueForKey:*MEMORY[0x1E69A7B30]];
  v11 = [v10 intValue];

  if (v11 < 1)
  {
    goto LABEL_11;
  }

  v12 = [(CKMessageEntryView *)self composition];
  v13 = [v12 text];
  v14 = [v13 string];
  v15 = v11;

  if ([v14 lengthOfBytesUsingEncoding:4] <= v11)
  {

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v18 = [v4 name];
      v21 = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Send Button: Disabled, exceeding maximum byte limit: %@ for service: %@", &v21, 0x16u);
    }
  }

  v19 = 1;
LABEL_12:

  return v19;
}

- (BOOL)shouldAllowSendWhenSendButtonDisabled
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isSendButtonEnabledOnPlatform];

  result = 1;
  if ((v4 & 1) == 0)
  {
    v5 = [(CKMessageEntryView *)self conversation];
    v6 = [v5 chat];
    v7 = [v6 lastFinishedMessage];

    if (!v7 && ([(CKMessageEntryView *)self hasFailedRecipients]|| [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient]))
    {
      return 0;
    }
  }

  return result;
}

- (void)_swipeDownGestureRecognized:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self delegate];
    [v6 messageEntryViewSwipeDownGestureRecognized:self];
  }
}

- (void)textEffectsWindowOffsetDidChange:(id)a3
{
  [(CKMessageEntryView *)self frame];

  [(CKMessageEntryView *)self setFrame:?];
}

- (void)sendCurrentLocationMessage
{
  v3 = [(CKMessageEntryView *)self delegate];
  [v3 sendCurrentLocationMessage:self];
}

- (void)_dictationAvailabilityDidChange
{
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 enabledDictationLanguages];
  -[CKMessageEntryView setDictationEnabledForLanguage:](self, "setDictationEnabledForLanguage:", [v4 count] != 0);

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)appSelectionInterfaceSelectedItem:(id)a3
{
  v7 = a3;
  v4 = [(CKMessageEntryView *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self inputDelegate];
    [v6 messageEntryViewSelectedAppMenuItem:v7];
  }
}

- (void)_showVisionAppsMenu
{
  v3 = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(CKMessageEntryView *)self delegate];
    v5 = [(CKMessageEntryView *)self plusButton];
    v6 = [v5 button];
    [v7 messageEntryViewRequestsVisionAppMenu:self fromButton:v6];
  }
}

- (void)_trackAudioMessageRecordingStarted
{
  v2 = [MEMORY[0x1E69A8168] sharedInstance];
  [v2 trackEvent:*MEMORY[0x1E69A7318]];
}

- (void)_trackAudioMessageSentWithComposition:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E69A8168];
    v4 = a3;
    v5 = [v3 sharedInstance];
    [v5 trackEvent:*MEMORY[0x1E69A7320]];

    v6 = [v4 mediaObjects];

    v7 = [v6 firstObject];

    if (v7)
    {
      [v7 duration];
      v9 = v8;
      v10 = [MEMORY[0x1E69A8168] sharedInstance];
      v11 = *MEMORY[0x1E69A7328];
      v14 = @"AudioMessageDuration";
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v15[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v10 trackEvent:v11 withDictionary:v13];
    }
  }
}

- (void)startRecordingForRaiseGesture
{
  v3 = [(CKMessageEntryView *)self recorder];
  v4 = [(CKMessageEntryView *)self audioComposition];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not allowing audio recording invoked by raise to record gesture due to already existing audio composition.", v9, 2u);
      }
    }
  }

  else
  {
    v6 = [(CKMessageEntryView *)self conversation];
    v7 = [v6 sendingService];
    if ([(CKMessageEntryView *)self shouldRecordForService:v7])
    {
      v8 = [v3 isRecording];

      if ((v8 & 1) == 0)
      {
        [(CKMessageEntryView *)self setRecordingStartedFromRaiseGesture:1];
        [v3 startRecordingForRaiseGesture:1 shouldPlaySound:0];
      }
    }

    else
    {
    }
  }
}

- (void)stopRecordingForRaiseGestureWithFailure:(BOOL)a3
{
  v5 = [(CKMessageEntryView *)self recorder];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Stopping audio recording invoked by raise to record gesture.", buf, 2u);
    }
  }

  [(CKMessageEntryView *)self setRecordingStartedFromRaiseGesture:0];
  if (v5)
  {
    v7 = [(CKMessageEntryView *)self audioRecordingView];

    if (v7)
    {
      v8 = [(CKMessageEntryView *)self audioComposition];

      if (v8)
      {
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v10 = "Raise to record gesture attempted with an existing audio message.";
LABEL_17:
            _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v11 = [(CKMessageEntryView *)self recorder];
        [v11 setPaused:1];

        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Stopping audio recorder.", buf, 2u);
          }
        }

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __62__CKMessageEntryView_stopRecordingForRaiseGestureWithFailure___block_invoke;
        v13[3] = &unk_1E72F4810;
        v13[4] = self;
        v14 = a3;
        [v5 stopRecordingAndPlaySound:1 completion:v13];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "Tried to stop a recording with a nil audio recording view.";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Tried to stop a recording with a nil audio recorder.";
      goto LABEL_17;
    }

LABEL_18:
  }
}

void __62__CKMessageEntryView_stopRecordingForRaiseGestureWithFailure___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) sendEnableRotationAfterRecordingToDelegate];
  v4 = [*(a1 + 32) audioComposition];

  if (!v3 || v4)
  {
    if (!v3)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Raise to record Audio recording canceled because there is no composition", v22, 2u);
        }
      }

      v14 = [*(a1 + 32) recorder];
      [v14 setPaused:0];

      [*(a1 + 32) clearAudioRecordingUI];
    }
  }

  else
  {
    v5 = [v3 mediaObjects];
    v6 = [v5 firstObject];

    [v6 duration];
    if ((*(a1 + 40) & 1) != 0 || (v8 = v7, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v9 = objc_claimAutoreleasedReturnValue(), [v9 raiseToTalkErrorMaxDuration], v11 = v10, v9, v8 < v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Raise to record Audio recording canceled because it was too short", buf, 2u);
        }
      }

      [*(a1 + 32) clearAudioRecordingUI];
    }

    else
    {
      if (v6)
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v23 = 0;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Raise to record Audio recording completed with valid audio media object. Setting up recording view for playback.", v23, 2u);
          }
        }

        v16 = [*(a1 + 32) audioRecordingView];
        [v16 setPlaybackDuration:v8];

        v17 = [*(a1 + 32) audioRecordingView];
        [v17 setState:2];

        v18 = [*(a1 + 32) audioRecordingView];
        v19 = [v18 intensities];
        [v6 setPowerLevels:v19];

        v20 = [*(a1 + 32) conversation];
        [v20 setUnsentComposition:v3];

        v21 = [*(a1 + 32) audioRecordingView];
        [v21 setPlaybackCurrentTime:NAN];
      }

      [*(a1 + 32) setAudioComposition:v3];
      [*(a1 + 32) configureForDisplayMode:3];
    }
  }
}

- (void)cancelAudioMessage
{
  [(CKMessageEntryView *)self sendEnableRotationAfterRecordingToDelegate];
  [(CKMessageEntryView *)self setAudioComposition:0];
  v3 = [(CKMessageEntryView *)self recorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self recorder];
    [v5 cancelRecording];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CKMessageEntryView_cancelAudioMessage__block_invoke;
  v6[3] = &unk_1E72EBA18;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.5];
}

uint64_t __40__CKMessageEntryView_cancelAudioMessage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearAudioRecordingUI];
  v2 = *(a1 + 32);

  return [v2 configureForDisplayMode:1];
}

- (void)disableRotationWhileRecordingAudioMessage
{
  v3 = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self delegate];
    [v5 disableRotationWhileRecordingAudioMessage];
  }
}

- (void)audioRecorderDidStartRecording:(id)a3
{
  [(CKMessageEntryView *)self disableRotationWhileRecordingAudioMessage];
  [(CKMessageEntryView *)self _trackAudioMessageRecordingStarted];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CKMessageEntryView_audioRecorderDidStartRecording___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v8 options:0 animations:0.3 completion:0.0];
  v4 = [(CKMessageEntryView *)self audioRecordingView];
  [v4 setState:1];

  v5 = [(CKMessageEntryView *)self audioComposition];
  if (!v5)
  {
    v6 = [(CKMessageEntryView *)self inputDelegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v5 = [(CKMessageEntryView *)self inputDelegate];
    [v5 messageEntryViewDidStageAudioRecordingUI:self];
  }
}

uint64_t __53__CKMessageEntryView_audioRecorderDidStartRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) configureForDisplayMode:2];
  [*(a1 + 32) setEntryViewSmoothnessForMorphingAppearance];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)audioRecorderRecordingDidChange:(id)a3
{
  v4 = [(CKMessageEntryView *)self delegate];
  [v4 messageEntryViewRecordingDidChange:self];
}

- (void)audioRecorderRecordingDidFail:(id)a3
{
  [(CKMessageEntryView *)self configureForDisplayMode:1];

  [(CKMessageEntryView *)self showHintWithReason:2];
}

- (void)audioRecorderDidUpdateAveragePower:(float)a3
{
  if ([(CKMessageEntryView *)self recordingStartedFromRaiseGesture])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 audioRecordingViewMinimumDBLevel];
    v7 = v6;

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 audioRecordingViewMaximumDBLevel];
    v10 = v9;

    v11 = [(CKMessageEntryView *)self audioRecordingView];
    [v11 addToWaveformWithIntensity:(a3 - v7) / (v10 - v7)];
  }
}

- (void)_setupAudioMessageRecordingView
{
  v3 = [(CKMessageEntryView *)self audioRecordingView];

  if (!v3)
  {
    v4 = [CKAudioMessageRecordingView alloc];
    v5 = [(CKMessageEntryView *)self contentClipView];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CKMessageEntryView *)self conversation];
    v15 = [v14 sendingService];
    v16 = [(CKAudioMessageRecordingView *)v4 initWithFrame:v15 service:v7, v9, v11, v13];
    [(CKMessageEntryView *)self setAudioRecordingView:v16];

    v17 = [(CKMessageEntryView *)self audioRecordingView];
    [v17 setAlpha:0.0];

    v18 = [(CKMessageEntryView *)self audioRecordingView];
    [v18 setDelegate:self];

    v19 = [(CKMessageEntryView *)self audioRecordingView];
    [v19 setupDisplayLink];

    v20 = [(CKMessageEntryView *)self audioRecordingView];
    v21 = [v20 sendButton];
    [v21 setEnabled:{-[CKMessageEntryView sendButtonEnabled](self, "sendButtonEnabled")}];

    v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v21) = [v22 isEntryViewRefreshEnabled];

    if (v21)
    {
      v23 = [(CKMessageEntryView *)self contentClipView];
      v24 = [(CKMessageEntryView *)self audioRecordingView];
      [v23 addSubview:v24];

      v25 = [CKGlassCancelAudioRecordingButton alloc];
      v26 = [(CKMessageEntryView *)self plusButton];
      [v26 frame];
      v27 = [(CKGlassCancelAudioRecordingButton *)v25 initWithFrame:?];
      [(CKMessageEntryView *)self setCancelAudioRecordingButton:v27];

      v28 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [v28 addTarget:self action:sel_audioMessageRecordingViewDidCancel_ forControlEvents:64];

      v29 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      v30 = [(CKMessageEntryView *)self contentClipView];
      [(CKMessageEntryView *)self insertSubview:v29 belowSubview:v30];
    }

    else
    {
      v29 = [(CKMessageEntryView *)self audioRecordingView];
      [(CKMessageEntryView *)self addSubview:v29];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __53__CKMessageEntryView__setupAudioMessageRecordingView__block_invoke;
    v32[3] = &unk_1E72EBA18;
    v32[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v32];
    v31 = [(CKMessageEntryView *)self delegate];
    [v31 messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
  }
}

void __53__CKMessageEntryView__setupAudioMessageRecordingView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecordingView];
  [v2 setState:1];

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  if (v4)
  {
    v5 = [*(a1 + 32) cancelAudioRecordingButton];
    [v5 setNeedsLayout];

    v6 = [*(a1 + 32) cancelAudioRecordingButton];
    [v6 layoutIfNeeded];
  }
}

- (void)startRecordingForAudioButtonInEntryView
{
  v3 = [(CKMessageEntryView *)self composition];
  if ([v3 hasContent])
  {
    goto LABEL_4;
  }

  v4 = [(CKMessageEntryView *)self audioComposition];
  if (v4)
  {

LABEL_4:
LABEL_5:

    [(CKMessageEntryView *)self showHintWithReason:1];
    return;
  }

  v5 = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (v5)
  {
    goto LABEL_5;
  }

  [(CKMessageEntryView *)self startRecording];
}

- (void)audioButtonLongPressed:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) < 2)
  {
    v10 = [(CKMessageEntryView *)self audioMessageButtonTimer];

    if (v10)
    {
      [(CKMessageEntryView *)self setShouldUseLinearResizeForAudioMessage:0];
      v11 = [(CKMessageEntryView *)self audioMessageButtonTimer];
      [v11 invalidate];

      [(CKMessageEntryView *)self setAudioMessageButtonTimer:0];
      [(CKMessageEntryView *)self cancelAudioMessage];
      [(CKMessageEntryView *)self showHintWithReason:0];
      goto LABEL_11;
    }

    v23 = [(CKMessageEntryView *)self audioRecordingView];
    v24 = [v23 isStopButtonHighlighted];

    if (!v24)
    {
      goto LABEL_11;
    }

    [(CKMessageEntryView *)self setupAudioMessageQuickSendViewAndStopRecording];
    v20 = [(CKMessageEntryView *)self audioRecordingView];
    v21 = v20;
    v22 = 0;
LABEL_10:
    [v20 setIsStopButtonHighlighted:v22];

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v12 = [(CKMessageEntryView *)self audioRecordingView];
    [v4 locationInView:v12];
    v14 = v13;
    v16 = v15;

    v17 = [(CKMessageEntryView *)self audioRecordingView];
    v18 = [v17 stopButton];
    [v18 frame];
    v33.x = v14;
    v33.y = v16;
    v19 = CGRectContainsPoint(v34, v33);

    v20 = [(CKMessageEntryView *)self audioRecordingView];
    v21 = v20;
    v22 = v19;
    goto LABEL_10;
  }

  if (v5 == 1)
  {
    [(CKMessageEntryView *)self setShouldUseLinearResizeForAudioMessage:1];
    [(CKMessageEntryView *)self _setupAudioMessageRecordingView];
    v6 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
    [v6 prepare];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E695DFF0];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __45__CKMessageEntryView_audioButtonLongPressed___block_invoke;
    v28 = &unk_1E72F4838;
    objc_copyWeak(&v31, &location);
    v29 = self;
    v8 = v6;
    v30 = v8;
    v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v25 block:0.5];
    [(CKMessageEntryView *)self setAudioMessageButtonTimer:v9, v25, v26, v27, v28, v29];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

LABEL_11:
}

void __45__CKMessageEntryView_audioButtonLongPressed___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] setShouldUseLinearResizeForAudioMessage:0];
  [a1[5] impactOccurred];
  v3 = [WeakRetained audioMessageButtonTimer];
  [v3 invalidate];

  [WeakRetained setAudioMessageButtonTimer:0];
  [a1[4] configureForDisplayMode:2];
  [a1[4] startRecordingForAudioButtonInEntryView];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isEntryViewRefreshEnabled];

  if (v5)
  {
    v6 = MEMORY[0x1E69DD250];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 audioMessagePeakAnimationDuration];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__CKMessageEntryView_audioButtonLongPressed___block_invoke_2;
    v10[3] = &unk_1E72EBA18;
    v10[4] = a1[4];
    [v6 animateWithDuration:0x20000 delay:v10 options:0 animations:? completion:?];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__CKMessageEntryView_audioButtonLongPressed___block_invoke_3;
    v9[3] = &unk_1E72EBA18;
    v9[4] = a1[4];
    [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  v8 = [a1[4] delegate];
  [v8 messageEntryViewDidChange:a1[4] isTextChange:0 isShelfChange:0 isTranslationChange:0];
}

- (void)showHintWithReason:(int64_t)a3
{
  v5 = [(CKMessageEntryView *)self hintLabel];
  v6 = [v5 isHidden];

  if (v6)
  {
    if (a3 <= 3)
    {
      v7 = off_1E72F4870[a3];
      v8 = [(CKMessageEntryView *)self hintLabel];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
      [v8 setText:v10];
    }

    [(CKMessageEntryView *)self applyDefaultGlass];
    v11 = [(CKMessageEntryView *)self audioButton];
    [v11 setEnabled:0];

    v12 = [(CKMessageEntryView *)self plusButton];
    v13 = [v12 button];
    [v13 setEnabled:0];

    v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v13) = [v14 isEntryViewRefreshEnabled];

    if (v13)
    {
      [(CKMessageEntryView *)self glassSendButton];
    }

    else
    {
      [(CKMessageEntryView *)self sendButton];
    }
    v15 = ;
    [v15 setEnabled:0];

    v16 = [(CKMessageEntryView *)self emojiButton];
    [v16 setEnabled:0];

    v17 = [(CKMessageEntryView *)self hintLabel];
    [v17 setAlpha:0.0];

    v18 = [(CKMessageEntryView *)self hintLabel];
    [v18 setHidden:0];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __41__CKMessageEntryView_showHintWithReason___block_invoke;
    v20[3] = &unk_1E72EBA18;
    v20[4] = self;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__CKMessageEntryView_showHintWithReason___block_invoke_2;
    v19[3] = &unk_1E72EB9C8;
    v19[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v20 animations:v19 completion:0.25];
  }
}

void __41__CKMessageEntryView_showHintWithReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldShowHintLabel:1];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = [*(a1 + 32) delegate];
  [v2 messageEntryViewDidChange:*(a1 + 32) isTextChange:0 isShelfChange:0 isTranslationChange:0];

  v3 = [*(a1 + 32) hintLabel];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) contentView];
  [v4 setHidden:1];
}

uint64_t __41__CKMessageEntryView_showHintWithReason___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CKMessageEntryView_showHintWithReason___block_invoke_4;
  v3[3] = &unk_1E72EBA18;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__CKMessageEntryView_showHintWithReason___block_invoke_5;
  v2[3] = &unk_1E72EB9C8;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.25];
}

void __41__CKMessageEntryView_showHintWithReason___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setShouldShowHintLabel:0];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = [*(a1 + 32) delegate];
  [v2 messageEntryViewDidChange:*(a1 + 32) isTextChange:0 isShelfChange:0 isTranslationChange:0];

  v3 = [*(a1 + 32) hintLabel];
  [v3 setAlpha:0.0];
}

void __41__CKMessageEntryView_showHintWithReason___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) audioButton];
  [v3 setEnabled:1];

  v4 = [*(a1 + 32) plusButton];
  v5 = [v4 button];
  [v5 setEnabled:{objc_msgSend(*(a1 + 32), "_shouldEnablePlusButton")}];

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v5) = [v6 isEntryViewRefreshEnabled];

  v7 = *(a1 + 32);
  if (v5)
  {
    [v7 glassSendButton];
  }

  else
  {
    [v7 sendButton];
  }
  v8 = ;
  [v8 setEnabled:{objc_msgSend(*(a1 + 32), "sendButtonEnabled")}];

  v9 = [*(a1 + 32) emojiButton];
  [v9 setEnabled:1];

  v10 = [*(a1 + 32) hintLabel];
  [v10 setHidden:1];

  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v11 = [*(a1 + 32) delegate];
  [v11 messageEntryViewDidChange:*(a1 + 32) isTextChange:0 isShelfChange:0 isTranslationChange:0];
}

- (void)startRecording
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessageEntryView *)self recorder];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(CKMessageEntryView *)self recorder];
      v6 = [(CKMessageEntryView *)self recorder];
      v7 = [v6 isRecording];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Start recording with recorder: %@ isRecordingAlready: %@", &v12, 0x16u);
    }
  }

  v9 = [(CKMessageEntryView *)self conversation];
  v10 = [v9 sendingService];
  if ([(CKMessageEntryView *)self shouldRecordForService:v10])
  {
    v11 = [v3 isRecording];

    if ((v11 & 1) == 0)
    {
      [v3 startRecordingForRaiseGesture:0 shouldPlaySound:0];
    }
  }

  else
  {
  }
}

- (double)powerLevelForAudioMessageRecordingView:(id)a3
{
  v4 = [(CKMessageEntryView *)self recorder];
  if (v4 && (v5 = v4, -[CKMessageEntryView recorder](self, "recorder"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isRecording], v6, v5, (v7 & 1) != 0))
  {
    v8 = [(CKMessageEntryView *)self recorder];
    [v8 averagePower];
    v10 = v9;
  }

  else
  {
    return nanf(0);
  }

  return v10;
}

- (void)setupAudioMessageQuickSendViewAndStopRecording
{
  v3 = [(CKMessageEntryView *)self recorder];

  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v7 = "Tried to stop a recording with a nil audio recorder.";
    v8 = &v11;
LABEL_12:
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
LABEL_13:

    return;
  }

  v4 = [(CKMessageEntryView *)self audioRecordingView];

  if (!v4)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v7 = "Tried to stop a recording with a nil audio recording view.";
    v8 = buf;
    goto LABEL_12;
  }

  v5 = [(CKMessageEntryView *)self recorder];
  [v5 setPaused:1];

  [(CKMessageEntryView *)self stopRecording];
  v9 = [(CKMessageEntryView *)self audioRecordingView];
  [v9 setPlaybackCurrentTime:NAN];
}

- (void)stopRecording
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKMessageEntryView *)self recorder];
      v5 = [(CKMessageEntryView *)self recorder];
      v6 = [v5 isRecording];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Stop recording with recorder: %@ isRecordingAlready: %@", buf, 0x16u);
    }
  }

  v8 = [(CKMessageEntryView *)self recorder];
  if ([v8 isRecording])
  {
    [(CKMessageEntryView *)self sendEnableRotationAfterRecordingToDelegate];
    v9 = [(CKMessageEntryView *)self recorder];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__CKMessageEntryView_stopRecording__block_invoke;
    v10[3] = &unk_1E72ED6D8;
    v10[4] = self;
    [v9 stopRecording:v10];
  }
}

void __35__CKMessageEntryView_stopRecording__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaObjects];
    v6 = [v5 firstObject];

    if (v6)
    {
      [v6 duration];
      v8 = v7;
      v9 = [*(a1 + 32) audioRecordingView];
      [v9 setPlaybackDuration:v8];

      v10 = [*(a1 + 32) audioRecordingView];
      [v10 setState:2];

      v11 = [*(a1 + 32) audioRecordingView];
      v12 = [v11 intensities];
      [v6 setPowerLevels:v12];

      v13 = [*(a1 + 32) conversation];
      [v13 setUnsentComposition:v4];
    }

    [*(a1 + 32) setAudioComposition:v4];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __35__CKMessageEntryView_stopRecording__block_invoke_2;
    v16[3] = &unk_1E72EBA18;
    v16[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v16 options:0 animations:0.3 completion:0.0];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__CKMessageEntryView_stopRecording__block_invoke_3;
    v15[3] = &unk_1E72EBA18;
    v15[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v15 options:0 animations:0.3 completion:0.0];
  }

  v14 = [*(a1 + 32) recorder];
  [v14 setCompletion:0];
}

uint64_t __35__CKMessageEntryView_stopRecording__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) applyDefaultGlass];
  [*(a1 + 32) configureForDisplayMode:3];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __35__CKMessageEntryView_stopRecording__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) clearAudioRecordingUI];
  v2 = *(a1 + 32);

  return [v2 showHintWithReason:2];
}

- (void)audioMessageRecordingViewDidResume:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKMessageEntryView *)self recorder];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(CKMessageEntryView *)self recorder];
        v8 = [(CKMessageEntryView *)self recorder];
        v9 = [v8 isRecording];
        v10 = @"NO";
        if (v9)
        {
          v10 = @"YES";
        }

        v25 = 138412546;
        v26 = v7;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Resume recording with recorder: %@ isRecordingAlready: %@", &v25, 0x16u);
      }
    }

    v11 = [(CKMessageEntryView *)self audioComposition];

    if (v11)
    {
      v12 = [(CKMessageEntryView *)self audioComposition];
      v13 = [v12 mediaObjects];
      v14 = [v13 firstObject];

      [v14 duration];
      v16 = v15;
      v17 = [(CKMessageEntryView *)self audioRecordingView];
      [v17 setPlaybackDuration:v16];

      v18 = [(CKMessageEntryView *)self audioRecordingView];
      v19 = [v14 powerLevels];
      [v18 setWithIntensities:v19];

      v20 = [(CKMessageEntryView *)self recorder];
      [v20 setPaused:1];

      v21 = [(CKMessageEntryView *)self recorder];
      [v21 setTotalPacketsCount:{objc_msgSend(v14, "totalPacketsCount")}];

      v22 = [(CKMessageEntryView *)self recorder];
      v23 = [v14 temporaryFileURL];
      [v22 setFileURL:v23];
    }

    [(CKMessageEntryView *)self startRecording];
    v24 = [(CKMessageEntryView *)self recorder];
    [v24 setPaused:0];
  }
}

- (void)audioMessageRecordingViewDidSend:(id)a3
{
  v4 = [(CKMessageEntryView *)self recorder];

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self recorder];
    [v5 setPaused:0];

    v6 = [(CKMessageEntryView *)self audioController];
    [v6 stop];

    [(CKMessageEntryView *)self sendAudioMessage];
  }
}

- (void)sendAudioMessage
{
  v3 = [(CKMessageEntryView *)self recorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    [(CKMessageEntryView *)self sendEnableRotationAfterRecordingToDelegate];
    objc_initWeak(&location, self);
    v5 = [(CKMessageEntryView *)self recorder];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__CKMessageEntryView_sendAudioMessage__block_invoke;
    v6[3] = &unk_1E72F0968;
    objc_copyWeak(&v7, &location);
    [v5 stopRecording:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else if ([(CKMessageEntryView *)self hasRecording])
  {

    [(CKMessageEntryView *)self _handleSendAudioMessage];
  }
}

void __38__CKMessageEntryView_sendAudioMessage__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setAudioComposition:v4];
    [WeakRetained _handleSendAudioMessage];
  }

  [WeakRetained configureForDisplayMode:1];
}

- (void)_handleSendAudioMessage
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKMessageEntryView *)self audioComposition];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Sending audio message with audio composition: %@", &v9, 0xCu);
    }
  }

  v5 = [(CKMessageEntryView *)self recorder];

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self recorder];
    [v6 resetState];
  }

  [(CKMessageEntryView *)self _deleteTemporaryAudioFile];
  v7 = [(CKMessageEntryView *)self audioComposition];
  [(CKMessageEntryView *)self _trackAudioMessageSentWithComposition:v7];

  v8 = [(CKMessageEntryView *)self delegate];
  [v8 messageEntryViewSendButtonHit:self];
}

- (void)audioMessageRecordingViewDidCancel:(id)a3
{
  v4 = [(CKMessageEntryView *)self audioController];

  if (v4)
  {
    v5 = [(CKMessageEntryView *)self audioController];
    [v5 stop];

    [(CKMessageEntryView *)self setAudioController:0];
  }

  v6 = [(CKMessageEntryView *)self recorder];

  if (v6)
  {
    v7 = [(CKMessageEntryView *)self recorder];
    [v7 setPaused:0];

    v8 = [(CKMessageEntryView *)self recorder];
    [v8 cancelRecording];

    v9 = [(CKMessageEntryView *)self recorder];
    [v9 resetState];

    v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v11 = [v10 isEntryViewRefreshEnabled];

    if (v11)
    {
      [(CKMessageEntryView *)self applyDefaultGlass];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__CKMessageEntryView_audioMessageRecordingViewDidCancel___block_invoke;
      v13[3] = &unk_1E72EBA18;
      v13[4] = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__CKMessageEntryView_audioMessageRecordingViewDidCancel___block_invoke_2;
      v12[3] = &unk_1E72EB9C8;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v13 options:v12 animations:0.2 completion:0.0];
    }

    else
    {
      [(CKMessageEntryView *)self clearAudioRecordingUI];
    }

    [(CKMessageEntryView *)self _deleteTemporaryAudioFile];
  }
}

uint64_t __57__CKMessageEntryView_audioMessageRecordingViewDidCancel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) configureForDisplayMode:1];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_deleteTemporaryAudioFile
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CKMessageEntryView *)self audioComposition];

  if (v3)
  {
    v4 = [(CKMessageEntryView *)self audioComposition];
    v5 = [v4 mediaObjects];
    v6 = [v5 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v7 temporaryFileURL];
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Deleting temporary audio file at url: %@", buf, 0xCu);
        }
      }

      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v11 = [v7 temporaryFileURL];
      v14 = 0;
      [v10 removeItemAtURL:v11 error:&v14];
      v12 = v14;

      if (v12 && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Failed to delete temporary audio file with error: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)audioMessageRecordingViewDidPlay:(id)a3
{
  v3 = [(CKMessageEntryView *)self audioController];
  [v3 play];
}

- (void)audioMessageRecordingViewDidPause:(id)a3
{
  v3 = [(CKMessageEntryView *)self audioController];
  [v3 pause];
}

- (void)audioMessageRecordingViewDidStartScrubbing:(id)a3
{
  v4 = [(CKMessageEntryView *)self audioController];
  v5 = [v4 isPlaying];

  if (v5)
  {
    v6 = [(CKMessageEntryView *)self audioController];
    [v6 pause];

    [(CKMessageEntryView *)self setAudioControllerWasPlayingBeforeScrubbing:1];
  }
}

- (void)audioMessageRecordingViewDidUpdateScrubbing:(id)a3 atTime:(double)a4
{
  v5 = [(CKMessageEntryView *)self audioController];
  [v5 layoutViewsForScrubbingTime:a4];
}

- (void)audioMessageRecordingViewDidStopScrubbing:(id)a3 atTime:(double)a4
{
  v6 = [(CKMessageEntryView *)self audioController];
  [v6 setCurrentTime:a4];

  if ([(CKMessageEntryView *)self audioControllerWasPlayingBeforeScrubbing])
  {
    v7 = [(CKMessageEntryView *)self audioController];
    [v7 play];

    [(CKMessageEntryView *)self setAudioControllerWasPlayingBeforeScrubbing:0];
  }
}

- (void)clearAudioRecordingUI
{
  v3 = [(CKMessageEntryView *)self audioRecordingView];

  if (v3)
  {
    v4 = [(CKMessageEntryView *)self audioRecordingView];
    [v4 invalidateDisplayLink];

    v5 = [(CKMessageEntryView *)self audioRecordingView];
    [v5 removeFromSuperview];

    [(CKMessageEntryView *)self setAudioRecordingView:0];
    v6 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [v6 removeFromSuperview];

    [(CKMessageEntryView *)self setCancelAudioRecordingButton:0];
    [(CKMessageEntryView *)self setAudioComposition:0];
    v7 = [(CKMessageEntryView *)self conversation];
    [v7 setUnsentComposition:0];

    [(CKMessageEntryView *)self setComposition:0];
    [(CKMessageEntryView *)self configureForDisplayMode:1];
    v8 = [(CKMessageEntryView *)self delegate];
    [v8 messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];

    v9 = [(CKMessageEntryView *)self inputDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CKMessageEntryView *)self inputDelegate];
      [v11 messageEntryViewDidClearAudioRecordingUI:self];
    }

    v12 = [(CKMessageEntryView *)self recorder];
    [v12 resetState];
  }
}

- (CGRect)audioRecordingPillViewFrameInThrowViewCoordinates
{
  v3 = [(CKMessageEntryView *)self audioRecordingView];

  if (v3)
  {
    v4 = [(CKMessageEntryView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CKMessageEntryView *)self delegate];
      v7 = [(CKMessageEntryView *)self audioRecordingView];
      v8 = [v7 backgroundView];
      [v6 messageEntryView:self frameInThrowViewCoordinatesForView:v8];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v6 = [(CKMessageEntryView *)self audioRecordingView];
      v7 = [v6 backgroundView];
      v17 = [(CKMessageEntryView *)self audioRecordingView];
      v18 = [v17 backgroundView];
      [v18 bounds];
      [v7 convertRect:0 toView:?];
      v10 = v19;
      v12 = v20;
      v14 = v21;
      v16 = v22;
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)audioRecordingPillViewSnapshot
{
  v3 = [(CKMessageEntryView *)self audioRecordingView];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCA78]);
    v5 = [(CKMessageEntryView *)self audioRecordingView];
    v6 = [v5 backgroundView];
    [v6 frame];
    v8 = v7;
    v9 = [(CKMessageEntryView *)self audioRecordingView];
    v10 = [v9 backgroundView];
    [v10 frame];
    v12 = [v4 initWithSize:{v8, v11}];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__CKMessageEntryView_audioRecordingPillViewSnapshot__block_invoke;
    v16[3] = &unk_1E72EBBE8;
    v16[4] = self;
    v13 = [v12 imageWithActions:v16];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  }

  return v14;
}

void __52__CKMessageEntryView_audioRecordingPillViewSnapshot__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecordingView];
  v3 = [v2 backgroundView];
  [v3 frame];
  v5 = v4;
  v6 = [*(a1 + 32) audioRecordingView];
  v7 = [v6 backgroundView];
  [v7 frame];
  v9 = v8;

  v11 = [*(a1 + 32) audioRecordingView];
  v10 = [v11 backgroundView];
  [v10 drawViewHierarchyInRect:0 afterScreenUpdates:{0.0, 0.0, v5, v9}];
}

- (void)applicationWillResignActive
{
  v3 = [(CKMessageEntryView *)self recorder];

  if (v3)
  {
    v4 = [(CKMessageEntryView *)self recorder];
    v5 = [v4 isRecording];

    if (v5)
    {
      v6 = [(CKMessageEntryView *)self audioRecordingView];
      v7 = [v6 state];

      if (v7 != 2)
      {
        v8 = [(CKMessageEntryView *)self recorder];
        [v8 setPaused:1];

        [(CKMessageEntryView *)self stopRecording];
        v9 = [(CKMessageEntryView *)self audioComposition];
        v10 = [v9 mediaObjects];
        v16 = [v10 firstObject];

        if (v16)
        {
          [v16 duration];
          v12 = v11;
          v13 = [(CKMessageEntryView *)self audioRecordingView];
          [v13 setPlaybackDuration:v12];
        }

        v14 = [(CKMessageEntryView *)self audioRecordingView];
        [v14 setState:2];

        v15 = [(CKMessageEntryView *)self audioRecordingView];
        [v15 setPlaybackCurrentTime:NAN];
      }
    }
  }
}

- (void)audioController:(id)a3 mediaObjectDidFinishPlaying:(id)a4
{
  v4 = [(CKMessageEntryView *)self audioRecordingView:a3];
  [v4 setPlaybackCurrentTime:NAN];
}

- (void)audioController:(id)a3 mediaObjectProgressDidChange:(id)a4 currentTime:(double)a5 duration:(double)a6
{
  v7 = [(CKMessageEntryView *)self audioRecordingView:a3];
  [v7 setPlaybackCurrentTime:a5];
}

- (void)audioController:(id)a3 layoutViewsForScrubbingTime:(double)a4 mediaObject:(id)a5
{
  v6 = [(CKMessageEntryView *)self audioRecordingView:a3];
  [v6 setPlaybackCurrentTime:a4];
}

- (void)audioControllerDidStop:(id)a3
{
  v3 = [(CKMessageEntryView *)self audioRecordingView];
  [v3 setState:2];
}

- (void)sendEnableRotationAfterRecordingToDelegate
{
  v3 = [(CKMessageEntryView *)self delegate];

  if (v3)
  {
    v4 = [(CKMessageEntryView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CKMessageEntryView *)self delegate];
      [v6 enableRotationAfterRecording];
    }
  }
}

- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKMessageEntryView *)self contentView];
  [v7 setTextEffectCoordinatorPaused:v4 reason:v6];
}

- (CGSize)inputButtonSize
{
  width = self->_inputButtonSize.width;
  height = self->_inputButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sendButtonSize
{
  width = self->_sendButtonSize.width;
  height = self->_sendButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)characterCountSize
{
  width = self->_characterCountSize.width;
  height = self->_characterCountSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_NSRange)rangeOfTappedMention
{
  p_rangeOfTappedMention = &self->_rangeOfTappedMention;
  location = self->_rangeOfTappedMention.location;
  length = p_rangeOfTappedMention->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CKMessageEntryViewAudioMessageAppDelegate)audioMessageAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioMessageAppDelegate);

  return WeakRetained;
}

- (void)moveFloatingCursorsToOrigin
{
  v4 = self;
  v2 = [(CKMessageEntryView *)v4 contentView];
  if (v2)
  {
    v3 = v2;
    sub_190863B08();
  }

  else
  {
    __break(1u);
  }
}

- (void)plusButtonLongPressed:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_19020E000, a2, OS_LOG_TYPE_DEBUG, "Ignoring gesture recognizer callback with state=%ld", &v2, 0xCu);
}

- (void)_isDictationEnabled
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _AFDictationRestricted(void)"];
  [v0 handleFailureInFunction:v1 file:@"CKMessageEntryView.m" lineNumber:142 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
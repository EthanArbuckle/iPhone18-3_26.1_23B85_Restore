@interface CKMessageEntryView
+ (CKMessageEntryView)currentEntryView;
+ (UIEdgeInsets)contentViewInsetsForMarginInsets:(UIEdgeInsets)insets shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count shouldCoverSendButton:(BOOL)button isStewieMode:(BOOL)mode;
+ (UIEdgeInsets)coverViewInsetsForMarginInsets:(UIEdgeInsets)insets shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count shouldCenterCharacterCount:(BOOL *)characterCount isStewieMode:(BOOL)mode;
- (BOOL)_canSend;
- (BOOL)_isApplePayCashInShelf;
- (BOOL)_isDictationEnabled;
- (BOOL)_isExceedingByteLimitForService:(id)service;
- (BOOL)_isPresentingInPopover;
- (BOOL)_shouldEnablePlusButton;
- (BOOL)_shouldMarkForLayoutAfterPropertyUpdate;
- (BOOL)_shouldShrinkEntryViewForSendMenuPresentation;
- (BOOL)_shouldUseConcentricPadding;
- (BOOL)_shouldUseDarkAppearanceFromTraitCollection:(id)collection;
- (BOOL)_shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker;
- (BOOL)audioRecordingIsInEntryView;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasRecording;
- (BOOL)isInPencilMode;
- (BOOL)isRecording;
- (BOOL)isSendButtonEnabled;
- (BOOL)isShowingAudioRecordingView;
- (BOOL)messageEntryContentView:(id)view canPerformDictationAction:(id)action;
- (BOOL)messageEntryContentView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)messageEntryContentView:(id)view shouldInsertMediaObjects:(id)objects;
- (BOOL)messageEntryContentViewShouldAllowLinkCustomization:(id)customization;
- (BOOL)messageEntryContentViewShouldBeDisabled:(id)disabled;
- (BOOL)messageEntryContentViewShouldBeginEditing:(id)editing;
- (BOOL)messageEntryContentViewShouldResignFirstResponder:(id)responder;
- (BOOL)pluginButtonsEnabled;
- (BOOL)sendButtonEnabled;
- (BOOL)shouldAllowSendWhenSendButtonDisabled;
- (BOOL)shouldHideBackgroundView;
- (BOOL)shouldRecordForService:(id)service;
- (BOOL)shouldReloadBackgroundView;
- (BOOL)shouldShowAudioButton;
- (CGRect)_computedFinalCoverFrameRectForContentSize:(CGSize)size;
- (CGRect)activeKeyboardHeight;
- (CGRect)anchorRect;
- (CGRect)audioRecordingPillViewFrameInThrowViewCoordinates;
- (CGRect)coverFrameThatFitsInSize:(CGSize)size;
- (CGRect)sendButtonFrameInScreenCoordinates;
- (CGSize)characterCountSize;
- (CGSize)inputButtonSize;
- (CGSize)messageEntryContentViewMaxShelfPluginViewSize:(id)size;
- (CGSize)sendButtonSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKComposition)composition;
- (CKEntryViewButton)keyboardButton;
- (CKMessageEntryView)initWithFrame:(CGRect)frame marginInsets:(UIEdgeInsets)insets shouldAllowImpact:(BOOL)impact shouldShowSendButton:(BOOL)button shouldShowSubject:(BOOL)subject shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count traitCollection:(id)self0 shouldDisableAttachments:(BOOL)self1 shouldUseNonEmojiKeyboard:(BOOL)self2 shouldUseNonHandwritingKeyboard:(BOOL)self3 shouldDisableKeyboardStickers:(BOOL)self4 shouldAllowPollSuggestions:(BOOL)self5 translationLanguage:(id)self6;
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
- (double)balloonMaxWidthForMessageEntryRichTextView:(id)view;
- (double)bottomInsetForAppCard;
- (double)calculateOneLinePlaceHolderCenterY:(double)y;
- (double)coverViewWidth;
- (double)placeholderHeight;
- (double)powerLevelForAudioMessageRecordingView:(id)view;
- (id)_currentInputDelegate;
- (id)_placeholderTextForConversation:(id)conversation;
- (id)_serviceForEntryViewForConversation:(id)conversation;
- (id)audioRecordingPillViewSnapshot;
- (id)createDictationButton;
- (id)gradientReferenceViewForMessageEntryContentView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)inputAccessoryViewBackdropColor;
- (id)inputAccessoryViewBackdropEffects;
- (id)pasteBoardTextFromComposition:(id)composition;
- (id)suggestionView:(id)view entityAtIndex:(unint64_t)index;
- (id)suggestionView:(id)view indexPathOfEntityWithIdentifier:(id)identifier;
- (unint64_t)numberOfSuggestionsInSuggestionView:(id)view forSection:(unint64_t)section;
- (void)_animateMessageEditingBlurOverlayViewIn;
- (void)_animateMessageEditingBlurOverlayViewOut;
- (void)_configureForDisplayModeRecorded;
- (void)_configureForDisplayModeRecording;
- (void)_configureForDisplayModeSending;
- (void)_configureForDisplayModeText;
- (void)_contactLimitsChanged:(id)changed;
- (void)_deleteTemporaryAudioFile;
- (void)_dictationAvailabilityDidChange;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handlePlusButtonTouchInside:(id)inside;
- (void)_handleSendAudioMessage;
- (void)_isDictationEnabled;
- (void)_layoutAudioButtonWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y;
- (void)_layoutBackgroundView;
- (void)_layoutContentViewAndAudioRecordingViewWithCoverFrame:(CGRect)frame;
- (void)_layoutDictationButtonWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y;
- (void)_layoutHintViewWithCoverFrame:(CGRect)frame;
- (void)_layoutSendButtonAndCharacterCountWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y;
- (void)_overrideUserInterfaceStyleForEntryViewStyleIfNeeded:(int64_t)needed;
- (void)_setupAudioMessageRecordingView;
- (void)_showVisionAppsMenu;
- (void)_swipeDownGestureRecognized:(id)recognized;
- (void)_trackAudioMessageRecordingStarted;
- (void)_trackAudioMessageSentWithComposition:(id)composition;
- (void)_updateSendMenuPresentationState:(int64_t)state;
- (void)_updateSendMenuPresentationStatePopoverSendMenu:(int64_t)menu;
- (void)_updateSendMenuPresentationStateVariableSendMenu:(int64_t)menu;
- (void)adjustContentClipViewForSendLater;
- (void)appSelectionInterfaceSelectedItem:(id)item;
- (void)applicationWillResignActive;
- (void)applyDefaultGlass;
- (void)applySendAnimationGlass;
- (void)audioButtonLongPressed:(id)pressed;
- (void)audioController:(id)controller layoutViewsForScrubbingTime:(double)time mediaObject:(id)object;
- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing;
- (void)audioController:(id)controller mediaObjectProgressDidChange:(id)change currentTime:(double)time duration:(double)duration;
- (void)audioControllerDidStop:(id)stop;
- (void)audioMessageRecordingViewDidCancel:(id)cancel;
- (void)audioMessageRecordingViewDidPause:(id)pause;
- (void)audioMessageRecordingViewDidPlay:(id)play;
- (void)audioMessageRecordingViewDidResume:(id)resume;
- (void)audioMessageRecordingViewDidSend:(id)send;
- (void)audioMessageRecordingViewDidStartScrubbing:(id)scrubbing;
- (void)audioMessageRecordingViewDidStopScrubbing:(id)scrubbing atTime:(double)time;
- (void)audioMessageRecordingViewDidUpdateScrubbing:(id)scrubbing atTime:(double)time;
- (void)audioRecorderDidStartRecording:(id)recording;
- (void)audioRecorderDidUpdateAveragePower:(float)power;
- (void)audioRecorderRecordingDidChange:(id)change;
- (void)audioRecorderRecordingDidFail:(id)fail;
- (void)cancelAudioMessage;
- (void)clearAudioRecordingUI;
- (void)compositionWithAcceptedAutocorrection:(id)autocorrection;
- (void)configureForDisplayMode:(unint64_t)mode;
- (void)configurePlusButtonFrameWithOneLinePlaceHolderCenterY:(double)y;
- (void)configurePocketInteractionForScrollView:(id)view;
- (void)configureTextViewWithInputContextHistoryFromTranscript;
- (void)conversationPreferredServiceChanged:(id)changed;
- (void)dealloc;
- (void)deferredSetup;
- (void)dictationButtonTapped:(id)tapped;
- (void)didMoveToWindow;
- (void)didSelectPlusButton:(id)button;
- (void)disableRotationWhileRecordingAudioMessage;
- (void)handleContentViewChangeWithCompletion:(id)completion;
- (void)handleLongPress:(id)press;
- (void)invalidateCompositionForReason:(int64_t)reason;
- (void)keyCommandSend:(id)send;
- (void)layoutSubviews;
- (void)messageEntryContentView:(id)view didAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy;
- (void)messageEntryContentView:(id)view didReceiveInputSuggestion:(id)suggestion;
- (void)messageEntryContentView:(id)view didRequestGenerativeContentForImageURL:(id)l;
- (void)messageEntryContentView:(id)view didStagePluginPayload:(id)payload;
- (void)messageEntryContentView:(id)view didTapMediaObject:(id)object;
- (void)messageEntryContentView:(id)view updatePluginSendEnablementTo:(BOOL)to;
- (void)messageEntryContentView:(id)view willAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy;
- (void)messageEntryContentViewCancelWasTapped:(id)tapped shelfPluginPayload:(id)payload;
- (void)messageEntryContentViewDidBeginEditing:(id)editing wasAlreadyActive:(BOOL)active;
- (void)messageEntryContentViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange;
- (void)messageEntryContentViewDidChangePencilMode:(id)mode;
- (void)messageEntryContentViewDidDismissCustomizationPicker:(id)picker;
- (void)messageEntryContentViewDidEndEditing:(id)editing;
- (void)messageEntryContentViewDidPresentCustomizationPicker:(id)picker;
- (void)messageEntryContentViewDidTapHandwritingKey:(id)key;
- (void)messageEntryContentViewSendLaterContentsUpdated:(id)updated;
- (void)messageEntryContentViewSendLaterPluginInfoUpdated:(id)updated;
- (void)messageEntryContentViewShelfDidChange:(id)change;
- (void)messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)progress;
- (void)messageEntryContentViewTranslationDidChange:(id)change;
- (void)messageEntryContentViewWantsSendLaterPickerPresented:(id)presented;
- (void)messageEntryContentViewWasTapped:(id)tapped isLongPress:(BOOL)press;
- (void)messageEntryContentViewWillDismissCustomizationPicker:(id)picker;
- (void)messageEntryContentViewWillPresentCustomizationPicker:(id)picker;
- (void)moveFloatingCursorsToOrigin;
- (void)optionDownArrowClicked:(id)clicked;
- (void)optionUpArrowClicked:(id)clicked;
- (void)plusButtonLongPressed:(id)pressed;
- (void)plusButtonTouchCancel:(id)cancel;
- (void)plusButtonTouchDown:(id)down;
- (void)plusButtonTouchDragEnter:(id)enter;
- (void)plusButtonTouchDragExit:(id)exit;
- (void)plusButtonTouchUpOutside:(id)outside;
- (void)popoverSendMenuFrameChanged;
- (void)prepareForResizeAnimationIfNeeded;
- (void)safeAreaInsetsDidChange;
- (void)sendAudioMessage;
- (void)sendCurrentLocationMessage;
- (void)sendEnableRotationAfterRecordingToDelegate;
- (void)sendMenuPopoverMetricsDidChange:(id)change;
- (void)setAudioComposition:(id)composition;
- (void)setBackdropGroupName:(id)name;
- (void)setCharacterCountHidden:(BOOL)hidden;
- (void)setCharacterCountString;
- (void)setComposingRecipient:(BOOL)recipient;
- (void)setComposition:(id)composition forceUpdateText:(BOOL)text;
- (void)setConversation:(id)conversation;
- (void)setEntryViewSmoothnessForMorphingAppearance;
- (void)setEntryViewTraitCollection:(id)collection resetStyle:(BOOL)style;
- (void)setFailedRecipients:(BOOL)recipients;
- (void)setFrame:(CGRect)frame;
- (void)setKeyboardVisible:(BOOL)visible;
- (void)setMarginInsets:(UIEdgeInsets)insets;
- (void)setSendLaterPluginInfo:(id)info animated:(BOOL)animated;
- (void)setShouldBlurForMessageEditing:(BOOL)editing;
- (void)setShouldHideBackgroundView:(BOOL)view;
- (void)setStyle:(int64_t)style;
- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason;
- (void)setUnreachableEmergencyRecipient:(BOOL)recipient;
- (void)setupAudioMessageQuickSendViewAndStopRecording;
- (void)showEffectPicker;
- (void)showHintWithReason:(int64_t)reason;
- (void)startRecording;
- (void)startRecordingForAudioButtonInEntryView;
- (void)startRecordingForRaiseGesture;
- (void)stopRecording;
- (void)stopRecordingForRaiseGestureWithFailure:(BOOL)failure;
- (void)textEffectsWindowOffsetDidChange:(id)change;
- (void)touchUpInsideSendButton:(id)button;
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
    window = [(CKMessageEntryView *)self window];
    windowScene = [window windowScene];

    if (windowScene && ([windowScene interfaceOrientation] - 3) <= 1)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v5 = MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
    [(CKMessageEntryView *)self _leftInsets];
    v9 = v6 + v8;
    plusButton = [(CKMessageEntryView *)self plusButton];

    if (plusButton)
    {
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

      if (isEntryViewRefreshEnabled2)
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
    emojiButton = [(CKMessageEntryView *)self emojiButton];

    if (emojiButton)
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

      emojiButton2 = [(CKMessageEntryView *)self emojiButton];
      [emojiButton2 bounds];
      if (isEntryViewRefreshEnabled3)
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
      emojiButton3 = [(CKMessageEntryView *)self emojiButton];
      [emojiButton3 bounds];
      v24 = v23 + -3.0;

      plusButton2 = [(CKMessageEntryView *)self plusButton];
      if (plusButton2)
      {
        plusButton3 = [(CKMessageEntryView *)self plusButton];
        [plusButton3 frame];
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

      mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(v58) = [mEMORY[0x1E69A8070]4 isModernSplitViewControllerEnabled];

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
  entryViewAlwaysUsesConcentricPadding = [v3 entryViewAlwaysUsesConcentricPadding];

  if (entryViewAlwaysUsesConcentricPadding)
  {
    return 1;
  }

  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  v7 = [inputDelegate isPresentingAppCardForMessageEntryView:self];

  inputDelegate2 = [(CKMessageEntryView *)self inputDelegate];
  v9 = inputDelegate2;
  if (v7)
  {
    v10 = [inputDelegate2 isPresentingBarelyVisibleAppCardForMessageEntryView:self];

    return v10;
  }

  else
  {
    v11 = [inputDelegate2 messageEntryViewShouldVerticallyInsetForPresentedAppCard:self];

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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
  {
    return 0;
  }

  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];

  if (![textView allowsTextAnimations] || -[UITraitCollection userInterfaceIdiom](self->_entryViewTraitCollection, "userInterfaceIdiom") || (IMIsRunningInMessagesExtension() & 1) != 0)
  {

    return 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CKMessageEntryView__shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker__block_invoke;
  block[3] = &unk_1E72EBA18;
  v9 = textView;
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
  messageEditingBlurOverlayView = [(CKMessageEntryView *)self messageEditingBlurOverlayView];
  [messageEditingBlurOverlayView setFrame:{v4, v6, v8, v10}];

  inputButtonContainerView = [(CKMessageEntryView *)self inputButtonContainerView];
  [inputButtonContainerView setFrame:{v4, v6, v8, v10}];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryView *)self coverFrameThatFitsInSize:v8, v10];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    contentView = [(CKMessageEntryView *)self contentView];
    [contentView setMaxContentWidthWhenExpanded:v20];
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
  contentClipView = [(CKMessageEntryView *)self contentClipView];
  [contentClipView anchorPoint];
  v33 = v16 + v20 * v32;
  v35 = v18 + v22 * v34;
  [contentClipView setBounds:{0.0, 0.0, v20, v22}];
  [contentClipView setCenter:{v33, v35}];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled2 & 1) == 0)
  {
    knockoutView = [(CKMessageEntryView *)self knockoutView];
    [knockoutView setFrame:{0.0, 0.0, v20, v22}];

    layer = [contentClipView layer];
    v40 = +[CKUIBehavior sharedBehaviors];
    theme = [v40 theme];
    entryFieldBorderColor = [theme entryFieldBorderColor];
    [layer setBorderColor:{objc_msgSend(entryFieldBorderColor, "CGColor")}];

    v43 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v43 theme];
    dashedEntryFieldBorderColor = [theme2 dashedEntryFieldBorderColor];
    cGColor = [dashedEntryFieldBorderColor CGColor];
    dashedContentClipViewLayer = [(CKMessageEntryView *)self dashedContentClipViewLayer];
    [dashedContentClipViewLayer setStrokeColor:cGColor];
  }

  contentView2 = [(CKMessageEntryView *)self contentView];
  [contentView2 setFrame:{0.0, 0.0, v20, v22}];
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

  v51 = +[CKUIBehavior sharedBehaviors];
  if (isEntryViewRefreshEnabled3)
  {
    [v51 entryContentViewTextLeftOffset];
    v53 = v20 - v52;
    [contentView2 sendButtonTextInsetWidth];
    v55 = v53 - v54;
    sendButton = +[CKUIBehavior sharedBehaviors];
    [sendButton bubbleLeftInsetForQuicktationInEntryView];
    v58 = v55 - v57;
  }

  else
  {
    [v51 bubbleLeftInsetForQuicktationInEntryView];
    v60 = v20 + -8.0 - v59;
    sendButton = [(CKMessageEntryView *)self sendButton];
    [sendButton frame];
    v62 = v60 - v61;
    v63 = +[CKUIBehavior sharedBehaviors];
    [v63 entryViewSendButtonCoverSpace];
    v58 = v62 - v64 + -3.0;
  }

  [contentView2 setPlaceHolderWidth:v58];
  [contentView2 setMaxPluginShelfViewWidth:v20];
  [contentView2 setMaxPreviewContentWidthWhenExpanded:v20];
  v65 = v20;
  if (CKIsRunningInMacCatalyst())
  {
    composition = [(CKMessageEntryView *)self composition];
    hasContent = [composition hasContent];

    v65 = v20;
    if ((hasContent & 1) == 0)
    {
      audioButton = [(CKMessageEntryView *)self audioButton];
      [audioButton frame];
      v65 = v20 - v69;
    }
  }

  [contentView2 setMaxContentWidthWhenExpanded:v65];
  [(CKMessageEntryView *)self updateShouldHideCaretForTextViews];
  if (+[CKMessageEntryContentView _platformNeedsConservativeLayoutUpdates])
  {
    textView = [contentView2 textView];
    [textView setNeedsLayout];

    v71 = MEMORY[0x1E69DD250];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __36__CKMessageEntryView_layoutSubviews__block_invoke;
    v72[3] = &unk_1E72EBA18;
    v73 = contentView2;
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    [(CKMessageEntryView *)self bounds];
    v6 = v5;
    [(CKMessageEntryView *)self bounds];
    v8 = v7;
    backgroundView = [(CKMessageEntryView *)self backgroundView];
    [backgroundView setFrame:{0.0, 0.0, v6, v8}];
  }
}

- (void)adjustContentClipViewForSendLater
{
  v57[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];

    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 entryFieldCoverLineWidth];
    v8 = v7;
    if (sendLaterPluginInfo)
    {
      dashedContentClipViewLayer = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer setLineWidth:v8];

      contentClipView = [(CKMessageEntryView *)self contentClipView];
      layer = [contentClipView layer];
      [layer bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      dashedContentClipViewLayer2 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer2 lineWidth];
      v22 = v21;
      dashedContentClipViewLayer3 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer3 lineWidth];
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
      contentClipView2 = [(CKMessageEntryView *)self contentClipView];
      layer2 = [contentClipView2 layer];
      [layer2 cornerRadius];
      v34 = [v30 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v33}];
      cGPath = [v34 CGPath];
      dashedContentClipViewLayer4 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer4 setPath:cGPath];

      contentClipView3 = [(CKMessageEntryView *)self contentClipView];
      layer3 = [contentClipView3 layer];
      [layer3 setBorderWidth:0.0];

      dashedContentClipViewLayer5 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      lineDashPattern = [dashedContentClipViewLayer5 lineDashPattern];
      v41 = [lineDashPattern objectAtIndexedSubscript:0];
      [v41 doubleValue];
      v43 = v42;
      contentClipView4 = [(CKMessageEntryView *)self contentClipView];
      layer4 = [contentClipView4 layer];
      [layer4 cornerRadius];
      v47 = CKDashSpacingForCGRect(x, y, width, height, v43, v46);

      dashedContentClipViewLayer6 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      lineDashPattern2 = [dashedContentClipViewLayer6 lineDashPattern];
      v50 = [lineDashPattern2 objectAtIndexedSubscript:0];
      v57[0] = v50;
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
      v57[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      dashedContentClipViewLayer7 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer7 setLineDashPattern:v52];
    }

    else
    {
      contentClipView5 = [(CKMessageEntryView *)self contentClipView];
      layer5 = [contentClipView5 layer];
      [layer5 setBorderWidth:v8];

      dashedContentClipViewLayer8 = [(CKMessageEntryView *)self dashedContentClipViewLayer];
      [dashedContentClipViewLayer8 setLineWidth:0.0];
    }
  }
}

- (void)updateShouldHideCaretForTextViews
{
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  v4 = [inputDelegate messageEntryShouldHideCaret:self];

  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];
  [textView setHideCaret:v4];

  subjectView = [contentView subjectView];
  [subjectView setHideCaret:v4];
}

- (double)placeholderHeight
{
  v3 = +[CKUIBehavior sharedBehaviors];
  entryViewlayoutMetrics = [v3 entryViewlayoutMetrics];
  if ([(CKMessageEntryView *)self shouldShowSubject])
  {
    [entryViewlayoutMetrics defaultSubjectEntryViewHeight];
  }

  else
  {
    [entryViewlayoutMetrics defaultEntryViewHeight];
  }

  v6 = v5;
  sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (sendLaterPluginInfo)
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
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
  contentView = [(CKMessageEntryView *)self contentView];
  sendLaterPluginInfo = [contentView sendLaterPluginInfo];

  return sendLaterPluginInfo;
}

- (CKMessageEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isShowingAudioRecordingView
{
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  v3 = audioRecordingView != 0;

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
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  v4 = [inputDelegate messageEntryViewShouldVerticallyInsetForPresentedAppCard:self];

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
  audioComposition = [(CKMessageEntryView *)self audioComposition];
  if (!audioComposition)
  {
    contentView = [(CKMessageEntryView *)self contentView];
    audioComposition = [contentView composition];
  }

  return audioComposition;
}

- (void)updateEntryView
{
  v157 = *MEMORY[0x1E69E9840];
  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  v3 = +[CKUIBehavior sharedBehaviors];
  if ([v3 isSendButtonEnabledOnPlatform])
  {
    sendButtonEnabled = [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    sendButtonEnabled = [v4 isSendButtonEnabledOnPlatform];
  }

  v141 = [(CKMessageEntryView *)self shouldRecordForService:sendingService];
  [(CKMessageEntryView *)self shouldShowAudioButton];
  [(CKMessageEntryView *)self updateAudioMessageRecordingAvailability];
  isBlockedByCommunicationLimits = [conversation isBlockedByCommunicationLimits];
  [(CKMessageEntryView *)self setUserInteractionEnabled:((isBlockedByCommunicationLimits | [(CKMessageEntryView *)self shouldBlurForMessageEditing]) & 1) == 0];
  conversation2 = [(CKMessageEntryView *)self conversation];
  chat = [conversation2 chat];

  if (chat)
  {
    conversation3 = [(CKMessageEntryView *)self conversation];
    chat2 = [conversation3 chat];
    v10 = [chat2 supportsCapabilities:0x100000];
  }

  else
  {
    v10 = [sendingService supportsCapability:*MEMORY[0x1E69A7A58]];
  }

  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];
  [textView setExpressiveTextEnabled:v10];

  translationView = [contentView translationView];
  [translationView setExpressiveTextEnabled:v10];

  if (v10)
  {
    contentView2 = [(CKMessageEntryView *)self contentView];
    [contentView2 unpauseTextEffectsCoordinator];
  }

  if (isBlockedByCommunicationLimits)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        chat3 = [conversation chat];
        chatIdentifier = [chat3 chatIdentifier];
        *buf = 138412290;
        v154 = chatIdentifier;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Disabling sendButton due to conversation being blocked by downtime with chatIdentifier: %@", buf, 0xCu);
      }
    }

    goto LABEL_139;
  }

  v140 = [(CKMessageEntryView *)self _placeholderTextForConversation:conversation];
  _sendButtonColor = [(CKMessageEntryView *)self _sendButtonColor];
  [contentView setPlaceholderText:v140];
  [contentView setBalloonColor:{-[CKMessageEntryView _balloonColor](self, "_balloonColor")}];
  [contentView setConversation:conversation];
  if ([conversation isStewieConversation])
  {
    v18 = 0;
  }

  else
  {
    v18 = [conversation isEmergencyTranscriptSharingConversation] ^ 1;
  }

  recipients = [conversation recipients];
  v20 = [recipients count];

  mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
  isMessagingActiveOverSatellite = [mEMORY[0x1E69A5B00] isMessagingActiveOverSatellite];

  handles = [conversation handles];
  if ([handles count])
  {
    v24 = [conversation isSatelliteSendingService] ^ 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = v20 > 1;

  textView2 = [contentView textView];
  v27 = isMessagingActiveOverSatellite & (v25 | v24) & v18 ^ 1u;
  [textView2 setEditable:v27];

  textView3 = [contentView textView];
  [textView3 setUserInteractionEnabled:v27];

  if ([conversation isStewieConversation])
  {
    [contentView setShouldStripEmojis:1];
  }

  recipient = [conversation recipient];
  textView4 = [contentView textView];
  iDSCanonicalAddress = [recipient IDSCanonicalAddress];
  [textView4 setAutocorrectionContext:iDSCanonicalAddress];

  chat4 = [conversation chat];
  v32 = [chat4 valueForChatProperty:*MEMORY[0x1E69A5D50]];
  bOOLValue = [v32 BOOLValue];

  v34 = [sendingService supportsCapability:*MEMORY[0x1E69A79F0]] & (bOOLValue ^ 1);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v35 = [sendingService supportsCapability:*MEMORY[0x1E69A7928]];
  }

  textView5 = [contentView textView];
  [textView5 setAcceptsPayloads:v34];

  textView6 = [contentView textView];
  [textView6 setSendCurrentLocationFromKeyboardEnabled:v35];

  __ck_isSMS = [sendingService __ck_isSMS];
  textView7 = [contentView textView];
  [textView7 setSmartDashesType:__ck_isSMS];

  textView8 = [contentView textView];
  [textView8 setSmartQuotesType:__ck_isSMS];

  subjectView = [contentView subjectView];
  [subjectView setSmartDashesType:__ck_isSMS];

  subjectView2 = [contentView subjectView];
  [subjectView2 setSmartQuotesType:__ck_isSMS];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(subjectView2) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (subjectView2)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v44 = ;
  isEnabled = [v44 isEnabled];

  if (sendButtonEnabled != isEnabled)
  {
    v46 = @"disable";
    if (sendButtonEnabled)
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
        v156 = conversation;
        _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "Will %@ Send Button... for conversation: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        conversation4 = [(CKMessageEntryView *)self conversation];
        sendingService2 = [conversation4 sendingService];
        *buf = 138412290;
        v154 = sendingService2;
        _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_INFO, "Conversation Sending Service: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        conversation5 = [(CKMessageEntryView *)self conversation];
        eligibleToSendWithMadrid = [conversation5 eligibleToSendWithMadrid];
        *buf = 67109120;
        LODWORD(v154) = eligibleToSendWithMadrid;
        _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "iMessage enabled: %{BOOL}d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        smsEnabled = [MEMORY[0x1E69A5CA0] smsEnabled];
        v57 = @"NO";
        if (smsEnabled)
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
        composition = [(CKMessageEntryView *)self composition];
        text = [composition text];
        contentView3 = [(CKMessageEntryView *)self contentView];
        textView9 = [contentView3 textView];
        compositionText = [textView9 compositionText];
        v64 = [text isEqualToAttributedString:compositionText];
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
        composition2 = [(CKMessageEntryView *)self composition];
        text2 = [composition2 text];
        v69 = [text2 length];
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
        composition3 = [(CKMessageEntryView *)self composition];
        hasContent = [composition3 hasContent];
        v74 = @"NO";
        if (hasContent)
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
        conversation6 = [(CKMessageEntryView *)self conversation];
        sendingService3 = [conversation6 sendingService];
        v78 = [(CKMessageEntryView *)self shouldRecordForService:sendingService3];
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
        contentView4 = [(CKMessageEntryView *)self contentView];
        isShowingDictationPlaceholder = [contentView4 isShowingDictationPlaceholder];
        v83 = @"NO";
        if (isShowingDictationPlaceholder)
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
        conversation7 = [(CKMessageEntryView *)self conversation];
        pendingHandles = [conversation7 pendingHandles];
        v87 = [pendingHandles count];
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
        conversation8 = [(CKMessageEntryView *)self conversation];
        chat5 = [conversation8 chat];
        participants = [chat5 participants];
        v92 = [participants count];
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
        conversation9 = [(CKMessageEntryView *)self conversation];
        recipientCount = [conversation9 recipientCount];
        v96 = @"YES";
        if (!recipientCount)
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
        isComposingRecipient = [(CKMessageEntryView *)self isComposingRecipient];
        v99 = @"NO";
        if (isComposingRecipient)
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
        hasFailedRecipients = [(CKMessageEntryView *)self hasFailedRecipients];
        v102 = @"NO";
        if (hasFailedRecipients)
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
        hasUnreachableEmergencyRecipient = [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient];
        v105 = @"NO";
        if (hasUnreachableEmergencyRecipient)
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
  _isDictationEnabled = [(CKMessageEntryView *)self _isDictationEnabled];
  if (!v141)
  {
    v107 = 0;
    goto LABEL_116;
  }

  v107 = _isDictationEnabled;
  if ([(CKMessageEntryView *)self displayMode]!= 1)
  {
LABEL_116:
    v108 = 0;
    goto LABEL_117;
  }

  v108 = v27 & [MEMORY[0x1E69DCBF0] dictationInputModeIsFunctional];
LABEL_117:
  shouldShowAudioButton = [(CKMessageEntryView *)self shouldShowAudioButton];
  v110 = [(CKMessageEntryView *)self displayMode]!= 1;
  delegate = [(CKMessageEntryView *)self delegate];
  v112 = [delegate messageEntryViewIsSendingMessage:self];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(delegate) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  v114 = !shouldShowAudioButton;
  v115 = shouldShowAudioButton || !v107;
  v116 = v110 || v141;
  if (delegate)
  {
    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

    if (audioRecordingView)
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
  v150 = _sendButtonColor;
  v151 = sendButtonEnabled;
  v152 = v116 & 1;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v145];
  sendButtonClickInteraction = [(CKMessageEntryView *)self sendButtonClickInteraction];
  v119 = sendButtonClickInteraction == 0;

  if (v119)
  {
    v120 = objc_alloc_init(MEMORY[0x1E69DD3D8]);
    [(CKMessageEntryView *)self setSendButtonClickInteraction:v120];
  }

  clickInteractionDelegate = [(CKMessageEntryView *)self clickInteractionDelegate];

  if (clickInteractionDelegate)
  {
    clickInteractionDelegate2 = [(CKMessageEntryView *)self clickInteractionDelegate];
    sendButtonClickInteraction2 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    [sendButtonClickInteraction2 setDelegate:clickInteractionDelegate2];
  }

  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    glassSendButton = [(CKMessageEntryView *)self glassSendButton];
    interactions = [glassSendButton interactions];
    sendButtonClickInteraction3 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    v129 = [interactions containsObject:sendButtonClickInteraction3];

    if (!(v129 & 1 | ![(CKMessageEntryView *)self shouldAllowImpactSend]))
    {
      glassSendButton2 = [(CKMessageEntryView *)self glassSendButton];
      sendButtonClickInteraction4 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [glassSendButton2 addInteraction:sendButtonClickInteraction4];
      goto LABEL_133;
    }

    if (![(CKMessageEntryView *)self shouldAllowImpactSend]&& (v129 & 1) != 0)
    {
      glassSendButton2 = [(CKMessageEntryView *)self glassSendButton];
      sendButtonClickInteraction4 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [glassSendButton2 removeInteraction:sendButtonClickInteraction4];
LABEL_133:
    }
  }

  else
  {
    sendButton = [(CKMessageEntryView *)self sendButton];
    interactions2 = [sendButton interactions];
    sendButtonClickInteraction5 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    v135 = [interactions2 containsObject:sendButtonClickInteraction5];

    if (!(v135 & 1 | ![(CKMessageEntryView *)self shouldAllowImpactSend]))
    {
      glassSendButton2 = [(CKMessageEntryView *)self sendButton];
      sendButtonClickInteraction4 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [glassSendButton2 addInteraction:sendButtonClickInteraction4];
      goto LABEL_133;
    }

    if (![(CKMessageEntryView *)self shouldAllowImpactSend]&& (v135 & 1) != 0)
    {
      glassSendButton2 = [(CKMessageEntryView *)self sendButton];
      sendButtonClickInteraction4 = [(CKMessageEntryView *)self sendButtonClickInteraction];
      [glassSendButton2 removeInteraction:sendButtonClickInteraction4];
      goto LABEL_133;
    }
  }

  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]4 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled2 & 1) == 0)
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
  composition = [(CKMessageEntryView *)self composition];
  hasContent = [composition hasContent];

  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];

  if ((hasContent & 1) == 0 && !-[CKMessageEntryView shouldRecordForService:](self, "shouldRecordForService:", sendingService) || (-[CKMessageEntryView contentView](self, "contentView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isShowingDictationPlaceholder], v7, v8))
  {
    v9 = [(CKMessageEntryView *)self shouldRecordForService:sendingService];
    contentView = [(CKMessageEntryView *)self contentView];
    isShowingDictationPlaceholder = [contentView isShowingDictationPlaceholder];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v60 = 67109632;
        v61 = hasContent;
        v62 = 1024;
        v63 = isShowingDictationPlaceholder;
        v64 = 1024;
        v65 = v9;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Send Button: Disabled > hasContent: %{BOOL}d, isShowingDictationPlaceholder: %{BOOL}d, isAudioMessagingAvailable: %{BOOL}d", &v60, 0x14u);
      }

LABEL_7:
    }

LABEL_50:
    isComposingRecipient2 = 0;
    goto LABEL_51;
  }

  conversation2 = [(CKMessageEntryView *)self conversation];
  isStewieConversation = [conversation2 isStewieConversation];

  if (isStewieConversation)
  {
    composition2 = [(CKMessageEntryView *)self composition];
    text = [composition2 text];
    string = [text string];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v19 = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    isStewieActive = [mEMORY[0x1E69A5B00] isStewieActive];

    if ((isStewieActive & 1) == 0)
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

    conversation3 = [(CKMessageEntryView *)self conversation];
    chat = [conversation3 chat];
    if ([chat isStewieEmergencyChat])
    {
      mEMORY[0x1E69A5B00]2 = [MEMORY[0x1E69A5B00] sharedInstance];
      isStewieEmergencyActive = [mEMORY[0x1E69A5B00]2 isStewieEmergencyActive];

      if ((isStewieEmergencyActive & 1) == 0)
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

    conversation4 = [(CKMessageEntryView *)self conversation];
    chat2 = [conversation4 chat];
    isStewieRoadsideChat = [chat2 isStewieRoadsideChat];

    if (isStewieRoadsideChat)
    {
      mEMORY[0x1E69A5B00]3 = [MEMORY[0x1E69A5B00] sharedInstance];
      isStewieRoadsideActive = [mEMORY[0x1E69A5B00]3 isStewieRoadsideActive];

      mEMORY[0x1E69A5B00]4 = [MEMORY[0x1E69A5B00] sharedInstance];
      mostRecentlyUsedRoadsideChatIdentifier = [mEMORY[0x1E69A5B00]4 mostRecentlyUsedRoadsideChatIdentifier];

      if (!isStewieRoadsideActive || (-[CKMessageEntryView conversation](self, "conversation"), v34 = objc_claimAutoreleasedReturnValue(), [v34 chat], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "chatIdentifier"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", mostRecentlyUsedRoadsideChatIdentifier), v36, v35, v34, (v37 & 1) == 0))
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
    composition3 = [(CKMessageEntryView *)self composition];
    shelfPluginPayload = [composition3 shelfPluginPayload];

    if (shelfPluginPayload)
    {
      goto LABEL_50;
    }
  }

  if ([(CKMessageEntryView *)self _isExceedingByteLimitForService:sendingService])
  {
    goto LABEL_50;
  }

  if ([(CKMessageEntryView *)self hasFailedRecipients]|| [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient])
  {
    hasFailedRecipients = [(CKMessageEntryView *)self hasFailedRecipients];
    hasUnreachableEmergencyRecipient = [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_50;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v60 = 67109376;
      v61 = hasFailedRecipients;
      v62 = 1024;
      v63 = hasUnreachableEmergencyRecipient;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Send Button: Disabled > hasFailedRecipients: %{BOOL}d, hasUnreachableEmergencyRecipient: %{BOOL}d", &v60, 0xEu);
    }

    goto LABEL_7;
  }

  conversation5 = [(CKMessageEntryView *)self conversation];
  if (![conversation5 isPending])
  {
    goto LABEL_53;
  }

  conversation6 = [(CKMessageEntryView *)self conversation];
  recipients = [conversation6 recipients];
  if ([recipients count] <= 1)
  {

LABEL_53:
    goto LABEL_54;
  }

  mEMORY[0x1E69A5B00]5 = [MEMORY[0x1E69A5B00] sharedInstance];
  isMessagingActiveOverSatellite = [mEMORY[0x1E69A5B00]5 isMessagingActiveOverSatellite];

  if (isMessagingActiveOverSatellite)
  {
    goto LABEL_50;
  }

LABEL_54:
  conversation7 = [(CKMessageEntryView *)self conversation];
  if ([conversation7 isStewieConversation])
  {
  }

  else
  {
    mEMORY[0x1E69A5B00]6 = [MEMORY[0x1E69A5B00] sharedInstance];
    isMessagingActiveOverSatellite2 = [mEMORY[0x1E69A5B00]6 isMessagingActiveOverSatellite];

    if (isMessagingActiveOverSatellite2)
    {
      conversation8 = [(CKMessageEntryView *)self conversation];
      isSatelliteSendingService = [conversation8 isSatelliteSendingService];

      if (!isSatelliteSendingService)
      {
        goto LABEL_50;
      }
    }
  }

  if ([(CKMessageEntryView *)self shouldBlurForMessageEditing])
  {
    goto LABEL_50;
  }

  conversation9 = [(CKMessageEntryView *)self conversation];
  recipientCount = [conversation9 recipientCount];

  isComposingRecipient = [(CKMessageEntryView *)self isComposingRecipient];
  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v60 = 67109376;
      v61 = recipientCount != 0;
      v62 = 1024;
      v63 = isComposingRecipient;
      _os_log_impl(&dword_19020E000, v58, OS_LOG_TYPE_INFO, "Send Button: > hasRecipients: %{BOOL}d, isComposingRecipient: %{BOOL}d", &v60, 0xEu);
    }
  }

  conversation10 = [(CKMessageEntryView *)self conversation];
  if ([conversation10 recipientCount])
  {
    isComposingRecipient2 = 1;
  }

  else
  {
    isComposingRecipient2 = [(CKMessageEntryView *)self isComposingRecipient];
  }

LABEL_51:
  return isComposingRecipient2;
}

- (BOOL)shouldShowAudioButton
{
  audioButton = [(CKMessageEntryView *)self audioButton];
  isHidden = [audioButton isHidden];

  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  v7 = [(CKMessageEntryView *)self shouldRecordForService:sendingService];

  if (v7)
  {
    if ([(CKMessageEntryView *)self displayMode]!= 1)
    {
      if ((isHidden & 1) == 0)
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
      if ((isHidden & 1) == 0)
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
      if (isHidden)
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

    conversation2 = [(CKMessageEntryView *)self conversation];
    isStewieConversation = [conversation2 isStewieConversation];

    if (isStewieConversation)
    {
      if (isHidden)
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

    conversation3 = [(CKMessageEntryView *)self conversation];
    chat = [conversation3 chat];
    if (chat)
    {
      v15 = chat;
      conversation4 = [(CKMessageEntryView *)self conversation];
      chat2 = [conversation4 chat];
      v18 = [chat2 supportsCapabilities:0x10000];

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
      contentView = [(CKMessageEntryView *)self contentView];
      textView = [contentView textView];
      text = [textView text];
      v22 = [text length];

      if (v22)
      {
        goto LABEL_18;
      }

      sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];

      if (sendLaterPluginInfo)
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

      if (!isHidden || !IMOSLoggingEnabled())
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
      conversation5 = [(CKMessageEntryView *)self conversation];
      chat3 = [conversation5 chat];
      shouldShowAudioButtonInEntryView = [chat3 shouldShowAudioButtonInEntryView];

      if (!shouldShowAudioButtonInEntryView)
      {
        if (isHidden)
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

      if (!isHidden || !IMOSLoggingEnabled())
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
      if (!isHidden || !IMOSLoggingEnabled())
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

  if (isHidden)
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
  sharedPreferences = [v3 sharedPreferences];
  if ([sharedPreferences dictationIsEnabled])
  {
    v6 = 1;
  }

  else
  {
    v6 = [sharedPreferences suppressDictationOptIn] ^ 1;
  }

  dictationEnabledForLanguage = [(CKMessageEntryView *)self dictationEnabledForLanguage];
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

  v11 = dictationEnabledForLanguage & (v8() ^ 1);
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
  conversation = [(CKMessageEntryView *)self conversation];
  conversation2 = [(CKMessageEntryView *)self conversation];
  chat = [conversation2 chat];
  v5 = [chat supportsCapabilities:64];

  v6 = conversation;
  if (v5)
  {
    sendingService = [conversation sendingService];
    if ([(CKMessageEntryView *)self shouldRecordForService:sendingService])
    {
      composition = [(CKMessageEntryView *)self composition];
      [composition hasContent];
    }

    v6 = conversation;
  }
}

- (BOOL)pluginButtonsEnabled
{
  conversation = [(CKMessageEntryView *)self conversation];
  recipientCount = [conversation recipientCount];

  if (recipientCount)
  {
    composition = [(CKMessageEntryView *)self composition];
    mediaObjects = [composition mediaObjects];

    conversation2 = [(CKMessageEntryView *)self conversation];
    if ([conversation2 canAcceptMediaObjectType:2 givenMediaObjects:mediaObjects])
    {
    }

    else
    {
      conversation3 = [(CKMessageEntryView *)self conversation];
      v9 = [conversation3 canAcceptMediaObjectType:3 givenMediaObjects:mediaObjects];

      if (!v9)
      {
        return 0;
      }
    }
  }

  conversation4 = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation4 sendingService];
  __ck_isSatelliteSMS = [sendingService __ck_isSatelliteSMS];

  if (__ck_isSatelliteSMS)
  {
    return 0;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    conversation5 = [(CKMessageEntryView *)self conversation];
    isStewieConversation = [conversation5 isStewieConversation];

    if (isStewieConversation)
    {
      return 0;
    }
  }

  return ![(CKMessageEntryView *)self _isRunningInMVS];
}

- (char)_sendButtonColor
{
  selfCopy = self;
  conversation = [(CKMessageEntryView *)self conversation];
  v4 = conversation;
  if (conversation && ([conversation recipients], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    if ([(CKMessageEntryView *)selfCopy _isApplePayCashInShelf])
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      theme = [v7 theme];
      LOBYTE(selfCopy) = [theme applyPayCashSendButtonColorForEntryViewStyle:{-[CKMessageEntryView style](selfCopy, "style")}];
    }

    else
    {
      sendLaterPluginInfo = [(CKMessageEntryView *)selfCopy sendLaterPluginInfo];

      if (sendLaterPluginInfo)
      {
        LOBYTE(selfCopy) = 15;
      }

      else
      {
        selfCopy = [v4 sendButtonColor];
      }
    }
  }

  else
  {
    LOBYTE(selfCopy) = -1;
  }

  return selfCopy;
}

- (BOOL)_isApplePayCashInShelf
{
  composition = [(CKMessageEntryView *)self composition];
  shelfPluginPayload = [composition shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  if ([pluginBundleID containsString:*MEMORY[0x1E69A6A38]])
  {
    v6 = 1;
  }

  else
  {
    composition2 = [(CKMessageEntryView *)self composition];
    shelfPluginPayload2 = [composition2 shelfPluginPayload];
    pluginBundleID2 = [shelfPluginPayload2 pluginBundleID];
    v6 = [pluginBundleID2 containsString:*MEMORY[0x1E69A6A40]];
  }

  return v6;
}

- (char)_balloonColor
{
  conversation = [(CKMessageEntryView *)self conversation];
  v4 = conversation;
  if (conversation && ([conversation recipients], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    sendButtonColor = [theme applyPayCashSendButtonColorForEntryViewStyle:{-[CKMessageEntryView style](self, "style")}];

    if (![(CKMessageEntryView *)self _isApplePayCashInShelf])
    {
      sendButtonColor = [v4 sendButtonColor];
    }
  }

  else
  {
    sendButtonColor = -1;
  }

  return sendButtonColor;
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
  conversation = [(CKMessageEntryView *)self conversation];
  chat = [conversation chat];

  if (chat)
  {
    v5 = [chat supportsCapabilities:2048];
  }

  else
  {
    conversation2 = [(CKMessageEntryView *)self conversation];
    sendingService = [conversation2 sendingService];
    v8 = [sendingService supportsCapability:*MEMORY[0x1E69A78F0]];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKMessageEntryContentView *)self->_contentView setDelegate:0];
  [(CKAudioRecorder *)self->_recorder setDelegate:0];
  [(CKAudioRecorder *)self->_recorder resetState];
  sendButtonClickInteraction = [(CKMessageEntryView *)self sendButtonClickInteraction];

  if (sendButtonClickInteraction)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled)
    {
      [(CKMessageEntryView *)self glassSendButton];
    }

    else
    {
      [(CKMessageEntryView *)self sendButton];
    }
    v7 = ;
    sendButtonClickInteraction2 = [(CKMessageEntryView *)self sendButtonClickInteraction];
    [v7 removeInteraction:sendButtonClickInteraction2];

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
  window = [(CKMessageEntryView *)self window];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageEntryView:self didMoveToWindow:window];
}

- (void)configurePlusButtonFrameWithOneLinePlaceHolderCenterY:(double)y
{
  plusButton = [(CKMessageEntryView *)self plusButton];
  shouldShowPluginButtons = [(CKMessageEntryView *)self shouldShowPluginButtons];
  v6 = plusButton;
  if (shouldShowPluginButtons)
  {
    if (plusButton)
    {
      isHidden = [plusButton isHidden];
      v6 = plusButton;
      if ((isHidden & 1) == 0)
      {
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

        if (isEntryViewRefreshEnabled)
        {
          +[CKGlassSendMenuButton buttonSize];
        }

        else
        {
          [(CKMessageEntryView *)self inputButtonSize];
        }

        v12 = v10;
        v13 = v11;
        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

        if (isEntryViewRefreshEnabled2)
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
        traitCollection = [(CKMessageEntryView *)self traitCollection];
        [traitCollection displayScale];
        v25 = round(v22 * v24) / v24;

        [plusButton setCenter:{v25, y}];
        [plusButton setBounds:{0.0, 0.0, v12, v13}];
        mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

        v6 = plusButton;
        if (isEntryViewRefreshEnabled3)
        {
          cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
          [plusButton frame];
          [cancelAudioRecordingButton setFrame:?];

          v6 = plusButton;
        }
      }
    }
  }
}

- (void)setCharacterCountString
{
  v98 = *MEMORY[0x1E69E9840];
  characterCountLabel = [(CKMessageEntryView *)self characterCountLabel];
  if (![(CKMessageEntryView *)self isCharacterCountHidden])
  {
    contentView = [(CKMessageEntryView *)self contentView];
    isSingleLine = [contentView isSingleLine];

    if ((isSingleLine & 1) == 0)
    {
      v91 = 0;
      composition = [(CKMessageEntryView *)self composition];
      text = [composition text];
      string = [text string];

      conversation = [(CKMessageEntryView *)self conversation];
      LODWORD(composition) = [conversation isStewieConversation];

      if (composition)
      {
        v10 = [string lengthOfBytesUsingEncoding:4];
        v91 = v10;
        v11 = MEMORY[0x1E696AEC0];
        v12 = CKFrameworkBundle();
        v13 = [v12 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        v15 = CKLocalizedStringForNumber(v14);
        v16 = CKLocalizedStringForNumber(&unk_1F04E7ED8);
        v17 = [v11 stringWithFormat:v13, v15, v16];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
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
          [characterCountLabel setTextColor:v83];
        }

        characterCountLabel2 = [(CKMessageEntryView *)self characterCountLabel];
        [characterCountLabel2 setText:v21];

        goto LABEL_35;
      }

      v90 = 0;
      mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
      ctSubscriptionInfo = [mEMORY[0x1E69A7F68] ctSubscriptionInfo];
      preferredOrDefaultSubscriptionContext = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];

      conversation2 = [(CKMessageEntryView *)self conversation];
      sendingService = [conversation2 sendingService];
      if ([sendingService __ck_isiMessageLite])
      {
        shouldDisplayOffGridModeStatus = 1;
      }

      else
      {
        conversation3 = [(CKMessageEntryView *)self conversation];
        chat = [conversation3 chat];
        shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];
      }

      conversation4 = [(CKMessageEntryView *)self conversation];
      sendingService2 = [conversation4 sendingService];
      __ck_isSatelliteSMS = [sendingService2 __ck_isSatelliteSMS];

      if (shouldDisplayOffGridModeStatus)
      {
        iMessageLiteService = [MEMORY[0x1E69A5C90] iMessageLiteService];
        v91 = [string lengthOfBytesUsingEncoding:4];
        serviceProperties = [iMessageLiteService serviceProperties];
        v34 = [serviceProperties valueForKey:*MEMORY[0x1E69A7B30]];
        intValue = [v34 intValue];
        v36 = intValue;
        v90 = intValue;

        v37 = MEMORY[0x1E696AEC0];
        v38 = CKFrameworkBundle();
        v39 = [v38 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v40 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
        v41 = CKLocalizedStringForNumber(v40);
        v42 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
        v43 = CKLocalizedStringForNumber(v42);
        v44 = [v37 stringWithFormat:v39, v41, v43];

        mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection2 == 1)
        {
          v47 = @"\u200F";
        }

        else
        {
          v47 = @"\u200E";
        }

        v48 = [(__CFString *)v47 stringByAppendingString:v44];

        characterCountLabel3 = [(CKMessageEntryView *)self characterCountLabel];
        [characterCountLabel3 setText:v48];
      }

      else if (__ck_isSatelliteSMS)
      {
        v91 = [string lengthOfBytesUsingEncoding:4];
        conversation5 = [(CKMessageEntryView *)self conversation];
        sendingService3 = [conversation5 sendingService];
        serviceProperties2 = [sendingService3 serviceProperties];
        v53 = [serviceProperties2 valueForKey:*MEMORY[0x1E69A7B30]];
        intValue2 = [v53 intValue];
        v55 = intValue2;
        v90 = intValue2;

        v56 = MEMORY[0x1E696AEC0];
        v57 = CKFrameworkBundle();
        v58 = [v57 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
        v59 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
        v60 = CKLocalizedStringForNumber(v59);
        v61 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
        v62 = CKLocalizedStringForNumber(v61);
        v63 = [v56 stringWithFormat:v58, v60, v62];

        mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection3 == 1)
        {
          v66 = @"\u200F";
        }

        else
        {
          v66 = @"\u200E";
        }

        v67 = [(__CFString *)v66 stringByAppendingString:v63];

        characterCountLabel4 = [(CKMessageEntryView *)self characterCountLabel];
        [characterCountLabel4 setText:v67];
      }

      else
      {
        if (!preferredOrDefaultSubscriptionContext || ([CTMessageCenterClass() sharedMessageCenter], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "getCharacterCountForSub:count:andMessageSplitThreshold:forSmsText:", preferredOrDefaultSubscriptionContext, &v91, &v90, string), v69, !v70))
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
              v97 = preferredOrDefaultSubscriptionContext;
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

        mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
        LODWORD(v76) = [mEMORY[0x1E69DC668]4 userInterfaceLayoutDirection] == 1;

        if (v76)
        {
          v80 = @"\u200F";
        }

        else
        {
          v80 = @"\u200E";
        }

        v81 = [(__CFString *)v80 stringByAppendingString:v78];

        characterCountLabel5 = [(CKMessageEntryView *)self characterCountLabel];
        [characterCountLabel5 setText:v81];
      }

      v6 = 0;
LABEL_31:

LABEL_35:
      goto LABEL_36;
    }
  }

  v6 = 1;
LABEL_36:
  [characterCountLabel setHidden:v6];
}

- (void)_layoutSendButtonAndCharacterCountWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y
{
  width = frame.size.width;
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v59 = ;
  yCopy = y;
  v10 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  if (CKIsRunningInMacCatalyst())
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 entryViewSendButtonCoverSpace];
    v15 = v14;
    contentView = [(CKMessageEntryView *)self contentView];
    [contentView setSendButtonTextInsetWidth:v15];
  }

  else if ([(CKMessageEntryView *)self shouldShowSendButton])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled2)
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
    v61.origin.y = yCopy;
    v24 = CGRectGetMaxX(v61) - v23;
    traitCollection = [(CKMessageEntryView *)self traitCollection];
    [traitCollection displayScale];
    v10 = round(v24 * v26) / v26;

    conversation = [(CKMessageEntryView *)self conversation];
    isStewieConversation = [conversation isStewieConversation];

    v29 = 0.0;
    if (isStewieConversation)
    {
      v29 = 10.0;
    }

    v30 = v23 + v29;
    contentView2 = [(CKMessageEntryView *)self contentView];
    [contentView2 setSendButtonTextInsetWidth:v30];

    traitCollection2 = [(CKMessageEntryView *)self traitCollection];
    [traitCollection2 displayScale];
    v9 = round((y + v12 * -0.5) * v33) / v33;

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:contentClipView toView:v10, v9, v11, v12];
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
      v46 = yCopy;
      v62.origin.y = yCopy;
      v47 = CGRectGetMaxX(v62) + 3.5;
    }

    else
    {
      v63.origin.x = v10;
      v63.origin.y = v9;
      v63.size.width = v11;
      v63.size.height = v12;
      v47 = CGRectGetMaxX(v63) - v44;
      v46 = yCopy;
    }

    characterCountLabel = [(CKMessageEntryView *)self characterCountLabel];
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

    [characterCountLabel setFrame:{v47, v53, v44, v54}];
    [(CKMessageEntryView *)self setCharacterCountString];
  }
}

- (void)_layoutAudioButtonWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    v53 = y + v52 * -0.5;
    v54 = +[CKUIBehavior sharedBehaviors];
    [v54 audioButtonSize];
    v56 = v55;
    v57 = +[CKUIBehavior sharedBehaviors];
    [v57 audioButtonSize];
    v59 = v58;

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:contentClipView toView:v50, v53, v56, v59];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    audioButton = [(CKMessageEntryView *)self audioButton];
    [audioButton setFrame:{v62, v64, v66, v68}];

    sendButtonSpinner = [(CKMessageEntryView *)self sendButtonSpinner];
    v70 = sendButtonSpinner;
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

    traitCollection = [(CKMessageEntryView *)self traitCollection];
    [traitCollection displayScale];
    v17 = round(v13 * v16) / v16;
    v18 = round(v14 * v16) / v16;
    v19 = round(v16 * 29.0) / v16;
    v20 = round(v16 * 20.0) / v16;

    contentClipView2 = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:contentClipView2 toView:v17, v18, v19, v20];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    audioButton2 = [(CKMessageEntryView *)self audioButton];
    [audioButton2 setFrame:{v23, v25, v27, v29}];

    contentView = [(CKMessageEntryView *)self contentView];
    [contentView frame];
    v32 = CGRectGetMaxX(v74) + -29.0;
    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 entryViewSendButtonCoverSpace];
    v35 = v32 - v34;
    contentView2 = [(CKMessageEntryView *)self contentView];
    textView = [contentView2 textView];
    [textView frame];
    v38 = CGRectGetMidY(v75) + -10.0;

    sendButtonSpinner = [(CKMessageEntryView *)self sendButtonSpinner];
    v40 = 29.0;
    v41 = 20.0;
    v70 = sendButtonSpinner;
    v42 = v35;
    v43 = v38;
  }

  [sendButtonSpinner setFrame:{v42, v43, v40, v41}];
}

- (void)_layoutDictationButtonWithCoverFrame:(CGRect)frame oneLinePlaceHolderCenterY:(double)y
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    v19 = y + v14 * -0.5;

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [(CKMessageEntryView *)self convertRect:contentClipView toView:v18, v19, v12, v14];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    dictationButton = [(CKMessageEntryView *)self dictationButton];
    [dictationButton setFrame:{v22, v24, v26, v28}];

    sendButtonSpinner = [(CKMessageEntryView *)self sendButtonSpinner];
    [sendButtonSpinner setFrame:{v18, v19, v12, v14}];
  }
}

- (void)_layoutHintViewWithCoverFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

  hintLabel = [(CKMessageEntryView *)self hintLabel];
  [hintLabel sizeThatFits:{v19, 1.79769313e308}];
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

  hintLabel2 = [(CKMessageEntryView *)self hintLabel];
  [hintLabel2 setFrame:{v27, 0.0, v22, v31}];

  if ([(CKMessageEntryView *)self shouldShowHintLabel])
  {
    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView anchorPoint];
    v35 = x + width * v34;
    v37 = y - (v31 - height) + v31 * v36;

    contentClipView2 = [(CKMessageEntryView *)self contentClipView];
    [contentClipView2 setBounds:{0.0, 0.0, width, v31}];

    contentClipView3 = [(CKMessageEntryView *)self contentClipView];
    [contentClipView3 setCenter:{v35, v37}];
  }
}

- (void)_layoutContentViewAndAudioRecordingViewWithCoverFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (!isEntryViewRefreshEnabled)
  {
    contentView = [(CKMessageEntryView *)self contentView];
    [contentView setAlpha:1.0];

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

    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView sizeThatFits:{v50, 1.79769313e308}];
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
      audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
      [audioRecordingView2 setFrame:{x, v61, width, v55}];

      contentClipView = [(CKMessageEntryView *)self contentClipView];
      [contentClipView setFrame:{x, v61, width, v55}];

      contentClipView2 = [(CKMessageEntryView *)self contentClipView];
      contentClipView3 = [(CKMessageEntryView *)self contentClipView];
      [contentClipView3 frame];
      [contentClipView2 _setContinuousCornerRadius:v66 * 0.5];

      contentClipView4 = [(CKMessageEntryView *)self contentClipView];
      [contentClipView4 setAlpha:0.0];
    }

    else
    {
      audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
      [audioRecordingView3 setFrame:{v41 + v43, v61, v53, v55}];

      v69 = +[CKUIBehavior sharedBehaviors];
      [v69 entryViewCoverMinHeight];
      v71 = v70;

      contentClipView4 = [(CKMessageEntryView *)self contentClipView];
      [contentClipView4 _setContinuousCornerRadius:v71 * 0.5];
    }

    audioRecordingView4 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView4 setCornerRadius:v55 * 0.5];

    audioRecordingView5 = [(CKMessageEntryView *)self audioRecordingView];

    if (audioRecordingView5)
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

  audioRecordingView6 = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView6 sizeThatFits:{width, 1.79769313e308}];
  v11 = v10;
  v13 = v12;

  if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
  {
    v13 = height + (v13 - height) * 0.3;
  }

  if (![(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage]&& [(CKMessageEntryView *)self displayMode]!= 2 && [(CKMessageEntryView *)self displayMode]!= 3)
  {
    contentClipView5 = [(CKMessageEntryView *)self contentClipView];
    [contentClipView5 frame];
    v100 = v99 * 0.5;
    contentClipView6 = [(CKMessageEntryView *)self contentClipView];
    [contentClipView6 frame];
    v103 = v102 * 0.5;

    audioRecordingView7 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView7 setCenter:{v100, v103}];

    v105 = +[CKUIBehavior sharedBehaviors];
    [v105 entryViewCoverMinHeight];
    v107 = v106;

    contentClipView7 = [(CKMessageEntryView *)self contentClipView];
    [contentClipView7 _setContinuousCornerRadius:v107 * 0.5];
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

    cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton sizeThatFits:{100.0, 100.0}];
    v27 = v26;
    v29 = v28;

    cancelAudioRecordingButton2 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 minTranscriptMarginInsets];
    [cancelAudioRecordingButton2 setFrame:{v32, v15 + (v13 - v29) * 0.5, v27, v29}];

    plusButton = [(CKMessageEntryView *)self plusButton];
    cancelAudioRecordingButton3 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton3 frame];
    [plusButton setFrame:?];

    audioRecordingView8 = [(CKMessageEntryView *)self audioRecordingView];
    if ([audioRecordingView8 state] == 2)
    {

LABEL_20:
      cancelAudioRecordingButton4 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [cancelAudioRecordingButton4 frame];
      x = CGRectGetMaxX(v120) + 16.0;

      cancelAudioRecordingButton5 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [cancelAudioRecordingButton5 frame];
      v11 = v11 - (v78 + 16.0);

      goto LABEL_21;
    }

    audioRecordingView9 = [(CKMessageEntryView *)self audioRecordingView];
    state = [audioRecordingView9 state];

    if (state == 3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  audioRecordingView10 = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView10 setFrame:{0.0, 0.0, v11, v13}];

  contentClipView8 = [(CKMessageEntryView *)self contentClipView];
  [contentClipView8 setFrame:{x, v15, v11, v13}];

  contentClipView7 = [(CKMessageEntryView *)self contentClipView];
  contentClipView9 = [(CKMessageEntryView *)self contentClipView];
  [contentClipView9 frame];
  [contentClipView7 _setContinuousCornerRadius:v83 * 0.5];

LABEL_22:
  if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage]|| [(CKMessageEntryView *)self displayMode]== 2 || [(CKMessageEntryView *)self displayMode]== 3)
  {
    audioRecordingView11 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView11 setAlpha:1.0];

    contentView2 = [(CKMessageEntryView *)self contentView];
    [contentView2 setAlpha:0.0];

    audioButton = [(CKMessageEntryView *)self audioButton];
    [audioButton setAlpha:0.0];

    dictationButton = [(CKMessageEntryView *)self dictationButton];
    [dictationButton setAlpha:0.0];

    if (![(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      plusButton2 = [(CKMessageEntryView *)self plusButton];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        plusButton3 = [(CKMessageEntryView *)self plusButton];
        [plusButton3 animateBlurTo:10.0];
      }

      emojiButton = [(CKMessageEntryView *)self emojiButton];
      objc_opt_class();
      v92 = objc_opt_isKindOfClass();

      if (v92)
      {
        emojiButton2 = [(CKMessageEntryView *)self emojiButton];
        [emojiButton2 animateBlurTo:10.0];
      }
    }

    audioRecordingView12 = [(CKMessageEntryView *)self audioRecordingView];
    state2 = [audioRecordingView12 state];

    cancelAudioRecordingButton6 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    v118 = cancelAudioRecordingButton6;
    if (state2 == 1)
    {
      v97 = 10.0;
    }

    else
    {
      v97 = 0.0;
    }

    goto LABEL_33;
  }

  audioRecordingView13 = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView13 setAlpha:0.0];

  contentView3 = [(CKMessageEntryView *)self contentView];
  [contentView3 setAlpha:1.0];

  audioButton2 = [(CKMessageEntryView *)self audioButton];
  [audioButton2 setAlpha:1.0];

  dictationButton2 = [(CKMessageEntryView *)self dictationButton];
  [dictationButton2 setAlpha:1.0];

  plusButton4 = [(CKMessageEntryView *)self plusButton];
  objc_opt_class();
  v113 = objc_opt_isKindOfClass();

  if (v113)
  {
    plusButton5 = [(CKMessageEntryView *)self plusButton];
    [plusButton5 animateBlurTo:0.0];

    cancelAudioRecordingButton7 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton7 animateBlurTo:10.0];
  }

  emojiButton3 = [(CKMessageEntryView *)self emojiButton];
  objc_opt_class();
  v117 = objc_opt_isKindOfClass();

  if (v117)
  {
    cancelAudioRecordingButton6 = [(CKMessageEntryView *)self emojiButton];
    v97 = 0.0;
    v118 = cancelAudioRecordingButton6;
LABEL_33:
    [cancelAudioRecordingButton6 animateBlurTo:v97];
LABEL_34:
  }
}

- (double)calculateOneLinePlaceHolderCenterY:(double)y
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    contentView = [(CKMessageEntryView *)self contentView];
    textView = [contentView textView];
    [textView textContainerInset];
    v10 = v9;

    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 entryViewTextOneLineHeight];
    v13 = v12 * -0.5;

    [(CKMessageEntryView *)self adjustedCoverInsets];
    v15 = y - v10 + v13;
  }

  else
  {
    [(CKMessageEntryView *)self bottomInsetForAppCard];
    v17 = v16;
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 entryViewVerticalCoverInsets];
    v20 = v19;

    contentView2 = [(CKMessageEntryView *)self contentView];
    textView2 = [contentView2 textView];
    [textView2 textContainerInset];
    v24 = v23;

    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 entryViewTextOneLineHeight];
    v27 = v26 * -0.5;

    [(CKMessageEntryView *)self safeAreaInsets];
    v15 = y - v17 - v20 - v24 + v27;
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView ck_applyGlassBackgroundWithSmoothness:20.0];

    plusButton = [(CKMessageEntryView *)self plusButton];
    [plusButton ck_applyGlassBackgroundWithSmoothness:20.0];

    cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton ck_applyGlassBackgroundWithSmoothness:20.0];

    emojiButton = [(CKMessageEntryView *)self emojiButton];
    [emojiButton ck_applyGlassBackgroundWithSmoothness:20.0];
  }
}

- (void)applyDefaultGlass
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 entryViewPlusButtonToTextFieldPadding];
    v7 = v6;

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView ck_applyGlassBackgroundWithSmoothness:v7];

    plusButton = [(CKMessageEntryView *)self plusButton];
    [plusButton ck_applyGlassBackgroundWithSmoothness:v7];

    cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton ck_applyGlassBackgroundWithSmoothness:v7];

    emojiButton = [(CKMessageEntryView *)self emojiButton];
    [emojiButton ck_applyGlassBackgroundWithSmoothness:v7];
  }
}

- (void)configurePocketInteractionForScrollView:(id)view
{
  if (view)
  {
    viewCopy = view;
    scrollPocketInteraction = [(CKMessageEntryView *)self scrollPocketInteraction];

    if (scrollPocketInteraction)
    {
      scrollPocketInteraction2 = [(CKMessageEntryView *)self scrollPocketInteraction];
      [(CKMessageEntryView *)self removeInteraction:scrollPocketInteraction2];
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:viewCopy edge:4];

    [(CKMessageEntryView *)self setScrollPocketInteraction:v7];
    [(CKMessageEntryView *)self addInteraction:v7];
  }
}

- (void)applySendAnimationGlass
{
  contentClipView = [(CKMessageEntryView *)self contentClipView];
  [contentClipView ck_applySendAnimationEntryViewGlass];
}

- (BOOL)_isPresentingInPopover
{
  delegate = [(CKMessageEntryView *)self delegate];
  v4 = [delegate messageEntryViewActiveSendMenuPresentation:self];

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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  traitCollection = [(CKMessageEntryView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass == 2;
}

- (void)_updateSendMenuPresentationStatePopoverSendMenu:(int64_t)menu
{
  sendMenuPresentationState = self->_sendMenuPresentationState;
  if (sendMenuPresentationState == menu)
  {
    return;
  }

  self->_sendMenuPresentationState = menu;
  v6 = +[CKUIBehavior sharedBehaviors];
  _shouldShrinkEntryViewForSendMenuPresentation = [(CKMessageEntryView *)self _shouldShrinkEntryViewForSendMenuPresentation];
  entryViewSendMenuContentViewWidthAnimator = [v6 entryViewSendMenuContentViewWidthAnimator];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {
    if (menu != 3)
    {
      if (menu || sendMenuPresentationState != 3)
      {
        _shouldShrinkEntryViewForSendMenuPresentation = 0;
      }

      else
      {
        entryViewSendMenuContentViewWidthDismissAnimator = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        _shouldShrinkEntryViewForSendMenuPresentation = 0;
        entryViewSendMenuContentViewWidthAnimator = entryViewSendMenuContentViewWidthDismissAnimator;
      }
    }

    goto LABEL_22;
  }

  entryViewSendMenuPresentationStateAnimator = [v6 entryViewSendMenuPresentationStateAnimator];
  entryViewSendMenuContentViewWidthAnimator2 = [v6 entryViewSendMenuContentViewWidthAnimator];
  v14 = 1.0;
  if (menu > 1)
  {
    if (menu == 2)
    {
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isPopoverSendMenuEnabled2 = [mEMORY[0x1E69A8070]2 isPopoverSendMenuEnabled];

      _shouldShrinkEntryViewForSendMenuPresentation &= isPopoverSendMenuEnabled2 ^ 1;
      goto LABEL_19;
    }

    if (menu == 3)
    {
      entryViewSendMenuPlusButtonAppearanceAnimator = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

      v16 = 1.0;
      entryViewSendMenuPresentationStateAnimator = entryViewSendMenuPlusButtonAppearanceAnimator;
LABEL_20:
      v15 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!menu)
  {
    if (sendMenuPresentationState == 3)
    {
      entryViewSendMenuPlusButtonDismissScaleAnimator = [v6 entryViewSendMenuPlusButtonDismissScaleAnimator];

      entryViewSendMenuContentViewWidthDismissAnimator2 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

      entryViewSendMenuContentViewWidthDismissAnimator3 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

      _shouldShrinkEntryViewForSendMenuPresentation = 0;
      v16 = 1.0;
      entryViewSendMenuPresentationStateAnimator = entryViewSendMenuPlusButtonDismissScaleAnimator;
      entryViewSendMenuContentViewWidthAnimator2 = entryViewSendMenuContentViewWidthDismissAnimator2;
      v15 = 1.0;
      entryViewSendMenuContentViewWidthAnimator = entryViewSendMenuContentViewWidthDismissAnimator3;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (menu != 1)
  {
LABEL_17:
    _shouldShrinkEntryViewForSendMenuPresentation = 0;
LABEL_19:
    v16 = 1.0;
    goto LABEL_20;
  }

  _shouldShrinkEntryViewForSendMenuPresentation = 0;
  v15 = 0.8;
  v16 = 0.94;
  v14 = 1.02;
LABEL_21:
  plusButton = [(CKMessageEntryView *)self plusButton];
  button = [plusButton button];

  contentClipView = [(CKMessageEntryView *)self contentClipView];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke;
  v37[3] = &unk_1E72ED810;
  v38 = button;
  v39 = v15;
  v26 = button;
  [entryViewSendMenuPresentationStateAnimator addAnimations:v37];
  [entryViewSendMenuPresentationStateAnimator startAnimation];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_2;
  v33[3] = &unk_1E72F1058;
  v34 = contentClipView;
  v35 = v14;
  v36 = v16;
  v27 = contentClipView;
  [entryViewSendMenuContentViewWidthAnimator2 addAnimations:v33];
  [entryViewSendMenuContentViewWidthAnimator2 startAnimation];

LABEL_22:
  if (self->_shouldCoverViewBeShrunkenForSendMenu != _shouldShrinkEntryViewForSendMenuPresentation)
  {
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

    if ((isEntryViewRefreshEnabled & 1) == 0)
    {
      if (_shouldShrinkEntryViewForSendMenuPresentation)
      {
        inputButtonContainerView = [(CKMessageEntryView *)self inputButtonContainerView];
        [(CKMessageEntryView *)self bringSubviewToFront:inputButtonContainerView];
      }
    }

    [(CKMessageEntryView *)self layoutIfNeeded];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__CKMessageEntryView__updateSendMenuPresentationStatePopoverSendMenu___block_invoke_3;
    v31[3] = &unk_1E72ED8D8;
    v31[4] = self;
    v32 = _shouldShrinkEntryViewForSendMenuPresentation;
    [entryViewSendMenuContentViewWidthAnimator addAnimations:v31];
    [entryViewSendMenuContentViewWidthAnimator startAnimation];
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

- (void)_updateSendMenuPresentationStateVariableSendMenu:(int64_t)menu
{
  sendMenuPresentationState = self->_sendMenuPresentationState;
  if (sendMenuPresentationState != menu)
  {
    self->_sendMenuPresentationState = menu;
    v6 = +[CKUIBehavior sharedBehaviors];
    _isPresentingInPopover = [(CKMessageEntryView *)self _isPresentingInPopover];
    entryViewSendMenuPresentationStateAnimator = [v6 entryViewSendMenuPresentationStateAnimator];
    entryViewSendMenuPresentationStateAnimator2 = [v6 entryViewSendMenuPresentationStateAnimator];
    entryViewSendMenuPresentationStateAnimator3 = [v6 entryViewSendMenuPresentationStateAnimator];
    entryViewSendMenuContentViewWidthAnimator = [v6 entryViewSendMenuContentViewWidthAnimator];
    entryViewSendMenuContentViewWidthAnimator2 = [v6 entryViewSendMenuContentViewWidthAnimator];
    v11 = 0;
    v12 = 0.0;
    v13 = 1.0;
    v52 = entryViewSendMenuContentViewWidthAnimator2;
    if (menu > 1)
    {
      if (menu == 2)
      {
        v53 = entryViewSendMenuPresentationStateAnimator3;
        entryViewPlusButtonDefaultBackgroundColor = [v6 entryViewPlusButtonDefaultBackgroundColor];
        v11 = 0;
        v16 = _isPresentingInPopover;
        v20 = 1.0;
        if (_isPresentingInPopover)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 1.0;
        }

        if (_isPresentingInPopover)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.8;
        }

        if (_isPresentingInPopover)
        {
          v18 = 1.0;
        }

        else
        {
          v18 = 1.02;
        }

        if (_isPresentingInPopover)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 0.96;
        }
      }

      else if (menu == 3)
      {
        v13 = 0.0;
        if (_isPresentingInPopover)
        {
          v12 = 0.0;
        }

        else
        {
          v12 = 6.0;
        }

        v19 = 1.0;
        if (_isPresentingInPopover)
        {
          v20 = 1.0;
        }

        else
        {
          v20 = 0.25;
        }

        entryViewPlusButtonDefaultBackgroundColor = [v6 entryViewPlusButtonSendMenuOpenBackgroundColor];
        entryViewSendMenuPlusButtonSymbolDisappearanceOpacityAnimator = [v6 entryViewSendMenuPlusButtonSymbolDisappearanceOpacityAnimator];

        entryViewSendMenuPlusButtonAppearanceAnimator = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

        entryViewSendMenuPlusButtonAppearanceAnimator2 = [v6 entryViewSendMenuPlusButtonAppearanceAnimator];

        v17 = 1.0;
        if (!_isPresentingInPopover)
        {
          [(CKMessageEntryView *)self bounds];
          v24 = v23 * 1.1;
          plusButton = [(CKMessageEntryView *)self plusButton];
          [plusButton bounds];
          v17 = v24 / v26;
        }

        v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
        v16 = 1;
        entryViewSendMenuPresentationStateAnimator = entryViewSendMenuPlusButtonAppearanceAnimator;
        v53 = entryViewSendMenuPlusButtonAppearanceAnimator2;
        entryViewSendMenuPresentationStateAnimator2 = entryViewSendMenuPlusButtonSymbolDisappearanceOpacityAnimator;
        v18 = 1.0;
      }

      else
      {
        v53 = entryViewSendMenuPresentationStateAnimator3;
        v16 = 0;
        v19 = 1.0;
        v18 = 1.0;
        v17 = 1.0;
        entryViewPlusButtonDefaultBackgroundColor = 0;
        v20 = 1.0;
      }

      v14 = entryViewSendMenuContentViewWidthAnimator;
    }

    else if (menu)
    {
      v14 = entryViewSendMenuContentViewWidthAnimator;
      v53 = entryViewSendMenuPresentationStateAnimator3;
      if (menu == 1)
      {
        entryViewPlusButtonDefaultBackgroundColor = [v6 entryViewPlusButtonDefaultBackgroundColor];
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
        entryViewPlusButtonDefaultBackgroundColor = 0;
      }

      v20 = 1.0;
    }

    else
    {
      v27 = entryViewSendMenuContentViewWidthAnimator2;
      entryViewPlusButtonDefaultBackgroundColor2 = [v6 entryViewPlusButtonDefaultBackgroundColor];
      v14 = entryViewSendMenuContentViewWidthAnimator;
      if (sendMenuPresentationState == 3)
      {
        entryViewSendMenuPlusButtonDismissBlurAnimator = [v6 entryViewSendMenuPlusButtonDismissBlurAnimator];

        entryViewSendMenuPlusButtonDismissBlurAnimator2 = [v6 entryViewSendMenuPlusButtonDismissBlurAnimator];

        entryViewSendMenuPlusButtonDismissScaleAnimator = [v6 entryViewSendMenuPlusButtonDismissScaleAnimator];

        entryViewSendMenuContentViewWidthDismissAnimator = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        entryViewSendMenuContentViewWidthDismissAnimator2 = [v6 entryViewSendMenuContentViewWidthDismissAnimator];

        v16 = 0;
        v11 = 0;
        entryViewSendMenuPresentationStateAnimator = entryViewSendMenuPlusButtonDismissBlurAnimator;
        v19 = 1.0;
        v18 = 1.0;
        v53 = entryViewSendMenuPlusButtonDismissScaleAnimator;
        entryViewSendMenuPresentationStateAnimator2 = entryViewSendMenuPlusButtonDismissBlurAnimator2;
        v14 = entryViewSendMenuContentViewWidthDismissAnimator;
        v17 = 1.0;
        v52 = entryViewSendMenuContentViewWidthDismissAnimator2;
      }

      else
      {
        v53 = entryViewSendMenuPresentationStateAnimator3;
        v16 = 0;
        v11 = 0;
        v19 = 1.0;
        v18 = 1.0;
        v17 = 1.0;
      }

      v20 = 1.0;
      entryViewPlusButtonDefaultBackgroundColor = entryViewPlusButtonDefaultBackgroundColor2;
    }

    plusButton2 = [(CKMessageEntryView *)self plusButton];
    contentClipView = [(CKMessageEntryView *)self contentClipView];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke;
    v67[3] = &unk_1E72F4798;
    v32 = plusButton2;
    v68 = v32;
    v72 = v12;
    v73 = v12;
    v74 = v20;
    v51 = entryViewPlusButtonDefaultBackgroundColor;
    v69 = v51;
    v70 = 0;
    v33 = v11;
    v71 = v33;
    [entryViewSendMenuPresentationStateAnimator addAnimations:v67];
    [entryViewSendMenuPresentationStateAnimator startAnimation];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __71__CKMessageEntryView__updateSendMenuPresentationStateVariableSendMenu___block_invoke_2;
    v64[3] = &unk_1E72ED810;
    v34 = v32;
    v65 = v34;
    v66 = v13;
    [entryViewSendMenuPresentationStateAnimator2 addAnimations:v64];
    [entryViewSendMenuPresentationStateAnimator2 startAnimation];
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
    v37 = contentClipView;
    v58 = v37;
    v59 = v18;
    v60 = v19;
    [v14 addAnimations:v57];
    [v14 startAnimation];
    if (self->_shouldCoverViewBeShrunkenForSendMenu != v16)
    {
      v38 = v14;
      v39 = v16;
      v49 = entryViewSendMenuPresentationStateAnimator;
      v40 = v38;
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

      if ((isEntryViewRefreshEnabled & 1) == 0)
      {
        if (v39)
        {
          inputButtonContainerView = [(CKMessageEntryView *)self inputButtonContainerView];
          [(CKMessageEntryView *)self bringSubviewToFront:inputButtonContainerView];
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
      entryViewSendMenuPresentationStateAnimator = v49;
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

- (void)_updateSendMenuPresentationState:(int64_t)state
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070] isPopoverSendMenuEnabled];

  if (isPopoverSendMenuEnabled)
  {

    [(CKMessageEntryView *)self _updateSendMenuPresentationStatePopoverSendMenu:state];
  }

  else
  {

    [(CKMessageEntryView *)self _updateSendMenuPresentationStateVariableSendMenu:state];
  }
}

- (id)inputAccessoryViewBackdropColor
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    inputAccessoryViewBackdropColor = 0;
  }

  else
  {
    inputAccessoryViewBackdropColor = [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView inputAccessoryViewBackdropColor];
  }

  return inputAccessoryViewBackdropColor;
}

- (id)inputAccessoryViewBackdropEffects
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    inputAccessoryViewBackdropEffects = 0;
  }

  else
  {
    inputAccessoryViewBackdropEffects = [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView inputAccessoryViewBackdropEffects];
  }

  return inputAccessoryViewBackdropEffects;
}

uint64_t __79__CKMessageEntryView__shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker__block_invoke()
{
  result = objc_opt_respondsToSelector();
  _shouldUseKeyboardVisibleBottomInsetsForTextEffectsPicker_respondsToIsTextFormattingInProgress = result & 1;
  return result;
}

- (void)setKeyboardVisible:(BOOL)visible
{
  if (self->_keyboardVisible != visible)
  {
    self->_keyboardVisible = visible;
    [(CKMessageEntryView *)self setNeedsLayout];
    delegate = [(CKMessageEntryView *)self delegate];
    [delegate messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
  }
}

- (BOOL)_shouldUseDarkAppearanceFromTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  v5 = userInterfaceStyle == 2;
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  windowScene = [keyWindow windowScene];
  _enhancedWindowingEnabled = [windowScene _enhancedWindowingEnabled];

  if ((_enhancedWindowingEnabled & 1) == 0)
  {
    isRunningInNotificationExtension = [(CKMessageEntryView *)self isRunningInNotificationExtension];
    return userInterfaceStyle == 2 || isRunningInNotificationExtension;
  }

  return v5;
}

- (void)setEntryViewTraitCollection:(id)collection resetStyle:(BOOL)style
{
  styleCopy = style;
  v44[2] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v7 = [(CKMessageEntryView *)self _shouldUseDarkAppearanceFromTraitCollection:collectionCopy];
  if (v7)
  {
    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v9 = MEMORY[0x1E69DD1B8];
    v44[0] = collectionCopy;
    v44[1] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v11 = [v9 traitCollectionWithTraitsFromCollections:v10];

    collectionCopy = v11;
  }

  if (styleCopy || (style = self->_style) == 0 || v7 != CKMessageEntryViewStyleIsForDarkAppearance([(CKMessageEntryView *)self style]) && (style = CKMessageEntryViewStyleInvert([(CKMessageEntryView *)self style])) == 0)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    theme = [v13 theme];
    v15 = theme;
    if (v7)
    {
      entryViewDarkStyle = [theme entryViewDarkStyle];
    }

    else
    {
      entryViewDarkStyle = [theme entryViewStyle];
    }

    style = entryViewDarkStyle;
  }

  entryViewTraitCollection = self->_entryViewTraitCollection;
  if (entryViewTraitCollection && (-[UITraitCollection displayScale](entryViewTraitCollection, "displayScale"), v19 = v18, [collectionCopy displayScale], v19 == v20) && (v21 = -[UITraitCollection horizontalSizeClass](self->_entryViewTraitCollection, "horizontalSizeClass"), v21 == objc_msgSend(collectionCopy, "horizontalSizeClass")) && (v22 = -[UITraitCollection verticalSizeClass](self->_entryViewTraitCollection, "verticalSizeClass"), v22 == objc_msgSend(collectionCopy, "verticalSizeClass")) && (v23 = -[UITraitCollection userInterfaceStyle](self->_entryViewTraitCollection, "userInterfaceStyle"), v23 == objc_msgSend(collectionCopy, "userInterfaceStyle")) && (-[UITraitCollection preferredContentSizeCategory](self->_entryViewTraitCollection, "preferredContentSizeCategory"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(collectionCopy, "preferredContentSizeCategory"), v25 = objc_claimAutoreleasedReturnValue(), v26 = UIContentSizeCategoryCompareToCategory(v24, v25) == NSOrderedSame, v25, v24, v26) && (v27 = -[UITraitCollection activeAppearance](self->_entryViewTraitCollection, "activeAppearance"), v27 == objc_msgSend(collectionCopy, "activeAppearance")) && (v28 = -[UITraitCollection userInterfaceLevel](self->_entryViewTraitCollection, "userInterfaceLevel"), v28 == objc_msgSend(collectionCopy, "userInterfaceLevel")))
  {
    isTranscriptBackgroundActive = [(UITraitCollection *)self->_entryViewTraitCollection isTranscriptBackgroundActive];
    v30 = isTranscriptBackgroundActive ^ [collectionCopy isTranscriptBackgroundActive];
  }

  else
  {
    v30 = 1;
  }

  style = [(CKMessageEntryView *)self style];
  v32 = style;
  if (((styleCopy | v30) & 1) != 0 || style != style)
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v40 = 67109632;
        *v41 = styleCopy;
        *&v41[4] = 1024;
        *&v41[6] = v30;
        v42 = 1024;
        v43 = v32 != style;
        _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "resetStyle: %{BOOL}d traitCollectionChanged: %{BOOL}d styleChange: %{BOOL}d", &v40, 0x14u);
      }
    }

    objc_storeStrong(&self->_entryViewTraitCollection, collectionCopy);
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
        isRunningInNotificationExtension = [(CKMessageEntryView *)self isRunningInNotificationExtension];
        v38 = @"NO";
        if (isRunningInNotificationExtension)
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
  contentView = [(CKMessageEntryView *)self contentView];
  pluginView = [contentView pluginView];
  if (pluginView && [contentView shouldShowPlugin])
  {
    [contentView computedPluginViewFrame];
    width = v26.size.width;
    v26.size.height = 0.0;
    MinX = CGRectGetMinX(v26);
    pluginView2 = [contentView pluginView];
    [pluginView2 setFrame:{MinX, 0.0, width, 0.0}];

    [contentView computedClearPluginButtonFrame];
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
    clearPluginButton = [contentView clearPluginButton];
    [clearPluginButton setAlpha:0.0];

    clearPluginButton2 = [contentView clearPluginButton];
    [clearPluginButton2 setFrame:{v15, v17, v11, v13}];

    [contentView bounds];
    v21 = v20;
    if (CKPixelWidth_once_8 != -1)
    {
      [CKMessageEntryView prepareForResizeAnimationIfNeeded];
    }

    v22 = *&CKPixelWidth_sPixel_8;
    pluginDividerLine = [contentView pluginDividerLine];
    [pluginDividerLine setFrame:{0.0, 0.0, v21, v22}];
  }
}

- (void)_configureForDisplayModeSending
{
  sendButtonSpinner = [(CKMessageEntryView *)self sendButtonSpinner];
  [sendButtonSpinner startAnimating];

  audioButton = [(CKMessageEntryView *)self audioButton];
  [audioButton setHidden:1];

  plusButton = [(CKMessageEntryView *)self plusButton];
  [plusButton setHidden:0];

  emojiButton = [(CKMessageEntryView *)self emojiButton];
  [emojiButton setHidden:0];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v9 = ;
  [v9 setHidden:1];

  dictationButton = [(CKMessageEntryView *)self dictationButton];
  [dictationButton setHidden:1];

  contentClipView = [(CKMessageEntryView *)self contentClipView];
  [contentClipView setHidden:0];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled2)
  {
    contentView = [(CKMessageEntryView *)self contentView];
    [contentView setHidden:0];
  }
}

- (void)_configureForDisplayModeText
{
  sendButtonSpinner = [(CKMessageEntryView *)self sendButtonSpinner];
  [sendButtonSpinner stopAnimating];

  shouldShowAudioButton = [(CKMessageEntryView *)self shouldShowAudioButton];
  audioButton = [(CKMessageEntryView *)self audioButton];
  [audioButton setHidden:shouldShowAudioButton ^ 1];

  dictationButton = [(CKMessageEntryView *)self dictationButton];
  [dictationButton setHidden:shouldShowAudioButton];

  dictationButton2 = [(CKMessageEntryView *)self dictationButton];
  [dictationButton2 setEnabled:{objc_msgSend(MEMORY[0x1E69DCBF0], "dictationInputModeIsFunctional")}];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(dictationButton) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (dictationButton)
  {
    glassSendButton = [(CKMessageEntryView *)self glassSendButton];
    [glassSendButton setHidden:1];
  }

  else
  {
    sendButton = [(CKMessageEntryView *)self sendButton];
    [sendButton setHidden:1];

    glassSendButton = [(CKMessageEntryView *)self inputButtonContainerView];
    [glassSendButton setAlpha:1.0];
  }

  hintLabel = [(CKMessageEntryView *)self hintLabel];
  [hintLabel setHidden:1];

  contentClipView = [(CKMessageEntryView *)self contentClipView];
  [contentClipView setHidden:0];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryView *)self contentView];
  }

  else
  {
    plusButton = [(CKMessageEntryView *)self plusButton];
    [plusButton setHidden:0];

    [(CKMessageEntryView *)self emojiButton];
  }
  v16 = ;
  [v16 setHidden:0];
}

- (void)_configureForDisplayModeRecording
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    audioButton = [(CKMessageEntryView *)self audioButton];
    [audioButton setHidden:1];

    plusButton = [(CKMessageEntryView *)self plusButton];
    [plusButton setHidden:1];

    emojiButton = [(CKMessageEntryView *)self emojiButton];
    [emojiButton setHidden:1];

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView setHidden:1];
  }

  [(CKMessageEntryView *)self _setupAudioMessageRecordingView];
}

- (void)_configureForDisplayModeRecorded
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    audioButton = [(CKMessageEntryView *)self audioButton];
    [audioButton setHidden:1];

    plusButton = [(CKMessageEntryView *)self plusButton];
    [plusButton setHidden:1];

    emojiButton = [(CKMessageEntryView *)self emojiButton];
    [emojiButton setHidden:1];

    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView setHidden:1];
  }

  [(CKMessageEntryView *)self _setupAudioMessageRecordingView];
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView setState:2];
}

- (void)configureForDisplayMode:(unint64_t)mode
{
  if ([(CKMessageEntryView *)self displayMode]!= mode)
  {
    [(CKMessageEntryView *)self setDisplayMode:mode];
    if (mode > 2)
    {
      if (mode == 3)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeRecorded];
        goto LABEL_16;
      }

      if (mode == 4)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeSending];
        goto LABEL_16;
      }
    }

    else
    {
      if (mode == 1)
      {
        [(CKMessageEntryView *)self _configureForDisplayModeText];
        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

        if ((isEntryViewRefreshEnabled & 1) == 0)
        {
          [(CKMessageEntryView *)self clearAudioRecordingUI];
        }

        goto LABEL_16;
      }

      if (mode == 2)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CKMessageEntryView *)self adjustedCoverInsets:fits.width];
  v6 = v5;
  v8 = v7;
  v11 = width - (v9 + v10);
  contentView = [(CKMessageEntryView *)self contentView];
  [contentView sizeThatFits:{v11, 1.79769313e308}];
  v14 = v13;
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (audioRecordingView)
  {
    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    [(CKMessageEntryView *)self bounds];
    v18 = v17;
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 audioRecordingViewButtonSpacing];
    [audioRecordingView2 sizeThatFits:{v18 + v20 * -2.0, 1.79769313e308}];
    v22 = v21;

    if ([(CKMessageEntryView *)self shouldUseLinearResizeForAudioMessage])
    {
      v22 = v14 + (v22 - v14) * 0.3;
    }
  }

  else if ([(CKMessageEntryView *)self shouldShowHintLabel])
  {
    hintLabel = [(CKMessageEntryView *)self hintLabel];
    [hintLabel frame];
    v22 = v24;
  }

  else
  {
    v22 = v14;
  }

  v25 = v8 + v6 + v22;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
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

- (CGRect)coverFrameThatFitsInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

  contentView = [(CKMessageEntryView *)self contentView];
  [contentView sizeThatFits:{v8, v14}];
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

- (CGRect)_computedFinalCoverFrameRectForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CKMessageEntryView *)self adjustedCoverInsets];
  v7 = v6;
  v9 = v8;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
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
    delegate = [(CKMessageEntryView *)self delegate];
    v22 = [delegate messageEntryViewActiveSendMenuPresentation:self];

    if (v22)
    {
      newPopoverLayoutMetrics = [v22 newPopoverLayoutMetrics];
      if (newPopoverLayoutMetrics)
      {
        v56 = v15;
        window = [(CKMessageEntryView *)self window];
        coordinateSpace = [newPopoverLayoutMetrics coordinateSpace];
        [newPopoverLayoutMetrics frame];
        [coordinateSpace convertRect:window toCoordinateSpace:?];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v73 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v70.receiver = self;
  v70.super_class = CKMessageEntryView;
  v8 = [(CKMessageEntryView *)&v70 hitTest:eventCopy withEvent:x, y];
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  if (audioRecordingView)
  {
    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    v11 = [(CKEntryViewButton *)v8 isDescendantOfView:audioRecordingView2];

    if (v11)
    {
      v12 = v8;
      goto LABEL_46;
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    glassSendButton = [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    sendButton = [(CKMessageEntryView *)self sendButton];
    glassSendButton = [sendButton button];
  }

  [(CKEntryViewButton *)glassSendButton frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  superview = [(CKEntryViewButton *)glassSendButton superview];
  [(CKMessageEntryView *)self convertRect:superview fromView:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(CKMessageEntryView *)self frame];
  if (v8 == glassSendButton)
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

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled2)
  {
    glassSendButton2 = [(CKMessageEntryView *)self glassSendButton];
    if ([glassSendButton2 isEnabled])
    {
      glassSendButton3 = [(CKMessageEntryView *)self glassSendButton];
      isHidden = [glassSendButton3 isHidden];

      goto LABEL_15;
    }

LABEL_17:

    goto LABEL_18;
  }

  glassSendButton2 = [(CKMessageEntryView *)self sendButton];
  if (![glassSendButton2 isEnabled])
  {
    goto LABEL_17;
  }

  sendButton2 = [(CKMessageEntryView *)self sendButton];
  isHidden = [sendButton2 isHidden];

LABEL_15:
  if ((isHidden & 1) == 0)
  {
    button = glassSendButton;
LABEL_22:
    delegate = v8;
    v8 = button;
    goto LABEL_23;
  }

LABEL_18:
  if ([(CKEntryViewButton *)self->_audioButton isEnabled]&& ([(CKEntryViewButton *)self->_audioButton isHidden]& 1) == 0)
  {
    button = [(CKEntryViewButton *)self->_audioButton button];
    goto LABEL_22;
  }

  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewSendButtonHitWhileDisabled:self];
LABEL_23:

LABEL_24:
  button2 = [(CKSendMenuButtonProtocol *)self->_plusButton button];
  if ([(CKMessageEntryView *)self isUserInteractionEnabled])
  {
    WeakRetained = [(CKEntryViewButton *)button2 window];
    if (!WeakRetained || ![(CKEntryViewButton *)button2 isEnabled]|| ([(CKEntryViewButton *)button2 isHidden]& 1) != 0)
    {
      goto LABEL_33;
    }

    audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
    v44 = audioRecordingView3 == 0;

    if (v44)
    {
      [(CKEntryViewButton *)button2 frame];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      superview2 = [(CKEntryViewButton *)button2 superview];
      [(CKMessageEntryView *)self convertRect:superview2 fromView:v46, v48, v50, v52];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v78.origin.x = v55;
      v78.origin.y = v57;
      v78.size.width = v59;
      v78.size.height = v61;
      MaxX = CGRectGetMaxX(v78);
      if (v8 == button2)
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
        v63 = button2;

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

  if (v8 == glassSendButton)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    v66 = [delegate2 messageEntryViewIsSendingMessage:self];

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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[CKUIBehavior sharedBehaviors];
  entryViewFollowsKeyboardLayoutGuide = [v8 entryViewFollowsKeyboardLayoutGuide];

  if (entryViewFollowsKeyboardLayoutGuide)
  {
    goto LABEL_13;
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  isEntryViewInputAccessory = [v10 isEntryViewInputAccessory];

  if (isEntryViewInputAccessory)
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

  superview = [(CKMessageEntryView *)self superview];

  if (!superview)
  {
    goto LABEL_13;
  }

  superview2 = [(CKMessageEntryView *)self superview];
  [superview2 bounds];
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

+ (UIEdgeInsets)coverViewInsetsForMarginInsets:(UIEdgeInsets)insets shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count shouldCenterCharacterCount:(BOOL *)characterCount isStewieMode:(BOOL)mode
{
  modeCopy = mode;
  countCopy = count;
  buttonsCopy = buttons;
  right = insets.right;
  left = insets.left;
  v49[1] = *MEMORY[0x1E69E9840];
  v13 = [CKUIBehavior sharedBehaviors:insets.top];
  [v13 entryViewVerticalCoverInsets];
  v15 = v14;
  v17 = v16;

  v18 = 0.0;
  if (countCopy)
  {
    if (modeCopy)
    {
      v19 = sMaximumCharacterCountString(1);
      v48 = *MEMORY[0x1E69DB648];
      v20 = +[CKUIBehavior sharedBehaviors];
      characterCountSatelliteFont = [v20 characterCountSatelliteFont];
      v49[0] = characterCountSatelliteFont;
      v22 = MEMORY[0x1E695DF20];
      v23 = v49;
      v24 = &v48;
    }

    else
    {
      v19 = sMaximumCharacterCountString(0);
      v46 = *MEMORY[0x1E69DB648];
      v20 = +[CKUIBehavior sharedBehaviors];
      characterCountSatelliteFont = [v20 characterCountFont];
      v47 = characterCountSatelliteFont;
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

  if (!buttonsCopy)
  {
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 entryViewHorizontalCoverInsets];
    v38 = v40;
    goto LABEL_14;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (!isEntryViewRefreshEnabled)
  {
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 entryViewNonCollapsableLeftPadding];
    v38 = v41;
LABEL_14:

    if (!characterCount)
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
  if (characterCount)
  {
LABEL_15:
    *characterCount = right >= v18;
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

+ (UIEdgeInsets)contentViewInsetsForMarginInsets:(UIEdgeInsets)insets shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count shouldCoverSendButton:(BOOL)button isStewieMode:(BOOL)mode
{
  modeCopy = mode;
  countCopy = count;
  buttonsCopy = buttons;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [self coverViewInsetsForMarginInsets:buttonsCopy shouldShowPluginButtons:countCopy shouldShowCharacterCount:0 shouldCenterCharacterCount:modeCopy isStewieMode:{top, left, bottom, right}];
    top = v18;
    left = v19;
    bottom = v20;
    right = v21;
  }

  v22 = 0.0;
  if (!CKIsRunningInMacCatalyst())
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled2)
    {
      +[CKGlassSendButton buttonSize];
      if (button)
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
      if (button)
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
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled3)
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
    [self coverViewInsetsForMarginInsets:buttonsCopy shouldShowPluginButtons:countCopy shouldShowCharacterCount:0 shouldCenterCharacterCount:modeCopy isStewieMode:{top, left, bottom, right}];
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

- (void)setMarginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(CKMessageEntryView *)self marginInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_marginInsets.top = top;
    self->_marginInsets.left = left;
    self->_marginInsets.bottom = bottom;
    self->_marginInsets.right = right;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (!isEntryViewRefreshEnabled)
    {
      v39 = 0;
      v17 = 0;
      if ([(CKMessageEntryView *)self shouldShowPluginButtons])
      {
        plusButton = [(CKMessageEntryView *)self plusButton];
        v17 = plusButton != 0;
      }

      if ([(CKConversation *)self->_conversation isStewieConversation])
      {
        shouldDisplayOffGridModeStatus = 1;
      }

      else
      {
        sendingService = [(CKConversation *)self->_conversation sendingService];
        if ([sendingService __ck_isiMessageLite])
        {
          shouldDisplayOffGridModeStatus = 1;
        }

        else
        {
          conversation = [(CKMessageEntryView *)self conversation];
          sendingService2 = [conversation sendingService];
          if ([sendingService2 __ck_isSatelliteSMS])
          {
            shouldDisplayOffGridModeStatus = 1;
          }

          else
          {
            conversation2 = [(CKMessageEntryView *)self conversation];
            chat = [conversation2 chat];
            shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];
          }
        }
      }

      [CKMessageEntryView coverViewInsetsForMarginInsets:v17 shouldShowPluginButtons:[(CKMessageEntryView *)self shouldShowCharacterCount] shouldShowCharacterCount:&v39 shouldCenterCharacterCount:shouldDisplayOffGridModeStatus isStewieMode:top, left, bottom, right];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [(CKMessageEntryView *)self coverInsets];
      if (v36 == v28 && v33 == v26 && v35 == v32 && v34 == v30)
      {
        shouldCenterCharacterCount = [(CKMessageEntryView *)self shouldCenterCharacterCount];
        v38 = v39;
        if (v39 == shouldCenterCharacterCount)
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

- (void)setBackdropGroupName:(id)name
{
  v13 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  backdropGroupName = self->_backdropGroupName;
  if (isEntryViewRefreshEnabled)
  {
    self->_backdropGroupName = 0;
  }

  else if (![(NSString *)backdropGroupName isEqualToString:nameCopy])
  {
    v8 = [nameCopy copy];
    v9 = self->_backdropGroupName;
    self->_backdropGroupName = v8;

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = nameCopy;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Setting backdrop group name %@", &v11, 0xCu);
      }
    }

    [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView setBackdropGroupName:self->_backdropGroupName];
  }
}

- (double)coverViewWidth
{
  contentClipView = [(CKMessageEntryView *)self contentClipView];
  [contentClipView bounds];
  Width = CGRectGetWidth(v5);

  return Width;
}

- (CGRect)sendButtonFrameInScreenCoordinates
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
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
    audioButton = v5;
    v6 = audioButton;
  }

  else
  {
    audioButton = [(CKMessageEntryView *)self audioButton];
  }

  v8 = audioButton;

  superview = [v8 superview];
  [v8 frame];
  [superview convertRect:0 toView:?];
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
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard frame];
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

- (CKMessageEntryView)initWithFrame:(CGRect)frame marginInsets:(UIEdgeInsets)insets shouldAllowImpact:(BOOL)impact shouldShowSendButton:(BOOL)button shouldShowSubject:(BOOL)subject shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count traitCollection:(id)self0 shouldDisableAttachments:(BOOL)self1 shouldUseNonEmojiKeyboard:(BOOL)self2 shouldUseNonHandwritingKeyboard:(BOOL)self3 shouldDisableKeyboardStickers:(BOOL)self4 shouldAllowPollSuggestions:(BOOL)self5 translationLanguage:(id)self6
{
  buttonsCopy = buttons;
  subjectCopy = subject;
  buttonCopy = button;
  impactCopy = impact;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v240[5] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  languageCopy = language;
  v239.receiver = self;
  v239.super_class = CKMessageEntryView;
  height = [(CKMessageEntryView *)&v239 initWithFrame:x, y, width, height];
  if (!height)
  {
    goto LABEL_78;
  }

  countCopy = count;
  v235 = languageCopy;
  [CKMessageEntryView setCurrentEntryView:height];
  [(CKMessageEntryView *)height setPluginSendingEnabled:1];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(UIView *)height ck_applyGlassGroup];
  }

  attachmentsCopy2 = attachments;
  conversation = [(CKMessageEntryView *)height conversation];
  sendingService = [conversation sendingService];
  v230 = collectionCopy;
  v231 = subjectCopy;
  v236 = buttonCopy;
  if ([sendingService __ck_isiMessageLite])
  {
    v38 = buttonsCopy;
    shouldDisplayOffGridModeStatus = 1;
  }

  else
  {
    v228 = impactCopy;
    conversation2 = [(CKMessageEntryView *)height conversation];
    sendingService2 = [conversation2 sendingService];
    v38 = buttonsCopy;
    if ([sendingService2 __ck_isSatelliteSMS])
    {
      shouldDisplayOffGridModeStatus = 1;
    }

    else
    {
      conversation3 = [(CKMessageEntryView *)height conversation];
      chat = [conversation3 chat];
      shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];

      attachmentsCopy2 = attachments;
    }

    subjectCopy = v231;
    impactCopy = v228;
  }

  conversation4 = [(CKMessageEntryView *)height conversation];
  v45 = [conversation4 isStewieConversation] | shouldDisplayOffGridModeStatus;

  v223 = v45;
  v46 = v45 | countCopy;
  v238 = 0;
  [(CKMessageEntryView *)height setMarginInsets:top, left, bottom, right];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(conversation4) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if ((conversation4 & 1) == 0)
  {
    [CKMessageEntryView coverViewInsetsForMarginInsets:v38 shouldShowPluginButtons:v46 & 1 shouldShowCharacterCount:&v238 shouldCenterCharacterCount:v223 & 1 isStewieMode:top, left, bottom, right];
    [(CKMessageEntryView *)height setCoverInsets:?];
  }

  [(CKMessageEntryView *)height setShouldShowSendButton:v236];
  [(CKMessageEntryView *)height setShouldShowSubject:subjectCopy];
  [(CKMessageEntryView *)height setShouldShowPluginButtons:v38];
  [(CKMessageEntryView *)height setShouldShowCharacterCount:v46 & 1];
  [(CKMessageEntryView *)height setShouldCenterCharacterCount:v238];
  [(CKMessageEntryView *)height setShouldDisableAttachments:attachmentsCopy2];
  [(CKMessageEntryView *)height setShouldAllowImpactSend:impactCopy];
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  enabledDictationLanguages = [mEMORY[0x1E69DCBF0] enabledDictationLanguages];
  -[CKMessageEntryView setDictationEnabledForLanguage:](height, "setDictationEnabledForLanguage:", [enabledDictationLanguages count] != 0);

  [(CKMessageEntryView *)height setShouldShowDictationButton:1];
  [(CKMessageEntryView *)height setAccessibilityIdentifier:@"entryView"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:height selector:sel_textEffectsWindowOffsetDidChange_ name:*MEMORY[0x1E69DE5A8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:height selector:sel__keyboardsSettingsChanged_ name:@"AppleKeyboardsSettingsChangedNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:height selector:sel__dictationAvailabilityDidChange name:*MEMORY[0x1E69DDF60] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:height selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  v54 = +[CKUIBehavior sharedBehaviors];
  LODWORD(enabledDictationLanguages) = [v54 entryViewFollowsKeyboardLayoutGuide];

  if (enabledDictationLanguages)
  {
    [(CKMessageEntryView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

    if ((isEntryViewRefreshEnabled2 & 1) == 0)
    {
      layer = [(CKMessageEntryView *)height layer];
      [layer setAnchorPoint:{1.0, 1.0}];
    }
  }

  v225 = attachmentsCopy2;
  [(CKMessageEntryView *)height setOpaque:0];
  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]4 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled3 & 1) == 0)
  {
    [(CKMessageEntryView *)height updateBackgroundView];
  }

  mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSendMenuEnabled = [mEMORY[0x1E69A8070]5 isSendMenuEnabled];

  v62 = +[CKUIBehavior sharedBehaviors];
  entryViewSupportsPlusButton = [v62 entryViewSupportsPlusButton];

  height2 = [[CKMessageEntryViewButtonContainerView alloc] initWithFrame:x, y, width, height];
  [(CKMessageEntryViewButtonContainerView *)height2 setClipsToBounds:isSendMenuEnabled ^ 1u];
  mEMORY[0x1E69A8070]6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LOBYTE(v62) = [mEMORY[0x1E69A8070]6 isEntryViewRefreshEnabled];

  if ((v62 & 1) == 0)
  {
    layer2 = [(CKMessageEntryViewButtonContainerView *)height2 layer];
    [layer2 setAnchorPoint:{0.0, 0.0}];
  }

  [(CKMessageEntryView *)height addSubview:height2];
  [(CKMessageEntryView *)height setInputButtonContainerView:height2];
  mEMORY[0x1E69A8070]7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled4 = [mEMORY[0x1E69A8070]7 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled4 & 1) == 0)
  {
    v69 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{x, y, width, height}];
    [(CKMessageEntryView *)height setMessageEditingBlurOverlayView:v69];
    [(CKMessageEntryView *)height addSubview:v69];
    [v69 setHidden:1];
  }

  v70 = +[CKUIBehavior sharedBehaviors];
  v71 = v70;
  if (entryViewSupportsPlusButton)
  {
    [v70 entryViewPlusButtonSize];
  }

  else
  {
    [v70 browserButtonSize];
  }

  v73 = v72;

  [(CKMessageEntryView *)height setInputButtonSize:v73, v73];
  v74 = +[CKUIBehavior sharedBehaviors];
  entryViewPlusButtonClass = [v74 entryViewPlusButtonClass];

  v76 = objc_alloc_init(entryViewPlusButtonClass);
  v77 = +[CKUIBehavior sharedBehaviors];
  LODWORD(entryViewPlusButtonClass) = [v77 browserButtonShouldUseMenu];

  button = [v76 button];
  v79 = button;
  if (entryViewPlusButtonClass)
  {
    [button setContextMenuIsPrimary:1];

    button2 = [v76 button];
    [button2 setContextMenuEnabled:1];
LABEL_29:

    goto LABEL_30;
  }

  [button addTarget:height action:sel_plusButtonTouchDown_ forEvents:1];

  button3 = [v76 button];
  [button3 addTarget:height action:sel_plusButtonTouchUpOutside_ forEvents:128];

  button4 = [v76 button];
  [button4 addTarget:height action:sel_plusButtonTouchCancel_ forEvents:256];

  button5 = [v76 button];
  [button5 addTarget:height action:sel_plusButtonTouchDragExit_ forEvents:32];

  button6 = [v76 button];
  [button6 addTarget:height action:sel_plusButtonTouchDragEnter_ forEvents:16];

  button7 = [v76 button];
  [button7 addTarget:height action:sel_didSelectPlusButton_ forEvents:64];

  v86 = +[CKUIBehavior sharedBehaviors];
  supportsEntryViewPlusButtonLongPress = [v86 supportsEntryViewPlusButtonLongPress];

  if (supportsEntryViewPlusButtonLongPress)
  {
    button2 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:height action:sel_plusButtonLongPressed_];
    v88 = +[CKUIBehavior sharedBehaviors];
    [v88 entryViewPlusButtonLongPressDuration];
    v90 = v89;

    [button2 setMinimumPressDuration:v90];
    button8 = [v76 button];
    [button8 addGestureRecognizer:button2];

    defaultConfiguration = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v93 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:defaultConfiguration view:v76];
    plusButtonFeedbackGenerator = height->_plusButtonFeedbackGenerator;
    height->_plusButtonFeedbackGenerator = v93;

    goto LABEL_29;
  }

LABEL_30:
  mEMORY[0x1E69A8070]8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isPopoverSendMenuEnabled = [mEMORY[0x1E69A8070]8 isPopoverSendMenuEnabled];

  if ((isPopoverSendMenuEnabled & 1) == 0)
  {
    v97 = +[CKUIBehavior sharedBehaviors];
    entryViewPlusButtonDefaultBackgroundColor = [v97 entryViewPlusButtonDefaultBackgroundColor];
    [v76 setPlusButtonBackgroundColor:entryViewPlusButtonDefaultBackgroundColor];
  }

  [v76 accessibilitySetIdentification:@"Apps Button"];
  [v76 setExclusiveTouch:0];
  [v76 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v73, v73}];
  if ([(CKMessageEntryView *)height shouldShowPluginButtons])
  {
    [(CKMessageEntryView *)height setPlusButton:v76];
    [(CKMessageEntryViewButtonContainerView *)height2 addSubview:v76];
  }

  if (CKIsRunningInMacCatalyst())
  {
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:height selector:sel_visiblePluginsChanged_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
  }

  v100 = objc_alloc(MEMORY[0x1E69DD250]);
  v101 = *MEMORY[0x1E695F058];
  v102 = *(MEMORY[0x1E695F058] + 8);
  v103 = *(MEMORY[0x1E695F058] + 16);
  v104 = *(MEMORY[0x1E695F058] + 24);
  v105 = [v100 initWithFrame:{*MEMORY[0x1E695F058], v102, v103, v104}];
  mEMORY[0x1E69A8070]9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled5 = [mEMORY[0x1E69A8070]9 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled5 & 1) == 0)
  {
    [v105 setOpaque:0];
  }

  v227 = v76;
  [v105 setClipsToBounds:1];
  v234 = +[CKUIBehavior sharedBehaviors];
  [v234 entryViewCoverMinHeight];
  v109 = v108 * 0.5;
  [v105 _setContinuousCornerRadius:v108 * 0.5];
  mEMORY[0x1E69A8070]10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled6 = [mEMORY[0x1E69A8070]10 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled6 & 1) == 0)
  {
    [v234 entryFieldCoverLineWidth];
    v113 = v112;
    layer3 = [v105 layer];
    [layer3 setBorderWidth:v113];
  }

  v229 = height2;
  mEMORY[0x1E69A8070]11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled7 = [mEMORY[0x1E69A8070]11 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled7 & 1) == 0)
  {
    layer4 = [MEMORY[0x1E69794A0] layer];
    v118 = +[CKUIBehavior sharedBehaviors];
    theme = [v118 theme];
    entryFieldBorderColor = [theme entryFieldBorderColor];
    [layer4 setStrokeColor:{objc_msgSend(entryFieldBorderColor, "CGColor")}];

    [layer4 setFillColor:0];
    [layer4 setLineJoin:*MEMORY[0x1E6979E98]];
    [layer4 setLineCap:*MEMORY[0x1E6979E78]];
    entryViewDashedLinePattern = [v234 entryViewDashedLinePattern];
    [layer4 setLineDashPattern:entryViewDashedLinePattern];

    [layer4 setLineWidth:0.0];
    [layer4 setCornerRadius:v109];
    [layer4 setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer4 setAllowsEdgeAntialiasing:1];
    layer5 = [v105 layer];
    [layer5 addSublayer:layer4];

    [(CKMessageEntryView *)height setDashedContentClipViewLayer:layer4];
  }

  v237 = v105;
  mEMORY[0x1E69A8070]12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled8 = [mEMORY[0x1E69A8070]12 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled8 & 1) == 0)
  {
    layer6 = [v105 layer];
    [layer6 setAnchorPoint:{1.0, 0.5}];

    v126 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v126 theme];
    entryViewContentBackgroundColor = [theme2 entryViewContentBackgroundColor];
    [v105 setBackgroundColor:entryViewContentBackgroundColor];
  }

  [(CKMessageEntryView *)height setContentClipView:v105];
  [(CKMessageEntryView *)height addSubview:v105];
  mEMORY[0x1E69A8070]13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled9 = [mEMORY[0x1E69A8070]13 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled9)
  {
    [(CKMessageEntryView *)height _updateEntryViewMaterials];
  }

  else
  {
    [(CKMessageEntryView *)height updateKnockoutView];
  }

  [(CKMessageEntryView *)height setTranslationLanguage:v235];
  v235 = [[CKMessageEntryContentView alloc] initWithFrame:v231 shouldShowSubject:v225 shouldDisableAttachments:keyboard shouldUseNonEmojiKeyboard:handwritingKeyboard shouldUseNonHandwritingKeyboard:stickers shouldDisableKeyboardStickers:suggestions shouldAllowPollSuggestions:v101 translationLanguage:v102, v103, v104, v235];
  v132 = +[CKUIBehavior sharedBehaviors];
  [v132 entryFieldCoverLineWidth];
  v134 = v133;

  [(CKMessageEntryContentView *)v235 setContainerViewLineWidth:v134];
  mEMORY[0x1E69A8070]14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled10 = [mEMORY[0x1E69A8070]14 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled10)
  {
    +[CKGlassSendButton buttonSize];
    v138 = v137;
    v139 = +[CKUIBehavior sharedBehaviors];
    [v139 entryViewSendButtonCoverSpace];
    [(CKMessageEntryContentView *)v235 setSendButtonTextInsetWidth:v138 + v140];
  }

  else
  {
    v139 = +[CKUIBehavior sharedBehaviors];
    [v139 sendButtonSize];
    v142 = v141;
    v143 = +[CKUIBehavior sharedBehaviors];
    [v143 entryViewSendButtonCoverSpace];
    [(CKMessageEntryContentView *)v235 setSendButtonTextInsetWidth:v142 + v144];
  }

  [(CKMessageEntryContentView *)v235 setOpaque:0];
  [(CKMessageEntryContentView *)v235 setDelegate:height];
  [(CKMessageEntryView *)height setContentView:v235];
  [v105 addSubview:v235];
  mEMORY[0x1E69A8070]15 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled11 = [mEMORY[0x1E69A8070]15 isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled11 & 1) == 0)
  {
    [(CKMessageEntryView *)height coverFrameThatFitsInSize:width, height];
    [(CKMessageEntryContentView *)v235 setMaxContentWidthWhenExpanded:v147];
  }

  v232 = v235;
  recorder = [(CKMessageEntryView *)height recorder];

  if (!recorder)
  {
    v149 = objc_alloc_init(CKAudioRecorder);
    [(CKAudioRecorder *)v149 setDelegate:height];
    [(CKMessageEntryView *)height setRecorder:v149];
  }

  [(CKMessageEntryView *)height configureForDisplayMode:1];
  if ([(CKMessageEntryView *)height shouldShowCharacterCount])
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
    conversation5 = [(CKMessageEntryView *)height conversation];
    isStewieConversation = [conversation5 isStewieConversation];

    v155 = +[CKUIBehavior sharedBehaviors];
    v156 = v155;
    if (isStewieConversation)
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
    theme3 = [v158 theme];
    entryFieldPlaceholderColor = [theme3 entryFieldPlaceholderColor];
    [v151 setTextColor:entryFieldPlaceholderColor];

    [v151 setBackgroundColor:0];
    [v151 setOpaque:0];
    [v151 setHidden:1];
    [(CKMessageEntryView *)height setCharacterCountLabel:v151];
    [(CKMessageEntryView *)height addSubview:v151];
    v161 = sMaximumCharacterCountString(v223 & 1);
    [v151 setText:v161];

    [v151 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(CKMessageEntryView *)height setCharacterCountSize:?];
    [v151 setText:0];
    [(CKMessageEntryView *)height setCharacterCountHidden:1];
  }

  if ([(CKMessageEntryView *)height shouldShowSendButton]&& !CKIsRunningInMacCatalyst())
  {
    mEMORY[0x1E69A8070]16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled12 = [mEMORY[0x1E69A8070]16 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled12)
    {
      v164 = objc_alloc_init(CKGlassSendButton);
      [(CKGlassSendButton *)v164 setOpaque:0];
      [(CKGlassSendButton *)v164 setEnabled:0];
      [(CKGlassSendButton *)v164 addTarget:height action:sel_touchUpInsideSendButton_ forControlEvents:64];
      [(CKGlassSendButton *)v164 setDisabledDimsImage:1];
      [(CKGlassSendButton *)v164 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v164 setExclusiveTouch:1];
      [(CKGlassSendButton *)v164 setAccessibilityLabel:@"Send Button"];
      [(CKMessageEntryView *)height setGlassSendButton:v164];
    }

    else
    {
      v164 = [CKEntryViewButton entryViewButtonOfType:0 wantsVibrancy:0];
      [(CKGlassSendButton *)v164 setOpaque:0];
      [(CKGlassSendButton *)v164 setEnabled:0];
      button9 = [(CKGlassSendButton *)v164 button];
      [button9 addTarget:height action:sel_touchUpInsideSendButton_ forControlEvents:64];

      button10 = [(CKGlassSendButton *)v164 button];
      [button10 setDisabledDimsImage:1];

      [(CKGlassSendButton *)v164 accessibilitySetIdentification:@"sendButton"];
      [(CKGlassSendButton *)v164 setExclusiveTouch:1];
      layer7 = [(CKGlassSendButton *)v164 layer];
      [layer7 setAnchorPoint:{1.0, 1.0}];

      [(CKGlassSendButton *)v164 setAccessibilityLabel:@"Send Button"];
      [(CKMessageEntryView *)height setSendButton:v164];
    }

    contentClipView = [(CKMessageEntryView *)height contentClipView];
    [contentClipView addSubview:v164];

    v169 = [CKEntryViewButton entryViewButtonOfType:1 wantsVibrancy:0];
    [v169 setOpaque:0];
    [v169 accessibilitySetIdentification:@"audioButton"];
    [v169 setExclusiveTouch:1];
    v170 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:height action:sel_audioButtonLongPressed_];
    [v170 setMinimumPressDuration:0.0];
    button11 = [v169 button];
    [button11 addGestureRecognizer:v170];

    [(CKMessageEntryView *)height setAudioButton:v169];
    contentClipView2 = [(CKMessageEntryView *)height contentClipView];
    [contentClipView2 addSubview:v169];

    mEMORY[0x1E69A8070]17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled13 = [mEMORY[0x1E69A8070]17 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled13)
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

    [(CKMessageEntryView *)height setSendButtonSize:v176, v178];
  }

  v183 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v101, v102, v103, v104}];
  [v183 setNumberOfLines:0];
  v184 = CKFrameworkBundle();
  v185 = [v184 localizedStringForKey:@"AUDIO_HINT_TAP" value:&stru_1F04268F8 table:@"ChatKit"];
  [v183 setText:v185];

  [v183 setHidden:1];
  [v183 setTextAlignment:1];
  v186 = +[CKUIBehavior sharedBehaviors];
  audioHintFont = [v186 audioHintFont];
  [v183 setFont:audioHintFont];

  [v183 setAdjustsFontSizeToFitWidth:1];
  v188 = +[CKUIBehavior sharedBehaviors];
  theme4 = [v188 theme];
  transcriptTextColor = [theme4 transcriptTextColor];
  [v183 setTextColor:transcriptTextColor];

  [v183 setOpaque:0];
  [(CKMessageEntryView *)height setHintLabel:v183];
  contentClipView3 = [(CKMessageEntryView *)height contentClipView];
  v226 = v183;
  [contentClipView3 addSubview:v183];

  createDictationButton = [(CKMessageEntryView *)height createDictationButton];
  [(CKMessageEntryView *)height setDictationButton:createDictationButton];
  contentClipView4 = [(CKMessageEntryView *)height contentClipView];
  v224 = createDictationButton;
  [contentClipView4 addSubview:createDictationButton];

  v194 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(CKMessageEntryView *)height setSendButtonSpinner:v194];

  sendButtonSpinner = [(CKMessageEntryView *)height sendButtonSpinner];
  [sendButtonSpinner setUserInteractionEnabled:1];

  sendButtonSpinner2 = [(CKMessageEntryView *)height sendButtonSpinner];
  [sendButtonSpinner2 setOpaque:0];

  if (CKIsRunningInMacCatalyst())
  {
    mEMORY[0x1E69A8070]18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled14 = [mEMORY[0x1E69A8070]18 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled14)
    {
      sendButtonSpinner4 = objc_alloc_init(CKGlassEmojiButton);
    }

    else
    {
      sendButtonSpinner4 = [MEMORY[0x1E69DC738] buttonWithType:0];
      v200 = +[CKUIBehavior sharedBehaviors];
      entryViewMacEmojiButtonImage = [v200 entryViewMacEmojiButtonImage];
      [(CKGlassEmojiButton *)sendButtonSpinner4 setImage:entryViewMacEmojiButtonImage forState:0];

      v202 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:3 scale:16.0];
      [(CKGlassEmojiButton *)sendButtonSpinner4 setPreferredSymbolConfiguration:v202 forImageInState:0];

      v203 = +[CKUIBehavior sharedBehaviors];
      theme5 = [v203 theme];
      entryFieldButtonColor = [theme5 entryFieldButtonColor];
      [(CKGlassEmojiButton *)sendButtonSpinner4 setTintColor:entryFieldButtonColor];

      [(CKGlassEmojiButton *)sendButtonSpinner4 setAdjustsImageWhenHighlighted:1];
    }

    [(CKGlassEmojiButton *)sendButtonSpinner4 addTarget:height action:sel_showEmojiPicker forControlEvents:64];
    [(CKMessageEntryView *)height setEmojiButton:sendButtonSpinner4];
    contentClipView5 = [(CKMessageEntryView *)height contentClipView];
    [(CKMessageEntryView *)height insertSubview:sendButtonSpinner4 belowSubview:contentClipView5];

    v207 = [CKEntryViewButton entryViewButtonOfType:1 wantsVibrancy:0];
    [v207 setOpaque:0];
    [v207 accessibilitySetIdentification:@"audioButton"];
    [v207 setExclusiveTouch:1];
    button12 = [v207 button];
    [button12 addTarget:height action:sel_audioButtonTappedInEntryView_ forControlEvents:64];

    [v207 setCkTintColor:0xFFFFFFFFLL];
    [(CKMessageEntryView *)height setAudioButton:v207];
    contentClipView6 = [(CKMessageEntryView *)height contentClipView];
    [contentClipView6 addSubview:v207];

    contentView = [(CKMessageEntryView *)height contentView];
    sendButtonSpinner3 = [(CKMessageEntryView *)height sendButtonSpinner];
    [contentView addSubview:sendButtonSpinner3];
  }

  else
  {
    sendButtonSpinner4 = [(CKMessageEntryView *)height sendButtonSpinner];
    [(CKMessageEntryView *)height addSubview:sendButtonSpinner4];
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
  [(CKMessageEntryView *)height setKeyCommands:v219];
  collectionCopy = v230;
  [(CKMessageEntryView *)height setEntryViewTraitCollection:v230];
  v220 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:height action:sel__swipeDownGestureRecognized_];
  [v220 setDelegate:height];
  [v220 setDirection:8];
  [(CKMessageEntryView *)height addGestureRecognizer:v220];
  [(CKMessageEntryView *)height setSwipeGestureRecognizer:v220];
  [(CKMessageEntryView *)height applyDefaultGlass];
  layer8 = [(CKMessageEntryView *)height layer];
  [layer8 setHitTestsAsOpaque:1];

  languageCopy = v235;
LABEL_78:

  return height;
}

- (id)createDictationButton
{
  v3 = [CKEntryViewButton entryViewButtonOfType:2 wantsVibrancy:0];
  [v3 setCkTintColor:0xFFFFFFFFLL];
  [v3 setEnabled:1];
  [v3 setOpaque:0];
  [v3 accessibilitySetIdentification:@"dictationButton"];
  button = [v3 button];
  [button addTarget:self action:sel_dictationButtonTapped_ forControlEvents:64];

  button2 = [v3 button];
  [button2 setDisabledDimsImage:1];

  button3 = [v3 button];
  LOBYTE(button) = objc_opt_respondsToSelector();

  if (button)
  {
    button4 = [v3 button];
    [button4 _setIsMicButton:1];
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
    button = [(CKEntryViewButton *)v4 button];
    [button addTarget:self action:sel_keyboardButtonTapped_ forControlEvents:64];

    button2 = [(CKEntryViewButton *)v4 button];
    [button2 setDisabledDimsImage:1];

    v7 = self->_keyboardButton;
    self->_keyboardButton = v4;

    keyboardButton = self->_keyboardButton;
  }

  return keyboardButton;
}

- (void)optionUpArrowClicked:(id)clicked
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewPopulatePreviousSentMessage:self];
  }
}

- (void)optionDownArrowClicked:(id)clicked
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewPopulateNextSentMessage:self];
  }
}

- (void)showEffectPicker
{
  delegate = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewWantsEffectPicker:self];
  }
}

- (void)handleLongPress:(id)press
{
  if ([press state] == 1 && !-[CKMessageEntryView hasRecording](self, "hasRecording"))
  {

    [(CKMessageEntryView *)self showEffectPicker];
  }
}

- (void)deferredSetup
{
  [MEMORY[0x1E69DCBB8] setPredictionViewPrewarmsPredictiveCandidates:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  browserButtonShouldUseMenu = [v3 browserButtonShouldUseMenu];

  if (browserButtonShouldUseMenu)
  {
    plusButton = [(CKMessageEntryView *)self plusButton];
    button = [plusButton button];
    entryViewTraitCollection = [(CKMessageEntryView *)self entryViewTraitCollection];
    conversation = [(CKMessageEntryView *)self conversation];
    v8 = [CKAppMenuDataSource appMenuWithTarget:self traitCollection:entryViewTraitCollection conversation:conversation];
    [button setMenu:v8];
  }
}

- (void)updateKnockoutView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    return;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  entryViewUsesTransparentBackground = [v5 entryViewUsesTransparentBackground];

  knockoutView = [(CKMessageEntryView *)self knockoutView];

  if (!knockoutView)
  {
    if (entryViewUsesTransparentBackground)
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
    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView insertSubview:v19 atIndex:0];

    [(CKMessageEntryView *)self setKnockoutView:v19];
    if (entryViewUsesTransparentBackground)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (UIAccessibilityIsReduceTransparencyEnabled() || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 knockoutViewShouldUseBackgroundColor], v21, (v22 & 1) == 0))
    {
      knockoutView2 = [(CKMessageEntryView *)self knockoutView];
      [knockoutView2 setBackgroundColor:0];
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
      entryViewTraitCollection = [(CKMessageEntryView *)self entryViewTraitCollection];
      v25 = [v23 resolvedColorForTraitCollection:entryViewTraitCollection];

      knockoutView2 = [v25 colorWithAlphaComponent:0.300000012];

      knockoutView3 = [(CKMessageEntryView *)self knockoutView];
      [knockoutView3 setBackgroundColor:knockoutView2];
    }

    goto LABEL_16;
  }

  if (!entryViewUsesTransparentBackground)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = +[CKUIBehavior sharedBehaviors];
  theme = [v8 theme];
  knockoutView2 = [theme messageEntryViewTextFieldBackgroundColor];

  entryViewTraitCollection2 = [(CKMessageEntryView *)self entryViewTraitCollection];
  v11 = [knockoutView2 resolvedColorForTraitCollection:entryViewTraitCollection2];

  [(UIVisualEffectView *)self->_knockoutVisualEffectView setBackgroundColor:v11];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v12 theme];
  messageEntryViewTextFieldBackgroundEffects = [theme2 messageEntryViewTextFieldBackgroundEffects];
  [(UIVisualEffectView *)self->_knockoutVisualEffectView setBackgroundEffects:messageEntryViewTextFieldBackgroundEffects];

LABEL_16:
}

- (void)updateBackgroundView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    entryFieldShouldUseBackdropView = [v5 entryFieldShouldUseBackdropView];

    if (entryFieldShouldUseBackdropView)
    {
      if (!self->_backgroundView)
      {
        v7 = +[CKUIBehavior sharedBehaviors];
        entryViewBackgroundClass = [v7 entryViewBackgroundClass];

        v9 = objc_alloc_init(entryViewBackgroundClass);
        backgroundView = self->_backgroundView;
        self->_backgroundView = v9;

        [(CKMessageEntryView *)self addSubview:self->_backgroundView];
      }

      entryViewTraitCollection = [(CKMessageEntryView *)self entryViewTraitCollection];
      [(CKMessageEntryBackgroundViewProtocol *)self->_backgroundView setEntryViewTraitCollection:entryViewTraitCollection];

      style = [(CKMessageEntryView *)self style];
      v13 = self->_backgroundView;

      [(CKMessageEntryBackgroundViewProtocol *)v13 setStyle:style];
    }
  }
}

- (BOOL)shouldReloadBackgroundView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    return 0;
  }

  backgroundView = [(CKMessageEntryView *)self backgroundView];
  v7 = objc_opt_class();

  v8 = +[CKUIBehavior sharedBehaviors];
  entryViewBackgroundClass = [v8 entryViewBackgroundClass];

  return v7 != entryViewBackgroundClass;
}

- (void)setShouldHideBackgroundView:(BOOL)view
{
  viewCopy = view;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if ((isEntryViewRefreshEnabled & 1) == 0)
  {
    backgroundView = [(CKMessageEntryView *)self backgroundView];
    [backgroundView setHidden:viewCopy];
  }
}

- (BOOL)shouldHideBackgroundView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    return 1;
  }

  backgroundView = [(CKMessageEntryView *)self backgroundView];
  isHidden = [backgroundView isHidden];

  return isHidden;
}

- (void)setStyle:(int64_t)style
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

  self->_style = style;
  [(CKMessageEntryView *)self _overrideUserInterfaceStyleForEntryViewStyleIfNeeded:style];
  contentView = [(CKMessageEntryView *)self contentView];
  [contentView setStyle:self->_style];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109120;
      v14[1] = style;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Returned from [CKMessageEntryContentView setStyle:]. style={%d}", v14, 8u);
    }
  }

  v8 = CKMessageEntryViewStyleIsForDarkFullscreenMoment([(CKMessageEntryView *)self style]);
  inputButtonContainerView = [(CKMessageEntryView *)self inputButtonContainerView];
  v10 = +[CKUIBehavior sharedBehaviors];
  theme = [v10 theme];
  v12 = theme;
  if (v8)
  {
    [theme entryFieldDarkEffectButtonColor];
  }

  else
  {
    [theme entryFieldButtonColor];
  }
  v13 = ;
  [inputButtonContainerView setTintColor:v13];

  [(CKMessageEntryView *)self configureTextViewWithInputContextHistoryFromTranscript];
  [(CKMessageEntryView *)self updateEntryView];
}

- (void)_overrideUserInterfaceStyleForEntryViewStyleIfNeeded:(int64_t)needed
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      entryViewTraitCollection = [(CKMessageEntryView *)self entryViewTraitCollection];
      v7 = [entryViewTraitCollection description];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Call to _overrideUserInterfaceStyleForEntryViewStyleIfNeeded. entryViewTraitCollection: {%@}", &v10, 0xCu);
    }
  }

  entryViewTraitCollection2 = [(CKMessageEntryView *)self entryViewTraitCollection];
  userInterfaceStyle = [entryViewTraitCollection2 userInterfaceStyle];
  if (needed <= 6 && ((1 << needed) & 0x4E) != 0)
  {
    if ([entryViewTraitCollection2 isTranscriptBackgroundActive] && (objc_msgSend(entryViewTraitCollection2, "isDiffusedSystemGlassSettingEnabled") & 1) != 0)
    {
      userInterfaceStyle = 1;
    }

    else
    {
      userInterfaceStyle = 2;
    }
  }

  [(CKMessageEntryView *)self _setOverrideUserInterfaceStyle:userInterfaceStyle];
  [(CKMessageEntryView *)self setNeedsLayout];
}

- (void)setConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (self->_conversation != conversationCopy)
  {
    objc_storeStrong(&self->_conversation, conversation);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"CKConversationPreferredServiceChangedNotification" object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69A5828] object:0];
    v7 = *MEMORY[0x1E69A56E8];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69A56E8] object:0];
    v8 = *MEMORY[0x1E69A5938];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69A5938] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE6B8] object:0];
    if (conversationCopy)
    {
      [defaultCenter addObserver:self selector:sel_conversationPreferredServiceChanged_ name:@"CKConversationPreferredServiceChangedNotification" object:conversationCopy];
      chat = [(CKConversation *)conversationCopy chat];
      [defaultCenter addObserver:self selector:sel__contactLimitsChanged_ name:v7 object:chat];

      [defaultCenter addObserver:self selector:sel_updateEntryView name:v8 object:0];
      [defaultCenter addObserver:self selector:sel_updateEntryView name:*MEMORY[0x1E69A7C38] object:0];
      [defaultCenter addObserver:self selector:sel_interruptAudioRecorder_ name:*MEMORY[0x1E69580D8] object:0];
      [defaultCenter addObserver:self selector:sel_updateEntryView name:*MEMORY[0x1E69A5908] object:0];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = conversationCopy;
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
    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
    sendButton = [audioRecordingView sendButton];
    [sendButton setEnabled:{-[CKMessageEntryView sendButtonEnabled](self, "sendButtonEnabled")}];

    [(CKMessageEntryView *)self configureTextViewWithInputContextHistoryFromTranscript];
  }
}

- (void)invalidateCompositionForReason:(int64_t)reason
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      reasonCopy = reason;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "invalidating composition for reason: %ld", &v16, 0xCu);
    }
  }

  switch(reason)
  {
    case 2:
      composition = [(CKMessageEntryView *)self composition];
      v11 = [CKComposition alloc];
      text = [composition text];
      subject = [composition subject];
      v14 = [(CKComposition *)v11 initWithText:text subject:subject shelfPluginPayload:0];

      sendLaterPluginInfo = [composition sendLaterPluginInfo];
      [(CKComposition *)v14 setSendLaterPluginInfo:sendLaterPluginInfo];

      [(CKMessageEntryView *)self setComposition:v14];
      break;
    case 1:
      composition2 = [(CKMessageEntryView *)self composition];
      v7 = [[CKComposition alloc] initWithText:0 subject:0];
      sendLaterPluginInfo2 = [composition2 sendLaterPluginInfo];
      [(CKComposition *)v7 setSendLaterPluginInfo:sendLaterPluginInfo2];

      [(CKMessageEntryView *)self setComposition:v7];
      contentView = [(CKMessageEntryView *)self contentView];
      [contentView hideTextEffectsPickerIfNeededAndResetTypingAttributes];

      break;
    case 0:
      [(CKMessageEntryView *)self setComposition:0];
      break;
  }
}

- (void)setComposition:(id)composition forceUpdateText:(BOOL)text
{
  textCopy = text;
  compositionCopy = composition;
  if ([compositionCopy isAudioComposition])
  {
    [(CKMessageEntryView *)self setAudioComposition:compositionCopy];
  }

  else
  {
    [(CKMessageEntryView *)self setAudioComposition:0];
    contentView = [(CKMessageEntryView *)self contentView];
    [contentView setComposition:compositionCopy forceUpdateText:textCopy];
  }
}

- (void)compositionWithAcceptedAutocorrection:(id)autocorrection
{
  autocorrectionCopy = autocorrection;
  composition = [(CKMessageEntryView *)self composition];
  isAudioComposition = [composition isAudioComposition];

  if (isAudioComposition)
  {
    if (autocorrectionCopy)
    {
      composition2 = [(CKMessageEntryView *)self composition];
      autocorrectionCopy[2](autocorrectionCopy, composition2);
    }
  }

  else
  {
    contentView = [(CKMessageEntryView *)self contentView];
    conversation = [(CKMessageEntryView *)self conversation];
    chat = [conversation chat];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__CKMessageEntryView_compositionWithAcceptedAutocorrection___block_invoke;
    v11[3] = &unk_1E72ED638;
    v11[4] = self;
    v12 = autocorrectionCopy;
    [contentView acceptAutocorrectionForChat:chat completionHandler:v11];
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

- (void)setSendLaterPluginInfo:(id)info animated:(BOOL)animated
{
  animatedCopy = animated;
  infoCopy = info;
  contentView = [(CKMessageEntryView *)self contentView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CKMessageEntryView_setSendLaterPluginInfo_animated___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [contentView setSendLaterPluginInfo:infoCopy animated:animatedCopy completionHandler:v8];
}

- (void)updateAllowPollSuggestions
{
  v23 = *MEMORY[0x1E69E9840];
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];

  composition = [(CKMessageEntryView *)self composition];
  shelfPluginPayload = [composition shelfPluginPayload];

  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [pluginBundleID isEqualToString:v8];

  conversation = [(CKMessageEntryView *)self conversation];
  v11 = [conversation supportsPolls] & (v9 ^ 1);

  if (v11 != [textView allowPollSuggestions])
  {
    conversation2 = [(CKMessageEntryView *)self conversation];
    v13 = [(CKMessageEntryView *)self _serviceForEntryViewForConversation:conversation2];
    __ck_entryViewDisplayName = [v13 __ck_entryViewDisplayName];

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
        v22 = __ck_entryViewDisplayName;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "[Polls] Changing Allow Poll Suggestions to %@ (Existing Polls Payload? %@ Conversation supports Polls? %@ Service name: %@)", v18, 0x2Au);
      }
    }

    [textView setAllowPollSuggestions:{v11, *v18}];
  }
}

- (void)setCharacterCountHidden:(BOOL)hidden
{
  if (self->_characterCountHidden != hidden)
  {
    self->_characterCountHidden = hidden;
    if ([(CKMessageEntryView *)self shouldShowCharacterCount])
    {

      [(CKMessageEntryView *)self setNeedsLayout];
    }
  }
}

- (BOOL)isInPencilMode
{
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];
  if ([textView isInPencilMode])
  {
    isInPencilMode = 1;
  }

  else
  {
    subjectView = [contentView subjectView];
    isInPencilMode = [subjectView isInPencilMode];
  }

  return isInPencilMode;
}

- (BOOL)isRecording
{
  recorder = [(CKMessageEntryView *)self recorder];
  isRecording = [recorder isRecording];

  return isRecording;
}

- (BOOL)hasRecording
{
  audioComposition = [(CKMessageEntryView *)self audioComposition];
  v3 = audioComposition != 0;

  return v3;
}

- (id)_currentInputDelegate
{
  contentView = [(CKMessageEntryView *)self contentView];
  activeView = [contentView activeView];

  delegate = [(CKMessageEntryView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    textViewOnscreenWithEntryView = [delegate textViewOnscreenWithEntryView];
    if ([textViewOnscreenWithEntryView isFirstResponder])
    {
      v7 = textViewOnscreenWithEntryView;

      activeView = v7;
    }
  }

  return activeView;
}

- (void)setShouldBlurForMessageEditing:(BOOL)editing
{
  if (self->_shouldBlurForMessageEditing == editing)
  {
    return;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  self->_shouldBlurForMessageEditing = editing;
  if (!editing)
  {
    [(CKMessageEntryView *)self _animateMessageEditingBlurOverlayViewOut];
    [(CKMessageEntryView *)self setUserInteractionEnabled:1];
    audioButton = [(CKMessageEntryView *)self audioButton];
    button = [audioButton button];
    [button setUserInteractionEnabled:1];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(button) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (button)
    {
      glassSendButton = [(CKMessageEntryView *)self glassSendButton];
      sendButton = glassSendButton;
      v15 = 1;
      goto LABEL_7;
    }

    sendButton = [(CKMessageEntryView *)self sendButton];
    button2 = [sendButton button];
    v20 = button2;
    v21 = 1;
LABEL_10:
    [button2 setUserInteractionEnabled:{v21, v6, v22, v23, v24, v7}];

    goto LABEL_11;
  }

  [(CKMessageEntryView *)self _animateMessageEditingBlurOverlayViewIn];
  [(CKMessageEntryView *)self setUserInteractionEnabled:0];
  audioButton2 = [(CKMessageEntryView *)self audioButton];
  button3 = [audioButton2 button];
  [button3 setUserInteractionEnabled:0];

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(button3) = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (!button3)
  {
    sendButton = [(CKMessageEntryView *)self sendButton];
    button2 = [sendButton button];
    v20 = button2;
    v21 = 0;
    goto LABEL_10;
  }

  glassSendButton = [(CKMessageEntryView *)self glassSendButton];
  sendButton = glassSendButton;
  v15 = 0;
LABEL_7:
  [glassSendButton setUserInteractionEnabled:{v15, v6, v22, v23, v24, v7}];
LABEL_11:

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)_animateMessageEditingBlurOverlayViewIn
{
  messageEditingBlurOverlayView = [(CKMessageEntryView *)self messageEditingBlurOverlayView];
  [messageEditingBlurOverlayView setHidden:0];

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
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];

  [textView textContainerInset];
  v6 = v5;
  v8 = v7;
  [(CKMessageEntryView *)self rangeOfTappedMention];
  if (v9)
  {
    textLayoutManager = [textView textLayoutManager];
    documentRange = [textLayoutManager documentRange];
    location = [documentRange location];
    v13 = [textLayoutManager locationFromLocation:location withOffset:{-[CKMessageEntryView rangeOfTappedMention](self, "rangeOfTappedMention")}];

    [(CKMessageEntryView *)self rangeOfTappedMention];
    v15 = [textLayoutManager locationFromLocation:v13 withOffset:v14];
    v16 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v13 endLocation:v15];
    documentRange2 = [textLayoutManager documentRange];
    [textLayoutManager ensureLayoutForRange:documentRange2];

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
    [textLayoutManager enumerateTextSegmentsInRange:v16 type:0 options:0 usingBlock:v30];
    [textView convertRect:self toView:{v8 + v32[4], v6 + v32[5], v32[6], v32[7]}];
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

- (id)pasteBoardTextFromComposition:(id)composition
{
  compositionCopy = composition;
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];

  text = [compositionCopy text];

  v8 = [textView attributedTextForCompositionText:text];

  return v8;
}

- (void)setComposingRecipient:(BOOL)recipient
{
  if (self->_composingRecipient != recipient)
  {
    self->_composingRecipient = recipient;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setFailedRecipients:(BOOL)recipients
{
  if (self->_failedRecipients != recipients)
  {
    self->_failedRecipients = recipients;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setUnreachableEmergencyRecipient:(BOOL)recipient
{
  if (self->_unreachableEmergencyRecipient != recipient)
  {
    self->_unreachableEmergencyRecipient = recipient;
    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)setAudioComposition:(id)composition
{
  v30[1] = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  audioController = [(CKMessageEntryView *)self audioController];
  isPlaying = [audioController isPlaying];

  if ((isPlaying & 1) == 0)
  {
    if (self->_audioComposition != compositionCopy)
    {
      objc_storeStrong(&self->_audioComposition, composition);
    }

    if ([(CKComposition *)compositionCopy isAudioComposition])
    {
      mediaObjects = [(CKComposition *)compositionCopy mediaObjects];
      firstObject = [mediaObjects firstObject];

      if (firstObject)
      {
        [(CKMessageEntryView *)self setAudioController:0];
        v10 = [CKAudioController alloc];
        v30[0] = firstObject;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        conversation = [(CKMessageEntryView *)self conversation];
        v13 = [(CKAudioController *)v10 initWithMediaObjects:v11 conversation:conversation];

        [(CKAudioController *)v13 setDelegate:self];
        [(CKMessageEntryView *)self setAudioController:v13];
        audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
        LODWORD(v11) = audioRecordingView == 0;

        if (v11)
        {
          [(CKMessageEntryView *)self configureForDisplayMode:3];
          audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
          [audioRecordingView2 setState:2];

          audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
          [audioRecordingView3 setPlaybackCurrentTime:NAN];

          [firstObject duration];
          v18 = v17;
          audioRecordingView4 = [(CKMessageEntryView *)self audioRecordingView];
          [audioRecordingView4 setPlaybackDuration:v18];

          audioRecordingView5 = [(CKMessageEntryView *)self audioRecordingView];
          powerLevels = [firstObject powerLevels];
          [audioRecordingView5 setWithIntensities:powerLevels];

          recorder = [(CKMessageEntryView *)self recorder];
          [recorder resetState];

          recorder2 = [(CKMessageEntryView *)self recorder];
          [recorder2 setPaused:1];

          recorder3 = [(CKMessageEntryView *)self recorder];
          [recorder3 setTotalPacketsCount:{objc_msgSend(firstObject, "totalPacketsCount")}];

          recorder4 = [(CKMessageEntryView *)self recorder];
          temporaryFileURL = [firstObject temporaryFileURL];
          [recorder4 setFileURL:temporaryFileURL];
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
      delegate = [(CKMessageEntryView *)self delegate];
      [delegate messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
    }
  }
}

- (BOOL)messageEntryContentView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v20[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  textCopy = text;
  if (![(CKMessageEntryView *)self audioRecordingIsInEntryView])
  {
    delegate = [(CKMessageEntryView *)self delegate];
    if (!delegate || (-[CKMessageEntryView delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696B098] valueWithRange:{location, length}], v14 = objc_claimAutoreleasedReturnValue(), v20[0] = v14, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "messageEntryView:shouldChangeTextInRanges:replacementText:", self, v15, textCopy), v15, v14, v13, delegate, (v16 & 1) != 0))
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

- (BOOL)messageEntryContentViewShouldResignFirstResponder:(id)responder
{
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  inputDelegate2 = [(CKMessageEntryView *)self inputDelegate];
  v7 = [inputDelegate2 messageEntryViewShouldResignFirstResponder:self];

  return v7;
}

- (BOOL)messageEntryContentView:(id)view canPerformDictationAction:(id)action
{
  v5 = [action isEqualToString:@"UITextInputDictationActionTypeSend"];
  if (v5)
  {

    LOBYTE(v5) = [(CKMessageEntryView *)self _canSend];
  }

  return v5;
}

- (unint64_t)numberOfSuggestionsInSuggestionView:(id)view forSection:(unint64_t)section
{
  viewCopy = view;
  mentionSuggestionView = [(CKMessageEntryView *)self mentionSuggestionView];

  if (mentionSuggestionView != viewCopy)
  {
    return 0;
  }

  currentMentionSuggestions = [(CKMessageEntryView *)self currentMentionSuggestions];
  v9 = [currentMentionSuggestions count];

  return v9;
}

- (id)suggestionView:(id)view entityAtIndex:(unint64_t)index
{
  viewCopy = view;
  mentionSuggestionView = [(CKMessageEntryView *)self mentionSuggestionView];

  if (mentionSuggestionView != viewCopy)
  {
    v8 = 0;
LABEL_5:

    goto LABEL_6;
  }

  currentMentionSuggestions = [(CKMessageEntryView *)self currentMentionSuggestions];
  v10 = [currentMentionSuggestions count];

  if (v10 > index)
  {
    mentionSuggestionView = [(CKMessageEntryView *)self currentMentionSuggestions];
    v8 = [mentionSuggestionView objectAtIndex:index];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)suggestionView:(id)view indexPathOfEntityWithIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__43;
  v19 = __Block_byref_object_dispose__43;
  v20 = 0;
  mentionSuggestionView = [(CKMessageEntryView *)self mentionSuggestionView];

  if (mentionSuggestionView == viewCopy)
  {
    currentMentionSuggestions = [(CKMessageEntryView *)self currentMentionSuggestions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__CKMessageEntryView_suggestionView_indexPathOfEntityWithIdentifier___block_invoke;
    v12[3] = &unk_1E72F1440;
    v13 = identifierCopy;
    v14 = &v15;
    [currentMentionSuggestions enumerateObjectsUsingBlock:v12];
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

- (void)messageEntryContentView:(id)view willAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryView *)self delegate];
  v7 = [delegate parentViewControllerForPluginViewControllerInMessageEntryView:self];

  [v7 addChildViewController:hierarchyCopy];
}

- (void)messageEntryContentView:(id)view didAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryView *)self delegate];
  v7 = [delegate parentViewControllerForPluginViewControllerInMessageEntryView:self];

  [hierarchyCopy didMoveToParentViewController:v7];
}

- (double)balloonMaxWidthForMessageEntryRichTextView:(id)view
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  delegate2 = [(CKMessageEntryView *)self delegate];
  [delegate2 balloonMaxWidthForMessageEntryView:self];
  v8 = v7;

  return v8;
}

- (BOOL)messageEntryContentViewShouldAllowLinkCustomization:(id)customization
{
  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  v5 = [sendingService supportsCapability:*MEMORY[0x1E69A79F0]];

  return v5;
}

- (void)messageEntryContentViewWillPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewWillPresentCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewDidPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewDidPresentCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewWillDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewWillDismissCustomizationPicker:self];
  }
}

- (void)messageEntryContentViewDidDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewDidDismissCustomizationPicker:self];
  }
}

- (id)gradientReferenceViewForMessageEntryContentView:(id)view
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = [delegate gradientReferenceViewForMessageEntryView:self];

  return v5;
}

- (void)messageEntryContentView:(id)view updatePluginSendEnablementTo:(BOOL)to
{
  toCopy = to;
  if ([(CKMessageEntryView *)self pluginSendingEnabled]!= to)
  {
    [(CKMessageEntryView *)self setPluginSendingEnabled:toCopy];

    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)messageEntryContentViewCancelWasTapped:(id)tapped shelfPluginPayload:(id)payload
{
  payloadCopy = payload;
  pluginBundleID = [payloadCopy pluginBundleID];
  if ([pluginBundleID length])
  {
    pluginBundleID2 = [payloadCopy pluginBundleID];
    v7 = [pluginBundleID2 rangeOfString:*MEMORY[0x1E69A69F0]];

    v8 = payloadCopy;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v9 = +[CKBalloonPluginManager sharedInstance];
    pluginBundleID3 = [payloadCopy pluginBundleID];
    pluginBundleID = [v9 viewControllerForPluginIdentifier:pluginBundleID3];

    [payloadCopy setLiveEditableInEntryView:0];
    if (objc_opt_respondsToSelector())
    {
      conversation = [(CKMessageEntryView *)self conversation];
      senderIdentifier = [conversation senderIdentifier];
      [pluginBundleID setSender:senderIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      conversation2 = [(CKMessageEntryView *)self conversation];
      recipientStrings = [conversation2 recipientStrings];

      [pluginBundleID setRecipients:recipientStrings];
    }

    if (objc_opt_respondsToSelector())
    {
      [pluginBundleID didCancelSendingPluginPayload:payloadCopy];
    }

    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    associatedMessageGUID = [payloadCopy associatedMessageGUID];
    pluginBundleID4 = [payloadCopy pluginBundleID];
    v18 = [mEMORY[0x1E69A5AD0] existingDataSourceForMessageGUID:associatedMessageGUID bundleID:pluginBundleID4];

    pluginPayload = [v18 pluginPayload];
    [pluginPayload setLiveEditableInEntryView:0];

    [v18 endShowingLastConsumedBreadcrumb];
    if ([(CKMessageEntryView *)self isKeyboardVisible])
    {
      contentView = [(CKMessageEntryView *)self contentView];
      textView = [contentView textView];
      [textView becomeFirstResponder];
    }
  }

  v8 = payloadCopy;
LABEL_13:
}

- (void)messageEntryContentView:(id)view didRequestGenerativeContentForImageURL:(id)l
{
  viewCopy = view;
  lCopy = l;
  objc_initWeak(&location, self);
  if (lCopy)
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
      v13 = lCopy;
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

- (void)messageEntryContentView:(id)view didStagePluginPayload:(id)payload
{
  payloadCopy = payload;
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryView:self didInsertPluginPayload:payloadCopy];
}

- (void)messageEntryContentViewDidChange:(id)change isTextChange:(BOOL)textChange isShelfChange:(BOOL)shelfChange
{
  shelfChangeCopy = shelfChange;
  textChangeCopy = textChange;
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewDidChange:self isTextChange:textChangeCopy isShelfChange:shelfChangeCopy isTranslationChange:0];
}

- (void)messageEntryContentViewTranslationDidChange:(id)change
{
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:1];
}

- (void)messageEntryContentViewShelfDidChange:(id)change
{
  [(CKMessageEntryView *)self handleContentViewChangeWithCompletion:0];
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = [delegate messageEntryViewIsSendingMessage:self];

  if ((v5 & 1) == 0)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewDidChange:self isTextChange:0 isShelfChange:1 isTranslationChange:0];
  }
}

- (void)messageEntryContentViewWantsSendLaterPickerPresented:(id)presented
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewWantsSendLaterPickerPresented:self];
}

- (void)messageEntryContentViewSendLaterPluginInfoUpdated:(id)updated
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewSendLaterPluginInfoUpdated:self];

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)messageEntryContentViewSendLaterContentsUpdated:(id)updated
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewSendLaterContentsUpdated:self];
}

- (void)handleContentViewChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  [(CKMessageEntryView *)self setAudioComposition:0];
  [(CKMessageEntryView *)self configureForDisplayMode:1];
  conversation = [(CKMessageEntryView *)self conversation];
  composition = [(CKMessageEntryView *)self composition];
  if ([(CKMessageEntryView *)self shouldShowCharacterCount])
  {
    if (![conversation shouldShowCharacterCount] || !objc_msgSend(composition, "isTextOnly") || (objc_msgSend(composition, "subject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
    {
      [(CKMessageEntryView *)self setCharacterCountHidden:1];
LABEL_8:
      [(CKMessageEntryView *)self setNeedsLayout];
      goto LABEL_9;
    }

    hasContent = [composition hasContent];
    v10 = hasContent;
    [(CKMessageEntryView *)self setCharacterCountHidden:hasContent ^ 1u];
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

  audioComposition = [(CKMessageEntryView *)self audioComposition];
  v3 = audioComposition != 0;

  return v3;
}

- (BOOL)messageEntryContentViewShouldBeginEditing:(id)editing
{
  if ([(CKMessageEntryView *)self audioRecordingIsInEntryView])
  {
    return 0;
  }

  delegate = [(CKMessageEntryView *)self delegate];
  v6 = [delegate messageEntryViewShouldBeginEditing:self];

  return v6;
}

- (CGSize)messageEntryContentViewMaxShelfPluginViewSize:(id)size
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewMaxShelfPluginViewSize:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)messageEntryContentViewDidBeginEditing:(id)editing wasAlreadyActive:(BOOL)active
{
  delegate = [(CKMessageEntryView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewDidBeginEditing:self];
  }

  if (!active)
  {
    delegate3 = [(CKMessageEntryView *)self delegate];
    [delegate3 messageEntryViewDidBeginEditingNotAlreadyActive:self];

    [(CKMessageEntryView *)self updateEntryView];
  }
}

- (void)messageEntryContentViewDidEndEditing:(id)editing
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewDidEndEditing:self];
}

- (void)messageEntryContentViewDidChangePencilMode:(id)mode
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewDidChangePencilMode:self];
}

- (BOOL)messageEntryContentView:(id)view shouldInsertMediaObjects:(id)objects
{
  objectsCopy = objects;
  delegate = [(CKMessageEntryView *)self delegate];
  LOBYTE(self) = [delegate messageEntryView:self shouldInsertMediaObjects:objectsCopy];

  return self;
}

- (void)messageEntryContentView:(id)view didTapMediaObject:(id)object
{
  objectCopy = object;
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryView:self didTapMediaObject:objectCopy];
}

- (void)messageEntryContentViewWasTapped:(id)tapped isLongPress:(BOOL)press
{
  v5 = [(CKMessageEntryView *)self inputDelegate:tapped];
  [v5 messageEntryViewInputDidTakeFocus:self];
}

- (void)messageEntryContentViewDidTapHandwritingKey:(id)key
{
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  [inputDelegate messageEntryViewHandwritingButtonHit:self];
}

- (void)messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)progress
{
  progressCopy = progress;
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewTextFormattingAnimationsOptionsPresentationInProgress:progressCopy];
}

- (void)messageEntryContentView:(id)view didReceiveInputSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  [inputDelegate messageEntryView:self didReceiveInputSuggestion:suggestionCopy];
}

- (BOOL)messageEntryContentViewShouldBeDisabled:(id)disabled
{
  selfCopy = self;
  delegate = [(CKMessageEntryView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryViewShouldBeDisabled:selfCopy];

  return selfCopy;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  swipeGestureRecognizer = [(CKMessageEntryView *)self swipeGestureRecognizer];

  if (swipeGestureRecognizer == recognizerCopy)
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

- (void)_handlePlusButtonTouchInside:(id)inside
{
  composition = [(CKMessageEntryView *)self composition];
  hasContent = [composition hasContent];

  if (hasContent)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(CKMessageEntryView *)self _updateSendMenuPresentationState:v6];
}

- (void)plusButtonTouchDown:(id)down
{
  downCopy = down;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchDown:];
  }

  [(CKMessageEntryView *)self _handlePlusButtonTouchInside:downCopy];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchDownInsidePlusButton:downCopy];
  }

  if (!self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 1;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionStarted];
  }
}

- (void)plusButtonTouchUpOutside:(id)outside
{
  outsideCopy = outside;
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
    [v8 messageEntryView:self touchUpOutsidePlusButton:outsideCopy];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)plusButtonTouchCancel:(id)cancel
{
  cancelCopy = cancel;
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
    [v8 messageEntryView:self touchCancelForPlusButton:cancelCopy];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionCancelled];
  }
}

- (void)plusButtonTouchDragEnter:(id)enter
{
  enterCopy = enter;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonTouchDragEnter:];
  }

  [(CKMessageEntryView *)self _handlePlusButtonTouchInside:enterCopy];
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_inputDelegate);
    [v8 messageEntryView:self touchDragEnterForPlusButton:enterCopy];
  }

  if (!self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 1;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionStarted];
  }
}

- (void)plusButtonTouchDragExit:(id)exit
{
  exitCopy = exit;
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
    [v8 messageEntryView:self touchDragExitForPlusButton:exitCopy];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)didSelectPlusButton:(id)button
{
  buttonCopy = button;
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
    [v8 messageEntryView:self didSelectPlusButton:buttonCopy];
  }

  if (self->_plusButtonFeedbackGeneratorIsActive)
  {
    self->_plusButtonFeedbackGeneratorIsActive = 0;
    [(UISelectionFeedbackGenerator *)self->_plusButtonFeedbackGenerator userInteractionEnded];
  }
}

- (void)plusButtonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CKMessageEntryView plusButtonLongPressed:];
  }

  state = [pressedCopy state];
  if (state == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) != 0 && (v9 = objc_loadWeakRetained(&self->_inputDelegate), v10 = [v9 shouldLaunchPhotosAppForPlusButtonLongPressInMessageEntryView:self], v9, !v10))
    {
      view = IMLogHandleForCategory();
      if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
      {
        [CKMessageEntryView plusButtonLongPressed:];
      }
    }

    else
    {
      view = [pressedCopy view];
      v12 = objc_loadWeakRetained(&self->_inputDelegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_inputDelegate);
        [v14 messageEntryView:self didLongPressPlusButton:view];
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
    v15 = state;
    view = IMLogHandleForCategory();
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
    {
      [(CKMessageEntryView *)v15 plusButtonLongPressed:view];
    }
  }
}

- (void)dictationButtonTapped:(id)tapped
{
  v7 = objc_alloc_init(MEMORY[0x1E69DC950]);
  [v7 setInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonInMessagesTextField"];
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];
  [mEMORY[0x1E69DCBF0] toggleDictationForResponder:textView WithOptions:v7];
}

- (void)sendMenuPopoverMetricsDidChange:(id)change
{
  changeCopy = change;
  delegate = [(CKMessageEntryView *)self delegate];
  v6 = [delegate messageEntryViewActiveSendMenuPresentation:self];

  if (v6)
  {
    newPopoverLayoutMetrics = [v6 newPopoverLayoutMetrics];
    v8 = newPopoverLayoutMetrics;
    if (newPopoverLayoutMetrics)
    {
      state = [newPopoverLayoutMetrics state];
      if (changeCopy && [changeCopy state] == state || (state - 1) >= 2)
      {
        [(CKMessageEntryView *)self setNeedsLayout];
      }

      else
      {
        [(CKMessageEntryView *)self layoutIfNeeded];
        v10 = +[CKUIBehavior sharedBehaviors];
        entryViewSendMenuContentViewWidthAnimator = [v10 entryViewSendMenuContentViewWidthAnimator];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __54__CKMessageEntryView_sendMenuPopoverMetricsDidChange___block_invoke;
        v12[3] = &unk_1E72EBA18;
        v12[4] = self;
        [entryViewSendMenuContentViewWidthAnimator addAnimations:v12];
        [entryViewSendMenuContentViewWidthAnimator startAnimation];
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

- (void)keyCommandSend:(id)send
{
  sendCopy = send;
  if ([(CKMessageEntryView *)self sendButtonEnabled]&& [(CKMessageEntryView *)self shouldAllowSendWhenSendButtonDisabled])
  {
    [(CKMessageEntryView *)self touchUpInsideSendButton:sendCopy];
  }
}

- (void)touchUpInsideSendButton:(id)button
{
  buttonCopy = button;
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKMessageEntryViewSendButtonPressedNotification" object:0];

  contentView = [(CKMessageEntryView *)self contentView];
  [contentView collapseTextFieldsIfInPencilMode];

  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewSendButtonHit:self];

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard updateLayout];

  if ([(CKMessageEntryView *)self _isRunningInMVS])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled)
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
  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 isSendButtonEnabledOnPlatform])
  {
    sendButtonEnabled = [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    sendButtonEnabled = [v7 isSendButtonEnabledOnPlatform];
  }

  v8 = ![(CKMessageEntryView *)self shouldRecordForService:sendingService];
  return sendButtonEnabled & v8;
}

- (void)conversationPreferredServiceChanged:(id)changed
{
  [(CKMessageEntryView *)self updateEntryView];
  [(CKMessageEntryView *)self updateAppsMenu];
  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView setService:sendingService];
}

- (BOOL)shouldRecordForService:(id)service
{
  contentView = [(CKMessageEntryView *)self contentView];
  pluginView = [contentView pluginView];

  if (pluginView)
  {
    return 0;
  }

  contentView2 = [(CKMessageEntryView *)self contentView];
  composition = [contentView2 composition];
  hasContent = [composition hasContent];

  return hasContent ^ 1;
}

- (BOOL)_shouldMarkForLayoutAfterPropertyUpdate
{
  if (+[CKMessageEntryContentView _platformNeedsConservativeLayoutUpdates])
  {
    return 1;
  }

  contentView = [(CKMessageEntryView *)self contentView];
  if (([contentView shouldShowSubject] & 1) != 0 || (objc_msgSend(contentView, "shouldShowPlugin") & 1) != 0 || -[CKMessageEntryView displayMode](self, "displayMode") != 1 || -[CKMessageEntryView isRecording](self, "isRecording") || -[CKMessageEntryView hasRecording](self, "hasRecording") || -[CKMessageEntryView isInPencilMode](self, "isInPencilMode"))
  {
    v3 = 1;
  }

  else
  {
    sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];
    v3 = sendLaterPluginInfo != 0;
  }

  return v3;
}

- (id)_serviceForEntryViewForConversation:(id)conversation
{
  conversationCopy = conversation;
  sendingService = [conversationCopy sendingService];
  chat = [conversationCopy chat];
  isInterworking = [chat isInterworking];

  if (isInterworking)
  {
    v7 = MEMORY[0x1E69A5C90];
    chat2 = [conversationCopy chat];
    interworkingService = [chat2 interworkingService];
    v10 = [v7 serviceWithName:interworkingService];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = sendingService;
    }

    v13 = v12;

    sendingService = v13;
  }

  return sendingService;
}

- (id)_placeholderTextForConversation:(id)conversation
{
  conversationCopy = conversation;
  if (![conversationCopy recipientCount])
  {
    __ck_entryViewDisplayName = &stru_1F04268F8;
    goto LABEL_10;
  }

  chat = [conversationCopy chat];
  isStewieEmergencyChat = [chat isStewieEmergencyChat];

  if (isStewieEmergencyChat)
  {
    v7 = CKFrameworkBundle();
    mEMORY[0x1E69A60F0] = v7;
    v9 = @"STEWIE_EMERGENCY_TEXT_ENTRY_PLACEHOLDER";
    v10 = @"ChatKit-SYDROB_FEATURES";
LABEL_7:
    v14 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:v10];
LABEL_8:
    __ck_entryViewDisplayName = v14;
LABEL_9:

    goto LABEL_10;
  }

  chat2 = [conversationCopy chat];
  shouldDisplayOffGridModeStatus = [chat2 shouldDisplayOffGridModeStatus];

  if (shouldDisplayOffGridModeStatus)
  {
    v7 = CKFrameworkBundle();
    mEMORY[0x1E69A60F0] = v7;
    v9 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
    v10 = @"ChatKit-CarrierPigeon";
    goto LABEL_7;
  }

  chat3 = [conversationCopy chat];
  isStewieRoadsideChat = [chat3 isStewieRoadsideChat];

  if (isStewieRoadsideChat)
  {
    mEMORY[0x1E69A5B00] = [MEMORY[0x1E69A5B00] sharedInstance];
    chat4 = [conversationCopy chat];
    chatIdentifier = [chat4 chatIdentifier];
    mEMORY[0x1E69A60F0] = [mEMORY[0x1E69A5B00] roadsideProviderNameForChatIdentifier:chatIdentifier];

    v21 = MEMORY[0x1E696AEC0];
    v22 = CKFrameworkBundle();
    v23 = [v22 localizedStringForKey:@"STEWIE_ROADSIDE_TEXT_ENTRY_PLACEHOLDER" value:&stru_1F04268F8 table:@"ChatKit-Avocet"];
    __ck_entryViewDisplayName = [v21 localizedStringWithFormat:v23, mEMORY[0x1E69A60F0]];

    goto LABEL_9;
  }

  if ([conversationCopy isMapKitBusinessConversation])
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = CKFrameworkBundle();
    v26 = [v25 localizedStringForKey:@"BUSINESS_CHAT_TO" value:&stru_1F04268F8 table:@"ChatKit"];
    recipient = [conversationCopy recipient];
    name = [recipient name];
    mEMORY[0x1E69A60F0] = [v24 stringWithFormat:v26, name];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v31 = @"\u200F";
    }

    else
    {
      v31 = @"\u200E";
    }

    v14 = [(__CFString *)v31 stringByAppendingString:mEMORY[0x1E69A60F0]];
    goto LABEL_8;
  }

  if (CKMessageEntryViewStyleIsForReply([(CKMessageEntryView *)self style]))
  {
    v7 = CKFrameworkBundle();
    mEMORY[0x1E69A60F0] = v7;
    v9 = @"INLINE_REPLY_TEXT_ENTRY_PLACEHOLDER";
LABEL_24:
    v10 = @"ChatKit";
    goto LABEL_7;
  }

  sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (sendLaterPluginInfo)
  {
    v7 = CKFrameworkBundle();
    mEMORY[0x1E69A60F0] = v7;
    v9 = @"SEND_LATER_TEXT_ENTRY_PLACEHOLDER";
    goto LABEL_24;
  }

  v33 = [(CKMessageEntryView *)self _serviceForEntryViewForConversation:conversationCopy];
  __ck_entryViewDisplayName = [v33 __ck_entryViewDisplayName];

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (![mEMORY[0x1E69A60F0] isInternalInstall])
  {
    goto LABEL_9;
  }

  v34 = IMGetCachedDomainBoolForKey();

  if (v34 && [conversationCopy supportsEncryption])
  {
    v14 = [(__CFString *)__ck_entryViewDisplayName stringByAppendingString:@" Encrypted"];
    mEMORY[0x1E69A60F0] = __ck_entryViewDisplayName;
    goto LABEL_8;
  }

LABEL_10:

  return __ck_entryViewDisplayName;
}

- (void)_contactLimitsChanged:(id)changed
{
  changedCopy = changed;
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
  delegate = [(CKMessageEntryView *)self delegate];
  v3 = [delegate inputContextHistoryForMessageEntryView:self];
  contentView = [(CKMessageEntryView *)self contentView];
  textView = [contentView textView];

  inputContextHistory = [textView inputContextHistory];
  if (v3 != inputContextHistory)
  {
    [textView setInputContextHistory:v3];
    activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
    [activeKeyboard responseContextDidChange];
  }
}

- (char)sendButtonColor
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryView *)self glassSendButton];
  }

  else
  {
    [(CKMessageEntryView *)self sendButton];
  }
  v5 = ;
  ckTintColor = [v5 ckTintColor];

  return ckTintColor;
}

- (BOOL)isSendButtonEnabled
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {

    return [(CKMessageEntryView *)self sendButtonEnabled];
  }

  else
  {
    sendButton = [(CKMessageEntryView *)self sendButton];
    isEnabled = [sendButton isEnabled];

    return isEnabled;
  }
}

- (BOOL)_isExceedingByteLimitForService:(id)service
{
  v25 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  conversation = [(CKMessageEntryView *)self conversation];
  chat = [conversation chat];
  shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];

  if (shouldDisplayOffGridModeStatus)
  {
    iMessageLiteService = [MEMORY[0x1E69A5C90] iMessageLiteService];

    serviceCopy = iMessageLiteService;
  }

  serviceProperties = [serviceCopy serviceProperties];
  v10 = [serviceProperties valueForKey:*MEMORY[0x1E69A7B30]];
  intValue = [v10 intValue];

  if (intValue < 1)
  {
    goto LABEL_11;
  }

  composition = [(CKMessageEntryView *)self composition];
  text = [composition text];
  string = [text string];
  v15 = intValue;

  if ([string lengthOfBytesUsingEncoding:4] <= intValue)
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
      name = [serviceCopy name];
      v21 = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = name;
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
  isSendButtonEnabledOnPlatform = [v3 isSendButtonEnabledOnPlatform];

  result = 1;
  if ((isSendButtonEnabledOnPlatform & 1) == 0)
  {
    conversation = [(CKMessageEntryView *)self conversation];
    chat = [conversation chat];
    lastFinishedMessage = [chat lastFinishedMessage];

    if (!lastFinishedMessage && ([(CKMessageEntryView *)self hasFailedRecipients]|| [(CKMessageEntryView *)self hasUnreachableEmergencyRecipient]))
    {
      return 0;
    }
  }

  return result;
}

- (void)_swipeDownGestureRecognized:(id)recognized
{
  delegate = [(CKMessageEntryView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 messageEntryViewSwipeDownGestureRecognized:self];
  }
}

- (void)textEffectsWindowOffsetDidChange:(id)change
{
  [(CKMessageEntryView *)self frame];

  [(CKMessageEntryView *)self setFrame:?];
}

- (void)sendCurrentLocationMessage
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate sendCurrentLocationMessage:self];
}

- (void)_dictationAvailabilityDidChange
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  enabledDictationLanguages = [mEMORY[0x1E69DCBF0] enabledDictationLanguages];
  -[CKMessageEntryView setDictationEnabledForLanguage:](self, "setDictationEnabledForLanguage:", [enabledDictationLanguages count] != 0);

  [(CKMessageEntryView *)self updateEntryView];
}

- (void)appSelectionInterfaceSelectedItem:(id)item
{
  itemCopy = item;
  inputDelegate = [(CKMessageEntryView *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    inputDelegate2 = [(CKMessageEntryView *)self inputDelegate];
    [inputDelegate2 messageEntryViewSelectedAppMenuItem:itemCopy];
  }
}

- (void)_showVisionAppsMenu
{
  delegate = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    plusButton = [(CKMessageEntryView *)self plusButton];
    button = [plusButton button];
    [delegate2 messageEntryViewRequestsVisionAppMenu:self fromButton:button];
  }
}

- (void)_trackAudioMessageRecordingStarted
{
  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7318]];
}

- (void)_trackAudioMessageSentWithComposition:(id)composition
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (composition)
  {
    v3 = MEMORY[0x1E69A8168];
    compositionCopy = composition;
    sharedInstance = [v3 sharedInstance];
    [sharedInstance trackEvent:*MEMORY[0x1E69A7320]];

    mediaObjects = [compositionCopy mediaObjects];

    firstObject = [mediaObjects firstObject];

    if (firstObject)
    {
      [firstObject duration];
      v9 = v8;
      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      v11 = *MEMORY[0x1E69A7328];
      v14 = @"AudioMessageDuration";
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v15[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [mEMORY[0x1E69A8168] trackEvent:v11 withDictionary:v13];
    }
  }
}

- (void)startRecordingForRaiseGesture
{
  recorder = [(CKMessageEntryView *)self recorder];
  audioComposition = [(CKMessageEntryView *)self audioComposition];

  if (audioComposition)
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
    conversation = [(CKMessageEntryView *)self conversation];
    sendingService = [conversation sendingService];
    if ([(CKMessageEntryView *)self shouldRecordForService:sendingService])
    {
      isRecording = [recorder isRecording];

      if ((isRecording & 1) == 0)
      {
        [(CKMessageEntryView *)self setRecordingStartedFromRaiseGesture:1];
        [recorder startRecordingForRaiseGesture:1 shouldPlaySound:0];
      }
    }

    else
    {
    }
  }
}

- (void)stopRecordingForRaiseGestureWithFailure:(BOOL)failure
{
  recorder = [(CKMessageEntryView *)self recorder];
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
  if (recorder)
  {
    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

    if (audioRecordingView)
    {
      audioComposition = [(CKMessageEntryView *)self audioComposition];

      if (audioComposition)
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
        recorder2 = [(CKMessageEntryView *)self recorder];
        [recorder2 setPaused:1];

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
        failureCopy = failure;
        [recorder stopRecordingAndPlaySound:1 completion:v13];
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
  recorder = [(CKMessageEntryView *)self recorder];
  isRecording = [recorder isRecording];

  if (isRecording)
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    [recorder2 cancelRecording];
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
  delegate = [(CKMessageEntryView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    [delegate2 disableRotationWhileRecordingAudioMessage];
  }
}

- (void)audioRecorderDidStartRecording:(id)recording
{
  [(CKMessageEntryView *)self disableRotationWhileRecordingAudioMessage];
  [(CKMessageEntryView *)self _trackAudioMessageRecordingStarted];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CKMessageEntryView_audioRecorderDidStartRecording___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v8 options:0 animations:0.3 completion:0.0];
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView setState:1];

  audioComposition = [(CKMessageEntryView *)self audioComposition];
  if (!audioComposition)
  {
    inputDelegate = [(CKMessageEntryView *)self inputDelegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    audioComposition = [(CKMessageEntryView *)self inputDelegate];
    [audioComposition messageEntryViewDidStageAudioRecordingUI:self];
  }
}

uint64_t __53__CKMessageEntryView_audioRecorderDidStartRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) configureForDisplayMode:2];
  [*(a1 + 32) setEntryViewSmoothnessForMorphingAppearance];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)audioRecorderRecordingDidChange:(id)change
{
  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewRecordingDidChange:self];
}

- (void)audioRecorderRecordingDidFail:(id)fail
{
  [(CKMessageEntryView *)self configureForDisplayMode:1];

  [(CKMessageEntryView *)self showHintWithReason:2];
}

- (void)audioRecorderDidUpdateAveragePower:(float)power
{
  if ([(CKMessageEntryView *)self recordingStartedFromRaiseGesture])
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 audioRecordingViewMinimumDBLevel];
    v7 = v6;

    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 audioRecordingViewMaximumDBLevel];
    v10 = v9;

    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView addToWaveformWithIntensity:(power - v7) / (v10 - v7)];
  }
}

- (void)_setupAudioMessageRecordingView
{
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (!audioRecordingView)
  {
    v4 = [CKAudioMessageRecordingView alloc];
    contentClipView = [(CKMessageEntryView *)self contentClipView];
    [contentClipView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    conversation = [(CKMessageEntryView *)self conversation];
    sendingService = [conversation sendingService];
    v16 = [(CKAudioMessageRecordingView *)v4 initWithFrame:sendingService service:v7, v9, v11, v13];
    [(CKMessageEntryView *)self setAudioRecordingView:v16];

    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView2 setAlpha:0.0];

    audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView3 setDelegate:self];

    audioRecordingView4 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView4 setupDisplayLink];

    audioRecordingView5 = [(CKMessageEntryView *)self audioRecordingView];
    sendButton = [audioRecordingView5 sendButton];
    [sendButton setEnabled:{-[CKMessageEntryView sendButtonEnabled](self, "sendButtonEnabled")}];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(sendButton) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (sendButton)
    {
      contentClipView2 = [(CKMessageEntryView *)self contentClipView];
      audioRecordingView6 = [(CKMessageEntryView *)self audioRecordingView];
      [contentClipView2 addSubview:audioRecordingView6];

      v25 = [CKGlassCancelAudioRecordingButton alloc];
      plusButton = [(CKMessageEntryView *)self plusButton];
      [plusButton frame];
      v27 = [(CKGlassCancelAudioRecordingButton *)v25 initWithFrame:?];
      [(CKMessageEntryView *)self setCancelAudioRecordingButton:v27];

      cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      [cancelAudioRecordingButton addTarget:self action:sel_audioMessageRecordingViewDidCancel_ forControlEvents:64];

      cancelAudioRecordingButton2 = [(CKMessageEntryView *)self cancelAudioRecordingButton];
      contentClipView3 = [(CKMessageEntryView *)self contentClipView];
      [(CKMessageEntryView *)self insertSubview:cancelAudioRecordingButton2 belowSubview:contentClipView3];
    }

    else
    {
      cancelAudioRecordingButton2 = [(CKMessageEntryView *)self audioRecordingView];
      [(CKMessageEntryView *)self addSubview:cancelAudioRecordingButton2];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __53__CKMessageEntryView__setupAudioMessageRecordingView__block_invoke;
    v32[3] = &unk_1E72EBA18;
    v32[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v32];
    delegate = [(CKMessageEntryView *)self delegate];
    [delegate messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];
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
  composition = [(CKMessageEntryView *)self composition];
  if ([composition hasContent])
  {
    goto LABEL_4;
  }

  audioComposition = [(CKMessageEntryView *)self audioComposition];
  if (audioComposition)
  {

LABEL_4:
LABEL_5:

    [(CKMessageEntryView *)self showHintWithReason:1];
    return;
  }

  sendLaterPluginInfo = [(CKMessageEntryView *)self sendLaterPluginInfo];

  if (sendLaterPluginInfo)
  {
    goto LABEL_5;
  }

  [(CKMessageEntryView *)self startRecording];
}

- (void)audioButtonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  state = [pressedCopy state];
  if ((state - 3) < 2)
  {
    audioMessageButtonTimer = [(CKMessageEntryView *)self audioMessageButtonTimer];

    if (audioMessageButtonTimer)
    {
      [(CKMessageEntryView *)self setShouldUseLinearResizeForAudioMessage:0];
      audioMessageButtonTimer2 = [(CKMessageEntryView *)self audioMessageButtonTimer];
      [audioMessageButtonTimer2 invalidate];

      [(CKMessageEntryView *)self setAudioMessageButtonTimer:0];
      [(CKMessageEntryView *)self cancelAudioMessage];
      [(CKMessageEntryView *)self showHintWithReason:0];
      goto LABEL_11;
    }

    audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
    isStopButtonHighlighted = [audioRecordingView isStopButtonHighlighted];

    if (!isStopButtonHighlighted)
    {
      goto LABEL_11;
    }

    [(CKMessageEntryView *)self setupAudioMessageQuickSendViewAndStopRecording];
    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    v21 = audioRecordingView2;
    v22 = 0;
LABEL_10:
    [audioRecordingView2 setIsStopButtonHighlighted:v22];

    goto LABEL_11;
  }

  if (state == 2)
  {
    audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
    [pressedCopy locationInView:audioRecordingView3];
    v14 = v13;
    v16 = v15;

    audioRecordingView4 = [(CKMessageEntryView *)self audioRecordingView];
    stopButton = [audioRecordingView4 stopButton];
    [stopButton frame];
    v33.x = v14;
    v33.y = v16;
    v19 = CGRectContainsPoint(v34, v33);

    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    v21 = audioRecordingView2;
    v22 = v19;
    goto LABEL_10;
  }

  if (state == 1)
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
    selfCopy = self;
    v8 = v6;
    v30 = v8;
    v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v25 block:0.5];
    [(CKMessageEntryView *)self setAudioMessageButtonTimer:v9, v25, v26, v27, v28, selfCopy];

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

- (void)showHintWithReason:(int64_t)reason
{
  hintLabel = [(CKMessageEntryView *)self hintLabel];
  isHidden = [hintLabel isHidden];

  if (isHidden)
  {
    if (reason <= 3)
    {
      v7 = off_1E72F4870[reason];
      hintLabel2 = [(CKMessageEntryView *)self hintLabel];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
      [hintLabel2 setText:v10];
    }

    [(CKMessageEntryView *)self applyDefaultGlass];
    audioButton = [(CKMessageEntryView *)self audioButton];
    [audioButton setEnabled:0];

    plusButton = [(CKMessageEntryView *)self plusButton];
    button = [plusButton button];
    [button setEnabled:0];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(button) = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (button)
    {
      [(CKMessageEntryView *)self glassSendButton];
    }

    else
    {
      [(CKMessageEntryView *)self sendButton];
    }
    v15 = ;
    [v15 setEnabled:0];

    emojiButton = [(CKMessageEntryView *)self emojiButton];
    [emojiButton setEnabled:0];

    hintLabel3 = [(CKMessageEntryView *)self hintLabel];
    [hintLabel3 setAlpha:0.0];

    hintLabel4 = [(CKMessageEntryView *)self hintLabel];
    [hintLabel4 setHidden:0];

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
  recorder = [(CKMessageEntryView *)self recorder];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      recorder2 = [(CKMessageEntryView *)self recorder];
      recorder3 = [(CKMessageEntryView *)self recorder];
      isRecording = [recorder3 isRecording];
      v8 = @"NO";
      if (isRecording)
      {
        v8 = @"YES";
      }

      v12 = 138412546;
      v13 = recorder2;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Start recording with recorder: %@ isRecordingAlready: %@", &v12, 0x16u);
    }
  }

  conversation = [(CKMessageEntryView *)self conversation];
  sendingService = [conversation sendingService];
  if ([(CKMessageEntryView *)self shouldRecordForService:sendingService])
  {
    isRecording2 = [recorder isRecording];

    if ((isRecording2 & 1) == 0)
    {
      [recorder startRecordingForRaiseGesture:0 shouldPlaySound:0];
    }
  }

  else
  {
  }
}

- (double)powerLevelForAudioMessageRecordingView:(id)view
{
  recorder = [(CKMessageEntryView *)self recorder];
  if (recorder && (v5 = recorder, -[CKMessageEntryView recorder](self, "recorder"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isRecording], v6, v5, (v7 & 1) != 0))
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    [recorder2 averagePower];
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
  recorder = [(CKMessageEntryView *)self recorder];

  if (!recorder)
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

  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (!audioRecordingView)
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

  recorder2 = [(CKMessageEntryView *)self recorder];
  [recorder2 setPaused:1];

  [(CKMessageEntryView *)self stopRecording];
  audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView2 setPlaybackCurrentTime:NAN];
}

- (void)stopRecording
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      recorder = [(CKMessageEntryView *)self recorder];
      recorder2 = [(CKMessageEntryView *)self recorder];
      isRecording = [recorder2 isRecording];
      v7 = @"NO";
      if (isRecording)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v12 = recorder;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Stop recording with recorder: %@ isRecordingAlready: %@", buf, 0x16u);
    }
  }

  recorder3 = [(CKMessageEntryView *)self recorder];
  if ([recorder3 isRecording])
  {
    [(CKMessageEntryView *)self sendEnableRotationAfterRecordingToDelegate];
    recorder4 = [(CKMessageEntryView *)self recorder];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__CKMessageEntryView_stopRecording__block_invoke;
    v10[3] = &unk_1E72ED6D8;
    v10[4] = self;
    [recorder4 stopRecording:v10];
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

- (void)audioMessageRecordingViewDidResume:(id)resume
{
  v29 = *MEMORY[0x1E69E9840];
  resumeCopy = resume;
  recorder = [(CKMessageEntryView *)self recorder];

  if (recorder)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        recorder2 = [(CKMessageEntryView *)self recorder];
        recorder3 = [(CKMessageEntryView *)self recorder];
        isRecording = [recorder3 isRecording];
        v10 = @"NO";
        if (isRecording)
        {
          v10 = @"YES";
        }

        v25 = 138412546;
        v26 = recorder2;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Resume recording with recorder: %@ isRecordingAlready: %@", &v25, 0x16u);
      }
    }

    audioComposition = [(CKMessageEntryView *)self audioComposition];

    if (audioComposition)
    {
      audioComposition2 = [(CKMessageEntryView *)self audioComposition];
      mediaObjects = [audioComposition2 mediaObjects];
      firstObject = [mediaObjects firstObject];

      [firstObject duration];
      v16 = v15;
      audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
      [audioRecordingView setPlaybackDuration:v16];

      audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
      powerLevels = [firstObject powerLevels];
      [audioRecordingView2 setWithIntensities:powerLevels];

      recorder4 = [(CKMessageEntryView *)self recorder];
      [recorder4 setPaused:1];

      recorder5 = [(CKMessageEntryView *)self recorder];
      [recorder5 setTotalPacketsCount:{objc_msgSend(firstObject, "totalPacketsCount")}];

      recorder6 = [(CKMessageEntryView *)self recorder];
      temporaryFileURL = [firstObject temporaryFileURL];
      [recorder6 setFileURL:temporaryFileURL];
    }

    [(CKMessageEntryView *)self startRecording];
    recorder7 = [(CKMessageEntryView *)self recorder];
    [recorder7 setPaused:0];
  }
}

- (void)audioMessageRecordingViewDidSend:(id)send
{
  recorder = [(CKMessageEntryView *)self recorder];

  if (recorder)
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    [recorder2 setPaused:0];

    audioController = [(CKMessageEntryView *)self audioController];
    [audioController stop];

    [(CKMessageEntryView *)self sendAudioMessage];
  }
}

- (void)sendAudioMessage
{
  recorder = [(CKMessageEntryView *)self recorder];
  isRecording = [recorder isRecording];

  if (isRecording)
  {
    [(CKMessageEntryView *)self sendEnableRotationAfterRecordingToDelegate];
    objc_initWeak(&location, self);
    recorder2 = [(CKMessageEntryView *)self recorder];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__CKMessageEntryView_sendAudioMessage__block_invoke;
    v6[3] = &unk_1E72F0968;
    objc_copyWeak(&v7, &location);
    [recorder2 stopRecording:v6];

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
      audioComposition = [(CKMessageEntryView *)self audioComposition];
      v9 = 138412290;
      v10 = audioComposition;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Sending audio message with audio composition: %@", &v9, 0xCu);
    }
  }

  recorder = [(CKMessageEntryView *)self recorder];

  if (recorder)
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    [recorder2 resetState];
  }

  [(CKMessageEntryView *)self _deleteTemporaryAudioFile];
  audioComposition2 = [(CKMessageEntryView *)self audioComposition];
  [(CKMessageEntryView *)self _trackAudioMessageSentWithComposition:audioComposition2];

  delegate = [(CKMessageEntryView *)self delegate];
  [delegate messageEntryViewSendButtonHit:self];
}

- (void)audioMessageRecordingViewDidCancel:(id)cancel
{
  audioController = [(CKMessageEntryView *)self audioController];

  if (audioController)
  {
    audioController2 = [(CKMessageEntryView *)self audioController];
    [audioController2 stop];

    [(CKMessageEntryView *)self setAudioController:0];
  }

  recorder = [(CKMessageEntryView *)self recorder];

  if (recorder)
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    [recorder2 setPaused:0];

    recorder3 = [(CKMessageEntryView *)self recorder];
    [recorder3 cancelRecording];

    recorder4 = [(CKMessageEntryView *)self recorder];
    [recorder4 resetState];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled)
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
  audioComposition = [(CKMessageEntryView *)self audioComposition];

  if (audioComposition)
  {
    audioComposition2 = [(CKMessageEntryView *)self audioComposition];
    mediaObjects = [audioComposition2 mediaObjects];
    firstObject = [mediaObjects firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = firstObject;
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          temporaryFileURL = [v7 temporaryFileURL];
          *buf = 138412290;
          v16 = temporaryFileURL;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Deleting temporary audio file at url: %@", buf, 0xCu);
        }
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      temporaryFileURL2 = [v7 temporaryFileURL];
      v14 = 0;
      [defaultManager removeItemAtURL:temporaryFileURL2 error:&v14];
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

- (void)audioMessageRecordingViewDidPlay:(id)play
{
  audioController = [(CKMessageEntryView *)self audioController];
  [audioController play];
}

- (void)audioMessageRecordingViewDidPause:(id)pause
{
  audioController = [(CKMessageEntryView *)self audioController];
  [audioController pause];
}

- (void)audioMessageRecordingViewDidStartScrubbing:(id)scrubbing
{
  audioController = [(CKMessageEntryView *)self audioController];
  isPlaying = [audioController isPlaying];

  if (isPlaying)
  {
    audioController2 = [(CKMessageEntryView *)self audioController];
    [audioController2 pause];

    [(CKMessageEntryView *)self setAudioControllerWasPlayingBeforeScrubbing:1];
  }
}

- (void)audioMessageRecordingViewDidUpdateScrubbing:(id)scrubbing atTime:(double)time
{
  audioController = [(CKMessageEntryView *)self audioController];
  [audioController layoutViewsForScrubbingTime:time];
}

- (void)audioMessageRecordingViewDidStopScrubbing:(id)scrubbing atTime:(double)time
{
  audioController = [(CKMessageEntryView *)self audioController];
  [audioController setCurrentTime:time];

  if ([(CKMessageEntryView *)self audioControllerWasPlayingBeforeScrubbing])
  {
    audioController2 = [(CKMessageEntryView *)self audioController];
    [audioController2 play];

    [(CKMessageEntryView *)self setAudioControllerWasPlayingBeforeScrubbing:0];
  }
}

- (void)clearAudioRecordingUI
{
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (audioRecordingView)
  {
    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView2 invalidateDisplayLink];

    audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
    [audioRecordingView3 removeFromSuperview];

    [(CKMessageEntryView *)self setAudioRecordingView:0];
    cancelAudioRecordingButton = [(CKMessageEntryView *)self cancelAudioRecordingButton];
    [cancelAudioRecordingButton removeFromSuperview];

    [(CKMessageEntryView *)self setCancelAudioRecordingButton:0];
    [(CKMessageEntryView *)self setAudioComposition:0];
    conversation = [(CKMessageEntryView *)self conversation];
    [conversation setUnsentComposition:0];

    [(CKMessageEntryView *)self setComposition:0];
    [(CKMessageEntryView *)self configureForDisplayMode:1];
    delegate = [(CKMessageEntryView *)self delegate];
    [delegate messageEntryViewDidChange:self isTextChange:0 isShelfChange:0 isTranslationChange:0];

    inputDelegate = [(CKMessageEntryView *)self inputDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      inputDelegate2 = [(CKMessageEntryView *)self inputDelegate];
      [inputDelegate2 messageEntryViewDidClearAudioRecordingUI:self];
    }

    recorder = [(CKMessageEntryView *)self recorder];
    [recorder resetState];
  }
}

- (CGRect)audioRecordingPillViewFrameInThrowViewCoordinates
{
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (audioRecordingView)
  {
    delegate = [(CKMessageEntryView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CKMessageEntryView *)self delegate];
      audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
      backgroundView = [audioRecordingView2 backgroundView];
      [delegate2 messageEntryView:self frameInThrowViewCoordinatesForView:backgroundView];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      delegate2 = [(CKMessageEntryView *)self audioRecordingView];
      audioRecordingView2 = [delegate2 backgroundView];
      audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
      backgroundView2 = [audioRecordingView3 backgroundView];
      [backgroundView2 bounds];
      [audioRecordingView2 convertRect:0 toView:?];
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
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];

  if (audioRecordingView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCA78]);
    audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
    backgroundView = [audioRecordingView2 backgroundView];
    [backgroundView frame];
    v8 = v7;
    audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
    backgroundView2 = [audioRecordingView3 backgroundView];
    [backgroundView2 frame];
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
  recorder = [(CKMessageEntryView *)self recorder];

  if (recorder)
  {
    recorder2 = [(CKMessageEntryView *)self recorder];
    isRecording = [recorder2 isRecording];

    if (isRecording)
    {
      audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
      state = [audioRecordingView state];

      if (state != 2)
      {
        recorder3 = [(CKMessageEntryView *)self recorder];
        [recorder3 setPaused:1];

        [(CKMessageEntryView *)self stopRecording];
        audioComposition = [(CKMessageEntryView *)self audioComposition];
        mediaObjects = [audioComposition mediaObjects];
        firstObject = [mediaObjects firstObject];

        if (firstObject)
        {
          [firstObject duration];
          v12 = v11;
          audioRecordingView2 = [(CKMessageEntryView *)self audioRecordingView];
          [audioRecordingView2 setPlaybackDuration:v12];
        }

        audioRecordingView3 = [(CKMessageEntryView *)self audioRecordingView];
        [audioRecordingView3 setState:2];

        audioRecordingView4 = [(CKMessageEntryView *)self audioRecordingView];
        [audioRecordingView4 setPlaybackCurrentTime:NAN];
      }
    }
  }
}

- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing
{
  v4 = [(CKMessageEntryView *)self audioRecordingView:controller];
  [v4 setPlaybackCurrentTime:NAN];
}

- (void)audioController:(id)controller mediaObjectProgressDidChange:(id)change currentTime:(double)time duration:(double)duration
{
  v7 = [(CKMessageEntryView *)self audioRecordingView:controller];
  [v7 setPlaybackCurrentTime:time];
}

- (void)audioController:(id)controller layoutViewsForScrubbingTime:(double)time mediaObject:(id)object
{
  v6 = [(CKMessageEntryView *)self audioRecordingView:controller];
  [v6 setPlaybackCurrentTime:time];
}

- (void)audioControllerDidStop:(id)stop
{
  audioRecordingView = [(CKMessageEntryView *)self audioRecordingView];
  [audioRecordingView setState:2];
}

- (void)sendEnableRotationAfterRecordingToDelegate
{
  delegate = [(CKMessageEntryView *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKMessageEntryView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate3 = [(CKMessageEntryView *)self delegate];
      [delegate3 enableRotationAfterRecording];
    }
  }
}

- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason
{
  pausedCopy = paused;
  reasonCopy = reason;
  contentView = [(CKMessageEntryView *)self contentView];
  [contentView setTextEffectCoordinatorPaused:pausedCopy reason:reasonCopy];
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
  selfCopy = self;
  contentView = [(CKMessageEntryView *)selfCopy contentView];
  if (contentView)
  {
    v3 = contentView;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _AFDictationRestricted(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"CKMessageEntryView.m" lineNumber:142 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
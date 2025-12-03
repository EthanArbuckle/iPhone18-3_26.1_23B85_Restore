@interface CKMessageEntryContentView
+ (BOOL)_platformNeedsConservativeLayoutUpdates;
+ (id)_createSubjectView;
+ (id)_createTextView:(BOOL)view shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions;
+ (id)_createTranslationView;
+ (void)configureMessageBodyEntryTextView:(id)view shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard;
+ (void)getClearButtonInset:(double *)inset forPluginWithBundleID:(id)d;
- (BOOL)_currentPluginIsGPPlugin;
- (BOOL)_currentPluginIsPhotosPlugin;
- (BOOL)_currentPluginIsPollsPlugin;
- (BOOL)_currentPluginPayloadHasPhotosExtensionMediaPayload;
- (BOOL)_shouldDeferUpdateUI;
- (BOOL)_updatedPluginPayloadFromNotification:(id)notification;
- (BOOL)canApplyTextEffectFromKeyCommand;
- (BOOL)canApplyTextStyleFromKeyCommand;
- (BOOL)isActive;
- (BOOL)isShowingDictationPlaceholder;
- (BOOL)isSingleLine;
- (BOOL)makeActive;
- (BOOL)messageEntryRichTextView:(id)view canPerformDictationAction:(id)action;
- (BOOL)messageEntryRichTextView:(id)view shouldPasteMediaObjects:(id)objects;
- (BOOL)messageEntryRichTextView:(id)view shouldRecognizeGesture:(id)gesture;
- (BOOL)messageEntryRichTextViewShouldAllowLinkCustomization:(id)customization;
- (BOOL)messageEntryRichTextViewShouldBeDisabled:(id)disabled;
- (BOOL)messageEntryRichTextViewShouldResignFirstResponder:(id)responder;
- (BOOL)messageEntryRichTextViewSupportsInlineAdaptiveImageGlyphs:(id)glyphs;
- (BOOL)shouldShowClearButton;
- (BOOL)shouldShowPlugin;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CGRect)computedClearPluginButtonFrame;
- (CGRect)computedPluginViewFrame;
- (CGSize)_computedSizeForTextView:(id)view maxWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKComposition)composition;
- (CKConversation)conversation;
- (CKMessageEntryContentView)initWithFrame:(CGRect)frame shouldShowSubject:(BOOL)subject shouldDisableAttachments:(BOOL)attachments shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions translationLanguage:(id)self0;
- (CKMessageEntryTextView)activeView;
- (NSString)placeholderText;
- (NSString)selectedText;
- (UIEdgeInsets)_pluginMargins;
- (UIEdgeInsets)contentTextAlignmentInsets;
- (UIView)pluginView;
- (char)balloonColor;
- (double)_calcuateIdealMaxPluginHeight:(BOOL)height;
- (double)_maxWidthForTextView;
- (double)balloonMaxWidthForMessageEntryRichTextView:(id)view;
- (double)entryContentViewTextLeftOffset;
- (double)maxWidthForPreviewImagesInMessageEntryRichTextView:(id)view;
- (id)gradientReferenceViewForMessageEntryRichTextView:(id)view;
- (id)pluginSnapshotViewForPluginAtIndex:(unint64_t)index isFromTextAttachment:(BOOL *)attachment startingScaleMultiplier:(double *)multiplier;
- (id)richLinksEditMenuForAttributedText:(id)text inRange:(_NSRange)range;
- (id)textDraggableView:(id)view itemsForDrag:(id)drag;
- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier;
- (id)textEffectsEditMenuForTextInRange:(_NSRange)range;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (id)visibleTextViewIdentifiersFor:(id)for;
- (int64_t)activeTextEffectTypeInSelectedRange;
- (unint64_t)activeTextStylesInSelectedRange;
- (void)_didChangeAttributesAffectingTextSize;
- (void)_layoutDividerLine:(id)line leftInset:(double)inset widthInset:(double)widthInset currentYOffset:(double *)offset;
- (void)_layoutTextView:(id)view currentYOffset:(double *)offset originX:(double)x maxWidth:(double)width;
- (void)_provideHapticFeedbackIfNecessaryForText:(id)text;
- (void)_updateAttributedTextContent:(id)content byApplyingInteraction:(int64_t)interaction toLinkTextAttachments:(id)attachments;
- (void)_updateUI;
- (void)acceptAutocorrectionForChat:(id)chat completionHandler:(id)handler;
- (void)applyTextEffect:(int64_t)effect;
- (void)applyTextEffect:(int64_t)effect toTextRange:(_NSRange)range;
- (void)applyTextStyle:(unint64_t)style;
- (void)applyTextStyle:(unint64_t)style toTextRange:(_NSRange)range;
- (void)balloonPluginDataSource:(id)source shouldSendAsCopy:(BOOL)copy;
- (void)ckSendLaterViewCancelled:(id)cancelled;
- (void)ckSendLaterViewContentsUpdated:(id)updated;
- (void)ckSendLaterViewWantsDatePickerPresented:(id)presented;
- (void)clearPluginButtonTapped:(id)tapped;
- (void)collapseTextFieldsIfInPencilMode;
- (void)compositionTranslator:(id)translator didFailTranslationForVersion:(int64_t)version;
- (void)compositionTranslator:(id)translator didUpdateTranslation:(id)translation sourceLanguage:(id)language destinationLanguage:(id)destinationLanguage version:(int64_t)version;
- (void)configureShelfForPluginPayload:(id)payload;
- (void)dealloc;
- (void)didFinishAnimatedBoundsChange;
- (void)didMoveToSuperview;
- (void)ensureSelectionVisibleIfNeeded;
- (void)ensureTextViewVisibleIfNeeded;
- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes;
- (void)invalidateComposition;
- (void)layoutSubviews;
- (void)messageEntryRichTextView:(id)view didAddPluginTextAttachmentViewControllerToViewHierarchy:(id)hierarchy;
- (void)messageEntryRichTextView:(id)view didPasteComposition:(id)composition;
- (void)messageEntryRichTextView:(id)view didReceiveInputSuggestion:(id)suggestion;
- (void)messageEntryRichTextView:(id)view didTapGenerativeButtonForImageURL:(id)l;
- (void)messageEntryRichTextView:(id)view didTapMediaObject:(id)object;
- (void)messageEntryRichTextView:(id)view pastedURL:(id)l;
- (void)messageEntryRichTextView:(id)view willAddPluginTextAttachmentViewControllerToViewHierarchy:(id)hierarchy;
- (void)messageEntryRichTextViewDidDismissCustomizationPicker:(id)picker;
- (void)messageEntryRichTextViewDidPresentCustomizationPicker:(id)picker;
- (void)messageEntryRichTextViewDidTapHandwritingKey:(id)key;
- (void)messageEntryRichTextViewWasTapped:(id)tapped isLongPress:(BOOL)press;
- (void)messageEntryRichTextViewWillDismissCustomizationPicker:(id)picker;
- (void)messageEntryRichTextViewWillPresentCustomizationPicker:(id)picker;
- (void)messageEntryTextView:(id)view applyStyleChangeOfType:(unint64_t)type add:(BOOL)add forRange:(_NSRange)range;
- (void)messageEntryTextView:(id)view didSetAnimationName:(id)name forRange:(_NSRange)range;
- (void)messageEntryTextView:(id)view didUpdateForRange:(_NSRange)range conversionHandler:(id)handler;
- (void)messageEntryTextView:(id)view replaceRange:(_NSRange)range withAttributedText:(id)text;
- (void)messageEntryTextViewDidChangePencilMode:(id)mode;
- (void)messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)progress;
- (void)pluginPayloadDidChangeSendEnabled:(id)enabled;
- (void)pluginPayloadDidLoad:(id)load;
- (void)pluginPayloadInvalidatedMessageTintColor:(id)color;
- (void)pluginPayloadWantsResize:(id)resize;
- (void)prepareTextEffectsForImmediateMessageSend;
- (void)quicktationEnablementDidChange;
- (void)setBalloonColor:(char)color;
- (void)setBounds:(CGRect)bounds;
- (void)setClearPluginButtonEnabled:(BOOL)enabled;
- (void)setComposition:(id)composition forceUpdateText:(BOOL)text;
- (void)setContainerViewLineWidth:(double)width;
- (void)setFrame:(CGRect)frame;
- (void)setMaxPluginShelfViewWidth:(double)width;
- (void)setPlaceHolderWidth:(double)width;
- (void)setPlaceholderText:(id)text;
- (void)setPluginEntryViewController:(id)controller;
- (void)setSendButtonTextInsetWidth:(double)width;
- (void)setSendLaterPluginInfo:(id)info animated:(BOOL)animated completionHandler:(id)handler;
- (void)setShouldStripEmojis:(BOOL)emojis;
- (void)setStyle:(int64_t)style forceUpdate:(BOOL)update;
- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)textViewDidEndEmojiRippleAnimation:(id)animation;
- (void)textViewNeedsUpdatedTranslation;
- (void)textViewWillBeginEmojiRippleAnimation:(id)animation;
- (void)textViewWritingToolsDidEnd:(id)end;
- (void)textViewWritingToolsWillBegin:(id)begin;
- (void)unpauseTextEffectsCoordinator;
- (void)willAnimateBoundsChange;
@end

@implementation CKMessageEntryContentView

- (double)entryContentViewTextLeftOffset
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 entryContentViewTextLeftOffset];
  v5 = v4;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    textView = [(CKMessageEntryContentView *)self textView];
    textContainer = [textView textContainer];
    [textContainer lineFragmentPadding];
    v5 = v5 - v10;
  }

  return v5;
}

- (BOOL)shouldShowPlugin
{
  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    loadedContentView = [pluginEntryViewController loadedContentView];
  }

  else
  {
    pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    loadedContentView = pluginEntryViewController2 != 0;
  }

  return loadedContentView;
}

- (void)layoutSubviews
{
  v113.receiver = self;
  v113.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v113 layoutSubviews];
  v112 = 0.0;
  [(CKMessageEntryContentView *)self bounds];
  v4 = v3;
  sendLaterView = [(CKMessageEntryContentView *)self sendLaterView];
  if (sendLaterView)
  {
    v6 = sendLaterView;
    sendLaterView2 = [(CKMessageEntryContentView *)self sendLaterView];
    [sendLaterView2 alpha];
    v9 = v8;

    if (v9 > 0.0)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 messageEntryContentViewSendLaterInsets];
      v12 = v11;
      v14 = v13;
      v109 = v15;
      v17 = v16;

      [(CKMessageEntryContentView *)self bounds];
      v19 = v18;
      v21 = v20;
      v22 = v4;
      v24 = v23;
      v26 = v25;
      [(CKMessageEntryContentView *)self maxPluginShelfViewWidth];
      v28 = v27;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v114.origin.x = v19;
      v114.origin.y = v21;
      v114.size.width = v24;
      v4 = v22;
      v114.size.height = v26;
      CGRectDivide(v114, &slice, &remainder, v28, CGRectMinXEdge);
      v29 = slice.size.width - (v14 + v17);
      sendLaterView3 = [(CKMessageEntryContentView *)self sendLaterView];
      [sendLaterView3 sizeThatFits:{v29, v26}];
      v32 = v31;
      v34 = v33;

      sendLaterView4 = [(CKMessageEntryContentView *)self sendLaterView];
      [sendLaterView4 setFrame:{v14, v12, v32, v34}];

      v112 = v109 * 0.5 + v12 + v34 + 0.0;
    }
  }

  if (![(CKMessageEntryContentView *)self shouldShowPlugin])
  {
    pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];

    if (pluginEntryViewController)
    {
      delegate = [(CKMessageEntryContentView *)self delegate];
      [delegate messageEntryContentViewMaxShelfPluginViewSize:self];
      v74 = v73;
      v76 = v75;

      pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
      [pluginEntryViewController2 ck_constrainedSizeThatFits:{v74, v76}];
    }

    else
    {
      clearPluginButton = [(CKMessageEntryContentView *)self clearPluginButton];
      [clearPluginButton setAlpha:0.0];

      pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginDividerLine];
      [pluginEntryViewController2 setHidden:1];
    }

    goto LABEL_13;
  }

  [(CKMessageEntryContentView *)self _pluginMargins];
  v37 = v36;
  v39 = v38;
  [(CKMessageEntryContentView *)self computedPluginViewFrame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v112 + v46;
  pluginView = [(CKMessageEntryContentView *)self pluginView];
  [pluginView setFrame:{v41, v47, v43, v45}];

  clearPluginButton2 = [(CKMessageEntryContentView *)self clearPluginButton];
  [(CKMessageEntryContentView *)self bringSubviewToFront:clearPluginButton2];

  shouldShowClearButton = [(CKMessageEntryContentView *)self shouldShowClearButton];
  v51 = v45 > 0.0 && shouldShowClearButton;
  v52 = v51;
  clearPluginButton3 = [(CKMessageEntryContentView *)self clearPluginButton];
  [clearPluginButton3 setAlpha:v52];

  [(CKMessageEntryContentView *)self computedClearPluginButtonFrame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v112 + v60;
  clearPluginButton4 = [(CKMessageEntryContentView *)self clearPluginButton];
  [clearPluginButton4 setFrame:{v55, v61, v57, v59}];

  v112 = v39 + v37 + v45 + v112;
  v63 = +[CKUIBehavior sharedBehaviors];
  shouldShowPluginDividerLineWithPluginShelf = [v63 shouldShowPluginDividerLineWithPluginShelf];
  pluginDividerLine = [(CKMessageEntryContentView *)self pluginDividerLine];
  [pluginDividerLine setHidden:shouldShowPluginDividerLineWithPluginShelf ^ 1u];

  v66 = +[CKUIBehavior sharedBehaviors];
  [v66 pluginDividerLineInsetsWithPluginShelf];
  v68 = v67;

  pluginDividerLine2 = [(CKMessageEntryContentView *)self pluginDividerLine];
  LOBYTE(shouldShowPluginDividerLineWithPluginShelf) = [pluginDividerLine2 isHidden];

  if ((shouldShowPluginDividerLineWithPluginShelf & 1) == 0)
  {
    pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginDividerLine];
    [(CKMessageEntryContentView *)self _layoutDividerLine:pluginEntryViewController2 leftInset:&v112 widthInset:v68 currentYOffset:v68 + v68];
LABEL_13:
  }

  if ([(CKMessageEntryContentView *)self needsTextLayout])
  {
    [(CKMessageEntryContentView *)self _maxWidthForTextView];
    v79 = v78;
    [(CKMessageEntryContentView *)self entryContentViewTextLeftOffset];
    v81 = v80;
    if ([(CKMessageEntryContentView *)self shouldShowSubject])
    {
      subjectView = [(CKMessageEntryContentView *)self subjectView];
      [(CKMessageEntryContentView *)self _layoutTextView:subjectView currentYOffset:&v112 originX:v81 maxWidth:v79];

      textAndSubjectDividerLine = [(CKMessageEntryContentView *)self textAndSubjectDividerLine];
      [textAndSubjectDividerLine setHidden:0];

      textAndSubjectDividerLine2 = [(CKMessageEntryContentView *)self textAndSubjectDividerLine];
      [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
      v86 = v85;
      subjectView2 = [(CKMessageEntryContentView *)self subjectView];
      [subjectView2 contentInset];
      [(CKMessageEntryContentView *)self _layoutDividerLine:textAndSubjectDividerLine2 leftInset:&v112 widthInset:v81 currentYOffset:v86 + v88];
    }

    else
    {
      [(UIView *)self->_textAndSubjectDividerLine setHidden:1];
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

    if (isAutomaticOutgoingTranslationEnabled)
    {
      translationView = [(CKMessageEntryContentView *)self translationView];
      if (translationView && (v92 = translationView, -[CKMessageEntryContentView translationView](self, "translationView"), v93 = objc_claimAutoreleasedReturnValue(), v94 = [v93 isHidden], v93, v92, (v94 & 1) == 0))
      {
        translationView2 = [(CKMessageEntryContentView *)self translationView];
        [(CKMessageEntryContentView *)self _layoutTextView:translationView2 currentYOffset:&v112 originX:v81 maxWidth:v79];

        translationAndTextDividerLine = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [translationAndTextDividerLine setHidden:0];

        translationView3 = [(CKMessageEntryContentView *)self translationView];
        textContainer = [translationView3 textContainer];
        [textContainer lineFragmentPadding];
        v101 = v100;

        translationAndTextDividerLine2 = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
        v103 = v102;
        translationView4 = [(CKMessageEntryContentView *)self translationView];
        [translationView4 contentInset];
        [(CKMessageEntryContentView *)self _layoutDividerLine:translationAndTextDividerLine2 leftInset:&v112 widthInset:v81 + v101 currentYOffset:v103 + v105];
      }

      else
      {
        translationAndTextDividerLine2 = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [translationAndTextDividerLine2 setHidden:1];
      }
    }

    textView = [(CKMessageEntryContentView *)self textView];
    [(CKMessageEntryContentView *)self _layoutTextView:textView currentYOffset:&v112 originX:v81 maxWidth:v79];

    textView2 = [(CKMessageEntryContentView *)self textView];
    [textView2 frame];
    MaxY = CGRectGetMaxY(v115);

    [(CKMessageEntryContentView *)self setContentSize:v4, MaxY];
    [(CKMessageEntryContentView *)self ensureSelectionVisibleIfNeeded];
    [(CKMessageEntryContentView *)self setNeedsTextLayout:0];
  }

  [(CKMessageEntryContentView *)self ensureTextViewVisibleIfNeeded];
}

- (void)ensureTextViewVisibleIfNeeded
{
  if ([(CKMessageEntryContentView *)self needsEnsureTextViewVisible]|| [(CKMessageEntryContentView *)self forceEnsureTextViewVisble])
  {
    [(UIScrollView *)self __ck_scrollToBottom:0];

    [(CKMessageEntryContentView *)self setNeedsEnsureTextViewVisible:0];
  }
}

- (double)_maxWidthForTextView
{
  [(CKMessageEntryContentView *)self maxContentWidthWhenExpanded];
  v4 = v3;
  [(CKMessageEntryContentView *)self containerViewLineWidth];
  v6 = v4 + v5 * -2.0;
  [(CKMessageEntryContentView *)self entryContentViewTextLeftOffset];
  v8 = v6 - v7;
  [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
  return v8 - v9;
}

- (void)ensureSelectionVisibleIfNeeded
{
  if ([(CKMessageEntryContentView *)self needsEnsureSelectionVisible])
  {
    activeView = [(CKMessageEntryContentView *)self activeView];
    if (activeView)
    {
      selectedRange = [activeView selectedRange];
      if (v3 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3;
      }

      [activeView _rectForScrollToVisible:{selectedRange, v5}];
      x = v6;
      y = v8;
      width = v10;
      height = v12;
      textStorage = [activeView textStorage];
      v15 = [textStorage length];

      if (selectedRange == v15)
      {
        v16 = MEMORY[0x1E695F058];
        v17 = *(MEMORY[0x1E695F058] + 16);
        v18 = *(MEMORY[0x1E695F058] + 24);
        textView = [(CKMessageEntryContentView *)self textView];
        textLayoutManager = [textView textLayoutManager];

        textViewportLayoutController = [textLayoutManager textViewportLayoutController];
        documentRange = [textLayoutManager documentRange];
        endLocation = [documentRange endLocation];
        [textViewportLayoutController relocateViewportToTextLocation:endLocation];
        v25 = v24;

        textViewportLayoutController2 = [textLayoutManager textViewportLayoutController];
        [textViewportLayoutController2 adjustViewportByVerticalOffset:v25];

        textViewportLayoutController3 = [textLayoutManager textViewportLayoutController];
        [textViewportLayoutController3 layoutViewport];

        if (v17 != *MEMORY[0x1E695F060] || v18 != *(MEMORY[0x1E695F060] + 8))
        {
          v32.origin.x = *v16;
          v32.origin.y = v16[1];
          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          v32.size.width = v17;
          v32.size.height = v18;
          v31 = CGRectUnion(v30, v32);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
        }
      }

      [(CKMessageEntryContentView *)self convertRect:activeView fromView:x, y, width, height];
      [(CKMessageEntryContentView *)self scrollRectToVisible:0 animated:?];
    }

    [(CKMessageEntryContentView *)self setNeedsEnsureSelectionVisible:0];
  }
}

- (CKComposition)composition
{
  if (!self->_composition)
  {
    if ([(CKMessageEntryContentView *)self isCompositionExpirable])
    {
      textView = [(CKMessageEntryContentView *)self textView];
      compositionText = [textView compositionText];
      subjectView = [(CKMessageEntryContentView *)self subjectView];
      compositionText2 = [subjectView compositionText];
      shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
      v8 = [CKComposition newExpirableCompositionWithText:compositionText subject:compositionText2 shelfPluginPayload:shelfPluginPayload];
      composition = self->_composition;
      self->_composition = v8;
    }

    else
    {
      shelfPluginPayload2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
      supportsCollaboration = [shelfPluginPayload2 supportsCollaboration];

      v12 = [CKComposition alloc];
      textView = [(CKMessageEntryContentView *)self textView];
      compositionText3 = [textView compositionText];
      subjectView = [(CKMessageEntryContentView *)self subjectView];
      compositionText4 = [subjectView compositionText];
      shelfPluginPayload = [(CKMessageEntryContentView *)self translationView];
      composition = [shelfPluginPayload compositionText];
      shelfPluginPayload3 = [(CKMessageEntryContentView *)self shelfPluginPayload];
      bizIntent = [(CKMessageEntryContentView *)self bizIntent];
      shelfMediaObject = [(CKMessageEntryContentView *)self shelfMediaObject];
      if (supportsCollaboration)
      {
        [(CKMessageEntryContentView *)self collaborationShareOptions];
        v32 = v31 = v12;
        textView2 = [(CKMessageEntryContentView *)self textView];
        [textView2 proofreadingInfo];
        v16 = v33 = textView;
        compositionText = compositionText3;
        v17 = [(CKComposition *)v31 initWithText:compositionText3 subject:compositionText4 translation:composition shelfPluginPayload:shelfPluginPayload3 bizIntent:bizIntent shelfMediaObject:shelfMediaObject collaborationShareOptions:v32 proofreadingInfo:v16];
        v18 = self->_composition;
        self->_composition = v17;

        textView = v33;
        compositionText2 = compositionText4;
      }

      else
      {
        [(CKMessageEntryContentView *)self textView];
        v19 = v34 = subjectView;
        proofreadingInfo = [v19 proofreadingInfo];
        v21 = v12;
        compositionText = compositionText3;
        v22 = [(CKComposition *)v21 initWithText:compositionText3 subject:compositionText4 translation:composition shelfPluginPayload:shelfPluginPayload3 bizIntent:bizIntent shelfMediaObject:shelfMediaObject proofreadingInfo:proofreadingInfo];
        v23 = self->_composition;
        self->_composition = v22;

        subjectView = v34;
        compositionText2 = compositionText4;
      }
    }
  }

  sendLaterPluginInfo = [(CKMessageEntryContentView *)self sendLaterPluginInfo];
  [(CKComposition *)self->_composition setSendLaterPluginInfo:sendLaterPluginInfo];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    sourceLanguageID = [(CKMessageEntryContentView *)self sourceLanguageID];
    [(CKComposition *)self->_composition setSourceLanguageID:sourceLanguageID];

    destinationLanguageID = [(CKMessageEntryContentView *)self destinationLanguageID];
    [(CKComposition *)self->_composition setDestinationLanguageID:destinationLanguageID];
  }

  v29 = self->_composition;

  return v29;
}

- (UIView)pluginView
{
  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  view = [pluginEntryViewController view];

  return view;
}

- (BOOL)isShowingDictationPlaceholder
{
  textView = [(CKMessageEntryContentView *)self textView];
  if ([textView isShowingDictationPlaceholder])
  {
    isShowingDictationPlaceholder = 1;
  }

  else
  {
    subjectView = [(CKMessageEntryContentView *)self subjectView];
    isShowingDictationPlaceholder = [subjectView isShowingDictationPlaceholder];
  }

  return isShowingDictationPlaceholder;
}

- (BOOL)canApplyTextEffectFromKeyCommand
{
  textView = [(CKMessageEntryContentView *)self textView];
  isExpressiveTextEnabled = [textView isExpressiveTextEnabled];

  return isExpressiveTextEnabled;
}

- (BOOL)canApplyTextStyleFromKeyCommand
{
  textView = [(CKMessageEntryContentView *)self textView];
  isExpressiveTextEnabled = [textView isExpressiveTextEnabled];

  return isExpressiveTextEnabled;
}

- (int64_t)activeTextEffectTypeInSelectedRange
{
  textView = [(CKMessageEntryContentView *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  textView2 = [(CKMessageEntryContentView *)self textView];
  v8 = [textView2 ck_activeTextEffectTypeInRange:{selectedRange, v6}];

  return v8;
}

- (unint64_t)activeTextStylesInSelectedRange
{
  textView = [(CKMessageEntryContentView *)self textView];
  selectedRange = [textView selectedRange];
  v6 = v5;

  textView2 = [(CKMessageEntryContentView *)self textView];
  v8 = [textView2 ck_activeTextStylesInRange:{selectedRange, v6}];

  return v8;
}

- (id)textEffectsEditMenuForTextInRange:(_NSRange)range
{
  length = range.length;
  v4 = range.location;
  v28[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    objc_initWeak(&location, self);
    textView = [(CKMessageEntryContentView *)self textView];
    v9 = [textView ck_activeTextStylesInRange:{v4, length}];

    textView2 = [(CKMessageEntryContentView *)self textView];
    v11 = [textView2 ck_activeTextEffectTypeInRange:{v4, length}];

    selectedText = [(CKMessageEntryContentView *)self selectedText];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__CKMessageEntryContentView_TextEffects__textEffectsEditMenuForTextInRange___block_invoke;
    v25[3] = &unk_1E72F0290;
    objc_copyWeak(v26, &location);
    v26[1] = v4;
    v26[2] = length;
    v13 = [CKTextEffectsMenuFactory textStylePaletteMenuWithActiveTextStyles:v9 selectedText:selectedText handler:v25];

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __76__CKMessageEntryContentView_TextEffects__textEffectsEditMenuForTextInRange___block_invoke_2;
    v23 = &unk_1E72F02B8;
    objc_copyWeak(v24, &location);
    v24[1] = v4;
    v24[2] = length;
    v14 = [CKTextEffectsMenuFactory inlineEffectMenuWithHandler:&v20 activeTextEffectType:v11];
    LODWORD(v11) = CKIsRunningInMacCatalyst();
    v15 = MEMORY[0x1E69DCC60];
    v28[0] = v13;
    v28[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{2, v20, v21, v22, v23}];
    if (v11)
    {
      v17 = 17;
    }

    else
    {
      v17 = 1;
    }

    v18 = [v15 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:v17 children:v16];

    objc_destroyWeak(v24);
    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __76__CKMessageEntryContentView_TextEffects__textEffectsEditMenuForTextInRange___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applyTextStyle:a2 toTextRange:{*(a1 + 40), *(a1 + 48)}];
}

void __76__CKMessageEntryContentView_TextEffects__textEffectsEditMenuForTextInRange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applyTextEffect:a2 toTextRange:{*(a1 + 40), *(a1 + 48)}];
}

- (void)applyTextStyle:(unint64_t)style
{
  v23 = *MEMORY[0x1E69E9840];
  textView = [(CKMessageEntryContentView *)self textView];
  selectedRange = [textView selectedRange];
  v8 = v7;

  composition = [(CKMessageEntryContentView *)self composition];
  text = [composition text];
  string = [text string];

  v12 = [string length];
  if (selectedRange + v8 <= v12)
  {
    [(CKMessageEntryContentView *)self applyTextStyle:style toTextRange:selectedRange, v8];
  }

  else
  {
    v13 = v12;
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = IMTextStyleAttributeNameFromStyle();
      v24.location = selectedRange;
      v24.length = v8;
      v16 = NSStringFromRange(v24);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2048;
      v22 = v13;
      _os_log_error_impl(&dword_19020E000, v14, OS_LOG_TYPE_ERROR, "Invalid range when toggling text style {%@} for range {%@} with textLength {%lu}.", &v17, 0x20u);
    }
  }
}

- (void)applyTextStyle:(unint64_t)style toTextRange:(_NSRange)range
{
  length = range.length;
  v5 = range.location;
  textView = [(CKMessageEntryContentView *)self textView];
  v9 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v9 balloonTextFont];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __69__CKMessageEntryContentView_TextEffects__applyTextStyle_toTextRange___block_invoke;
  v14 = &unk_1E72EC460;
  objc_copyWeak(&v15, &location);
  [textView ck_applyWithTextStyle:style toRange:v5 baseFont:length undo:{balloonTextFont, &v11}];
  [(CKMessageEntryContentView *)self invalidateComposition:v11];
  [(CKMessageEntryContentView *)self _didChangeAttributesAffectingTextSize];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __69__CKMessageEntryContentView_TextEffects__applyTextStyle_toTextRange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateComposition];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _didChangeAttributesAffectingTextSize];
}

- (void)applyTextEffect:(int64_t)effect
{
  v23 = *MEMORY[0x1E69E9840];
  textView = [(CKMessageEntryContentView *)self textView];
  selectedRange = [textView selectedRange];
  v8 = v7;

  composition = [(CKMessageEntryContentView *)self composition];
  text = [composition text];
  string = [text string];

  v12 = [string length];
  if (selectedRange + v8 <= v12)
  {
    [(CKMessageEntryContentView *)self applyTextEffect:effect toTextRange:selectedRange, v8];
  }

  else
  {
    v13 = v12;
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = IMTextEffectNameFromType();
      v24.location = selectedRange;
      v24.length = v8;
      v16 = NSStringFromRange(v24);
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2048;
      v22 = v13;
      _os_log_error_impl(&dword_19020E000, v14, OS_LOG_TYPE_ERROR, "Invalid range when toggling text effect {%@} for range {%@} with textLength {%lu}.", &v17, 0x20u);
    }
  }
}

- (void)applyTextEffect:(int64_t)effect toTextRange:(_NSRange)range
{
  length = range.length;
  v5 = range.location;
  objc_initWeak(&location, self);
  textView = [(CKMessageEntryContentView *)self textView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CKMessageEntryContentView_TextEffects__applyTextEffect_toTextRange___block_invoke;
  v13[3] = &unk_1E72F02E0;
  objc_copyWeak(v14, &location);
  v14[1] = effect;
  v14[2] = v5;
  v14[3] = length;
  [textView ck_toggleTextEffect:effect inRange:v5 getAdded:length undo:{0, v13}];

  [(CKMessageEntryContentView *)self invalidateComposition];
  v9 = MEMORY[0x1E696AEC0];
  v16.location = v5;
  v16.length = length;
  v10 = NSStringFromRange(v16);
  v11 = [v9 stringWithFormat:@"did apply text effect of type: %lu to range: %@", effect, v10];

  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [textEffectCoordinator updateWithReason:v11];

  [(CKMessageEntryContentView *)self _didChangeAttributesAffectingTextSize];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __70__CKMessageEntryContentView_TextEffects__applyTextEffect_toTextRange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateComposition];

  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 40);
  v5 = NSStringFromRange(*(a1 + 48));
  v9 = [v3 stringWithFormat:@"(undo) did apply text effect of type: %lu to range: %@", v4, v5];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 textEffectCoordinator];
  [v7 updateWithReason:v9];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 _didChangeAttributesAffectingTextSize];
}

- (NSString)selectedText
{
  textView = [(CKMessageEntryContentView *)self textView];
  selectedText = [textView selectedText];

  if (selectedText)
  {
    v4 = [selectedText copy];
  }

  else
  {
    v4 = &stru_1F04268F8;
  }

  return v4;
}

- (void)dealloc
{
  [(CKMessageEntryTextView *)self->_subjectView setDelegate:0];
  [(CKMessageEntryRichTextView *)self->_textView setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKCompositionTranslator *)self->_translator resetTranslationLogIdentifier];
  v4.receiver = self;
  v4.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v4 dealloc];
}

- (CGRect)computedPluginViewFrame
{
  [(CKMessageEntryContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKMessageEntryContentView *)self maxPluginShelfViewWidth];
  v12 = v11;
  [(CKMessageEntryContentView *)self _pluginMargins];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(&slice, 0, sizeof(slice));
  memset(&v40, 0, sizeof(v40));
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  CGRectDivide(v42, &slice, &v40, v12, CGRectMinXEdge);
  _currentPluginPayloadHasPhotosExtensionMediaPayload = [(CKMessageEntryContentView *)self _currentPluginPayloadHasPhotosExtensionMediaPayload];
  if ([(CKMessageEntryContentView *)self _currentPluginIsPhotosPlugin]|| _currentPluginPayloadHasPhotosExtensionMediaPayload)
  {
    v25 = slice.size.width - (v16 + v18);
    [(CKMessageEntryContentView *)self _calcuateIdealMaxPluginHeight:0];
    v26 = v27;
  }

  else if ([(CKMessageEntryContentView *)self _currentPluginIsPollsPlugin])
  {
    [(CKMessageEntryContentView *)self bounds];
    v21 = v20;
    [(CKMessageEntryContentView *)self _pluginMargins];
    v23 = v22;
    [(CKMessageEntryContentView *)self _pluginMargins];
    v25 = v21 - (v23 + v24);
    v26 = 100000.0;
  }

  else
  {
    delegate = [(CKMessageEntryContentView *)self delegate];
    [delegate messageEntryContentViewMaxShelfPluginViewSize:self];
    v25 = v29;
    v26 = v30;
  }

  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  [pluginEntryViewController ck_constrainedSizeThatFits:{v25, v26}];
  v33 = v32;
  v35 = v34;

  v36 = CGRectGetMidX(slice) + v33 * -0.5;
  v37 = v14;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

+ (void)getClearButtonInset:(double *)inset forPluginWithBundleID:(id)d
{
  dCopy = d;
  v12 = dCopy;
  if (!inset)
  {
    [CKMessageEntryContentView getClearButtonInset:a2 forPluginWithBundleID:self];
    dCopy = v12;
  }

  v8 = [dCopy isEqualToString:*MEMORY[0x1E69A69E0]];
  v9 = [v12 isEqualToString:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"];
  if ((v8 & 1) != 0 || v9)
  {
    *inset = 0.0;
  }

  else
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 messageEntryContentViewClearButtonInset];
    *inset = v11;
  }
}

- (CGRect)computedClearPluginButtonFrame
{
  _shouldReverseLayoutDirection = [(CKMessageEntryContentView *)self _shouldReverseLayoutDirection];
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v36 = 0.0;
  [objc_opt_class() getClearButtonInset:&v36 forPluginWithBundleID:pluginBundleID];
  [(CKMessageEntryContentView *)self computedPluginViewFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  clearPluginButton = [(CKMessageEntryContentView *)self clearPluginButton];
  clearPluginButton2 = clearPluginButton;
  if (isEntryViewRefreshEnabled)
  {
    [(CKMessageEntryContentView *)self bounds];
    [clearPluginButton2 sizeThatFits:{v18, v19}];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    [clearPluginButton bounds];
    v21 = v24;

    clearPluginButton2 = [(CKMessageEntryContentView *)self clearPluginButton];
    [clearPluginButton2 bounds];
    v23 = v25;
  }

  v26 = v36;
  v27 = v7;
  v28 = v9;
  v29 = v11;
  v30 = v13;
  if (_shouldReverseLayoutDirection)
  {
    v31 = CGRectGetMinX(*&v27) + v36;
  }

  else
  {
    v31 = CGRectGetMaxX(*&v27) - v21 - v36;
  }

  v32 = v31;
  v33 = v9 + v26;
  v34 = v21;
  v35 = v23;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (BOOL)_currentPluginPayloadHasPhotosExtensionMediaPayload
{
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  if ([pluginBundleID isEqualToString:v4] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    photoShelfViewController = [shelfPluginPayload photoShelfViewController];
    v6 = photoShelfViewController != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_currentPluginIsPhotosPlugin
{
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v4 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]];

  return v4;
}

- (BOOL)_currentPluginIsPollsPlugin
{
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [pluginBundleID isEqualToString:v4];

  return v5;
}

- (UIEdgeInsets)_pluginMargins
{
  if ([(CKMessageEntryContentView *)self _currentPluginIsPollsPlugin])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 messageEntryContentViewPollsPluginInsets];
  }

  else if ([(CKMessageEntryContentView *)self _currentPluginIsPhotosPlugin]|| [(CKMessageEntryContentView *)self _currentPluginPayloadHasPhotosExtensionMediaPayload])
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 messageEntryContentViewPhotoPluginInsets];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 messageEntryContentViewPluginInsets];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CKMessageEntryContentView *)self sendLaterView:fits.width];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    sendLaterView = [(CKMessageEntryContentView *)self sendLaterView];
    [sendLaterView alpha];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 messageEntryContentViewSendLaterInsets];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      sendLaterView2 = [(CKMessageEntryContentView *)self sendLaterView];
      [(CKMessageEntryContentView *)self bounds];
      [sendLaterView2 sizeThatFits:{width - (v15 + v19), v21}];
      v23 = v22;
      v25 = v24;

      sendLaterView3 = [(CKMessageEntryContentView *)self sendLaterView];
      [sendLaterView3 ck_constrainedSizeThatFits:{v23, v25}];
      v28 = v27;

      v6 = v17 + v13 + 0.0 + v28;
    }
  }

  if ([(CKMessageEntryContentView *)self shouldShowPlugin])
  {
    shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
    pluginBundleID = [shelfPluginPayload pluginBundleID];
    v31 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]];
    v32 = IMBalloonExtensionIDWithSuffix();
    if ([pluginBundleID isEqualToString:v32] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      photoShelfViewController = [shelfPluginPayload photoShelfViewController];
      v34 = photoShelfViewController != 0;
    }

    else
    {
      v34 = 0;
    }

    [(CKMessageEntryContentView *)self _pluginMargins];
    v38 = v37;
    v40 = v39;
    if ((v31 | v34))
    {
      v41 = width - (v35 + v36);
      delegate = +[CKUIBehavior sharedBehaviors];
      [delegate entryViewMaxPluginShelfHeight];
      v44 = v43;
    }

    else
    {
      if ([(CKMessageEntryContentView *)self _currentPluginIsPollsPlugin])
      {
        [(CKMessageEntryContentView *)self _pluginMargins];
        v46 = v45;
        [(CKMessageEntryContentView *)self _pluginMargins];
        v41 = width - (v46 + v47);
        v44 = 100000.0;
LABEL_15:
        pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
        [pluginEntryViewController ck_constrainedSizeThatFits:{v41, v44}];
        v52 = v51;

        v53 = +[CKUIBehavior sharedBehaviors];
        [v53 dividerHeight];
        v6 = v40 + v6 + v38 + v52 + v54;

        goto LABEL_16;
      }

      delegate = [(CKMessageEntryContentView *)self delegate];
      [delegate messageEntryContentViewMaxShelfPluginViewSize:self];
      v41 = v48;
      v44 = v49;
    }

    goto LABEL_15;
  }

LABEL_16:
  [(CKMessageEntryContentView *)self containerViewLineWidth];
  v56 = width + v55 * -2.0;
  [(CKMessageEntryContentView *)self entryContentViewTextLeftOffset];
  v58 = v56 - v57;
  [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
  v60 = v58 - v59;
  v61 = +[CKUIBehavior sharedBehaviors];
  [v61 entryViewCoverMinHeight];
  v63 = v62;

  if ([(CKMessageEntryContentView *)self shouldShowSubject])
  {
    subjectView = [(CKMessageEntryContentView *)self subjectView];
    [subjectView sizeThatFits:{v60, 1.79769313e308}];
    v66 = fmax(v65, v63);
    v67 = +[CKUIBehavior sharedBehaviors];
    [v67 dividerHeight];
    v6 = v6 + v66 + v68;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    translationView = [(CKMessageEntryContentView *)self translationView];
    if (translationView)
    {
      v72 = translationView;
      translationView2 = [(CKMessageEntryContentView *)self translationView];
      isHidden = [translationView2 isHidden];

      if ((isHidden & 1) == 0)
      {
        translationView3 = [(CKMessageEntryContentView *)self translationView];
        [translationView3 sizeThatFits:{v60, 1.79769313e308}];
        v77 = fmax(v76, v63);
        v78 = +[CKUIBehavior sharedBehaviors];
        [v78 dividerHeight];
        v6 = v6 + v77 + v79;
      }
    }
  }

  textView = [(CKMessageEntryContentView *)self textView];
  [textView sizeThatFits:{v60, 1.79769313e308}];
  v82 = v81;
  v83 = +[CKUIBehavior sharedBehaviors];
  [v83 entryViewMaxHeight];
  v85 = fmin(v82, v84);

  v86 = width;
  v87 = v6 + fmax(v85, v63);
  result.height = v87;
  result.width = v86;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CKMessageEntryContentView *)self bounds];
  if (v9 != width || v8 != height)
  {
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  }

  v11.receiver = self;
  v11.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CKMessageEntryContentView *)self frame];
  if (v9 != width || v8 != height)
  {
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  }

  v11.receiver = self;
  v11.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v11 setFrame:x, y, width, height];
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v2 didMoveToSuperview];
}

- (CKMessageEntryContentView)initWithFrame:(CGRect)frame shouldShowSubject:(BOOL)subject shouldDisableAttachments:(BOOL)attachments shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions translationLanguage:(id)self0
{
  suggestionsCopy = suggestions;
  stickersCopy = stickers;
  handwritingKeyboardCopy = handwritingKeyboard;
  keyboardCopy = keyboard;
  attachmentsCopy = attachments;
  subjectCopy = subject;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v77[2] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v76.receiver = self;
  v76.super_class = CKMessageEntryContentView;
  height = [(CKMessageEntryContentView *)&v76 initWithFrame:x, y, width, height];
  if (height)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled && !+[_TtC7ChatKit23CKTextEffectCoordinator entryViewTextEffectCoordinationDisabled])
    {
      v25 = [[CKTextEffectCoordinatorConfiguration alloc] initWithLogIdentifier:@"entry_view" timeAfterLastAnimationInSeconds:3.5];
      v26 = [[_TtC7ChatKit23CKTextEffectCoordinator alloc] initWithConfiguration:v25];
      textEffectCoordinator = height->_textEffectCoordinator;
      height->_textEffectCoordinator = v26;

      [(CKTextEffectCoordinator *)height->_textEffectCoordinator setDelegate:height];
      [(CKTextEffectCoordinator *)height->_textEffectCoordinator setPaused:0 includingAnimators:1];
    }

    height->_isCompositionExpirable = 0;
    [(CKMessageEntryContentView *)height setScrollsToTop:0];
    [(CKMessageEntryContentView *)height setShouldShowSubject:subjectCopy];
    v28 = [objc_opt_class() _createTextView:attachmentsCopy shouldUseNonEmojiKeyboard:keyboardCopy shouldUseNonHandwritingKeyboard:handwritingKeyboardCopy shouldDisableKeyboardStickers:stickersCopy shouldAllowPollSuggestions:suggestionsCopy];
    [v28 setDelegate:height];
    [v28 setTextDragDelegate:height];
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070]2 isAutomaticOutgoingTranslationEnabled];

    if (languageCopy && isAutomaticOutgoingTranslationEnabled)
    {
      v31 = objc_alloc_init(CKCompositionTranslator);
      [(CKCompositionTranslator *)v31 setDelegate:height];
      [(CKMessageEntryContentView *)height setTranslator:v31];
      [(CKMessageEntryContentView *)height setTranslationLanguage:languageCopy];
    }

    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled2 = [mEMORY[0x1E69A8070]3 isExpressiveTextEnabled];

    if (isExpressiveTextEnabled2)
    {
      textLayoutManager = [v28 textLayoutManager];
      [textLayoutManager setRequiresCTLineRef:1];

      [v28 setTextFormattingDelegate:height];
      if (CKShouldUseModernRippleAnimation() && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v28 performSelector:sel_setEmojiAnimationDelegate_ withObject:height];
      }
    }

    [(CKMessageEntryContentView *)height setTextView:v28];
    [(CKMessageEntryContentView *)height addSubview:v28];
    [(CKMessageEntryContentView *)height setStyle:4];
    v35 = MEMORY[0x1E695F058];
    if (subjectCopy)
    {
      _createSubjectView = [objc_opt_class() _createSubjectView];
      [_createSubjectView setDelegate:height];
      [(CKMessageEntryContentView *)height setSubjectView:_createSubjectView];
      [(CKMessageEntryContentView *)height addSubview:_createSubjectView];
      v37 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
      v38 = +[CKUIBehavior sharedBehaviors];
      theme = [v38 theme];
      entryFieldBorderColor = [theme entryFieldBorderColor];
      [v37 setBackgroundColor:entryFieldBorderColor];

      v35 = MEMORY[0x1E695F058];
      [(CKMessageEntryContentView *)height setTextAndSubjectDividerLine:v37];
      [(CKMessageEntryContentView *)height addSubview:v37];
    }

    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled2 = [mEMORY[0x1E69A8070]4 isAutomaticOutgoingTranslationEnabled];

    if (isAutomaticOutgoingTranslationEnabled2)
    {
      translationLanguage = [(CKMessageEntryContentView *)height translationLanguage];

      if (translationLanguage)
      {
        _createTranslationView = [objc_opt_class() _createTranslationView];
        [(CKMessageEntryContentView *)height setTranslationView:_createTranslationView];
        [(CKMessageEntryContentView *)height addSubview:_createTranslationView];
        v44 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
        v45 = +[CKUIBehavior sharedBehaviors];
        theme2 = [v45 theme];
        entryFieldBorderColor2 = [theme2 entryFieldBorderColor];
        [v44 setBackgroundColor:entryFieldBorderColor2];

        [(CKMessageEntryContentView *)height setTranslationAndTextDividerLine:v44];
        [(CKMessageEntryContentView *)height addSubview:v44];
      }
    }

    mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]5 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled)
    {
      v50 = +[CKMaterialCloseButton closeButton];
      [(CKMessageEntryContentView *)height bounds];
      [v50 sizeThatFits:{v51, v52}];
      v54 = v53;
      v55 = *MEMORY[0x1E695EFF8];
      v56 = *(MEMORY[0x1E695EFF8] + 8);
      [v50 setBounds:{*MEMORY[0x1E695EFF8], v56, v57, v53}];
      [v50 setCornerRadius:v54 * 0.5];
    }

    else
    {
      v58 = MEMORY[0x1E69DC738];
      v59 = +[CKUIBehavior sharedBehaviors];
      clearPluginButtonConfiguration = [v59 clearPluginButtonConfiguration];
      v50 = [v58 buttonWithConfiguration:clearPluginButtonConfiguration primaryAction:0];

      v55 = *MEMORY[0x1E695EFF8];
      v56 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [v50 accessibilitySetIdentification:@"clearPluginButton"];
    [v50 setExclusiveTouch:0];
    v61 = +[CKUIBehavior sharedBehaviors];
    [v61 clearPluginButtonSize];
    [v50 setBounds:{v55, v56, v62, v63}];

    [v50 addTarget:height action:sel_clearPluginButtonTapped_ forEvents:64];
    [v50 setAlpha:0.0];
    [(CKMessageEntryContentView *)height setClearPluginButton:v50];
    [(CKMessageEntryContentView *)height addSubview:v50];
    v64 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
    v65 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v65 theme];
    entryFieldBorderColor3 = [theme3 entryFieldBorderColor];
    [v64 setBackgroundColor:entryFieldBorderColor3];

    [(CKMessageEntryContentView *)height setPluginDividerLine:v64];
    [(CKMessageEntryContentView *)height addSubview:v64];
    [(CKMessageEntryContentView *)height setNeedsTextLayout:1];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v69 = [(CKMessageEntryContentView *)height registerForTraitChanges:v68 withHandler:&__block_literal_global_155];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_pluginPayloadWantsResize_ name:*MEMORY[0x1E69A5A00] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:height selector:sel_pluginPayloadInvalidatedMessageTintColor_ name:*MEMORY[0x1E69A59F0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:height selector:sel_pluginPayloadDidChangeSendEnabled_ name:*MEMORY[0x1E69A59E8] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:height selector:sel_pluginPayloadDidLoad_ name:*MEMORY[0x1E69A59F8] object:0];
  }

  return height;
}

void __221__CKMessageEntryContentView_initWithFrame_shouldShowSubject_shouldDisableAttachments_shouldUseNonEmojiKeyboard_shouldUseNonHandwritingKeyboard_shouldDisableKeyboardStickers_shouldAllowPollSuggestions_translationLanguage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStyle:objc_msgSend(v2 forceUpdate:{"style"), 1}];
}

- (void)setStyle:(int64_t)style forceUpdate:(BOOL)update
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_style != style || update)
  {
    styleCopy = style;
    self->_style = style;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v48 = 67109120;
        LODWORD(v49) = styleCopy;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating entry view style to %d", &v48, 8u);
      }
    }

    traitCollection = [(CKMessageEntryContentView *)self traitCollection];
    if ([traitCollection isDiffusedSystemGlassSettingEnabled])
    {
      traitCollection2 = [(CKMessageEntryContentView *)self traitCollection];
      isTranscriptBackgroundActive = [traitCollection2 isTranscriptBackgroundActive];
    }

    else
    {
      isTranscriptBackgroundActive = 0;
    }

    traitCollection3 = [(CKMessageEntryContentView *)self traitCollection];
    ck_systemUserInterfaceStyle = [traitCollection3 ck_systemUserInterfaceStyle];

    if (isTranscriptBackgroundActive)
    {
      if (ck_systemUserInterfaceStyle == 2)
      {
        keyboardDarkAppearance = 1;
      }

      else
      {
        keyboardDarkAppearance = 2;
      }
    }

    else
    {
      v14 = CKMessageEntryViewStyleIsForDarkAppearance(self->_style);
      v15 = +[CKUIBehavior sharedBehaviors];
      theme = [v15 theme];
      v17 = theme;
      if (v14)
      {
        keyboardDarkAppearance = [theme keyboardDarkAppearance];
      }

      else
      {
        keyboardDarkAppearance = [theme keyboardAppearance];
      }
    }

    textView = [(CKMessageEntryContentView *)self textView];
    v19 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v19 theme];
    entryFieldTextColor = [theme2 entryFieldTextColor];
    [textView setTextColor:entryFieldTextColor];

    v22 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v22 theme];
    entryFieldPlaceholderTextColor = [theme3 entryFieldPlaceholderTextColor];
    [textView setPlaceholderColor:entryFieldPlaceholderTextColor];

    keyboardAppearance = [textView keyboardAppearance];
    v26 = keyboardAppearance != keyboardDarkAppearance;
    if (keyboardAppearance != keyboardDarkAppearance)
    {
      [textView setKeyboardAppearance:keyboardDarkAppearance];
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (keyboardAppearance != keyboardDarkAppearance)
        {
          v28 = @"YES";
        }

        v48 = 138412290;
        v49 = v28;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Keyboard appearance changed? {%@}", &v48, 0xCu);
      }
    }

    if ([(CKMessageEntryContentView *)self shouldShowSubject])
    {
      subjectView = [(CKMessageEntryContentView *)self subjectView];
      v30 = subjectView == 0;

      if (!v30)
      {
        subjectView2 = [(CKMessageEntryContentView *)self subjectView];
        v32 = +[CKUIBehavior sharedBehaviors];
        theme4 = [v32 theme];
        entryFieldTextColor2 = [theme4 entryFieldTextColor];
        [subjectView2 setTextColor:entryFieldTextColor2];

        v35 = +[CKUIBehavior sharedBehaviors];
        theme5 = [v35 theme];
        entryFieldPlaceholderTextColor2 = [theme5 entryFieldPlaceholderTextColor];
        [subjectView2 setPlaceholderColor:entryFieldPlaceholderTextColor2];

        if ([subjectView2 keyboardAppearance] != keyboardDarkAppearance)
        {
          [subjectView2 setKeyboardAppearance:keyboardDarkAppearance];
          v26 = 1;
        }
      }
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

    if (isAutomaticOutgoingTranslationEnabled)
    {
      translationView = [(CKMessageEntryContentView *)self translationView];

      if (translationView)
      {
        translationView2 = [(CKMessageEntryContentView *)self translationView];
        v42 = +[CKUIBehavior sharedBehaviors];
        theme6 = [v42 theme];
        tertiaryLabelColor = [theme6 tertiaryLabelColor];
        [translationView2 setTextColor:tertiaryLabelColor];
      }
    }

    if ((v26 & [(CKMessageEntryContentView *)self isActive]) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Needs to trigger a keyboard appearance change.", &v48, 2u);
        }
      }

      activeView = [(CKMessageEntryContentView *)self activeView];
      [activeView reloadInputViews];

      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "Call to reloadInputViews returned.", &v48, 2u);
        }
      }
    }
  }
}

- (void)setSendLaterPluginInfo:(id)info animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  infoCopy = info;
  handlerCopy = handler;
  if (self->_sendLaterPluginInfo != infoCopy)
  {
    objc_storeStrong(&self->_sendLaterPluginInfo, info);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E72EB8D0;
    v11 = infoCopy;
    v24 = v11;
    selfCopy = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      v14 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke_2;
      v21[3] = &unk_1E72EE5D8;
      v21[4] = self;
      v22 = v12;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke_3;
      v17[3] = &unk_1E72F2C80;
      v18 = v11;
      selfCopy2 = self;
      v20 = handlerCopy;
      [v14 animateWithDuration:v21 animations:v17 completion:0.2];
    }

    else
    {
      v12[2](v12);
      if (!v11)
      {
        sendLaterView = [(CKMessageEntryContentView *)self sendLaterView];
        [sendLaterView removeFromSuperview];

        [(CKMessageEntryContentView *)self setSendLaterView:0];
      }

      [(CKMessageEntryContentView *)self layoutIfNeeded];
      delegate = [(CKMessageEntryContentView *)self delegate];
      [delegate messageEntryContentViewSendLaterPluginInfoUpdated:self];

      handlerCopy[2](handlerCopy);
    }
  }
}

void __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sendLaterView];
  v9 = v3;
  if (v2)
  {
    [v3 removeFromSuperview];

    v4 = [[CKSendLaterView alloc] initWithPluginContext:*(a1 + 32)];
    [*(a1 + 40) setSendLaterView:v4];

    v5 = *(a1 + 40);
    v6 = [v5 sendLaterView];
    [v5 addSubview:v6];

    v7 = [*(a1 + 40) sendLaterView];
    [v7 addDelegate:*(a1 + 40)];

    v8 = *(a1 + 40);

    [v8 __ck_scrollToTop:1];
  }

  else
  {
    [v3 setAlpha:0.0];
  }
}

void __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) layoutIfNeeded];
  v2 = [*(a1 + 32) delegate];
  [v2 messageEntryContentViewSendLaterPluginInfoUpdated:*(a1 + 32)];
}

uint64_t __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = [*(a1 + 40) sendLaterView];
    [v2 removeFromSuperview];

    [*(a1 + 40) setSendLaterView:0];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)setComposition:(id)composition forceUpdateText:(BOOL)text
{
  textCopy = text;
  compositionCopy = composition;
  if ((CKIsEqual(self->_composition, compositionCopy) & 1) == 0)
  {
    [(CKMessageEntryContentView *)self invalidateComposition];
    shelfPluginPayload = [compositionCopy shelfPluginPayload];
    skipConfigurePlugin = [shelfPluginPayload skipConfigurePlugin];

    shelfPluginPayload2 = [compositionCopy shelfPluginPayload];
    shelfPluginPayload8 = shelfPluginPayload2;
    if (skipConfigurePlugin)
    {
      [shelfPluginPayload2 setSkipConfigurePlugin:0];

      shelfPluginPayload3 = [compositionCopy shelfPluginPayload];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        shelfPluginPayload4 = [compositionCopy shelfPluginPayload];
        datasource = [shelfPluginPayload4 datasource];
        [datasource setPluginDataSourceDelegate:self];
      }

      shelfPluginPayload5 = [compositionCopy shelfPluginPayload];
      datasource2 = [shelfPluginPayload5 datasource];

      if (!datasource2)
      {
        shelfPluginPayload6 = [(CKMessageEntryContentView *)self shelfPluginPayload];
        datasource3 = [shelfPluginPayload6 datasource];
        shelfPluginPayload7 = [compositionCopy shelfPluginPayload];
        [shelfPluginPayload7 setDatasource:datasource3];
      }

      shelfPluginPayload8 = [compositionCopy shelfPluginPayload];
      [(CKMessageEntryContentView *)self setShelfPluginPayload:shelfPluginPayload8];
    }

    else
    {
      [(CKMessageEntryContentView *)self configureShelfForPluginPayload:shelfPluginPayload2];
    }

    bizIntent = [compositionCopy bizIntent];
    [(CKMessageEntryContentView *)self setBizIntent:bizIntent];

    shelfMediaObject = [compositionCopy shelfMediaObject];
    [(CKMessageEntryContentView *)self setShelfMediaObject:shelfMediaObject];

    collaborationShareOptions = [compositionCopy collaborationShareOptions];
    [(CKMessageEntryContentView *)self setCollaborationShareOptions:collaborationShareOptions];

    collaborationOptions = [compositionCopy collaborationOptions];
    [(CKMessageEntryContentView *)self setCollaborationOptions:collaborationOptions];

    sendLaterPluginInfo = [compositionCopy sendLaterPluginInfo];
    [(CKMessageEntryContentView *)self setSendLaterPluginInfo:sendLaterPluginInfo animated:0 completionHandler:&__block_literal_global_273_1];

    if (![(CKMessageEntryContentView *)self _shouldDeferUpdateUI]|| textCopy)
    {
      textView = [(CKMessageEntryContentView *)self textView];
      text = [compositionCopy text];
      [textView setCompositionText:text];

      subjectView = [(CKMessageEntryContentView *)self subjectView];
      subject = [compositionCopy subject];
      [subjectView setCompositionText:subject];

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(subject) = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

      if (subject)
      {
        translationView = [(CKMessageEntryContentView *)self translationView];
        translation = [compositionCopy translation];
        [translationView setCompositionText:translation];

        translation2 = [compositionCopy translation];
        v32 = [translation2 length];

        if (!v32)
        {
          translationView2 = [(CKMessageEntryContentView *)self translationView];
          [translationView2 setHidden:1];
        }
      }

      -[CKMessageEntryContentView setIsCompositionExpirable:](self, "setIsCompositionExpirable:", [compositionCopy isExpirableComposition]);
      self->_shouldHideClearPluginButton = [compositionCopy shouldHideClearPluginButton];
    }
  }
}

- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes
{
  textView = [(CKMessageEntryContentView *)self textView];
  [textView hideTextEffectsPickerIfNeededAndResetTypingAttributes];
}

- (void)configureShelfForPluginPayload:(id)payload
{
  v50 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (!payloadCopy || (-[CKMessageEntryContentView shelfPluginPayload](self, "shelfPluginPayload"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [payloadCopy isEqualToPluginPayload:v5], v5, !v6))
  {
    pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];

    if (pluginEntryViewController)
    {
      pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
      view = [pluginEntryViewController2 view];
      [view removeFromSuperview];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = payloadCopy;
      shouldSendAsMediaObject = [v11 shouldSendAsMediaObject];
      if (payloadCopy)
      {
LABEL_11:
        pluginBundleID = [payloadCopy pluginBundleID];
        v14 = IMBalloonExtensionIDWithSuffix();
        v15 = [pluginBundleID isEqualToString:v14];

        photoShelfViewController = [v11 photoShelfViewController];
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = @"NO";
            if (v15)
            {
              v18 = @"YES";
            }

            *buf = 138412546;
            v47 = v18;
            v48 = 2112;
            v49 = photoShelfViewController;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "isPhotosPluginPayload: %@, photoShelfVC: %@", buf, 0x16u);
          }
        }

        if (!photoShelfViewController)
        {
          v15 = 0;
        }

        v19 = IMOSLoggingEnabled();
        if (v15)
        {
          if (v19)
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = payloadCopy;
              _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Staging photos plugin payload: %@", buf, 0xCu);
            }
          }

          [(CKMessageEntryContentView *)self setShelfPluginPayload:payloadCopy];
          [(CKMessageEntryContentView *)self setPluginEntryViewController:photoShelfViewController];
        }

        else
        {
          if (v19)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = payloadCopy;
              _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Staging plugin payload: %@", buf, 0xCu);
            }
          }

          mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
          pluginBundleID2 = [payloadCopy pluginBundleID];
          v43 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID2];

          dataSourceClass = [v43 dataSourceClass];
          if ((shouldSendAsMediaObject & 1) != 0 || !dataSourceClass)
          {
            dataSourceClass = objc_opt_class();
          }

          v26 = [[dataSourceClass alloc] initWithPluginPayload:payloadCopy];
          [payloadCopy setDatasource:v26];
          conversation = [(CKMessageEntryContentView *)self conversation];
          chat = [conversation chat];
          [v26 setChat:chat];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v26 setPluginDataSourceDelegate:self];
          }

          v41 = [MEMORY[0x1E69A5C40] stagingContextWithIdentifier:@"stagedShelfPlugin" isEmbeddedInTextView:0];
          [v26 setPayloadInShelf:1];
          [v26 setStagingContext:v41];
          [v26 payloadWillEnterShelf];
          mEMORY[0x1E69A5AD0]2 = [MEMORY[0x1E69A5AD0] sharedInstance];
          associatedMessageGUID = [payloadCopy associatedMessageGUID];
          pluginBundleID3 = [payloadCopy pluginBundleID];
          v40 = [mEMORY[0x1E69A5AD0]2 existingDataSourceForMessageGUID:associatedMessageGUID bundleID:pluginBundleID3];

          [v40 beginShowingLastConsumedBreadcrumbForOutgoingPayload:payloadCopy];
          v32 = [[CKDefaultPluginEntryViewController alloc] initWithDataSource:v26 entryViewDelegate:0 andPlugin:v43];
          pluginBundleID4 = [payloadCopy pluginBundleID];
          v34 = IMBalloonExtensionIDWithSuffix();
          if ([pluginBundleID4 isEqualToString:v34])
          {
            [(CKMessageEntryContentView *)self setShouldSkipRemovalFromParent:1];
          }

          else
          {
            pluginBundleID5 = [payloadCopy pluginBundleID];
            v36 = IMBalloonExtensionIDWithSuffix();
            -[CKMessageEntryContentView setShouldSkipRemovalFromParent:](self, "setShouldSkipRemovalFromParent:", [pluginBundleID5 isEqualToString:v36]);
          }

          view2 = [(CKDefaultPluginEntryViewController *)v32 view];
          [view2 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

          if ([(CKMessageEntryContentView *)self pendingShelfPayloadWillAnimateIn])
          {
            view3 = [(CKDefaultPluginEntryViewController *)v32 view];
            [view3 setAlpha:0.0];

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __60__CKMessageEntryContentView_configureShelfForPluginPayload___block_invoke;
            block[3] = &unk_1E72EBA18;
            v45 = v32;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            [(CKMessageEntryContentView *)self setPendingShelfPayloadWillAnimateIn:0];
          }

          [(CKMessageEntryContentView *)self setShelfPluginPayload:payloadCopy];
          [(CKMessageEntryContentView *)self setPluginEntryViewController:v32];
          delegate = [(CKMessageEntryContentView *)self delegate];
          [delegate messageEntryContentView:self didStagePluginPayload:payloadCopy];
        }

LABEL_49:
        goto LABEL_50;
      }
    }

    else
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(CKMessageEntryContentView *)payloadCopy configureShelfForPluginPayload:v21];
      }

      shouldSendAsMediaObject = 0;
      v11 = 0;
      if (payloadCopy)
      {
        goto LABEL_11;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v47 = "[CKMessageEntryContentView configureShelfForPluginPayload:]";
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%s: Clearing staged plugin due to nil pluginPayload", buf, 0xCu);
      }
    }

    [(CKMessageEntryContentView *)self setShelfPluginPayload:0];
    [(CKMessageEntryContentView *)self setPluginEntryViewController:0];
    goto LABEL_49;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[CKMessageEntryContentView configureShelfForPluginPayload:]";
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Early returning from %s. Plugin payload is identical to the one already staged", buf, 0xCu);
    }
  }

LABEL_50:
}

void __60__CKMessageEntryContentView_configureShelfForPluginPayload___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__CKMessageEntryContentView_configureShelfForPluginPayload___block_invoke_2;
  v2[3] = &unk_1E72EBA18;
  v3 = *(a1 + 32);
  [v1 animateWithDuration:v2 animations:0.5];
}

void __60__CKMessageEntryContentView_configureShelfForPluginPayload___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)setPluginEntryViewController:(id)controller
{
  controllerCopy = controller;
  if (CKIsEqual(self->_pluginEntryViewController, controllerCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v7 = "Content view contained the same plugin entry view controller. Keeping the old one instead of replacing it.";
        v8 = &v15;
LABEL_18:
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (self->_pluginEntryViewController && ![(CKMessageEntryContentView *)self shouldSkipRemovalFromParent])
    {
      [(CKPluginEntryViewController *)self->_pluginEntryViewController willMoveToParentViewController:0];
      view = [(CKPluginEntryViewController *)self->_pluginEntryViewController view];
      [view removeFromSuperview];

      [(CKPluginEntryViewController *)self->_pluginEntryViewController removeFromParentViewController];
      pluginEntryViewController = self->_pluginEntryViewController;
      self->_pluginEntryViewController = 0;
    }

    if (controllerCopy)
    {
      objc_storeStrong(&self->_pluginEntryViewController, controller);
      [(CKMessageEntryContentView *)self setShouldSkipRemovalFromParent:0];
      delegate = [(CKMessageEntryContentView *)self delegate];
      if (!delegate)
      {
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CKMessageEntryContentView setPluginEntryViewController:];
        }
      }

      [delegate messageEntryContentView:self updatePluginSendEnablementTo:1];
      [delegate messageEntryContentView:self willAddPluginEntryViewControllerToViewHierarchy:self->_pluginEntryViewController];
      view2 = [(CKPluginEntryViewController *)self->_pluginEntryViewController view];
      [(CKMessageEntryContentView *)self addSubview:view2];

      [delegate messageEntryContentView:self didAddPluginEntryViewControllerToViewHierarchy:self->_pluginEntryViewController];
    }

    if (![(CKMessageEntryContentView *)self _shouldDeferUpdateUI])
    {
      [(CKMessageEntryContentView *)self _updateUI];
      delegate2 = [(CKMessageEntryContentView *)self delegate];
      [delegate2 messageEntryContentViewShelfDidChange:self];

      goto LABEL_21;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "Deferring plugin UI update.";
        v8 = buf;
        goto LABEL_18;
      }

LABEL_19:
    }
  }

LABEL_21:
}

- (BOOL)isActive
{
  activeView = [(CKMessageEntryContentView *)self activeView];
  isFirstResponder = [activeView isFirstResponder];

  return isFirstResponder;
}

- (CKMessageEntryTextView)activeView
{
  WeakRetained = objc_loadWeakRetained(&self->_activeView);
  if (!WeakRetained)
  {
    WeakRetained = [(CKMessageEntryContentView *)self textView];
  }

  return WeakRetained;
}

- (BOOL)makeActive
{
  activeView = [(CKMessageEntryContentView *)self activeView];
  becomeFirstResponder = [activeView becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)_shouldDeferUpdateUI
{
  composition = [(CKMessageEntryContentView *)self composition];
  shelfPluginPayload = [composition shelfPluginPayload];
  if (shelfPluginPayload)
  {
    mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
    pluginBundleID = [shelfPluginPayload pluginBundleID];
    v7 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

    if ([v7 prefersNoLoadingBubbles])
    {
      v8 = 0;
    }

    else
    {
      v9 = [objc_alloc(objc_msgSend(v7 "dataSourceClass"))];
      if ([v9 supportsDynamicSize])
      {
        pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
        v8 = pluginEntryViewController != 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSingleLine
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  textView = [(CKMessageEntryContentView *)self textView];
  textLayoutManager = [textView textLayoutManager];
  textView2 = [(CKMessageEntryContentView *)self textView];
  textLayoutManager2 = [textView2 textLayoutManager];
  documentRange = [textLayoutManager2 documentRange];
  location = [documentRange location];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CKMessageEntryContentView_isSingleLine__block_invoke;
  v11[3] = &unk_1E72EC8C8;
  v11[4] = &v12;
  v9 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v11];

  LOBYTE(textView) = v13[3] == 1;
  _Block_object_dispose(&v12, 8);
  return textView;
}

BOOL __41__CKMessageEntryContentView_isSingleLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return *(*(*(a1 + 32) + 8) + 24) < 2uLL;
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  requestedPlaceholderText = [(CKMessageEntryContentView *)self requestedPlaceholderText];
  v5 = [requestedPlaceholderText isEqualToString:textCopy];

  if ((v5 & 1) == 0)
  {
    [(CKMessageEntryContentView *)self setRequestedPlaceholderText:textCopy];
    [(CKMessageEntryContentView *)self _updateUI];
  }
}

- (NSString)placeholderText
{
  textView = [(CKMessageEntryContentView *)self textView];
  placeholderText = [textView placeholderText];

  return placeholderText;
}

- (void)setBalloonColor:(char)color
{
  colorCopy = color;
  textView = [(CKMessageEntryContentView *)self textView];
  [textView setBalloonColor:colorCopy];
}

- (UIEdgeInsets)contentTextAlignmentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  entryViewlayoutMetrics = [v2 entryViewlayoutMetrics];

  [entryViewlayoutMetrics entryViewTextAlignmentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (char)balloonColor
{
  textView = [(CKMessageEntryContentView *)self textView];
  balloonColor = [textView balloonColor];

  return balloonColor;
}

- (void)setPlaceHolderWidth:(double)width
{
  self->_placeHolderWidth = width;
  textView = [(CKMessageEntryContentView *)self textView];
  [textView setPlaceHolderWidth:width];

  subjectView = [(CKMessageEntryContentView *)self subjectView];
  [subjectView setPlaceHolderWidth:width];
}

- (void)setShouldStripEmojis:(BOOL)emojis
{
  emojisCopy = emojis;
  self->_shouldStripEmojis = emojis;
  textView = [(CKMessageEntryContentView *)self textView];
  [textView setShouldStripEmojis:emojisCopy];
}

- (void)acceptAutocorrectionForChat:(id)chat completionHandler:(id)handler
{
  v56[3] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  handlerCopy = handler;
  proofreadingInfo = [chatCopy proofreadingInfo];
  v9 = [proofreadingInfo count];

  if (v9)
  {
    [chatCopy setProofreadingInfo:0];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v10 = MEMORY[0x193AF5ED0]("NSBridgedPerformPendingTextCheckingAndReturnInfo", @"AppKit");
    if (v10)
    {
      v11 = v10();
      if ([v11 count])
      {
        v12 = [v11 objectForKeyedSubscript:@"UnderlineRanges"];
        v13 = [v11 objectForKeyedSubscript:@"TextCorrections"];
        v14 = [v11 objectForKeyedSubscript:@"ReplacedStrings"];
        v15 = 0x1E695D000;
        v45 = v14;
        if (v12)
        {
          if (v13)
          {
            v16 = v14;
            if (v14)
            {
              lastObject = [v12 lastObject];
              lastObject2 = [v13 lastObject];
              v19 = v16;
              v20 = lastObject;
              lastObject3 = [v19 lastObject];
              if (lastObject && lastObject2 && lastObject3)
              {
                v44 = lastObject3;
                v42 = v12;
                v43 = lastObject2;
                v41 = v13;
                rangeValue = [lastObject rangeValue];
                v39 = v23;
                [(CKMessageEntryContentView *)self textView];
                v25 = v24 = v20;
                textView = [(CKMessageEntryContentView *)self textView];
                beginningOfDocument = [textView beginningOfDocument];
                v28 = [v25 positionFromPosition:beginningOfDocument offset:rangeValue + v39];

                textView2 = [(CKMessageEntryContentView *)self textView];
                endOfDocument = [textView2 endOfDocument];
                v40 = v28;
                LODWORD(beginningOfDocument) = [v28 isEqual:endOfDocument];

                if (beginningOfDocument)
                {
                  v55[0] = @"UnderlineRanges";
                  v31 = v24;
                  v54 = v24;
                  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                  v56[0] = v32;
                  v55[1] = @"TextCorrections";
                  v53 = v43;
                  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
                  v56[1] = v33;
                  v55[2] = @"ReplacedStrings";
                  v52 = v44;
                  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                  v56[2] = v34;
                  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];

                  v11 = v35;
                }

                else
                {
                  v31 = v24;
                }

                v13 = v41;
                v12 = v42;

                v20 = v31;
                lastObject2 = v43;
                lastObject3 = v44;
              }

              v15 = 0x1E695D000uLL;
            }
          }
        }

        v50 = *MEMORY[0x1E69A5860];
        v51 = v11;
        v36 = [*(v15 + 3872) dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        [chatCopy setProofreadingInfo:v36];
      }
    }
  }

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v38 = activeKeyboard;
  if (activeKeyboard)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__CKMessageEntryContentView_acceptAutocorrectionForChat_completionHandler___block_invoke;
    v46[3] = &unk_1E72F2C80;
    v47 = activeKeyboard;
    selfCopy = self;
    v49 = handlerCopy;
    [v47 acceptAutocorrectionWithCompletionHandler:v46];
  }

  else
  {
    [(CKMessageEntryContentView *)self invalidateComposition];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __75__CKMessageEntryContentView_acceptAutocorrectionForChat_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CKMessageEntryContentView_acceptAutocorrectionForChat_completionHandler___block_invoke_2;
  v7[3] = &unk_1E72F0150;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __75__CKMessageEntryContentView_acceptAutocorrectionForChat_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeAutocorrectPrompt];
  [*(a1 + 32) updateLayout];
  [*(a1 + 40) invalidateComposition];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56));
    v3 = [*(a1 + 40) textView];
    [v3 setProofreadingInfo:0];
  }
}

- (void)willAnimateBoundsChange
{
  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    [pluginEntryViewController willAnimateBoundsChange];
  }
}

- (void)didFinishAnimatedBoundsChange
{
  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    [pluginEntryViewController didFinishAnimatedBoundsChange];
  }
}

- (void)collapseTextFieldsIfInPencilMode
{
  textView = [(CKMessageEntryContentView *)self textView];
  if ([textView isInPencilMode])
  {
  }

  else
  {
    subjectView = [(CKMessageEntryContentView *)self subjectView];
    isInPencilMode = [subjectView isInPencilMode];

    if (!isInPencilMode)
    {
      return;
    }
  }

  textView2 = [(CKMessageEntryContentView *)self textView];
  [textView2 setInPencilMode:0];

  subjectView2 = [(CKMessageEntryContentView *)self subjectView];
  [subjectView2 setInPencilMode:0];

  textView3 = [(CKMessageEntryContentView *)self textView];
  [textView3 layoutSubviews];

  subjectView3 = [(CKMessageEntryContentView *)self subjectView];
  [subjectView3 layoutSubviews];
}

+ (BOOL)_platformNeedsConservativeLayoutUpdates
{
  if (_platformNeedsConservativeLayoutUpdates_onceToken != -1)
  {
    +[CKMessageEntryContentView _platformNeedsConservativeLayoutUpdates];
  }

  return _platformNeedsConservativeLayoutUpdates_flag;
}

BOOL __68__CKMessageEntryContentView__platformNeedsConservativeLayoutUpdates__block_invoke()
{
  if (CKIsRunningInMacCatalyst())
  {
    result = 1;
  }

  else
  {
    result = +[CKUtilities isIpad];
  }

  _platformNeedsConservativeLayoutUpdates_flag = result;
  return result;
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  v10 = [actions mutableCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  v13 = 0x1E69DC000uLL;
  if (isExpressiveTextEnabled)
  {
    v14 = [MEMORY[0x1E69DCC60] ck_indexOfMenuWithMenuIdentifier:*MEMORY[0x1E69DE118] inMenuElementsArray:v10];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
      [v10 removeObjectAtIndex:v14];
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070]2 isExpressiveTextEnabled])
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([mEMORY[0x1E69A8070]3 isSendingExpressiveTextEnabled])
      {
        textView = [(CKMessageEntryContentView *)self textView];

        v19 = textView == viewCopy;
        v13 = 0x1E69DC000uLL;
        if (!v19)
        {
          goto LABEL_15;
        }

        if (CKIsRunningInMacCatalyst())
        {
          textView2 = [(CKMessageEntryContentView *)self textView];
          isExpressiveTextEnabled2 = [textView2 isExpressiveTextEnabled];

          if (!isExpressiveTextEnabled2)
          {
            goto LABEL_15;
          }

          mEMORY[0x1E69A8070]2 = [(CKMessageEntryContentView *)self textEffectsEditMenuForTextInRange:location, length];
          if (!mEMORY[0x1E69A8070]2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!self->_textViewRespondsToShowTextFormattingAnimationOptions)
          {
            v31 = MEMORY[0x1E696AD98];
            textView3 = [(CKMessageEntryContentView *)self textView];
            v33 = [v31 numberWithBool:objc_opt_respondsToSelector() & 1];
            textViewRespondsToShowTextFormattingAnimationOptions = self->_textViewRespondsToShowTextFormattingAnimationOptions;
            self->_textViewRespondsToShowTextFormattingAnimationOptions = v33;
          }

          textView4 = [(CKMessageEntryContentView *)self textView];
          mEMORY[0x1E69A8070]2 = [textView4 showTextEffectsPickerEditMenuAction];

          if (!mEMORY[0x1E69A8070]2)
          {
            goto LABEL_14;
          }

          v36 = [MEMORY[0x1E69DCC60] ck_indexAfterMenuWithMenuIdentifier:*MEMORY[0x1E69DE1D0] inMenuElementsArray:v10];
          if (v36 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = 0;
          }

          else
          {
            v15 = v36;
          }

          v37 = CKFrameworkBundle();
          v38 = [v37 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
          [mEMORY[0x1E69A8070]2 setTitle:v38];

          v13 = 0x1E69DC000;
        }

        [v10 insertObject:mEMORY[0x1E69A8070]2 atIndex:v15];
      }

      else
      {
      }
    }

LABEL_14:
  }

LABEL_15:
  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRichLinkImprovementsEnabled = [mEMORY[0x1E69A8070]4 isRichLinkImprovementsEnabled];

  if (isRichLinkImprovementsEnabled)
  {
    attributedText = [viewCopy attributedText];
    v25 = [(CKMessageEntryContentView *)self richLinksEditMenuForAttributedText:attributedText inRange:location, length];

    if (v25)
    {
      [v10 insertObject:v25 atIndex:{objc_msgSend(*(v13 + 3168), "ck_menuInsertionIndexAfterIndex:inMenuElementsArray:", objc_msgSend(*(v13 + 3168), "ck_indexOfMenuWithMenuIdentifier:inMenuElementsArray:", *MEMORY[0x1E69DE1D0], v10), v10)}];
    }
  }

  v26 = 16 * (CKIsRunningInMacCatalyst() != 0);
  v27 = *(v13 + 3168);
  v28 = [v10 copy];
  v29 = [v27 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:v26 children:v28];

  return v29;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_activeView);
  if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_activeView), v7, v6, v7 == editingCopy))
  {
    delegate = [(CKMessageEntryContentView *)self delegate];
    v8 = [delegate messageEntryContentViewShouldBeginEditing:self];
  }

  else
  {
    v8 = 1;
    [(CKMessageEntryContentView *)self setIgnoreEndEditing:1];
  }

  return v8;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_activeView);
  v6 = WeakRetained != 0;

  [(CKMessageEntryContentView *)self setActiveView:editingCopy];
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidBeginEditing:self wasAlreadyActive:v6];
}

- (void)textViewDidEndEditing:(id)editing
{
  if ([(CKMessageEntryContentView *)self ignoreEndEditing])
  {

    [(CKMessageEntryContentView *)self setIgnoreEndEditing:0];
  }

  else
  {
    [(CKMessageEntryContentView *)self setActiveView:0];
    delegate = [(CKMessageEntryContentView *)self delegate];
    [delegate messageEntryContentViewDidEndEditing:self];
  }
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  [(CKMessageEntryContentView *)self invalidateComposition];
  v16 = 0;
  [changeCopy updateFontIfNeededAndGetWasUsingBigEmojiStyle:&v16];
  attributedText = [changeCopy attributedText];
  v6 = [attributedText length];

  if (!v6 && (v16 - 1) <= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "didClearBigEmoji", buf, 2u);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CKMessageEntryContentView_textViewDidChange___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  textView = [(CKMessageEntryContentView *)self textView];
  [textView performTextViewUpdatesNeededBeforeLayoutPass];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textView2 = [(CKMessageEntryContentView *)self textView];

    if (textView2 == changeCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47__CKMessageEntryContentView_textViewDidChange___block_invoke_2;
      v13[3] = &unk_1E72EBA18;
      v13[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v13);
      [(CKMessageEntryContentView *)self textViewNeedsUpdatedTranslation];
    }
  }

  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidChange:self isTextChange:1 isShelfChange:0];

  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  [(CKMessageEntryContentView *)self setNeedsEnsureSelectionVisible:1];
  if ([objc_opt_class() _platformNeedsConservativeLayoutUpdates])
  {
    [(CKMessageEntryContentView *)self setNeedsLayout];
  }
}

void __47__CKMessageEntryContentView_textViewDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateUI];
  v2 = [*(a1 + 32) delegate];
  [v2 messageEntryContentViewDidChange:*(a1 + 32) isTextChange:1 isShelfChange:0];
}

void __47__CKMessageEntryContentView_textViewDidChange___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) textEffectCoordinator];
  [v1 updateWithReason:@"text changed"];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  rangeCopy = range;
  viewCopy = view;
  textCopy = text;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(length) = [delegate messageEntryContentView:self shouldChangeTextInRange:location replacementText:{length, textCopy}];

  if ((length & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKMessageEntryContentViewDelegate shouldChangeTextInRange returned NO. Rejecting text change.", v21, 2u);
      }
    }

    goto LABEL_10;
  }

  textView = [(CKMessageEntryContentView *)self textView];

  if (textView == viewCopy)
  {
    textView2 = [(CKMessageEntryContentView *)self textView];
    v15 = [textView2 shouldUpdateMentionsInRange:&rangeCopy replacementText:textCopy];

    [(CKMessageEntryContentView *)self _provideHapticFeedbackIfNecessaryForText:textCopy];
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  [(CKMessageEntryContentView *)self _provideHapticFeedbackIfNecessaryForText:textCopy];
LABEL_9:
  textView3 = [(CKMessageEntryContentView *)self textView];
  [textView3 setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];

  textView4 = [(CKMessageEntryContentView *)self textView];
  effectsPickerAssistant = [textView4 effectsPickerAssistant];
  [effectsPickerAssistant adjustTypingAttributesIfNeededForReplacement:textCopy inRange:{rangeCopy.location, rangeCopy.length}];

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  textView = [(CKMessageEntryContentView *)self textView];

  v5 = selectionCopy;
  if (textView == selectionCopy)
  {
    [selectionCopy selectedRange];
    if (!v6)
    {
      [(CKMessageEntryContentView *)self setNeedsEnsureSelectionVisible:1];
      [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
      if ([objc_opt_class() _platformNeedsConservativeLayoutUpdates])
      {
        [(CKMessageEntryContentView *)self setNeedsLayout];
      }

      else
      {
        [(CKMessageEntryContentView *)self ensureSelectionVisibleIfNeeded];
        [(CKMessageEntryContentView *)self ensureTextViewVisibleIfNeeded];
      }
    }

    v7 = +[CKMentionsUtilities supportsSupplementalLexiconMentions];
    v5 = selectionCopy;
    if (!v7)
    {
      [selectionCopy checkForMentions];
      v5 = selectionCopy;
    }
  }
}

- (void)textViewWritingToolsWillBegin:(id)begin
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];

    if (textEffectCoordinator)
    {
      textEffectCoordinator2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator2 reset];

      textEffectCoordinator3 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator3 setPaused:1 includingAnimators:1];

      textEffectCoordinator4 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator4 updateWithReason:@"pausing because writing tools will begin"];
    }
  }
}

- (void)textViewWritingToolsDidEnd:(id)end
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];

    if (textEffectCoordinator)
    {
      textEffectCoordinator2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator2 setPaused:0 includingAnimators:0];

      textEffectCoordinator3 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator3 updateWithReason:@"unpausing because writing tools did end"];
    }
  }
}

- (void)_provideHapticFeedbackIfNecessaryForText:(id)text
{
  textCopy = text;
  conversation = [(CKMessageEntryContentView *)self conversation];
  isStewieConversation = [conversation isStewieConversation];

  if (isStewieConversation)
  {
    impactFeedbackGenerator = [(CKMessageEntryContentView *)self impactFeedbackGenerator];

    if (!impactFeedbackGenerator)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:2];
      [(CKMessageEntryContentView *)self setImpactFeedbackGenerator:v7];

      impactFeedbackGenerator2 = [(CKMessageEntryContentView *)self impactFeedbackGenerator];
      [impactFeedbackGenerator2 prepare];
    }

    textView = [(CKMessageEntryContentView *)self textView];
    textStorage = [textView textStorage];
    string = [textStorage string];

    if ([string lengthOfBytesUsingEncoding:4] <= 0x9F)
    {
      v12 = [string stringByAppendingString:textCopy];
      if ([v12 lengthOfBytesUsingEncoding:4] >= 0xA0)
      {
        impactFeedbackGenerator3 = [(CKMessageEntryContentView *)self impactFeedbackGenerator];
        [impactFeedbackGenerator3 impactOccurred];
      }
    }
  }
}

- (double)maxWidthForPreviewImagesInMessageEntryRichTextView:(id)view
{
  [(CKMessageEntryContentView *)self maxPreviewContentWidthWhenExpanded];
  v5 = v4;
  [(CKMessageEntryContentView *)self containerViewLineWidth];
  v7 = v5 + v6 * -2.0;
  [(CKMessageEntryContentView *)self entryContentViewTextLeftOffset];
  v9 = v7 - v8;
  [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
  return v9 - v10;
}

- (void)messageEntryTextViewDidChangePencilMode:(id)mode
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidChangePencilMode:self];
}

- (BOOL)messageEntryRichTextView:(id)view shouldPasteMediaObjects:(id)objects
{
  objectsCopy = objects;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(self) = [delegate messageEntryContentView:self shouldInsertMediaObjects:objectsCopy];

  return self;
}

- (void)messageEntryRichTextView:(id)view didTapMediaObject:(id)object
{
  objectCopy = object;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self didTapMediaObject:objectCopy];
}

- (void)messageEntryRichTextViewWasTapped:(id)tapped isLongPress:(BOOL)press
{
  pressCopy = press;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewWasTapped:self isLongPress:pressCopy];
}

- (void)messageEntryRichTextView:(id)view pastedURL:(id)l
{
  lCopy = l;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self didPasteURL:lCopy];
}

- (void)messageEntryRichTextViewDidTapHandwritingKey:(id)key
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidTapHandwritingKey:self];
}

- (BOOL)messageEntryRichTextViewSupportsInlineAdaptiveImageGlyphs:(id)glyphs
{
  conversation = [(CKMessageEntryContentView *)self conversation];
  supportsInlineAdaptiveImageGlyphs = [conversation supportsInlineAdaptiveImageGlyphs];

  return supportsInlineAdaptiveImageGlyphs;
}

- (BOOL)messageEntryRichTextView:(id)view shouldRecognizeGesture:(id)gesture
{
  selfCopy = self;
  v5 = [(CKMessageEntryContentView *)self delegate:view];
  LOBYTE(selfCopy) = [v5 messageEntryContentViewShouldBeginEditing:selfCopy];

  return selfCopy;
}

- (BOOL)messageEntryRichTextViewShouldResignFirstResponder:(id)responder
{
  selfCopy = self;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryContentViewShouldResignFirstResponder:selfCopy];

  return selfCopy;
}

- (void)messageEntryRichTextView:(id)view didPasteComposition:(id)composition
{
  v26 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([mEMORY[0x1E69A7FC8] checksForSensitivityOnSend])
  {
    v16 = mEMORY[0x1E69A7FC8];
    v17 = compositionCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [compositionCopy mediaObjects];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          mEMORY[0x1E69A7FC0] = [MEMORY[0x1E69A7FC0] sharedManager];
          fileURL = [v10 fileURL];
          conversation = [(CKMessageEntryContentView *)self conversation];
          chat = [conversation chat];
          chatIdentifier = [chat chatIdentifier];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __74__CKMessageEntryContentView_messageEntryRichTextView_didPasteComposition___block_invoke;
          v20[3] = &unk_1E72EC088;
          v20[4] = v10;
          [mEMORY[0x1E69A7FC0] isSensitiveContent:fileURL withChatID:chatIdentifier completionHandler:v20];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    mEMORY[0x1E69A7FC8] = v16;
    compositionCopy = v17;
  }
}

void __74__CKMessageEntryContentView_messageEntryRichTextView_didPasteComposition___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) filename];
      v8 = v7;
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Pasted asset %@ is sensitive: %@", &v10, 0x16u);
    }
  }
}

- (void)messageEntryRichTextView:(id)view willAddPluginTextAttachmentViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self willAddPluginEntryViewControllerToViewHierarchy:hierarchyCopy];
}

- (void)messageEntryRichTextView:(id)view didAddPluginTextAttachmentViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self didAddPluginEntryViewControllerToViewHierarchy:hierarchyCopy];
}

- (double)balloonMaxWidthForMessageEntryRichTextView:(id)view
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate balloonMaxWidthForMessageEntryRichTextView:self];
  v6 = v5;

  return v6;
}

- (BOOL)messageEntryRichTextViewShouldAllowLinkCustomization:(id)customization
{
  selfCopy = self;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryContentViewShouldAllowLinkCustomization:selfCopy];

  return selfCopy;
}

- (void)messageEntryRichTextViewWillPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewWillPresentCustomizationPicker:self];
}

- (void)messageEntryRichTextViewDidPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidPresentCustomizationPicker:self];
}

- (void)messageEntryRichTextViewWillDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewWillDismissCustomizationPicker:self];
}

- (void)messageEntryRichTextViewDidDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidDismissCustomizationPicker:self];
}

- (id)gradientReferenceViewForMessageEntryRichTextView:(id)view
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  v5 = [delegate gradientReferenceViewForMessageEntryContentView:self];

  return v5;
}

- (BOOL)messageEntryRichTextView:(id)view canPerformDictationAction:(id)action
{
  actionCopy = action;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(self) = [delegate messageEntryContentView:self canPerformDictationAction:actionCopy];

  return self;
}

- (void)messageEntryRichTextView:(id)view didTapGenerativeButtonForImageURL:(id)l
{
  lCopy = l;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self didRequestGenerativeContentForImageURL:lCopy];
}

- (void)messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)progress
{
  progressCopy = progress;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:progressCopy];
}

- (void)messageEntryRichTextView:(id)view didReceiveInputSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self didReceiveInputSuggestion:suggestionCopy];
}

- (BOOL)messageEntryRichTextViewShouldBeDisabled:(id)disabled
{
  selfCopy = self;
  delegate = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryContentViewShouldBeDisabled:selfCopy];

  return selfCopy;
}

- (void)prepareTextEffectsForImmediateMessageSend
{
  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [textEffectCoordinator reset];
}

- (void)unpauseTextEffectsCoordinator
{
  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];

  if (textEffectCoordinator)
  {
    textEffectCoordinator2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [textEffectCoordinator2 updateWithReason:@"unpausing"];
  }
}

- (void)setTextEffectCoordinatorPaused:(BOOL)paused reason:(id)reason
{
  pausedCopy = paused;
  reasonCopy = reason;
  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];

  if (textEffectCoordinator)
  {
    textEffectCoordinator2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [textEffectCoordinator2 setPaused:pausedCopy includingAnimators:1];

    textEffectCoordinator3 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [textEffectCoordinator3 updateWithReason:reasonCopy];
  }
}

- (void)messageEntryTextView:(id)view didSetAnimationName:(id)name forRange:(_NSRange)range
{
  length = range.length;
  v6 = range.location;
  viewCopy = view;
  nameCopy = name;
  if (length)
  {
    objc_initWeak(&location, self);
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__CKMessageEntryContentView_messageEntryTextView_didSetAnimationName_forRange___block_invoke;
    v21[3] = &unk_1E72F4638;
    objc_copyWeak(v24, &location);
    v11 = viewCopy;
    v22 = v11;
    v23 = nameCopy;
    v24[1] = v6;
    v24[2] = length;
    [v11 ck_toggleTextEffectNamed:v23 inRange:v6 getAdded:length undo:{&v25, v21}];
    [(CKMessageEntryContentView *)self invalidateComposition];
    if (v25 == 1)
    {
      v12 = -[CKTextEffectCoordinatorContinuationState initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:]([CKTextEffectCoordinatorContinuationState alloc], "initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:", @"textView", [v11 selectedRange], 0);
      textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [textEffectCoordinator resetAndContinueFromState:v12];
    }

    [(CKMessageEntryContentView *)self textViewNeedsUpdatedTranslation];
    v14 = MEMORY[0x1E696AEC0];
    v15 = v25;
    v27.location = v6;
    v27.length = length;
    v16 = NSStringFromRange(v27);
    v17 = v16;
    v18 = @"removed";
    if (v15)
    {
      v18 = @"added";
    }

    v19 = [v14 stringWithFormat:@"animation %@ for range: %@", v18, v16];

    textEffectCoordinator2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [textEffectCoordinator2 updateWithReason:v19];

    [(CKMessageEntryContentView *)self _didChangeAttributesAffectingTextSize];
    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }
}

void __79__CKMessageEntryContentView_messageEntryTextView_didSetAnimationName_forRange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidateComposition];

  v12 = -[CKTextEffectCoordinatorContinuationState initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:]([CKTextEffectCoordinatorContinuationState alloc], "initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:", @"textView", [*(a1 + 32) selectedRange], 0);
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 textEffectCoordinator];
  [v4 resetAndContinueFromState:v12];

  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 40);
  v7 = NSStringFromRange(*(a1 + 56));
  v8 = [v5 stringWithFormat:@"undo animation %@ for range: %@", v6, v7];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 textEffectCoordinator];
  [v10 updateWithReason:v8];

  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 _didChangeAttributesAffectingTextSize];
}

- (void)messageEntryTextView:(id)view didUpdateForRange:(_NSRange)range conversionHandler:(id)handler
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    handlerCopy = handler;
    composition = [(CKMessageEntryContentView *)self composition];
    text = [composition text];
    v11 = [text ck_attributedStringByConverting:handlerCopy range:{location, length}];

    subject = [composition subject];
    shelfPluginPayload = [composition shelfPluginPayload];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__CKMessageEntryContentView_messageEntryTextView_didUpdateForRange_conversionHandler___block_invoke;
    v14[3] = &unk_1E72F4660;
    v14[4] = self;
    v14[5] = location;
    v14[6] = length;
    [CKComposition compositionWithText:v11 subject:subject shelfPluginPayload:shelfPluginPayload completionHandler:v14];
  }
}

void __86__CKMessageEntryContentView_messageEntryTextView_didUpdateForRange_conversionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setComposition:a2];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) textView];
  [v5 setSelectedRange:{v4, v3}];
}

- (void)messageEntryTextView:(id)view applyStyleChangeOfType:(unint64_t)type add:(BOOL)add forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  addCopy = add;
  viewCopy = view;
  v12 = viewCopy;
  if (length && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    undoManager = [viewCopy undoManager];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __86__CKMessageEntryContentView_messageEntryTextView_applyStyleChangeOfType_add_forRange___block_invoke;
    v24 = &unk_1E72F4688;
    v14 = v12;
    v30 = addCopy;
    typeCopy = type;
    v28 = location;
    v29 = length;
    v25 = v14;
    selfCopy = self;
    [undoManager registerUndoWithTarget:self handler:&v21];

    textStorage = [v14 textStorage];
    [textStorage beginEditing];
    if (addCopy)
    {
      [textStorage ck_addTextStyle:type options:3 range:{location, length}];
      v16 = @"added";
    }

    else
    {
      [textStorage ck_removeTextStyle:type options:3 range:{location, length}];
      v16 = @"removed";
    }

    [textStorage endEditing];
    [(CKMessageEntryContentView *)self invalidateComposition];
    [(CKMessageEntryContentView *)self textViewNeedsUpdatedTranslation];
    v17 = MEMORY[0x1E696AEC0];
    v31.location = location;
    v31.length = length;
    v18 = NSStringFromRange(v31);
    v19 = [v17 stringWithFormat:@"animation %@ for range: %@", v16, v18, v21, v22, v23, v24];

    textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [textEffectCoordinator updateWithReason:v19];

    [(CKMessageEntryContentView *)self _didChangeAttributesAffectingTextSize];
  }
}

void __86__CKMessageEntryContentView_messageEntryTextView_applyStyleChangeOfType_add_forRange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  [v2 beginEditing];
  [v2 ck_removeTextStyle:*(a1 + 48) options:3 range:{*(a1 + 56), *(a1 + 64)}];
  [v2 endEditing];
  [*(a1 + 40) invalidateComposition];
}

- (void)messageEntryTextView:(id)view replaceRange:(_NSRange)range withAttributedText:(id)text
{
  length = range.length;
  location = range.location;
  v13 = [text mutableCopy];
  [v13 ck_replaceTextAnimationsWithIMTextEffects];
  [v13 ck_replaceBIUSWithIMTextStyles];
  composition = [(CKMessageEntryContentView *)self composition];
  text = [composition text];
  v10 = [text mutableCopy];
  [v10 replaceCharactersInRange:location withAttributedString:{length, v13}];
  v11 = [composition compositionByReplacingText:v10];
  [(CKMessageEntryContentView *)self setComposition:v11];

  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [textEffectCoordinator updateWithReason:@"replaced text with a suggested effect/BIUS styles"];
}

- (void)_didChangeAttributesAffectingTextSize
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewDidChange:self isTextChange:1 isShelfChange:0];

  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  [(CKMessageEntryContentView *)self setNeedsEnsureSelectionVisible:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)pluginPayloadDidChangeSendEnabled:(id)enabled
{
  userInfo = [enabled userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
  if (!v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView pluginPayloadDidChangeSendEnabled:];
    }
  }

  v7 = [userInfo BOOLValueForKey:@"Enabled" withDefault:1];
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentView:self updatePluginSendEnablementTo:v7];
}

- (void)pluginPayloadWantsResize:(id)resize
{
  resizeCopy = resize;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received plugin payload resize notification", buf, 2u);
    }
  }

  if ([(CKMessageEntryContentView *)self _updatedPluginPayloadFromNotification:resizeCopy]&& IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Resizing pluginEntryViewController due to pluginPayloadWantsResize notification", v7, 2u);
    }
  }
}

- (void)pluginPayloadInvalidatedMessageTintColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received plugin tint color change notification", &v15, 2u);
    }
  }

  userInfo = [colorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
  v8 = v7;
  if (v7)
  {
    if (([v7 isEqualToString:@"stagedShelfPlugin"] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v8;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "A plugin that is NOT the shelf identifier {%@} invalidated its tint color. Bailing.", &v15, 0xCu);
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView pluginPayloadInvalidatedMessageTintColor:];
    }
  }

  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Updating plugin tint color due to pluginPayloadInvalidatedMessageTintColor notification", &v15, 2u);
      }
    }

    pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [pluginEntryViewController2 pluginTintColorDidUpdate];
  }

LABEL_20:
}

- (BOOL)_updatedPluginPayloadFromNotification:(id)notification
{
  v34 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
  v7 = v6;
  if (v6)
  {
    if (([v6 isEqualToString:@"stagedShelfPlugin"] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v32 = 138412290;
          v33 = v7;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "A plugin that is NOT the shelf identifier {%@} was asked to update. Bailing.", &v32, 0xCu);
        }
      }

LABEL_16:
      v18 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView _updatedPluginPayloadFromNotification:];
    }
  }

  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];

  if (!pluginEntryViewController)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView _updatedPluginPayloadFromNotification:];
    }

    goto LABEL_16;
  }

  [(CKMessageEntryContentView *)self setNeedsEnsureTextViewVisible:1];
  conversation = [(CKMessageEntryContentView *)self conversation];
  unsentComposition = [conversation unsentComposition];
  text = [unsentComposition text];

  composition = [(CKMessageEntryContentView *)self composition];
  text2 = [composition text];

  if ([text2 length] || (v16 = text, !objc_msgSend(text, "length")))
  {
    v16 = text2;
  }

  textView = [(CKMessageEntryContentView *)self textView];
  [textView setCompositionText:v16];

  conversation2 = [(CKMessageEntryContentView *)self conversation];
  unsentComposition2 = [conversation2 unsentComposition];
  subject = [unsentComposition2 subject];

  composition2 = [(CKMessageEntryContentView *)self composition];
  subject2 = [composition2 subject];

  if ([subject2 length] || !objc_msgSend(subject, "length"))
  {
    subjectView = [(CKMessageEntryContentView *)self subjectView];
    [subjectView setCompositionText:subject2];
  }

  else
  {
    subjectView = [(CKMessageEntryContentView *)self textView];
    [subjectView setCompositionText:subject];
  }

  composition3 = [(CKMessageEntryContentView *)self composition];
  -[CKMessageEntryContentView setIsCompositionExpirable:](self, "setIsCompositionExpirable:", [composition3 isExpirableComposition]);

  [(CKMessageEntryContentView *)self _updateUI];
  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewShelfDidChange:self];

  pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    pluginEntryViewController3 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [pluginEntryViewController3 didFinishAnimatedBoundsChange];
  }

  v18 = 1;
LABEL_25:

  return v18;
}

- (void)pluginPayloadDidLoad:(id)load
{
  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)quicktationEnablementDidChange
{
  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)ckSendLaterViewWantsDatePickerPresented:(id)presented
{
  presentedCopy = presented;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to present SendLater's DatePicker.", v7, 2u);
    }
  }

  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewWantsSendLaterPickerPresented:self];
}

- (void)ckSendLaterViewCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received signal that SendLater was cancelled by the user.", v6, 2u);
    }
  }

  [(CKMessageEntryContentView *)self setSendLaterPluginInfo:0 animated:1 completionHandler:&__block_literal_global_347];
}

- (void)ckSendLaterViewContentsUpdated:(id)updated
{
  updatedCopy = updated;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received signal that SendLater view contents changed.", v7, 2u);
    }
  }

  delegate = [(CKMessageEntryContentView *)self delegate];
  [delegate messageEntryContentViewSendLaterContentsUpdated:self];
}

- (id)textDraggableView:(id)view itemsForDrag:(id)drag
{
  dragCopy = drag;
  array = [MEMORY[0x1E695DF70] array];
  textView = [(CKMessageEntryContentView *)self textView];
  dragRange = [dragCopy dragRange];
  v9 = [textView attributedTextInRange:dragRange];

  v10 = [v9 length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke;
  v17[3] = &unk_1E72F46D8;
  v17[4] = self;
  v11 = array;
  v18 = v11;
  v19 = v9;
  v12 = v9;
  [v12 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v17}];
  if ([v11 count])
  {
    dragSession = [dragCopy dragSession];
    [dragSession setLocalContext:@"CKMessageEntryContentViewDragContext"];
  }

  v14 = v19;
  v15 = v11;

  return v11;
}

void __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:@"CKFileTransferGUIDAttributeName"];
    v10 = [v8 objectForKey:@"CKPluginPayloadGUIDAttributeName"];
    v11 = v10;
    if (v9)
    {
      v12 = [a1[4] textView];
      v13 = [v12 cachedMediaObjectForTransferGUID:v9];

      if (v13)
      {
        v14 = [v13 pasteboardItemProvider];
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = [MEMORY[0x1E69A5B80] sharedInstance];
        v23 = [v22 transferForGUID:v9];

        v24 = [v23 localURL];
        v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:v24];
        v25 = [v24 lastPathComponent];
        [v14 setSuggestedName:v25];

        if (!v14)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      v26 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v14];
      v27 = [a1[4] textView];
      [v26 setLocalObject:v27];

      v28 = [v8 objectForKey:*MEMORY[0x1E69DB5F8]];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 image];
        if (v30)
        {
          v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v30];
          [v31 sizeToFit];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_2;
          v41[3] = &unk_1E72F46B0;
          v42 = v31;
          v32 = v31;
          [v26 setPreviewProvider:v41];
        }

        [a1[5] addObject:v26];
      }

      goto LABEL_17;
    }

    if (v10)
    {
      v15 = [a1[4] textView];
      v16 = [v15 cachedPluginDisplayContainerForGUID:v11];

      v17 = [v16 pasteboardItemProvider];
      v18 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v17];
      v19 = [a1[4] textView];
      [v18 setLocalObject:v19];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_3;
      v39[3] = &unk_1E72F46B0;
      v40 = v16;
      v20 = v16;
      [v18 setPreviewProvider:v39];
      [a1[5] addObject:v18];
      v21 = v40;
    }

    else
    {
      v17 = [a1[6] attributedSubstringFromRange:{a3, a4}];
      if ([v17 length] == 1)
      {
        v18 = [v17 string];
        if ([v18 characterAtIndex:0] == 10)
        {
          goto LABEL_9;
        }

        v33 = [v17 length];

        if (!v33)
        {
          goto LABEL_10;
        }
      }

      else if (![v17 length])
      {
        goto LABEL_10;
      }

      if (!v17)
      {
        goto LABEL_18;
      }

      v34 = objc_alloc(MEMORY[0x1E696ACA0]);
      v35 = [[CKAttributedStringItemProviderWriter alloc] initWithAttributedString:v17];
      v18 = [v34 initWithObject:v35];

      v20 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v18];
      v36 = [a1[4] textView];
      [v20 setLocalObject:v36];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_4;
      v37[3] = &unk_1E72F46B0;
      v38 = v17;
      v17 = v17;
      [v20 setPreviewProvider:v37];
      [a1[5] addObject:v20];
      v21 = v38;
    }

LABEL_9:
LABEL_10:

LABEL_18:
  }
}

id __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DC998]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v5 = [v2 initWithView:v3 parameters:v4];

  return v5;
}

id __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) composeImage];
  v2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v1];
  [v2 sizeToFit];
  [v2 frame];
  [v2 setFrame:?];
  v3 = objc_alloc(MEMORY[0x1E69DC998]);
  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v5 = [v3 initWithView:v2 parameters:v4];

  return v5;
}

id __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAttributedText:*(a1 + 32)];
  [v3 sizeToFit];
  v4 = objc_alloc(MEMORY[0x1E69DC998]);
  v5 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v6 = [v4 initWithView:v3 parameters:v5];

  return v6;
}

- (double)_calcuateIdealMaxPluginHeight:(BOOL)height
{
  heightCopy = height;
  [(CKMessageEntryContentView *)self bounds];
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  entryViewlayoutMetrics = [v7 entryViewlayoutMetrics];

  [(CKMessageEntryContentView *)self _pluginMargins];
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 dividerHeight];
  v15 = v14;
  [entryViewlayoutMetrics defaultEntryContentViewHeight];
  v17 = v16;

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v21 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:pluginBundleID];

  if (heightCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 entryViewMaxExtensionShelfHeight];
  }

  else
  {
    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 entryViewMaxPluginShelfHeight];
  }

  v24 = fmin(v6 - v15 - v17 - v10 - v12, v23);

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 entryViewMinPluginShelfHeight];
  v27 = fmax(v24, v26);

  return v27;
}

- (void)invalidateComposition
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "invalidating composition", v5, 2u);
    }
  }

  composition = self->_composition;
  self->_composition = 0;
}

- (CGSize)_computedSizeForTextView:(id)view maxWidth:(double)width
{
  viewCopy = view;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 entryViewCoverMinHeight];
  v8 = v7;

  [viewCopy sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;

  v11 = fmax(v10, v8);
  widthCopy = width;
  result.height = v11;
  result.width = widthCopy;
  return result;
}

- (void)_layoutTextView:(id)view currentYOffset:(double *)offset originX:(double)x maxWidth:(double)width
{
  viewCopy = view;
  [(CKMessageEntryContentView *)self _computedSizeForTextView:viewCopy maxWidth:width];
  v12 = v11;
  v14 = v13;
  [viewCopy textContainerInset];
  v16 = x - v15;
  v17 = *offset;
  [(CKMessageEntryContentView *)self placeHolderWidth];
  [viewCopy setPlaceHolderWidth:?];
  [viewCopy setFrame:{v16, v17, v12, v14}];

  *offset = v14 + *offset;
}

- (void)_layoutDividerLine:(id)line leftInset:(double)inset widthInset:(double)widthInset currentYOffset:(double *)offset
{
  lineCopy = line;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 dividerHeight];
  v13 = v12;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 entryContentViewTextLeftOffset];
    v18 = v17;

    v19 = *offset;
    [(CKMessageEntryContentView *)self bounds];
    v21 = v20;
    v22 = v18;
  }

  else
  {
    [(CKMessageEntryContentView *)self containerViewLineWidth];
    v22 = v23 + inset;
    v19 = *offset;
    [(CKMessageEntryContentView *)self bounds];
    v21 = v24 - widthInset;
    [(CKMessageEntryContentView *)self containerViewLineWidth];
    v18 = v25;
  }

  [lineCopy setFrame:{v22, v19, v21 + v18 * -2.0, v13}];

  *offset = v13 + *offset;
}

- (void)_updateUI
{
  if (self->_pluginEntryViewController)
  {
    v3 = CKFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"ADD_COMMENT_OR_SEND" value:&stru_1F04268F8 table:@"ChatKit"];
    [(CKMessageEntryContentView *)self setOverridePlaceholderText:v4];
  }

  else
  {
    [(CKMessageEntryContentView *)self setOverridePlaceholderText:0];
  }

  overridePlaceholderText = [(CKMessageEntryContentView *)self overridePlaceholderText];
  if (overridePlaceholderText)
  {
    [(CKMessageEntryContentView *)self overridePlaceholderText];
  }

  else
  {
    [(CKMessageEntryContentView *)self requestedPlaceholderText];
  }
  v6 = ;
  textView = [(CKMessageEntryContentView *)self textView];
  [textView setPlaceholderText:v6];

  [(CKMessageEntryContentView *)self containerViewLineWidth];
  v9 = v8 + 17.0;
  [(CKMessageEntryContentView *)self containerViewLineWidth];
  v11 = v10 + 17.0;
  [(CKMessageEntryContentView *)self containerViewLineWidth];
  [(CKMessageEntryContentView *)self setScrollIndicatorInsets:v9, 0.0, v11, v12 + 5.0];
  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (BOOL)shouldShowClearButton
{
  if (self->_shouldHideClearPluginButton)
  {
    return 0;
  }

  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    wantsClearButton = [pluginEntryViewController2 wantsClearButton];
  }

  else
  {
    wantsClearButton = 0;
  }

  return wantsClearButton;
}

- (BOOL)_currentPluginIsGPPlugin
{
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [pluginBundleID isEqualToString:v4];

  return v5;
}

- (void)clearPluginButtonTapped:(id)tapped
{
  delegate = [(CKMessageEntryContentView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKMessageEntryContentView *)self delegate];
    shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
    [delegate2 messageEntryContentViewCancelWasTapped:self shelfPluginPayload:shelfPluginPayload];
  }

  pluginEntryViewController = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    pluginEntryViewController2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [pluginEntryViewController2 payloadWillClear];
  }

  [(CKComposition *)self->_composition cleanupCKShareFromComposition];
  [(CKMessageEntryContentView *)self setShelfPluginPayload:0];
  [(CKMessageEntryContentView *)self invalidateComposition];

  [(CKMessageEntryContentView *)self setPluginEntryViewController:0];
}

- (void)setContainerViewLineWidth:(double)width
{
  if (self->_containerViewLineWidth != width)
  {
    self->_containerViewLineWidth = width;
    [(CKMessageEntryContentView *)self _updateUI];
  }
}

- (void)setClearPluginButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  clearPluginButton = [(CKMessageEntryContentView *)self clearPluginButton];
  [clearPluginButton setEnabled:enabledCopy];
}

- (void)setSendButtonTextInsetWidth:(double)width
{
  if (self->_sendButtonTextInsetWidth != width)
  {
    self->_sendButtonTextInsetWidth = width;
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

    [(CKMessageEntryContentView *)self setNeedsLayout];
  }
}

- (void)setMaxPluginShelfViewWidth:(double)width
{
  if (self->_maxPluginShelfViewWidth != width)
  {
    self->_maxPluginShelfViewWidth = width;
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

    [(CKMessageEntryContentView *)self setNeedsLayout];
  }
}

+ (id)_createTextView:(BOOL)view shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  stickersCopy = stickers;
  handwritingKeyboardCopy = handwritingKeyboard;
  keyboardCopy = keyboard;
  viewCopy = view;
  v13 = [CKMessageEntryRichTextView alloc];
  v14 = [(CKMessageEntryRichTextView *)v13 initWithFrame:1 usingTextLayoutManager:viewCopy shouldDisableAttachments:stickersCopy shouldDisableKeyboardStickers:suggestionsCopy shouldAllowPollSuggestions:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [self configureMessageBodyEntryTextView:v14 shouldUseNonEmojiKeyboard:keyboardCopy shouldUseNonHandwritingKeyboard:handwritingKeyboardCopy];

  return v14;
}

+ (void)configureMessageBodyEntryTextView:(id)view shouldUseNonEmojiKeyboard:(BOOL)keyboard shouldUseNonHandwritingKeyboard:(BOOL)handwritingKeyboard
{
  handwritingKeyboardCopy = handwritingKeyboard;
  keyboardCopy = keyboard;
  viewCopy = view;
  [viewCopy setShowsHorizontalScrollIndicator:1];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  [viewCopy setPlaceholderText:v8];

  v9 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v9 balloonTextFont];
  [viewCopy setFont:balloonTextFont];

  [viewCopy setSupportsBigEmojiTextStyles:1];
  [viewCopy setBackgroundColor:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  theme = [v11 theme];
  entryFieldTextColor = [theme entryFieldTextColor];
  [viewCopy setTextColor:entryFieldTextColor];

  v14 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v14 theme];
  [viewCopy setKeyboardAppearance:{objc_msgSend(theme2, "keyboardAppearance")}];

  if (!CKIsRunningInMessagesNotificationExtension())
  {
    v16 = 126;
    if (handwritingKeyboardCopy)
    {
      v16 = 0;
    }

    if (keyboardCopy)
    {
      v17 = 13;
    }

    else
    {
      v17 = v16;
    }

    [viewCopy setKeyboardType:v17];
  }

  [viewCopy setOpaque:0];
}

+ (id)_createSubjectView
{
  v2 = [CKMessageEntryTextView alloc];
  v3 = [(CKMessageEntryTextView *)v2 initUsingTextLayoutManagerWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [v3 setShowsHorizontalScrollIndicator:1];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"SUBJECT" value:&stru_1F04268F8 table:@"ChatKit"];
  [v3 setPlaceholderText:v5];

  v6 = +[CKUIBehavior sharedBehaviors];
  balloonSubjectFont = [v6 balloonSubjectFont];
  [v3 setFont:balloonSubjectFont];

  v8 = +[CKUIBehavior sharedBehaviors];
  theme = [v8 theme];
  entryFieldTextColor = [theme entryFieldTextColor];
  [v3 setTextColor:entryFieldTextColor];

  [v3 setSupportsBigEmojiTextStyles:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v11 theme];
  [v3 setKeyboardAppearance:{objc_msgSend(theme2, "keyboardAppearance")}];

  [v3 setBackgroundColor:0];
  [v3 setOpaque:0];

  return v3;
}

+ (id)_createTranslationView
{
  v2 = [objc_opt_class() _createTextView:1 shouldUseNonEmojiKeyboard:0 shouldUseNonHandwritingKeyboard:0 shouldDisableKeyboardStickers:1 shouldAllowPollSuggestions:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    [v2 setHidden:1];
    [v2 setEditable:0];
    [v2 setBackgroundColor:0];
    [v2 setOpaque:0];
    [v2 setUserInteractionEnabled:0];
  }

  return v2;
}

- (void)textViewNeedsUpdatedTranslation
{
  translationLanguage = [(CKMessageEntryContentView *)self translationLanguage];

  if (translationLanguage)
  {
    [(CKMessageEntryContentView *)self setTranslationVersion:[(CKMessageEntryContentView *)self translationVersion]+ 1];
    v4 = MEMORY[0x1E695DF58];
    conversation = [(CKMessageEntryContentView *)self conversation];
    userTranslationLanguageCode = [conversation userTranslationLanguageCode];
    v11 = [v4 localeWithLocaleIdentifier:userTranslationLanguageCode];

    translator = [(CKMessageEntryContentView *)self translator];
    textView = [(CKMessageEntryContentView *)self textView];
    attributedText = [textView attributedText];
    translationLanguage2 = [(CKMessageEntryContentView *)self translationLanguage];
    [translator translate:attributedText into:translationLanguage2 from:v11 version:{-[CKMessageEntryContentView translationVersion](self, "translationVersion")}];
  }
}

- (id)pluginSnapshotViewForPluginAtIndex:(unint64_t)index isFromTextAttachment:(BOOL *)attachment startingScaleMultiplier:(double *)multiplier
{
  pluginView = [(CKMessageEntryContentView *)self pluginView];

  if (!pluginView)
  {
    goto LABEL_4;
  }

  if (index)
  {
    --index;
LABEL_4:
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__42;
    v23 = __Block_byref_object_dispose__42;
    v24 = 0;
    textView = [(CKMessageEntryContentView *)self textView];
    attributedText = [textView attributedText];

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v12 = [attributedText length];
    v13 = *MEMORY[0x1E69DB5F8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__CKMessageEntryContentView_pluginSnapshotViewForPluginAtIndex_isFromTextAttachment_startingScaleMultiplier___block_invoke;
    v17[3] = &unk_1E72F4700;
    v17[6] = index;
    v17[7] = attachment;
    v17[8] = multiplier;
    v17[4] = v18;
    v17[5] = &v19;
    [attributedText enumerateAttribute:v13 inRange:0 options:v12 usingBlock:{0, v17}];
    v14 = v20[5];
    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v19, 8);
    goto LABEL_10;
  }

  if (attachment)
  {
    *attachment = 0;
  }

  if (multiplier)
  {
    *multiplier = 1.0;
  }

  pluginView2 = [(CKMessageEntryContentView *)self pluginView];
  v14 = [pluginView2 snapshotViewAfterScreenUpdates:0];

LABEL_10:

  return v14;
}

void __109__CKMessageEntryContentView_pluginSnapshotViewForPluginAtIndex_isFromTextAttachment_startingScaleMultiplier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    v18 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v18;
    if (isKindOfClass)
    {
      v9 = v18;
      v10 = v9;
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 24);
      if (v12 == *(a1 + 48))
      {
        v13 = *(a1 + 56);
        if (v13)
        {
          *v13 = 1;
        }

        if (*(a1 + 64))
        {
          [v9 downscaleMultiplier];
          **(a1 + 64) = v14;
        }

        v15 = [v10 makeThrowAnimationSnapshotView];
        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        *a5 = 1;
      }

      else
      {
        *(v11 + 24) = v12 + 1;
      }

      v7 = v18;
    }
  }
}

- (void)balloonPluginDataSource:(id)source shouldSendAsCopy:(BOOL)copy
{
  copyCopy = copy;
  sourceCopy = source;
  shelfPluginPayload = [(CKMessageEntryContentView *)self shelfPluginPayload];
  [shelfPluginPayload setSendAsCopy:copyCopy];

  shelfPluginPayload2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v9 = [shelfPluginPayload2 url];

  shelfPluginPayload3 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  sendAsCopyURL = [shelfPluginPayload3 sendAsCopyURL];

  if (sendAsCopyURL)
  {
    shelfPluginPayload4 = [(CKMessageEntryContentView *)self shelfPluginPayload];
    sendAsCopyURL2 = [shelfPluginPayload4 sendAsCopyURL];

    v9 = sendAsCopyURL2;
  }

  if (v9)
  {
    lastPathComponent = [v9 lastPathComponent];
    stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__CKMessageEntryContentView_balloonPluginDataSource_shouldSendAsCopy___block_invoke;
    v18[3] = &unk_1E72F4728;
    v19 = v9;
    v20 = stringByRemovingPercentEncoding;
    selfCopy = self;
    v16 = stringByRemovingPercentEncoding;
    [CKComposition mediaObjectFromItemAtURL:v19 filename:v16 completion:v18];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_6;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "URL is nil so we don't create a composition", v17, 2u);
    }
  }

LABEL_6:
}

void __70__CKMessageEntryContentView_balloonPluginDataSource_shouldSendAsCopy___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v17 = 138413058;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Created mediaObject:%@ from url:%@, filename:%@. Error: %@", &v17, 0x2Au);
    }
  }

  v10 = objc_alloc_init(CKComposition);
  v12 = a1[6];
  v11 = (a1 + 6);
  v13 = [v12 shelfPluginPayload];
  v14 = [(CKComposition *)v10 compositionByAppendingText:0 shelfPluginPayload:v13 shelfMediaObject:v5 collaborationShareOptions:0];

  v15 = [*v11 composition];
  v16 = [v14 compositionByAppendingCollaborativeComposition:v15];

  [*v11 setComposition:v16];
}

- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"translationTextView"])
  {
    [(CKMessageEntryContentView *)self translationView];
  }

  else
  {
    [(CKMessageEntryContentView *)self textView];
  }
  v5 = ;

  return v5;
}

- (id)visibleTextViewIdentifiersFor:(id)for
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"translationTextView";
  v5[1] = @"textView";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)textViewWillBeginEmojiRippleAnimation:(id)animation
{
  animationCopy = animation;
  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [textEffectCoordinator setPaused:1 includingAnimators:0];
  [textEffectCoordinator reset];
  textStorage = [animationCopy textStorage];

  [textStorage beginEditing];
  v7 = [textStorage length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CKMessageEntryContentView_textViewWillBeginEmojiRippleAnimation___block_invoke;
  v9[3] = &unk_1E72F4750;
  v10 = textStorage;
  v8 = textStorage;
  [v8 ck_enumerateTextAnimationsIn:0 options:v7 using:{0, v9}];
  [v8 endEditing];
}

- (void)textViewDidEndEmojiRippleAnimation:(id)animation
{
  textStorage = [animation textStorage];
  [textStorage beginEditing];
  [textStorage ck_addDisplayableAttributeForIMTextEffectAttribute];
  [textStorage endEditing];
  textEffectCoordinator = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [textEffectCoordinator setPaused:0 includingAnimators:0];
  [textEffectCoordinator updateWithReason:@"resumed because emoji ripple animation did end"];
}

- (void)compositionTranslator:(id)translator didUpdateTranslation:(id)translation sourceLanguage:(id)language destinationLanguage:(id)destinationLanguage version:(int64_t)version
{
  translationCopy = translation;
  languageCopy = language;
  destinationLanguageCopy = destinationLanguage;
  if ([(CKMessageEntryContentView *)self translationVersion]== version)
  {
    localeIdentifier = [languageCopy localeIdentifier];
    [(CKMessageEntryContentView *)self setSourceLanguageID:localeIdentifier];

    localeIdentifier2 = [destinationLanguageCopy localeIdentifier];
    [(CKMessageEntryContentView *)self setDestinationLanguageID:localeIdentifier2];

    v15 = [translationCopy mutableCopy];
    v16 = +[CKUIBehavior sharedBehaviors];
    balloonTranslationSecondaryTextFont = [v16 balloonTranslationSecondaryTextFont];

    v18 = [v15 length];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:balloonTranslationSecondaryTextFont range:{0, v18}];
    v19 = [v15 copy];
    translationView = [(CKMessageEntryContentView *)self translationView];
    [translationView setAttributedText:v19];

    translationView2 = [(CKMessageEntryContentView *)self translationView];
    [translationView2 setFont:balloonTranslationSecondaryTextFont];

    v22 = +[CKUIBehavior sharedBehaviors];
    theme = [v22 theme];
    tertiaryLabelColor = [theme tertiaryLabelColor];
    translationView3 = [(CKMessageEntryContentView *)self translationView];
    [translationView3 setTextColor:tertiaryLabelColor];

    translationView4 = [(CKMessageEntryContentView *)self translationView];
    [translationView4 setHidden:0];

    translationView5 = [(CKMessageEntryContentView *)self translationView];
    textStorage = [translationView5 textStorage];

    [textStorage beginEditing];
    [textStorage ck_addDisplayableAttributeForIMTextEffectAttribute];
    [textStorage ck_addDisplayableAttributesForIMTextStyleAttributes];
    [textStorage endEditing];
    delegate = [(CKMessageEntryContentView *)self delegate];
    [delegate messageEntryContentViewTranslationDidChange:self];

    [(CKMessageEntryContentView *)self invalidateComposition];
    pendingTranslationBlock = [(CKMessageEntryContentView *)self pendingTranslationBlock];

    if (pendingTranslationBlock)
    {
      pendingTranslationBlock2 = [(CKMessageEntryContentView *)self pendingTranslationBlock];
      pendingTranslationBlock2[2]();

      [(CKMessageEntryContentView *)self setPendingTranslationBlock:0];
    }
  }
}

- (void)compositionTranslator:(id)translator didFailTranslationForVersion:(int64_t)version
{
  if ([(CKMessageEntryContentView *)self translationVersion]== version)
  {
    translationView = [(CKMessageEntryContentView *)self translationView];
    [translationView setAttributedText:0];

    translationView2 = [(CKMessageEntryContentView *)self translationView];
    [translationView2 setHidden:1];

    delegate = [(CKMessageEntryContentView *)self delegate];
    [delegate messageEntryContentViewTranslationDidChange:self];

    [(CKMessageEntryContentView *)self invalidateComposition];
    pendingTranslationBlock = [(CKMessageEntryContentView *)self pendingTranslationBlock];

    if (pendingTranslationBlock)
    {
      pendingTranslationBlock2 = [(CKMessageEntryContentView *)self pendingTranslationBlock];
      pendingTranslationBlock2[2]();

      [(CKMessageEntryContentView *)self setPendingTranslationBlock:0];
    }
  }
}

- (CKConversation)conversation
{
  WeakRetained = objc_loadWeakRetained(&self->_conversation);

  return WeakRetained;
}

- (id)richLinksEditMenuForAttributedText:(id)text inRange:(_NSRange)range
{
  length = range.length;
  v5 = range.location;
  textCopy = text;
  if (length)
  {
    if ([MEMORY[0x1E69A8020] deviceIsLockedDown])
    {
      length = 0;
    }

    else
    {
      objc_initWeak(location, self);
      array = [MEMORY[0x1E695DF70] array];
      string = [textCopy string];
      v10 = [_TtC7ChatKit19CKRichLinkUtilities validURLsInString:string inRange:v5 validatesRichLinkSupport:length, 1];

      if ([v10 count])
      {
        if ([v10 count] < 2)
        {
          v11 = CKFrameworkBundle();
          [v11 localizedStringForKey:@"SHOW_LINK_PREVIEW" value:&stru_1F04268F8 table:@"ChatKit"];
        }

        else
        {
          v11 = CKFrameworkBundle();
          [v11 localizedStringForKey:@"SHOW_LINK_PREVIEW_PLURAL" value:&stru_1F04268F8 table:@"ChatKit"];
        }
        v12 = ;

        v13 = MEMORY[0x1E69DC628];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke;
        v37[3] = &unk_1E72F4F58;
        v38 = v10;
        objc_copyWeak(&v39, location);
        v14 = [v13 actionWithTitle:v12 image:0 identifier:0 handler:v37];
        [array addObject:v14];

        objc_destroyWeak(&v39);
      }

      v15 = [textCopy ck_linkPreviewTextAttachmentsInRange:{v5, length}];
      if ([v15 count])
      {
        if ([v15 count] >= 2)
        {
          v16 = CKFrameworkBundle();
          [v16 localizedStringForKey:@"CONVERT_TO_TEXT_LINK_PLURAL" value:&stru_1F04268F8 table:@"ChatKit"];
        }

        else
        {
          v16 = CKFrameworkBundle();
          [v16 localizedStringForKey:@"CONVERT_TO_TEXT_LINK" value:&stru_1F04268F8 table:@"ChatKit"];
        }
        v17 = ;

        v18 = MEMORY[0x1E69DC628];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke_222;
        v33[3] = &unk_1E72F8280;
        v34 = v15;
        v36[1] = v5;
        v36[2] = length;
        objc_copyWeak(v36, location);
        v35 = textCopy;
        v19 = [v18 actionWithTitle:v17 image:0 identifier:0 handler:v33];
        [array addObject:v19];

        objc_destroyWeak(v36);
      }

      if ([v15 count] == 1)
      {
        firstObject = [v15 firstObject];
        if ([firstObject canPresentCustomizationPicker])
        {
          v21 = CKFrameworkBundle();
          v22 = [v21 localizedStringForKey:@"CUSTOMIZE_LINK" value:&stru_1F04268F8 table:@"ChatKit"];

          v23 = MEMORY[0x1E69DC628];
          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke_226;
          v31 = &unk_1E72EC060;
          v32 = firstObject;
          v24 = [v23 actionWithTitle:v22 image:0 identifier:0 handler:&v28];
          [array addObject:{v24, v28, v29, v30, v31}];
        }
      }

      v25 = MEMORY[0x1E69DCC60];
      v26 = [array copy];
      length = [v25 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v26];

      objc_destroyWeak(location);
    }
  }

  return length;
}

void __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v12 = 134217984;
      v13 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Will replace {%ld} detected URL(s) with rich links.", &v12, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained textView];
  v8 = [v7 text];
  v9 = [v8 length];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 textView];
  [v11 replaceTextInRange:0 withLinks:{v9, *(a1 + 32)}];
}

void __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke_222(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v6 = NSStringFromRange(*(a1 + 56));
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Converting a selection that includes {%ld} inlined rich links to text. In range={%@}}.", &v8, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateAttributedTextContent:*(a1 + 40) byApplyingInteraction:2 toLinkTextAttachments:*(a1 + 32)];
}

void __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke_226(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Invoking presentCustomizationPicker on a rich link text attachment via callout menu...", v5, 2u);
    }
  }

  [*(a1 + 32) presentCustomizationPicker];
}

- (void)_updateAttributedTextContent:(id)content byApplyingInteraction:(int64_t)interaction toLinkTextAttachments:(id)attachments
{
  v8 = 0;
  v6 = [content ck_attributedStringByApplyingRichLinkInteraction:interaction toLinkTextAttachments:attachments stringDidChange:&v8];
  if (v8 == 1)
  {
    textView = [(CKMessageEntryContentView *)self textView];
    [textView setAttributedText:v6];
  }
}

+ (void)getClearButtonInset:(uint64_t)a1 forPluginWithBundleID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMessageEntryContentView.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"clearButtonInset"}];
}

- (void)configureShelfForPluginPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Not setting browserItemPayload. Unexpected pluginPayload class: %@", &v5, 0xCu);
}

@end
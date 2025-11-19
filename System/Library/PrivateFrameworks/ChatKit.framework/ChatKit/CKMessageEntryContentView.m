@interface CKMessageEntryContentView
+ (BOOL)_platformNeedsConservativeLayoutUpdates;
+ (id)_createSubjectView;
+ (id)_createTextView:(BOOL)a3 shouldUseNonEmojiKeyboard:(BOOL)a4 shouldUseNonHandwritingKeyboard:(BOOL)a5 shouldDisableKeyboardStickers:(BOOL)a6 shouldAllowPollSuggestions:(BOOL)a7;
+ (id)_createTranslationView;
+ (void)configureMessageBodyEntryTextView:(id)a3 shouldUseNonEmojiKeyboard:(BOOL)a4 shouldUseNonHandwritingKeyboard:(BOOL)a5;
+ (void)getClearButtonInset:(double *)a3 forPluginWithBundleID:(id)a4;
- (BOOL)_currentPluginIsGPPlugin;
- (BOOL)_currentPluginIsPhotosPlugin;
- (BOOL)_currentPluginIsPollsPlugin;
- (BOOL)_currentPluginPayloadHasPhotosExtensionMediaPayload;
- (BOOL)_shouldDeferUpdateUI;
- (BOOL)_updatedPluginPayloadFromNotification:(id)a3;
- (BOOL)canApplyTextEffectFromKeyCommand;
- (BOOL)canApplyTextStyleFromKeyCommand;
- (BOOL)isActive;
- (BOOL)isShowingDictationPlaceholder;
- (BOOL)isSingleLine;
- (BOOL)makeActive;
- (BOOL)messageEntryRichTextView:(id)a3 canPerformDictationAction:(id)a4;
- (BOOL)messageEntryRichTextView:(id)a3 shouldPasteMediaObjects:(id)a4;
- (BOOL)messageEntryRichTextView:(id)a3 shouldRecognizeGesture:(id)a4;
- (BOOL)messageEntryRichTextViewShouldAllowLinkCustomization:(id)a3;
- (BOOL)messageEntryRichTextViewShouldBeDisabled:(id)a3;
- (BOOL)messageEntryRichTextViewShouldResignFirstResponder:(id)a3;
- (BOOL)messageEntryRichTextViewSupportsInlineAdaptiveImageGlyphs:(id)a3;
- (BOOL)shouldShowClearButton;
- (BOOL)shouldShowPlugin;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CGRect)computedClearPluginButtonFrame;
- (CGRect)computedPluginViewFrame;
- (CGSize)_computedSizeForTextView:(id)a3 maxWidth:(double)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKComposition)composition;
- (CKConversation)conversation;
- (CKMessageEntryContentView)initWithFrame:(CGRect)a3 shouldShowSubject:(BOOL)a4 shouldDisableAttachments:(BOOL)a5 shouldUseNonEmojiKeyboard:(BOOL)a6 shouldUseNonHandwritingKeyboard:(BOOL)a7 shouldDisableKeyboardStickers:(BOOL)a8 shouldAllowPollSuggestions:(BOOL)a9 translationLanguage:(id)a10;
- (CKMessageEntryTextView)activeView;
- (NSString)placeholderText;
- (NSString)selectedText;
- (UIEdgeInsets)_pluginMargins;
- (UIEdgeInsets)contentTextAlignmentInsets;
- (UIView)pluginView;
- (char)balloonColor;
- (double)_calcuateIdealMaxPluginHeight:(BOOL)a3;
- (double)_maxWidthForTextView;
- (double)balloonMaxWidthForMessageEntryRichTextView:(id)a3;
- (double)entryContentViewTextLeftOffset;
- (double)maxWidthForPreviewImagesInMessageEntryRichTextView:(id)a3;
- (id)gradientReferenceViewForMessageEntryRichTextView:(id)a3;
- (id)pluginSnapshotViewForPluginAtIndex:(unint64_t)a3 isFromTextAttachment:(BOOL *)a4 startingScaleMultiplier:(double *)a5;
- (id)richLinksEditMenuForAttributedText:(id)a3 inRange:(_NSRange)a4;
- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4;
- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4;
- (id)textEffectsEditMenuForTextInRange:(_NSRange)a3;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (id)visibleTextViewIdentifiersFor:(id)a3;
- (int64_t)activeTextEffectTypeInSelectedRange;
- (unint64_t)activeTextStylesInSelectedRange;
- (void)_didChangeAttributesAffectingTextSize;
- (void)_layoutDividerLine:(id)a3 leftInset:(double)a4 widthInset:(double)a5 currentYOffset:(double *)a6;
- (void)_layoutTextView:(id)a3 currentYOffset:(double *)a4 originX:(double)a5 maxWidth:(double)a6;
- (void)_provideHapticFeedbackIfNecessaryForText:(id)a3;
- (void)_updateAttributedTextContent:(id)a3 byApplyingInteraction:(int64_t)a4 toLinkTextAttachments:(id)a5;
- (void)_updateUI;
- (void)acceptAutocorrectionForChat:(id)a3 completionHandler:(id)a4;
- (void)applyTextEffect:(int64_t)a3;
- (void)applyTextEffect:(int64_t)a3 toTextRange:(_NSRange)a4;
- (void)applyTextStyle:(unint64_t)a3;
- (void)applyTextStyle:(unint64_t)a3 toTextRange:(_NSRange)a4;
- (void)balloonPluginDataSource:(id)a3 shouldSendAsCopy:(BOOL)a4;
- (void)ckSendLaterViewCancelled:(id)a3;
- (void)ckSendLaterViewContentsUpdated:(id)a3;
- (void)ckSendLaterViewWantsDatePickerPresented:(id)a3;
- (void)clearPluginButtonTapped:(id)a3;
- (void)collapseTextFieldsIfInPencilMode;
- (void)compositionTranslator:(id)a3 didFailTranslationForVersion:(int64_t)a4;
- (void)compositionTranslator:(id)a3 didUpdateTranslation:(id)a4 sourceLanguage:(id)a5 destinationLanguage:(id)a6 version:(int64_t)a7;
- (void)configureShelfForPluginPayload:(id)a3;
- (void)dealloc;
- (void)didFinishAnimatedBoundsChange;
- (void)didMoveToSuperview;
- (void)ensureSelectionVisibleIfNeeded;
- (void)ensureTextViewVisibleIfNeeded;
- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes;
- (void)invalidateComposition;
- (void)layoutSubviews;
- (void)messageEntryRichTextView:(id)a3 didAddPluginTextAttachmentViewControllerToViewHierarchy:(id)a4;
- (void)messageEntryRichTextView:(id)a3 didPasteComposition:(id)a4;
- (void)messageEntryRichTextView:(id)a3 didReceiveInputSuggestion:(id)a4;
- (void)messageEntryRichTextView:(id)a3 didTapGenerativeButtonForImageURL:(id)a4;
- (void)messageEntryRichTextView:(id)a3 didTapMediaObject:(id)a4;
- (void)messageEntryRichTextView:(id)a3 pastedURL:(id)a4;
- (void)messageEntryRichTextView:(id)a3 willAddPluginTextAttachmentViewControllerToViewHierarchy:(id)a4;
- (void)messageEntryRichTextViewDidDismissCustomizationPicker:(id)a3;
- (void)messageEntryRichTextViewDidPresentCustomizationPicker:(id)a3;
- (void)messageEntryRichTextViewDidTapHandwritingKey:(id)a3;
- (void)messageEntryRichTextViewWasTapped:(id)a3 isLongPress:(BOOL)a4;
- (void)messageEntryRichTextViewWillDismissCustomizationPicker:(id)a3;
- (void)messageEntryRichTextViewWillPresentCustomizationPicker:(id)a3;
- (void)messageEntryTextView:(id)a3 applyStyleChangeOfType:(unint64_t)a4 add:(BOOL)a5 forRange:(_NSRange)a6;
- (void)messageEntryTextView:(id)a3 didSetAnimationName:(id)a4 forRange:(_NSRange)a5;
- (void)messageEntryTextView:(id)a3 didUpdateForRange:(_NSRange)a4 conversionHandler:(id)a5;
- (void)messageEntryTextView:(id)a3 replaceRange:(_NSRange)a4 withAttributedText:(id)a5;
- (void)messageEntryTextViewDidChangePencilMode:(id)a3;
- (void)messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)a3;
- (void)pluginPayloadDidChangeSendEnabled:(id)a3;
- (void)pluginPayloadDidLoad:(id)a3;
- (void)pluginPayloadInvalidatedMessageTintColor:(id)a3;
- (void)pluginPayloadWantsResize:(id)a3;
- (void)prepareTextEffectsForImmediateMessageSend;
- (void)quicktationEnablementDidChange;
- (void)setBalloonColor:(char)a3;
- (void)setBounds:(CGRect)a3;
- (void)setClearPluginButtonEnabled:(BOOL)a3;
- (void)setComposition:(id)a3 forceUpdateText:(BOOL)a4;
- (void)setContainerViewLineWidth:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMaxPluginShelfViewWidth:(double)a3;
- (void)setPlaceHolderWidth:(double)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setPluginEntryViewController:(id)a3;
- (void)setSendButtonTextInsetWidth:(double)a3;
- (void)setSendLaterPluginInfo:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)setShouldStripEmojis:(BOOL)a3;
- (void)setStyle:(int64_t)a3 forceUpdate:(BOOL)a4;
- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)textViewDidEndEmojiRippleAnimation:(id)a3;
- (void)textViewNeedsUpdatedTranslation;
- (void)textViewWillBeginEmojiRippleAnimation:(id)a3;
- (void)textViewWritingToolsDidEnd:(id)a3;
- (void)textViewWritingToolsWillBegin:(id)a3;
- (void)unpauseTextEffectsCoordinator;
- (void)willAnimateBoundsChange;
@end

@implementation CKMessageEntryContentView

- (double)entryContentViewTextLeftOffset
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 entryContentViewTextLeftOffset];
  v5 = v4;

  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isEntryViewRefreshEnabled];

  if (v7)
  {
    v8 = [(CKMessageEntryContentView *)self textView];
    v9 = [v8 textContainer];
    [v9 lineFragmentPadding];
    v5 = v5 - v10;
  }

  return v5;
}

- (BOOL)shouldShowPlugin
{
  v3 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 loadedContentView];
  }

  else
  {
    v5 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)layoutSubviews
{
  v113.receiver = self;
  v113.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v113 layoutSubviews];
  v112 = 0.0;
  [(CKMessageEntryContentView *)self bounds];
  v4 = v3;
  v5 = [(CKMessageEntryContentView *)self sendLaterView];
  if (v5)
  {
    v6 = v5;
    v7 = [(CKMessageEntryContentView *)self sendLaterView];
    [v7 alpha];
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
      v30 = [(CKMessageEntryContentView *)self sendLaterView];
      [v30 sizeThatFits:{v29, v26}];
      v32 = v31;
      v34 = v33;

      v35 = [(CKMessageEntryContentView *)self sendLaterView];
      [v35 setFrame:{v14, v12, v32, v34}];

      v112 = v109 * 0.5 + v12 + v34 + 0.0;
    }
  }

  if (![(CKMessageEntryContentView *)self shouldShowPlugin])
  {
    v71 = [(CKMessageEntryContentView *)self pluginEntryViewController];

    if (v71)
    {
      v72 = [(CKMessageEntryContentView *)self delegate];
      [v72 messageEntryContentViewMaxShelfPluginViewSize:self];
      v74 = v73;
      v76 = v75;

      v70 = [(CKMessageEntryContentView *)self pluginEntryViewController];
      [v70 ck_constrainedSizeThatFits:{v74, v76}];
    }

    else
    {
      v77 = [(CKMessageEntryContentView *)self clearPluginButton];
      [v77 setAlpha:0.0];

      v70 = [(CKMessageEntryContentView *)self pluginDividerLine];
      [v70 setHidden:1];
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
  v48 = [(CKMessageEntryContentView *)self pluginView];
  [v48 setFrame:{v41, v47, v43, v45}];

  v49 = [(CKMessageEntryContentView *)self clearPluginButton];
  [(CKMessageEntryContentView *)self bringSubviewToFront:v49];

  v50 = [(CKMessageEntryContentView *)self shouldShowClearButton];
  v51 = v45 > 0.0 && v50;
  v52 = v51;
  v53 = [(CKMessageEntryContentView *)self clearPluginButton];
  [v53 setAlpha:v52];

  [(CKMessageEntryContentView *)self computedClearPluginButtonFrame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v112 + v60;
  v62 = [(CKMessageEntryContentView *)self clearPluginButton];
  [v62 setFrame:{v55, v61, v57, v59}];

  v112 = v39 + v37 + v45 + v112;
  v63 = +[CKUIBehavior sharedBehaviors];
  v64 = [v63 shouldShowPluginDividerLineWithPluginShelf];
  v65 = [(CKMessageEntryContentView *)self pluginDividerLine];
  [v65 setHidden:v64 ^ 1u];

  v66 = +[CKUIBehavior sharedBehaviors];
  [v66 pluginDividerLineInsetsWithPluginShelf];
  v68 = v67;

  v69 = [(CKMessageEntryContentView *)self pluginDividerLine];
  LOBYTE(v64) = [v69 isHidden];

  if ((v64 & 1) == 0)
  {
    v70 = [(CKMessageEntryContentView *)self pluginDividerLine];
    [(CKMessageEntryContentView *)self _layoutDividerLine:v70 leftInset:&v112 widthInset:v68 currentYOffset:v68 + v68];
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
      v82 = [(CKMessageEntryContentView *)self subjectView];
      [(CKMessageEntryContentView *)self _layoutTextView:v82 currentYOffset:&v112 originX:v81 maxWidth:v79];

      v83 = [(CKMessageEntryContentView *)self textAndSubjectDividerLine];
      [v83 setHidden:0];

      v84 = [(CKMessageEntryContentView *)self textAndSubjectDividerLine];
      [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
      v86 = v85;
      v87 = [(CKMessageEntryContentView *)self subjectView];
      [v87 contentInset];
      [(CKMessageEntryContentView *)self _layoutDividerLine:v84 leftInset:&v112 widthInset:v81 currentYOffset:v86 + v88];
    }

    else
    {
      [(UIView *)self->_textAndSubjectDividerLine setHidden:1];
    }

    v89 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v90 = [v89 isAutomaticOutgoingTranslationEnabled];

    if (v90)
    {
      v91 = [(CKMessageEntryContentView *)self translationView];
      if (v91 && (v92 = v91, -[CKMessageEntryContentView translationView](self, "translationView"), v93 = objc_claimAutoreleasedReturnValue(), v94 = [v93 isHidden], v93, v92, (v94 & 1) == 0))
      {
        v96 = [(CKMessageEntryContentView *)self translationView];
        [(CKMessageEntryContentView *)self _layoutTextView:v96 currentYOffset:&v112 originX:v81 maxWidth:v79];

        v97 = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [v97 setHidden:0];

        v98 = [(CKMessageEntryContentView *)self translationView];
        v99 = [v98 textContainer];
        [v99 lineFragmentPadding];
        v101 = v100;

        v95 = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [(CKMessageEntryContentView *)self sendButtonTextInsetWidth];
        v103 = v102;
        v104 = [(CKMessageEntryContentView *)self translationView];
        [v104 contentInset];
        [(CKMessageEntryContentView *)self _layoutDividerLine:v95 leftInset:&v112 widthInset:v81 + v101 currentYOffset:v103 + v105];
      }

      else
      {
        v95 = [(CKMessageEntryContentView *)self translationAndTextDividerLine];
        [v95 setHidden:1];
      }
    }

    v106 = [(CKMessageEntryContentView *)self textView];
    [(CKMessageEntryContentView *)self _layoutTextView:v106 currentYOffset:&v112 originX:v81 maxWidth:v79];

    v107 = [(CKMessageEntryContentView *)self textView];
    [v107 frame];
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
    v28 = [(CKMessageEntryContentView *)self activeView];
    if (v28)
    {
      v4 = [v28 selectedRange];
      if (v3 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3;
      }

      [v28 _rectForScrollToVisible:{v4, v5}];
      x = v6;
      y = v8;
      width = v10;
      height = v12;
      v14 = [v28 textStorage];
      v15 = [v14 length];

      if (v4 == v15)
      {
        v16 = MEMORY[0x1E695F058];
        v17 = *(MEMORY[0x1E695F058] + 16);
        v18 = *(MEMORY[0x1E695F058] + 24);
        v19 = [(CKMessageEntryContentView *)self textView];
        v20 = [v19 textLayoutManager];

        v21 = [v20 textViewportLayoutController];
        v22 = [v20 documentRange];
        v23 = [v22 endLocation];
        [v21 relocateViewportToTextLocation:v23];
        v25 = v24;

        v26 = [v20 textViewportLayoutController];
        [v26 adjustViewportByVerticalOffset:v25];

        v27 = [v20 textViewportLayoutController];
        [v27 layoutViewport];

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

      [(CKMessageEntryContentView *)self convertRect:v28 fromView:x, y, width, height];
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
      v3 = [(CKMessageEntryContentView *)self textView];
      v4 = [v3 compositionText];
      v5 = [(CKMessageEntryContentView *)self subjectView];
      v6 = [v5 compositionText];
      v7 = [(CKMessageEntryContentView *)self shelfPluginPayload];
      v8 = [CKComposition newExpirableCompositionWithText:v4 subject:v6 shelfPluginPayload:v7];
      composition = self->_composition;
      self->_composition = v8;
    }

    else
    {
      v10 = [(CKMessageEntryContentView *)self shelfPluginPayload];
      v11 = [v10 supportsCollaboration];

      v12 = [CKComposition alloc];
      v3 = [(CKMessageEntryContentView *)self textView];
      v36 = [v3 compositionText];
      v5 = [(CKMessageEntryContentView *)self subjectView];
      v13 = [v5 compositionText];
      v7 = [(CKMessageEntryContentView *)self translationView];
      composition = [v7 compositionText];
      v37 = [(CKMessageEntryContentView *)self shelfPluginPayload];
      v35 = [(CKMessageEntryContentView *)self bizIntent];
      v14 = [(CKMessageEntryContentView *)self shelfMediaObject];
      if (v11)
      {
        [(CKMessageEntryContentView *)self collaborationShareOptions];
        v32 = v31 = v12;
        v15 = [(CKMessageEntryContentView *)self textView];
        [v15 proofreadingInfo];
        v16 = v33 = v3;
        v4 = v36;
        v17 = [(CKComposition *)v31 initWithText:v36 subject:v13 translation:composition shelfPluginPayload:v37 bizIntent:v35 shelfMediaObject:v14 collaborationShareOptions:v32 proofreadingInfo:v16];
        v18 = self->_composition;
        self->_composition = v17;

        v3 = v33;
        v6 = v13;
      }

      else
      {
        [(CKMessageEntryContentView *)self textView];
        v19 = v34 = v5;
        v20 = [v19 proofreadingInfo];
        v21 = v12;
        v4 = v36;
        v22 = [(CKComposition *)v21 initWithText:v36 subject:v13 translation:composition shelfPluginPayload:v37 bizIntent:v35 shelfMediaObject:v14 proofreadingInfo:v20];
        v23 = self->_composition;
        self->_composition = v22;

        v5 = v34;
        v6 = v13;
      }
    }
  }

  v24 = [(CKMessageEntryContentView *)self sendLaterPluginInfo];
  [(CKComposition *)self->_composition setSendLaterPluginInfo:v24];

  v25 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v26 = [v25 isAutomaticOutgoingTranslationEnabled];

  if (v26)
  {
    v27 = [(CKMessageEntryContentView *)self sourceLanguageID];
    [(CKComposition *)self->_composition setSourceLanguageID:v27];

    v28 = [(CKMessageEntryContentView *)self destinationLanguageID];
    [(CKComposition *)self->_composition setDestinationLanguageID:v28];
  }

  v29 = self->_composition;

  return v29;
}

- (UIView)pluginView
{
  v2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)isShowingDictationPlaceholder
{
  v3 = [(CKMessageEntryContentView *)self textView];
  if ([v3 isShowingDictationPlaceholder])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CKMessageEntryContentView *)self subjectView];
    v4 = [v5 isShowingDictationPlaceholder];
  }

  return v4;
}

- (BOOL)canApplyTextEffectFromKeyCommand
{
  v2 = [(CKMessageEntryContentView *)self textView];
  v3 = [v2 isExpressiveTextEnabled];

  return v3;
}

- (BOOL)canApplyTextStyleFromKeyCommand
{
  v2 = [(CKMessageEntryContentView *)self textView];
  v3 = [v2 isExpressiveTextEnabled];

  return v3;
}

- (int64_t)activeTextEffectTypeInSelectedRange
{
  v3 = [(CKMessageEntryContentView *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  v7 = [(CKMessageEntryContentView *)self textView];
  v8 = [v7 ck_activeTextEffectTypeInRange:{v4, v6}];

  return v8;
}

- (unint64_t)activeTextStylesInSelectedRange
{
  v3 = [(CKMessageEntryContentView *)self textView];
  v4 = [v3 selectedRange];
  v6 = v5;

  v7 = [(CKMessageEntryContentView *)self textView];
  v8 = [v7 ck_activeTextStylesInRange:{v4, v6}];

  return v8;
}

- (id)textEffectsEditMenuForTextInRange:(_NSRange)a3
{
  length = a3.length;
  v4 = a3.location;
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isExpressiveTextEnabled];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = [(CKMessageEntryContentView *)self textView];
    v9 = [v8 ck_activeTextStylesInRange:{v4, length}];

    v10 = [(CKMessageEntryContentView *)self textView];
    v11 = [v10 ck_activeTextEffectTypeInRange:{v4, length}];

    v12 = [(CKMessageEntryContentView *)self selectedText];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__CKMessageEntryContentView_TextEffects__textEffectsEditMenuForTextInRange___block_invoke;
    v25[3] = &unk_1E72F0290;
    objc_copyWeak(v26, &location);
    v26[1] = v4;
    v26[2] = length;
    v13 = [CKTextEffectsMenuFactory textStylePaletteMenuWithActiveTextStyles:v9 selectedText:v12 handler:v25];

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

- (void)applyTextStyle:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(CKMessageEntryContentView *)self textView];
  v6 = [v5 selectedRange];
  v8 = v7;

  v9 = [(CKMessageEntryContentView *)self composition];
  v10 = [v9 text];
  v11 = [v10 string];

  v12 = [v11 length];
  if (v6 + v8 <= v12)
  {
    [(CKMessageEntryContentView *)self applyTextStyle:a3 toTextRange:v6, v8];
  }

  else
  {
    v13 = v12;
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = IMTextStyleAttributeNameFromStyle();
      v24.location = v6;
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

- (void)applyTextStyle:(unint64_t)a3 toTextRange:(_NSRange)a4
{
  length = a4.length;
  v5 = a4.location;
  v8 = [(CKMessageEntryContentView *)self textView];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 balloonTextFont];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __69__CKMessageEntryContentView_TextEffects__applyTextStyle_toTextRange___block_invoke;
  v14 = &unk_1E72EC460;
  objc_copyWeak(&v15, &location);
  [v8 ck_applyWithTextStyle:a3 toRange:v5 baseFont:length undo:{v10, &v11}];
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

- (void)applyTextEffect:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(CKMessageEntryContentView *)self textView];
  v6 = [v5 selectedRange];
  v8 = v7;

  v9 = [(CKMessageEntryContentView *)self composition];
  v10 = [v9 text];
  v11 = [v10 string];

  v12 = [v11 length];
  if (v6 + v8 <= v12)
  {
    [(CKMessageEntryContentView *)self applyTextEffect:a3 toTextRange:v6, v8];
  }

  else
  {
    v13 = v12;
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = IMTextEffectNameFromType();
      v24.location = v6;
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

- (void)applyTextEffect:(int64_t)a3 toTextRange:(_NSRange)a4
{
  length = a4.length;
  v5 = a4.location;
  objc_initWeak(&location, self);
  v8 = [(CKMessageEntryContentView *)self textView];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CKMessageEntryContentView_TextEffects__applyTextEffect_toTextRange___block_invoke;
  v13[3] = &unk_1E72F02E0;
  objc_copyWeak(v14, &location);
  v14[1] = a3;
  v14[2] = v5;
  v14[3] = length;
  [v8 ck_toggleTextEffect:a3 inRange:v5 getAdded:length undo:{0, v13}];

  [(CKMessageEntryContentView *)self invalidateComposition];
  v9 = MEMORY[0x1E696AEC0];
  v16.location = v5;
  v16.length = length;
  v10 = NSStringFromRange(v16);
  v11 = [v9 stringWithFormat:@"did apply text effect of type: %lu to range: %@", a3, v10];

  v12 = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [v12 updateWithReason:v11];

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
  v2 = [(CKMessageEntryContentView *)self textView];
  v3 = [v2 selectedText];

  if (v3)
  {
    v4 = [v3 copy];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v19 = [(CKMessageEntryContentView *)self _currentPluginPayloadHasPhotosExtensionMediaPayload];
  if ([(CKMessageEntryContentView *)self _currentPluginIsPhotosPlugin]|| v19)
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
    v28 = [(CKMessageEntryContentView *)self delegate];
    [v28 messageEntryContentViewMaxShelfPluginViewSize:self];
    v25 = v29;
    v26 = v30;
  }

  v31 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  [v31 ck_constrainedSizeThatFits:{v25, v26}];
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

+ (void)getClearButtonInset:(double *)a3 forPluginWithBundleID:(id)a4
{
  v7 = a4;
  v12 = v7;
  if (!a3)
  {
    [CKMessageEntryContentView getClearButtonInset:a2 forPluginWithBundleID:a1];
    v7 = v12;
  }

  v8 = [v7 isEqualToString:*MEMORY[0x1E69A69E0]];
  v9 = [v12 isEqualToString:@"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:com.apple.Stickers.UserGenerated.MessagesExtension"];
  if ((v8 & 1) != 0 || v9)
  {
    *a3 = 0.0;
  }

  else
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 messageEntryContentViewClearButtonInset];
    *a3 = v11;
  }
}

- (CGRect)computedClearPluginButtonFrame
{
  v3 = [(CKMessageEntryContentView *)self _shouldReverseLayoutDirection];
  v4 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v5 = [v4 pluginBundleID];
  v36 = 0.0;
  [objc_opt_class() getClearButtonInset:&v36 forPluginWithBundleID:v5];
  [(CKMessageEntryContentView *)self computedPluginViewFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isEntryViewRefreshEnabled];

  v16 = [(CKMessageEntryContentView *)self clearPluginButton];
  v17 = v16;
  if (v15)
  {
    [(CKMessageEntryContentView *)self bounds];
    [v17 sizeThatFits:{v18, v19}];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    [v16 bounds];
    v21 = v24;

    v17 = [(CKMessageEntryContentView *)self clearPluginButton];
    [v17 bounds];
    v23 = v25;
  }

  v26 = v36;
  v27 = v7;
  v28 = v9;
  v29 = v11;
  v30 = v13;
  if (v3)
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
  v2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v3 = [v2 pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  if ([v3 isEqualToString:v4] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v2 photoShelfViewController];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_currentPluginIsPhotosPlugin
{
  v2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v3 = [v2 pluginBundleID];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A6A00]];

  return v4;
}

- (BOOL)_currentPluginIsPollsPlugin
{
  v2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v3 = [v2 pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(CKMessageEntryContentView *)self sendLaterView:a3.width];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = [(CKMessageEntryContentView *)self sendLaterView];
    [v8 alpha];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 messageEntryContentViewSendLaterInsets];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = [(CKMessageEntryContentView *)self sendLaterView];
      [(CKMessageEntryContentView *)self bounds];
      [v20 sizeThatFits:{width - (v15 + v19), v21}];
      v23 = v22;
      v25 = v24;

      v26 = [(CKMessageEntryContentView *)self sendLaterView];
      [v26 ck_constrainedSizeThatFits:{v23, v25}];
      v28 = v27;

      v6 = v17 + v13 + 0.0 + v28;
    }
  }

  if ([(CKMessageEntryContentView *)self shouldShowPlugin])
  {
    v29 = [(CKMessageEntryContentView *)self shelfPluginPayload];
    v30 = [v29 pluginBundleID];
    v31 = [v30 isEqualToString:*MEMORY[0x1E69A6A00]];
    v32 = IMBalloonExtensionIDWithSuffix();
    if ([v30 isEqualToString:v32] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v33 = [v29 photoShelfViewController];
      v34 = v33 != 0;
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
      v42 = +[CKUIBehavior sharedBehaviors];
      [v42 entryViewMaxPluginShelfHeight];
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
        v50 = [(CKMessageEntryContentView *)self pluginEntryViewController];
        [v50 ck_constrainedSizeThatFits:{v41, v44}];
        v52 = v51;

        v53 = +[CKUIBehavior sharedBehaviors];
        [v53 dividerHeight];
        v6 = v40 + v6 + v38 + v52 + v54;

        goto LABEL_16;
      }

      v42 = [(CKMessageEntryContentView *)self delegate];
      [v42 messageEntryContentViewMaxShelfPluginViewSize:self];
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
    v64 = [(CKMessageEntryContentView *)self subjectView];
    [v64 sizeThatFits:{v60, 1.79769313e308}];
    v66 = fmax(v65, v63);
    v67 = +[CKUIBehavior sharedBehaviors];
    [v67 dividerHeight];
    v6 = v6 + v66 + v68;
  }

  v69 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v70 = [v69 isAutomaticOutgoingTranslationEnabled];

  if (v70)
  {
    v71 = [(CKMessageEntryContentView *)self translationView];
    if (v71)
    {
      v72 = v71;
      v73 = [(CKMessageEntryContentView *)self translationView];
      v74 = [v73 isHidden];

      if ((v74 & 1) == 0)
      {
        v75 = [(CKMessageEntryContentView *)self translationView];
        [v75 sizeThatFits:{v60, 1.79769313e308}];
        v77 = fmax(v76, v63);
        v78 = +[CKUIBehavior sharedBehaviors];
        [v78 dividerHeight];
        v6 = v6 + v77 + v79;
      }
    }
  }

  v80 = [(CKMessageEntryContentView *)self textView];
  [v80 sizeThatFits:{v60, 1.79769313e308}];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKMessageEntryContentView *)self bounds];
  if (v9 != width || v8 != height)
  {
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  }

  v11.receiver = self;
  v11.super_class = CKMessageEntryContentView;
  [(CKMessageEntryContentView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CKMessageEntryContentView)initWithFrame:(CGRect)a3 shouldShowSubject:(BOOL)a4 shouldDisableAttachments:(BOOL)a5 shouldUseNonEmojiKeyboard:(BOOL)a6 shouldUseNonHandwritingKeyboard:(BOOL)a7 shouldDisableKeyboardStickers:(BOOL)a8 shouldAllowPollSuggestions:(BOOL)a9 translationLanguage:(id)a10
{
  v10 = a9;
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v77[2] = *MEMORY[0x1E69E9840];
  v21 = a10;
  v76.receiver = self;
  v76.super_class = CKMessageEntryContentView;
  v22 = [(CKMessageEntryContentView *)&v76 initWithFrame:x, y, width, height];
  if (v22)
  {
    v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v24 = [v23 isExpressiveTextEnabled];

    if (v24 && !+[_TtC7ChatKit23CKTextEffectCoordinator entryViewTextEffectCoordinationDisabled])
    {
      v25 = [[CKTextEffectCoordinatorConfiguration alloc] initWithLogIdentifier:@"entry_view" timeAfterLastAnimationInSeconds:3.5];
      v26 = [[_TtC7ChatKit23CKTextEffectCoordinator alloc] initWithConfiguration:v25];
      textEffectCoordinator = v22->_textEffectCoordinator;
      v22->_textEffectCoordinator = v26;

      [(CKTextEffectCoordinator *)v22->_textEffectCoordinator setDelegate:v22];
      [(CKTextEffectCoordinator *)v22->_textEffectCoordinator setPaused:0 includingAnimators:1];
    }

    v22->_isCompositionExpirable = 0;
    [(CKMessageEntryContentView *)v22 setScrollsToTop:0];
    [(CKMessageEntryContentView *)v22 setShouldShowSubject:v15];
    v28 = [objc_opt_class() _createTextView:v14 shouldUseNonEmojiKeyboard:v13 shouldUseNonHandwritingKeyboard:v12 shouldDisableKeyboardStickers:v11 shouldAllowPollSuggestions:v10];
    [v28 setDelegate:v22];
    [v28 setTextDragDelegate:v22];
    v29 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v30 = [v29 isAutomaticOutgoingTranslationEnabled];

    if (v21 && v30)
    {
      v31 = objc_alloc_init(CKCompositionTranslator);
      [(CKCompositionTranslator *)v31 setDelegate:v22];
      [(CKMessageEntryContentView *)v22 setTranslator:v31];
      [(CKMessageEntryContentView *)v22 setTranslationLanguage:v21];
    }

    v32 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v33 = [v32 isExpressiveTextEnabled];

    if (v33)
    {
      v34 = [v28 textLayoutManager];
      [v34 setRequiresCTLineRef:1];

      [v28 setTextFormattingDelegate:v22];
      if (CKShouldUseModernRippleAnimation() && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v28 performSelector:sel_setEmojiAnimationDelegate_ withObject:v22];
      }
    }

    [(CKMessageEntryContentView *)v22 setTextView:v28];
    [(CKMessageEntryContentView *)v22 addSubview:v28];
    [(CKMessageEntryContentView *)v22 setStyle:4];
    v35 = MEMORY[0x1E695F058];
    if (v15)
    {
      v36 = [objc_opt_class() _createSubjectView];
      [v36 setDelegate:v22];
      [(CKMessageEntryContentView *)v22 setSubjectView:v36];
      [(CKMessageEntryContentView *)v22 addSubview:v36];
      v37 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
      v38 = +[CKUIBehavior sharedBehaviors];
      v39 = [v38 theme];
      v40 = [v39 entryFieldBorderColor];
      [v37 setBackgroundColor:v40];

      v35 = MEMORY[0x1E695F058];
      [(CKMessageEntryContentView *)v22 setTextAndSubjectDividerLine:v37];
      [(CKMessageEntryContentView *)v22 addSubview:v37];
    }

    v41 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v42 = [v41 isAutomaticOutgoingTranslationEnabled];

    if (v42)
    {
      v43 = [(CKMessageEntryContentView *)v22 translationLanguage];

      if (v43)
      {
        v75 = [objc_opt_class() _createTranslationView];
        [(CKMessageEntryContentView *)v22 setTranslationView:v75];
        [(CKMessageEntryContentView *)v22 addSubview:v75];
        v44 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
        v45 = +[CKUIBehavior sharedBehaviors];
        v46 = [v45 theme];
        v47 = [v46 entryFieldBorderColor];
        [v44 setBackgroundColor:v47];

        [(CKMessageEntryContentView *)v22 setTranslationAndTextDividerLine:v44];
        [(CKMessageEntryContentView *)v22 addSubview:v44];
      }
    }

    v48 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v49 = [v48 isEntryViewRefreshEnabled];

    if (v49)
    {
      v50 = +[CKMaterialCloseButton closeButton];
      [(CKMessageEntryContentView *)v22 bounds];
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
      v60 = [v59 clearPluginButtonConfiguration];
      v50 = [v58 buttonWithConfiguration:v60 primaryAction:0];

      v55 = *MEMORY[0x1E695EFF8];
      v56 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [v50 accessibilitySetIdentification:@"clearPluginButton"];
    [v50 setExclusiveTouch:0];
    v61 = +[CKUIBehavior sharedBehaviors];
    [v61 clearPluginButtonSize];
    [v50 setBounds:{v55, v56, v62, v63}];

    [v50 addTarget:v22 action:sel_clearPluginButtonTapped_ forEvents:64];
    [v50 setAlpha:0.0];
    [(CKMessageEntryContentView *)v22 setClearPluginButton:v50];
    [(CKMessageEntryContentView *)v22 addSubview:v50];
    v64 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v35, v35[1], v35[2], v35[3]}];
    v65 = +[CKUIBehavior sharedBehaviors];
    v66 = [v65 theme];
    v67 = [v66 entryFieldBorderColor];
    [v64 setBackgroundColor:v67];

    [(CKMessageEntryContentView *)v22 setPluginDividerLine:v64];
    [(CKMessageEntryContentView *)v22 addSubview:v64];
    [(CKMessageEntryContentView *)v22 setNeedsTextLayout:1];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v69 = [(CKMessageEntryContentView *)v22 registerForTraitChanges:v68 withHandler:&__block_literal_global_155];
    v70 = [MEMORY[0x1E696AD88] defaultCenter];
    [v70 addObserver:v22 selector:sel_pluginPayloadWantsResize_ name:*MEMORY[0x1E69A5A00] object:0];

    v71 = [MEMORY[0x1E696AD88] defaultCenter];
    [v71 addObserver:v22 selector:sel_pluginPayloadInvalidatedMessageTintColor_ name:*MEMORY[0x1E69A59F0] object:0];

    v72 = [MEMORY[0x1E696AD88] defaultCenter];
    [v72 addObserver:v22 selector:sel_pluginPayloadDidChangeSendEnabled_ name:*MEMORY[0x1E69A59E8] object:0];

    v73 = [MEMORY[0x1E696AD88] defaultCenter];
    [v73 addObserver:v22 selector:sel_pluginPayloadDidLoad_ name:*MEMORY[0x1E69A59F8] object:0];
  }

  return v22;
}

void __221__CKMessageEntryContentView_initWithFrame_shouldShowSubject_shouldDisableAttachments_shouldUseNonEmojiKeyboard_shouldUseNonHandwritingKeyboard_shouldDisableKeyboardStickers_shouldAllowPollSuggestions_translationLanguage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStyle:objc_msgSend(v2 forceUpdate:{"style"), 1}];
}

- (void)setStyle:(int64_t)a3 forceUpdate:(BOOL)a4
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_style != a3 || a4)
  {
    v5 = a3;
    self->_style = a3;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v48 = 67109120;
        LODWORD(v49) = v5;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Updating entry view style to %d", &v48, 8u);
      }
    }

    v8 = [(CKMessageEntryContentView *)self traitCollection];
    if ([v8 isDiffusedSystemGlassSettingEnabled])
    {
      v9 = [(CKMessageEntryContentView *)self traitCollection];
      v10 = [v9 isTranscriptBackgroundActive];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CKMessageEntryContentView *)self traitCollection];
    v12 = [v11 ck_systemUserInterfaceStyle];

    if (v10)
    {
      if (v12 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v14 = CKMessageEntryViewStyleIsForDarkAppearance(self->_style);
      v15 = +[CKUIBehavior sharedBehaviors];
      v16 = [v15 theme];
      v17 = v16;
      if (v14)
      {
        v13 = [v16 keyboardDarkAppearance];
      }

      else
      {
        v13 = [v16 keyboardAppearance];
      }
    }

    v18 = [(CKMessageEntryContentView *)self textView];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 theme];
    v21 = [v20 entryFieldTextColor];
    [v18 setTextColor:v21];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 theme];
    v24 = [v23 entryFieldPlaceholderTextColor];
    [v18 setPlaceholderColor:v24];

    v25 = [v18 keyboardAppearance];
    v26 = v25 != v13;
    if (v25 != v13)
    {
      [v18 setKeyboardAppearance:v13];
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (v25 != v13)
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
      v29 = [(CKMessageEntryContentView *)self subjectView];
      v30 = v29 == 0;

      if (!v30)
      {
        v31 = [(CKMessageEntryContentView *)self subjectView];
        v32 = +[CKUIBehavior sharedBehaviors];
        v33 = [v32 theme];
        v34 = [v33 entryFieldTextColor];
        [v31 setTextColor:v34];

        v35 = +[CKUIBehavior sharedBehaviors];
        v36 = [v35 theme];
        v37 = [v36 entryFieldPlaceholderTextColor];
        [v31 setPlaceholderColor:v37];

        if ([v31 keyboardAppearance] != v13)
        {
          [v31 setKeyboardAppearance:v13];
          v26 = 1;
        }
      }
    }

    v38 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v39 = [v38 isAutomaticOutgoingTranslationEnabled];

    if (v39)
    {
      v40 = [(CKMessageEntryContentView *)self translationView];

      if (v40)
      {
        v41 = [(CKMessageEntryContentView *)self translationView];
        v42 = +[CKUIBehavior sharedBehaviors];
        v43 = [v42 theme];
        v44 = [v43 tertiaryLabelColor];
        [v41 setTextColor:v44];
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

      v46 = [(CKMessageEntryContentView *)self activeView];
      [v46 reloadInputViews];

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

- (void)setSendLaterPluginInfo:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (self->_sendLaterPluginInfo != v9)
  {
    objc_storeStrong(&self->_sendLaterPluginInfo, a3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CKMessageEntryContentView_setSendLaterPluginInfo_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E72EB8D0;
    v11 = v9;
    v24 = v11;
    v25 = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v6)
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
      v19 = self;
      v20 = v10;
      [v14 animateWithDuration:v21 animations:v17 completion:0.2];
    }

    else
    {
      v12[2](v12);
      if (!v11)
      {
        v15 = [(CKMessageEntryContentView *)self sendLaterView];
        [v15 removeFromSuperview];

        [(CKMessageEntryContentView *)self setSendLaterView:0];
      }

      [(CKMessageEntryContentView *)self layoutIfNeeded];
      v16 = [(CKMessageEntryContentView *)self delegate];
      [v16 messageEntryContentViewSendLaterPluginInfoUpdated:self];

      v10[2](v10);
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

- (void)setComposition:(id)a3 forceUpdateText:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  if ((CKIsEqual(self->_composition, v34) & 1) == 0)
  {
    [(CKMessageEntryContentView *)self invalidateComposition];
    v6 = [v34 shelfPluginPayload];
    v7 = [v6 skipConfigurePlugin];

    v8 = [v34 shelfPluginPayload];
    v9 = v8;
    if (v7)
    {
      [v8 setSkipConfigurePlugin:0];

      v10 = [v34 shelfPluginPayload];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [v34 shelfPluginPayload];
        v13 = [v12 datasource];
        [v13 setPluginDataSourceDelegate:self];
      }

      v14 = [v34 shelfPluginPayload];
      v15 = [v14 datasource];

      if (!v15)
      {
        v16 = [(CKMessageEntryContentView *)self shelfPluginPayload];
        v17 = [v16 datasource];
        v18 = [v34 shelfPluginPayload];
        [v18 setDatasource:v17];
      }

      v9 = [v34 shelfPluginPayload];
      [(CKMessageEntryContentView *)self setShelfPluginPayload:v9];
    }

    else
    {
      [(CKMessageEntryContentView *)self configureShelfForPluginPayload:v8];
    }

    v19 = [v34 bizIntent];
    [(CKMessageEntryContentView *)self setBizIntent:v19];

    v20 = [v34 shelfMediaObject];
    [(CKMessageEntryContentView *)self setShelfMediaObject:v20];

    v21 = [v34 collaborationShareOptions];
    [(CKMessageEntryContentView *)self setCollaborationShareOptions:v21];

    v22 = [v34 collaborationOptions];
    [(CKMessageEntryContentView *)self setCollaborationOptions:v22];

    v23 = [v34 sendLaterPluginInfo];
    [(CKMessageEntryContentView *)self setSendLaterPluginInfo:v23 animated:0 completionHandler:&__block_literal_global_273_1];

    if (![(CKMessageEntryContentView *)self _shouldDeferUpdateUI]|| v4)
    {
      v24 = [(CKMessageEntryContentView *)self textView];
      v25 = [v34 text];
      [v24 setCompositionText:v25];

      v26 = [(CKMessageEntryContentView *)self subjectView];
      v27 = [v34 subject];
      [v26 setCompositionText:v27];

      v28 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      LODWORD(v27) = [v28 isAutomaticOutgoingTranslationEnabled];

      if (v27)
      {
        v29 = [(CKMessageEntryContentView *)self translationView];
        v30 = [v34 translation];
        [v29 setCompositionText:v30];

        v31 = [v34 translation];
        v32 = [v31 length];

        if (!v32)
        {
          v33 = [(CKMessageEntryContentView *)self translationView];
          [v33 setHidden:1];
        }
      }

      -[CKMessageEntryContentView setIsCompositionExpirable:](self, "setIsCompositionExpirable:", [v34 isExpirableComposition]);
      self->_shouldHideClearPluginButton = [v34 shouldHideClearPluginButton];
    }
  }
}

- (void)hideTextEffectsPickerIfNeededAndResetTypingAttributes
{
  v2 = [(CKMessageEntryContentView *)self textView];
  [v2 hideTextEffectsPickerIfNeededAndResetTypingAttributes];
}

- (void)configureShelfForPluginPayload:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || (-[CKMessageEntryContentView shelfPluginPayload](self, "shelfPluginPayload"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqualToPluginPayload:v5], v5, !v6))
  {
    v8 = [(CKMessageEntryContentView *)self pluginEntryViewController];

    if (v8)
    {
      v9 = [(CKMessageEntryContentView *)self pluginEntryViewController];
      v10 = [v9 view];
      [v10 removeFromSuperview];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
      v12 = [v11 shouldSendAsMediaObject];
      if (v4)
      {
LABEL_11:
        v13 = [v4 pluginBundleID];
        v14 = IMBalloonExtensionIDWithSuffix();
        v15 = [v13 isEqualToString:v14];

        v16 = [v11 photoShelfViewController];
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
            v49 = v16;
            _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "isPhotosPluginPayload: %@, photoShelfVC: %@", buf, 0x16u);
          }
        }

        if (!v16)
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
              v47 = v4;
              _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Staging photos plugin payload: %@", buf, 0xCu);
            }
          }

          [(CKMessageEntryContentView *)self setShelfPluginPayload:v4];
          [(CKMessageEntryContentView *)self setPluginEntryViewController:v16];
        }

        else
        {
          if (v19)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v4;
              _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Staging plugin payload: %@", buf, 0xCu);
            }
          }

          v42 = [MEMORY[0x1E69A5AD0] sharedInstance];
          v24 = [v4 pluginBundleID];
          v43 = [v42 balloonPluginForBundleID:v24];

          v25 = [v43 dataSourceClass];
          if ((v12 & 1) != 0 || !v25)
          {
            v25 = objc_opt_class();
          }

          v26 = [[v25 alloc] initWithPluginPayload:v4];
          [v4 setDatasource:v26];
          v27 = [(CKMessageEntryContentView *)self conversation];
          v28 = [v27 chat];
          [v26 setChat:v28];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v26 setPluginDataSourceDelegate:self];
          }

          v41 = [MEMORY[0x1E69A5C40] stagingContextWithIdentifier:@"stagedShelfPlugin" isEmbeddedInTextView:0];
          [v26 setPayloadInShelf:1];
          [v26 setStagingContext:v41];
          [v26 payloadWillEnterShelf];
          v29 = [MEMORY[0x1E69A5AD0] sharedInstance];
          v30 = [v4 associatedMessageGUID];
          v31 = [v4 pluginBundleID];
          v40 = [v29 existingDataSourceForMessageGUID:v30 bundleID:v31];

          [v40 beginShowingLastConsumedBreadcrumbForOutgoingPayload:v4];
          v32 = [[CKDefaultPluginEntryViewController alloc] initWithDataSource:v26 entryViewDelegate:0 andPlugin:v43];
          v33 = [v4 pluginBundleID];
          v34 = IMBalloonExtensionIDWithSuffix();
          if ([v33 isEqualToString:v34])
          {
            [(CKMessageEntryContentView *)self setShouldSkipRemovalFromParent:1];
          }

          else
          {
            v35 = [v4 pluginBundleID];
            v36 = IMBalloonExtensionIDWithSuffix();
            -[CKMessageEntryContentView setShouldSkipRemovalFromParent:](self, "setShouldSkipRemovalFromParent:", [v35 isEqualToString:v36]);
          }

          v37 = [(CKDefaultPluginEntryViewController *)v32 view];
          [v37 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

          if ([(CKMessageEntryContentView *)self pendingShelfPayloadWillAnimateIn])
          {
            v38 = [(CKDefaultPluginEntryViewController *)v32 view];
            [v38 setAlpha:0.0];

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __60__CKMessageEntryContentView_configureShelfForPluginPayload___block_invoke;
            block[3] = &unk_1E72EBA18;
            v45 = v32;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            [(CKMessageEntryContentView *)self setPendingShelfPayloadWillAnimateIn:0];
          }

          [(CKMessageEntryContentView *)self setShelfPluginPayload:v4];
          [(CKMessageEntryContentView *)self setPluginEntryViewController:v32];
          v39 = [(CKMessageEntryContentView *)self delegate];
          [v39 messageEntryContentView:self didStagePluginPayload:v4];
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
        [(CKMessageEntryContentView *)v4 configureShelfForPluginPayload:v21];
      }

      v12 = 0;
      v11 = 0;
      if (v4)
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

- (void)setPluginEntryViewController:(id)a3
{
  v5 = a3;
  if (CKIsEqual(self->_pluginEntryViewController, v5))
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
      v9 = [(CKPluginEntryViewController *)self->_pluginEntryViewController view];
      [v9 removeFromSuperview];

      [(CKPluginEntryViewController *)self->_pluginEntryViewController removeFromParentViewController];
      pluginEntryViewController = self->_pluginEntryViewController;
      self->_pluginEntryViewController = 0;
    }

    if (v5)
    {
      objc_storeStrong(&self->_pluginEntryViewController, a3);
      [(CKMessageEntryContentView *)self setShouldSkipRemovalFromParent:0];
      v11 = [(CKMessageEntryContentView *)self delegate];
      if (!v11)
      {
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [CKMessageEntryContentView setPluginEntryViewController:];
        }
      }

      [v11 messageEntryContentView:self updatePluginSendEnablementTo:1];
      [v11 messageEntryContentView:self willAddPluginEntryViewControllerToViewHierarchy:self->_pluginEntryViewController];
      v13 = [(CKPluginEntryViewController *)self->_pluginEntryViewController view];
      [(CKMessageEntryContentView *)self addSubview:v13];

      [v11 messageEntryContentView:self didAddPluginEntryViewControllerToViewHierarchy:self->_pluginEntryViewController];
    }

    if (![(CKMessageEntryContentView *)self _shouldDeferUpdateUI])
    {
      [(CKMessageEntryContentView *)self _updateUI];
      v14 = [(CKMessageEntryContentView *)self delegate];
      [v14 messageEntryContentViewShelfDidChange:self];

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
  v2 = [(CKMessageEntryContentView *)self activeView];
  v3 = [v2 isFirstResponder];

  return v3;
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
  v2 = [(CKMessageEntryContentView *)self activeView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)_shouldDeferUpdateUI
{
  v3 = [(CKMessageEntryContentView *)self composition];
  v4 = [v3 shelfPluginPayload];
  if (v4)
  {
    v5 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v6 = [v4 pluginBundleID];
    v7 = [v5 balloonPluginForBundleID:v6];

    if ([v7 prefersNoLoadingBubbles])
    {
      v8 = 0;
    }

    else
    {
      v9 = [objc_alloc(objc_msgSend(v7 "dataSourceClass"))];
      if ([v9 supportsDynamicSize])
      {
        v10 = [(CKMessageEntryContentView *)self pluginEntryViewController];
        v8 = v10 != 0;
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
  v3 = [(CKMessageEntryContentView *)self textView];
  v4 = [v3 textLayoutManager];
  v5 = [(CKMessageEntryContentView *)self textView];
  v6 = [v5 textLayoutManager];
  v7 = [v6 documentRange];
  v8 = [v7 location];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CKMessageEntryContentView_isSingleLine__block_invoke;
  v11[3] = &unk_1E72EC8C8;
  v11[4] = &v12;
  v9 = [v4 enumerateTextLayoutFragmentsFromLocation:v8 options:4 usingBlock:v11];

  LOBYTE(v3) = v13[3] == 1;
  _Block_object_dispose(&v12, 8);
  return v3;
}

BOOL __41__CKMessageEntryContentView_isSingleLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textLineFragments];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];

  return *(*(*(a1 + 32) + 8) + 24) < 2uLL;
}

- (void)setPlaceholderText:(id)a3
{
  v6 = a3;
  v4 = [(CKMessageEntryContentView *)self requestedPlaceholderText];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(CKMessageEntryContentView *)self setRequestedPlaceholderText:v6];
    [(CKMessageEntryContentView *)self _updateUI];
  }
}

- (NSString)placeholderText
{
  v2 = [(CKMessageEntryContentView *)self textView];
  v3 = [v2 placeholderText];

  return v3;
}

- (void)setBalloonColor:(char)a3
{
  v3 = a3;
  v4 = [(CKMessageEntryContentView *)self textView];
  [v4 setBalloonColor:v3];
}

- (UIEdgeInsets)contentTextAlignmentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 entryViewlayoutMetrics];

  [v3 entryViewTextAlignmentInsets];
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
  v2 = [(CKMessageEntryContentView *)self textView];
  v3 = [v2 balloonColor];

  return v3;
}

- (void)setPlaceHolderWidth:(double)a3
{
  self->_placeHolderWidth = a3;
  v5 = [(CKMessageEntryContentView *)self textView];
  [v5 setPlaceHolderWidth:a3];

  v6 = [(CKMessageEntryContentView *)self subjectView];
  [v6 setPlaceHolderWidth:a3];
}

- (void)setShouldStripEmojis:(BOOL)a3
{
  v3 = a3;
  self->_shouldStripEmojis = a3;
  v4 = [(CKMessageEntryContentView *)self textView];
  [v4 setShouldStripEmojis:v3];
}

- (void)acceptAutocorrectionForChat:(id)a3 completionHandler:(id)a4
{
  v56[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 proofreadingInfo];
  v9 = [v8 count];

  if (v9)
  {
    [v6 setProofreadingInfo:0];
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
              v17 = [v12 lastObject];
              v18 = [v13 lastObject];
              v19 = v16;
              v20 = v17;
              v21 = [v19 lastObject];
              if (v17 && v18 && v21)
              {
                v44 = v21;
                v42 = v12;
                v43 = v18;
                v41 = v13;
                v22 = [v17 rangeValue];
                v39 = v23;
                [(CKMessageEntryContentView *)self textView];
                v25 = v24 = v20;
                v26 = [(CKMessageEntryContentView *)self textView];
                v27 = [v26 beginningOfDocument];
                v28 = [v25 positionFromPosition:v27 offset:v22 + v39];

                v29 = [(CKMessageEntryContentView *)self textView];
                v30 = [v29 endOfDocument];
                v40 = v28;
                LODWORD(v27) = [v28 isEqual:v30];

                if (v27)
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
                v18 = v43;
                v21 = v44;
              }

              v15 = 0x1E695D000uLL;
            }
          }
        }

        v50 = *MEMORY[0x1E69A5860];
        v51 = v11;
        v36 = [*(v15 + 3872) dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        [v6 setProofreadingInfo:v36];
      }
    }
  }

  v37 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v38 = v37;
  if (v37)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__CKMessageEntryContentView_acceptAutocorrectionForChat_completionHandler___block_invoke;
    v46[3] = &unk_1E72F2C80;
    v47 = v37;
    v48 = self;
    v49 = v7;
    [v47 acceptAutocorrectionWithCompletionHandler:v46];
  }

  else
  {
    [(CKMessageEntryContentView *)self invalidateComposition];
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
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
  v2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 willAnimateBoundsChange];
  }
}

- (void)didFinishAnimatedBoundsChange
{
  v2 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 didFinishAnimatedBoundsChange];
  }
}

- (void)collapseTextFieldsIfInPencilMode
{
  v3 = [(CKMessageEntryContentView *)self textView];
  if ([v3 isInPencilMode])
  {
  }

  else
  {
    v4 = [(CKMessageEntryContentView *)self subjectView];
    v5 = [v4 isInPencilMode];

    if (!v5)
    {
      return;
    }
  }

  v6 = [(CKMessageEntryContentView *)self textView];
  [v6 setInPencilMode:0];

  v7 = [(CKMessageEntryContentView *)self subjectView];
  [v7 setInPencilMode:0];

  v8 = [(CKMessageEntryContentView *)self textView];
  [v8 layoutSubviews];

  v9 = [(CKMessageEntryContentView *)self subjectView];
  [v9 layoutSubviews];
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

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = [a5 mutableCopy];
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isExpressiveTextEnabled];

  v13 = 0x1E69DC000uLL;
  if (v12)
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

    v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([v16 isExpressiveTextEnabled])
    {
      v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      if ([v17 isSendingExpressiveTextEnabled])
      {
        v18 = [(CKMessageEntryContentView *)self textView];

        v19 = v18 == v9;
        v13 = 0x1E69DC000uLL;
        if (!v19)
        {
          goto LABEL_15;
        }

        if (CKIsRunningInMacCatalyst())
        {
          v20 = [(CKMessageEntryContentView *)self textView];
          v21 = [v20 isExpressiveTextEnabled];

          if (!v21)
          {
            goto LABEL_15;
          }

          v16 = [(CKMessageEntryContentView *)self textEffectsEditMenuForTextInRange:location, length];
          if (!v16)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (!self->_textViewRespondsToShowTextFormattingAnimationOptions)
          {
            v31 = MEMORY[0x1E696AD98];
            v32 = [(CKMessageEntryContentView *)self textView];
            v33 = [v31 numberWithBool:objc_opt_respondsToSelector() & 1];
            textViewRespondsToShowTextFormattingAnimationOptions = self->_textViewRespondsToShowTextFormattingAnimationOptions;
            self->_textViewRespondsToShowTextFormattingAnimationOptions = v33;
          }

          v35 = [(CKMessageEntryContentView *)self textView];
          v16 = [v35 showTextEffectsPickerEditMenuAction];

          if (!v16)
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
          [v16 setTitle:v38];

          v13 = 0x1E69DC000;
        }

        [v10 insertObject:v16 atIndex:v15];
      }

      else
      {
      }
    }

LABEL_14:
  }

LABEL_15:
  v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v23 = [v22 isRichLinkImprovementsEnabled];

  if (v23)
  {
    v24 = [v9 attributedText];
    v25 = [(CKMessageEntryContentView *)self richLinksEditMenuForAttributedText:v24 inRange:location, length];

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

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeView);
  if (!WeakRetained || (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_activeView), v7, v6, v7 == v4))
  {
    v9 = [(CKMessageEntryContentView *)self delegate];
    v8 = [v9 messageEntryContentViewShouldBeginEditing:self];
  }

  else
  {
    v8 = 1;
    [(CKMessageEntryContentView *)self setIgnoreEndEditing:1];
  }

  return v8;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeView);
  v6 = WeakRetained != 0;

  [(CKMessageEntryContentView *)self setActiveView:v4];
  v7 = [(CKMessageEntryContentView *)self delegate];
  [v7 messageEntryContentViewDidBeginEditing:self wasAlreadyActive:v6];
}

- (void)textViewDidEndEditing:(id)a3
{
  if ([(CKMessageEntryContentView *)self ignoreEndEditing])
  {

    [(CKMessageEntryContentView *)self setIgnoreEndEditing:0];
  }

  else
  {
    [(CKMessageEntryContentView *)self setActiveView:0];
    v4 = [(CKMessageEntryContentView *)self delegate];
    [v4 messageEntryContentViewDidEndEditing:self];
  }
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  [(CKMessageEntryContentView *)self invalidateComposition];
  v16 = 0;
  [v4 updateFontIfNeededAndGetWasUsingBigEmojiStyle:&v16];
  v5 = [v4 attributedText];
  v6 = [v5 length];

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

  v8 = [(CKMessageEntryContentView *)self textView];
  [v8 performTextViewUpdatesNeededBeforeLayoutPass];

  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isExpressiveTextEnabled];

  if (v10)
  {
    v11 = [(CKMessageEntryContentView *)self textView];

    if (v11 == v4)
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

  v12 = [(CKMessageEntryContentView *)self delegate];
  [v12 messageEntryContentViewDidChange:self isTextChange:1 isShelfChange:0];

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

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v22 = a4;
  v9 = a3;
  v10 = a5;
  v11 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(length) = [v11 messageEntryContentView:self shouldChangeTextInRange:location replacementText:{length, v10}];

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

  v12 = [(CKMessageEntryContentView *)self textView];

  if (v12 == v9)
  {
    v14 = [(CKMessageEntryContentView *)self textView];
    v15 = [v14 shouldUpdateMentionsInRange:&v22 replacementText:v10];

    [(CKMessageEntryContentView *)self _provideHapticFeedbackIfNecessaryForText:v10];
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  [(CKMessageEntryContentView *)self _provideHapticFeedbackIfNecessaryForText:v10];
LABEL_9:
  v16 = [(CKMessageEntryContentView *)self textView];
  [v16 setApplyDefaultTypingAttributesOnTextEffectPickerDismissal:0];

  v17 = [(CKMessageEntryContentView *)self textView];
  v18 = [v17 effectsPickerAssistant];
  [v18 adjustTypingAttributesIfNeededForReplacement:v10 inRange:{v22.location, v22.length}];

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v8 = a3;
  v4 = [(CKMessageEntryContentView *)self textView];

  v5 = v8;
  if (v4 == v8)
  {
    [v8 selectedRange];
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
    v5 = v8;
    if (!v7)
    {
      [v8 checkForMentions];
      v5 = v8;
    }
  }
}

- (void)textViewWritingToolsWillBegin:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
  {
    v6 = [(CKMessageEntryContentView *)self textEffectCoordinator];

    if (v6)
    {
      v7 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v7 reset];

      v8 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v8 setPaused:1 includingAnimators:1];

      v9 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v9 updateWithReason:@"pausing because writing tools will begin"];
    }
  }
}

- (void)textViewWritingToolsDidEnd:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
  {
    v6 = [(CKMessageEntryContentView *)self textEffectCoordinator];

    if (v6)
    {
      v7 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v7 setPaused:0 includingAnimators:0];

      v8 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v8 updateWithReason:@"unpausing because writing tools did end"];
    }
  }
}

- (void)_provideHapticFeedbackIfNecessaryForText:(id)a3
{
  v14 = a3;
  v4 = [(CKMessageEntryContentView *)self conversation];
  v5 = [v4 isStewieConversation];

  if (v5)
  {
    v6 = [(CKMessageEntryContentView *)self impactFeedbackGenerator];

    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:2];
      [(CKMessageEntryContentView *)self setImpactFeedbackGenerator:v7];

      v8 = [(CKMessageEntryContentView *)self impactFeedbackGenerator];
      [v8 prepare];
    }

    v9 = [(CKMessageEntryContentView *)self textView];
    v10 = [v9 textStorage];
    v11 = [v10 string];

    if ([v11 lengthOfBytesUsingEncoding:4] <= 0x9F)
    {
      v12 = [v11 stringByAppendingString:v14];
      if ([v12 lengthOfBytesUsingEncoding:4] >= 0xA0)
      {
        v13 = [(CKMessageEntryContentView *)self impactFeedbackGenerator];
        [v13 impactOccurred];
      }
    }
  }
}

- (double)maxWidthForPreviewImagesInMessageEntryRichTextView:(id)a3
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

- (void)messageEntryTextViewDidChangePencilMode:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewDidChangePencilMode:self];
}

- (BOOL)messageEntryRichTextView:(id)a3 shouldPasteMediaObjects:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(self) = [v6 messageEntryContentView:self shouldInsertMediaObjects:v5];

  return self;
}

- (void)messageEntryRichTextView:(id)a3 didTapMediaObject:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self didTapMediaObject:v5];
}

- (void)messageEntryRichTextViewWasTapped:(id)a3 isLongPress:(BOOL)a4
{
  v4 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentViewWasTapped:self isLongPress:v4];
}

- (void)messageEntryRichTextView:(id)a3 pastedURL:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self didPasteURL:v5];
}

- (void)messageEntryRichTextViewDidTapHandwritingKey:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewDidTapHandwritingKey:self];
}

- (BOOL)messageEntryRichTextViewSupportsInlineAdaptiveImageGlyphs:(id)a3
{
  v3 = [(CKMessageEntryContentView *)self conversation];
  v4 = [v3 supportsInlineAdaptiveImageGlyphs];

  return v4;
}

- (BOOL)messageEntryRichTextView:(id)a3 shouldRecognizeGesture:(id)a4
{
  v4 = self;
  v5 = [(CKMessageEntryContentView *)self delegate:a3];
  LOBYTE(v4) = [v5 messageEntryContentViewShouldBeginEditing:v4];

  return v4;
}

- (BOOL)messageEntryRichTextViewShouldResignFirstResponder:(id)a3
{
  v3 = self;
  v4 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(v3) = [v4 messageEntryContentViewShouldResignFirstResponder:v3];

  return v3;
}

- (void)messageEntryRichTextView:(id)a3 didPasteComposition:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([v5 checksForSensitivityOnSend])
  {
    v16 = v5;
    v17 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v4 mediaObjects];
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
          v11 = [MEMORY[0x1E69A7FC0] sharedManager];
          v12 = [v10 fileURL];
          v13 = [(CKMessageEntryContentView *)self conversation];
          v14 = [v13 chat];
          v15 = [v14 chatIdentifier];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __74__CKMessageEntryContentView_messageEntryRichTextView_didPasteComposition___block_invoke;
          v20[3] = &unk_1E72EC088;
          v20[4] = v10;
          [v11 isSensitiveContent:v12 withChatID:v15 completionHandler:v20];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    v5 = v16;
    v4 = v17;
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

- (void)messageEntryRichTextView:(id)a3 willAddPluginTextAttachmentViewControllerToViewHierarchy:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self willAddPluginEntryViewControllerToViewHierarchy:v5];
}

- (void)messageEntryRichTextView:(id)a3 didAddPluginTextAttachmentViewControllerToViewHierarchy:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self didAddPluginEntryViewControllerToViewHierarchy:v5];
}

- (double)balloonMaxWidthForMessageEntryRichTextView:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 balloonMaxWidthForMessageEntryRichTextView:self];
  v6 = v5;

  return v6;
}

- (BOOL)messageEntryRichTextViewShouldAllowLinkCustomization:(id)a3
{
  v3 = self;
  v4 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(v3) = [v4 messageEntryContentViewShouldAllowLinkCustomization:v3];

  return v3;
}

- (void)messageEntryRichTextViewWillPresentCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewWillPresentCustomizationPicker:self];
}

- (void)messageEntryRichTextViewDidPresentCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewDidPresentCustomizationPicker:self];
}

- (void)messageEntryRichTextViewWillDismissCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewWillDismissCustomizationPicker:self];
}

- (void)messageEntryRichTextViewDidDismissCustomizationPicker:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewDidDismissCustomizationPicker:self];
}

- (id)gradientReferenceViewForMessageEntryRichTextView:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  v5 = [v4 gradientReferenceViewForMessageEntryContentView:self];

  return v5;
}

- (BOOL)messageEntryRichTextView:(id)a3 canPerformDictationAction:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(self) = [v6 messageEntryContentView:self canPerformDictationAction:v5];

  return self;
}

- (void)messageEntryRichTextView:(id)a3 didTapGenerativeButtonForImageURL:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self didRequestGenerativeContentForImageURL:v5];
}

- (void)messageEntryTextViewTextFormattingAnimationsOptionsPresentationInProgress:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKMessageEntryContentView *)self delegate];
  [v4 messageEntryContentViewTextFormattingAnimationsOptionsPresentationInProgress:v3];
}

- (void)messageEntryRichTextView:(id)a3 didReceiveInputSuggestion:(id)a4
{
  v5 = a4;
  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentView:self didReceiveInputSuggestion:v5];
}

- (BOOL)messageEntryRichTextViewShouldBeDisabled:(id)a3
{
  v3 = self;
  v4 = [(CKMessageEntryContentView *)self delegate];
  LOBYTE(v3) = [v4 messageEntryContentViewShouldBeDisabled:v3];

  return v3;
}

- (void)prepareTextEffectsForImmediateMessageSend
{
  v2 = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [v2 reset];
}

- (void)unpauseTextEffectsCoordinator
{
  v3 = [(CKMessageEntryContentView *)self textEffectCoordinator];

  if (v3)
  {
    v4 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [v4 updateWithReason:@"unpausing"];
  }
}

- (void)setTextEffectCoordinatorPaused:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(CKMessageEntryContentView *)self textEffectCoordinator];

  if (v6)
  {
    v7 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [v7 setPaused:v4 includingAnimators:1];

    v8 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [v8 updateWithReason:v9];
  }
}

- (void)messageEntryTextView:(id)a3 didSetAnimationName:(id)a4 forRange:(_NSRange)a5
{
  length = a5.length;
  v6 = a5.location;
  v9 = a3;
  v10 = a4;
  if (length)
  {
    objc_initWeak(&location, self);
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__CKMessageEntryContentView_messageEntryTextView_didSetAnimationName_forRange___block_invoke;
    v21[3] = &unk_1E72F4638;
    objc_copyWeak(v24, &location);
    v11 = v9;
    v22 = v11;
    v23 = v10;
    v24[1] = v6;
    v24[2] = length;
    [v11 ck_toggleTextEffectNamed:v23 inRange:v6 getAdded:length undo:{&v25, v21}];
    [(CKMessageEntryContentView *)self invalidateComposition];
    if (v25 == 1)
    {
      v12 = -[CKTextEffectCoordinatorContinuationState initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:]([CKTextEffectCoordinatorContinuationState alloc], "initWithTextViewIdentifier:locationInAttributedText:ignoreTextViewEligibilityCheck:", @"textView", [v11 selectedRange], 0);
      v13 = [(CKMessageEntryContentView *)self textEffectCoordinator];
      [v13 resetAndContinueFromState:v12];
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

    v20 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [v20 updateWithReason:v19];

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

- (void)messageEntryTextView:(id)a3 didUpdateForRange:(_NSRange)a4 conversionHandler:(id)a5
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v8 = a5;
    v9 = [(CKMessageEntryContentView *)self composition];
    v10 = [v9 text];
    v11 = [v10 ck_attributedStringByConverting:v8 range:{location, length}];

    v12 = [v9 subject];
    v13 = [v9 shelfPluginPayload];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__CKMessageEntryContentView_messageEntryTextView_didUpdateForRange_conversionHandler___block_invoke;
    v14[3] = &unk_1E72F4660;
    v14[4] = self;
    v14[5] = location;
    v14[6] = length;
    [CKComposition compositionWithText:v11 subject:v12 shelfPluginPayload:v13 completionHandler:v14];
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

- (void)messageEntryTextView:(id)a3 applyStyleChangeOfType:(unint64_t)a4 add:(BOOL)a5 forRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5;
  v11 = a3;
  v12 = v11;
  if (length && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v11 undoManager];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __86__CKMessageEntryContentView_messageEntryTextView_applyStyleChangeOfType_add_forRange___block_invoke;
    v24 = &unk_1E72F4688;
    v14 = v12;
    v30 = v8;
    v27 = a4;
    v28 = location;
    v29 = length;
    v25 = v14;
    v26 = self;
    [v13 registerUndoWithTarget:self handler:&v21];

    v15 = [v14 textStorage];
    [v15 beginEditing];
    if (v8)
    {
      [v15 ck_addTextStyle:a4 options:3 range:{location, length}];
      v16 = @"added";
    }

    else
    {
      [v15 ck_removeTextStyle:a4 options:3 range:{location, length}];
      v16 = @"removed";
    }

    [v15 endEditing];
    [(CKMessageEntryContentView *)self invalidateComposition];
    [(CKMessageEntryContentView *)self textViewNeedsUpdatedTranslation];
    v17 = MEMORY[0x1E696AEC0];
    v31.location = location;
    v31.length = length;
    v18 = NSStringFromRange(v31);
    v19 = [v17 stringWithFormat:@"animation %@ for range: %@", v16, v18, v21, v22, v23, v24];

    v20 = [(CKMessageEntryContentView *)self textEffectCoordinator];
    [v20 updateWithReason:v19];

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

- (void)messageEntryTextView:(id)a3 replaceRange:(_NSRange)a4 withAttributedText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v13 = [a5 mutableCopy];
  [v13 ck_replaceTextAnimationsWithIMTextEffects];
  [v13 ck_replaceBIUSWithIMTextStyles];
  v8 = [(CKMessageEntryContentView *)self composition];
  v9 = [v8 text];
  v10 = [v9 mutableCopy];
  [v10 replaceCharactersInRange:location withAttributedString:{length, v13}];
  v11 = [v8 compositionByReplacingText:v10];
  [(CKMessageEntryContentView *)self setComposition:v11];

  v12 = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [v12 updateWithReason:@"replaced text with a suggested effect/BIUS styles"];
}

- (void)_didChangeAttributesAffectingTextSize
{
  v3 = [(CKMessageEntryContentView *)self delegate];
  [v3 messageEntryContentViewDidChange:self isTextChange:1 isShelfChange:0];

  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];
  [(CKMessageEntryContentView *)self setNeedsEnsureSelectionVisible:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)pluginPayloadDidChangeSendEnabled:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
  if (!v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView pluginPayloadDidChangeSendEnabled:];
    }
  }

  v7 = [v4 BOOLValueForKey:@"Enabled" withDefault:1];
  v8 = [(CKMessageEntryContentView *)self delegate];
  [v8 messageEntryContentView:self updatePluginSendEnablementTo:v7];
}

- (void)pluginPayloadWantsResize:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received plugin payload resize notification", buf, 2u);
    }
  }

  if ([(CKMessageEntryContentView *)self _updatedPluginPayloadFromNotification:v4]&& IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Resizing pluginEntryViewController due to pluginPayloadWantsResize notification", v7, 2u);
    }
  }
}

- (void)pluginPayloadInvalidatedMessageTintColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received plugin tint color change notification", &v15, 2u);
    }
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
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

  v11 = [(CKMessageEntryContentView *)self pluginEntryViewController];
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

    v14 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [v14 pluginTintColorDidUpdate];
  }

LABEL_20:
}

- (BOOL)_updatedPluginPayloadFromNotification:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A5A48]];
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

  v10 = [(CKMessageEntryContentView *)self pluginEntryViewController];

  if (!v10)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryContentView _updatedPluginPayloadFromNotification:];
    }

    goto LABEL_16;
  }

  [(CKMessageEntryContentView *)self setNeedsEnsureTextViewVisible:1];
  v11 = [(CKMessageEntryContentView *)self conversation];
  v12 = [v11 unsentComposition];
  v13 = [v12 text];

  v14 = [(CKMessageEntryContentView *)self composition];
  v15 = [v14 text];

  if ([v15 length] || (v16 = v13, !objc_msgSend(v13, "length")))
  {
    v16 = v15;
  }

  v19 = [(CKMessageEntryContentView *)self textView];
  [v19 setCompositionText:v16];

  v20 = [(CKMessageEntryContentView *)self conversation];
  v21 = [v20 unsentComposition];
  v22 = [v21 subject];

  v23 = [(CKMessageEntryContentView *)self composition];
  v24 = [v23 subject];

  if ([v24 length] || !objc_msgSend(v22, "length"))
  {
    v25 = [(CKMessageEntryContentView *)self subjectView];
    [v25 setCompositionText:v24];
  }

  else
  {
    v25 = [(CKMessageEntryContentView *)self textView];
    [v25 setCompositionText:v22];
  }

  v26 = [(CKMessageEntryContentView *)self composition];
  -[CKMessageEntryContentView setIsCompositionExpirable:](self, "setIsCompositionExpirable:", [v26 isExpirableComposition]);

  [(CKMessageEntryContentView *)self _updateUI];
  v27 = [(CKMessageEntryContentView *)self delegate];
  [v27 messageEntryContentViewShelfDidChange:self];

  v28 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [v30 didFinishAnimatedBoundsChange];
  }

  v18 = 1;
LABEL_25:

  return v18;
}

- (void)pluginPayloadDidLoad:(id)a3
{
  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)quicktationEnablementDidChange
{
  [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

  [(CKMessageEntryContentView *)self setNeedsLayout];
}

- (void)ckSendLaterViewWantsDatePickerPresented:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received request to present SendLater's DatePicker.", v7, 2u);
    }
  }

  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentViewWantsSendLaterPickerPresented:self];
}

- (void)ckSendLaterViewCancelled:(id)a3
{
  v4 = a3;
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

- (void)ckSendLaterViewContentsUpdated:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Received signal that SendLater view contents changed.", v7, 2u);
    }
  }

  v6 = [(CKMessageEntryContentView *)self delegate];
  [v6 messageEntryContentViewSendLaterContentsUpdated:self];
}

- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(CKMessageEntryContentView *)self textView];
  v8 = [v5 dragRange];
  v9 = [v7 attributedTextInRange:v8];

  v10 = [v9 length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__CKMessageEntryContentView_textDraggableView_itemsForDrag___block_invoke;
  v17[3] = &unk_1E72F46D8;
  v17[4] = self;
  v11 = v6;
  v18 = v11;
  v19 = v9;
  v12 = v9;
  [v12 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v17}];
  if ([v11 count])
  {
    v13 = [v5 dragSession];
    [v13 setLocalContext:@"CKMessageEntryContentViewDragContext"];
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

- (double)_calcuateIdealMaxPluginHeight:(BOOL)a3
{
  v3 = a3;
  [(CKMessageEntryContentView *)self bounds];
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 entryViewlayoutMetrics];

  [(CKMessageEntryContentView *)self _pluginMargins];
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 dividerHeight];
  v15 = v14;
  [v8 defaultEntryContentViewHeight];
  v17 = v16;

  v18 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v19 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v20 = [v19 pluginBundleID];
  v21 = [v18 balloonPluginForBundleID:v20];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (CGSize)_computedSizeForTextView:(id)a3 maxWidth:(double)a4
{
  v5 = a3;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 entryViewCoverMinHeight];
  v8 = v7;

  [v5 sizeThatFits:{a4, 1.79769313e308}];
  v10 = v9;

  v11 = fmax(v10, v8);
  v12 = a4;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_layoutTextView:(id)a3 currentYOffset:(double *)a4 originX:(double)a5 maxWidth:(double)a6
{
  v10 = a3;
  [(CKMessageEntryContentView *)self _computedSizeForTextView:v10 maxWidth:a6];
  v12 = v11;
  v14 = v13;
  [v10 textContainerInset];
  v16 = a5 - v15;
  v17 = *a4;
  [(CKMessageEntryContentView *)self placeHolderWidth];
  [v10 setPlaceHolderWidth:?];
  [v10 setFrame:{v16, v17, v12, v14}];

  *a4 = v14 + *a4;
}

- (void)_layoutDividerLine:(id)a3 leftInset:(double)a4 widthInset:(double)a5 currentYOffset:(double *)a6
{
  v10 = a3;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 dividerHeight];
  v13 = v12;

  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isEntryViewRefreshEnabled];

  if (v15)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 entryContentViewTextLeftOffset];
    v18 = v17;

    v19 = *a6;
    [(CKMessageEntryContentView *)self bounds];
    v21 = v20;
    v22 = v18;
  }

  else
  {
    [(CKMessageEntryContentView *)self containerViewLineWidth];
    v22 = v23 + a4;
    v19 = *a6;
    [(CKMessageEntryContentView *)self bounds];
    v21 = v24 - a5;
    [(CKMessageEntryContentView *)self containerViewLineWidth];
    v18 = v25;
  }

  [v10 setFrame:{v22, v19, v21 + v18 * -2.0, v13}];

  *a6 = v13 + *a6;
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

  v5 = [(CKMessageEntryContentView *)self overridePlaceholderText];
  if (v5)
  {
    [(CKMessageEntryContentView *)self overridePlaceholderText];
  }

  else
  {
    [(CKMessageEntryContentView *)self requestedPlaceholderText];
  }
  v6 = ;
  v7 = [(CKMessageEntryContentView *)self textView];
  [v7 setPlaceholderText:v6];

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

  v4 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    v2 = [v5 wantsClearButton];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_currentPluginIsGPPlugin
{
  v2 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v3 = [v2 pluginBundleID];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)clearPluginButtonTapped:(id)a3
{
  v4 = [(CKMessageEntryContentView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKMessageEntryContentView *)self delegate];
    v7 = [(CKMessageEntryContentView *)self shelfPluginPayload];
    [v6 messageEntryContentViewCancelWasTapped:self shelfPluginPayload:v7];
  }

  v8 = [(CKMessageEntryContentView *)self pluginEntryViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKMessageEntryContentView *)self pluginEntryViewController];
    [v10 payloadWillClear];
  }

  [(CKComposition *)self->_composition cleanupCKShareFromComposition];
  [(CKMessageEntryContentView *)self setShelfPluginPayload:0];
  [(CKMessageEntryContentView *)self invalidateComposition];

  [(CKMessageEntryContentView *)self setPluginEntryViewController:0];
}

- (void)setContainerViewLineWidth:(double)a3
{
  if (self->_containerViewLineWidth != a3)
  {
    self->_containerViewLineWidth = a3;
    [(CKMessageEntryContentView *)self _updateUI];
  }
}

- (void)setClearPluginButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKMessageEntryContentView *)self clearPluginButton];
  [v4 setEnabled:v3];
}

- (void)setSendButtonTextInsetWidth:(double)a3
{
  if (self->_sendButtonTextInsetWidth != a3)
  {
    self->_sendButtonTextInsetWidth = a3;
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

    [(CKMessageEntryContentView *)self setNeedsLayout];
  }
}

- (void)setMaxPluginShelfViewWidth:(double)a3
{
  if (self->_maxPluginShelfViewWidth != a3)
  {
    self->_maxPluginShelfViewWidth = a3;
    [(CKMessageEntryContentView *)self setNeedsTextLayout:1];

    [(CKMessageEntryContentView *)self setNeedsLayout];
  }
}

+ (id)_createTextView:(BOOL)a3 shouldUseNonEmojiKeyboard:(BOOL)a4 shouldUseNonHandwritingKeyboard:(BOOL)a5 shouldDisableKeyboardStickers:(BOOL)a6 shouldAllowPollSuggestions:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [CKMessageEntryRichTextView alloc];
  v14 = [(CKMessageEntryRichTextView *)v13 initWithFrame:1 usingTextLayoutManager:v11 shouldDisableAttachments:v8 shouldDisableKeyboardStickers:v7 shouldAllowPollSuggestions:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [a1 configureMessageBodyEntryTextView:v14 shouldUseNonEmojiKeyboard:v10 shouldUseNonHandwritingKeyboard:v9];

  return v14;
}

+ (void)configureMessageBodyEntryTextView:(id)a3 shouldUseNonEmojiKeyboard:(BOOL)a4 shouldUseNonHandwritingKeyboard:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v18 = a3;
  [v18 setShowsHorizontalScrollIndicator:1];
  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  [v18 setPlaceholderText:v8];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 balloonTextFont];
  [v18 setFont:v10];

  [v18 setSupportsBigEmojiTextStyles:1];
  [v18 setBackgroundColor:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 theme];
  v13 = [v12 entryFieldTextColor];
  [v18 setTextColor:v13];

  v14 = +[CKUIBehavior sharedBehaviors];
  v15 = [v14 theme];
  [v18 setKeyboardAppearance:{objc_msgSend(v15, "keyboardAppearance")}];

  if (!CKIsRunningInMessagesNotificationExtension())
  {
    v16 = 126;
    if (v5)
    {
      v16 = 0;
    }

    if (v6)
    {
      v17 = 13;
    }

    else
    {
      v17 = v16;
    }

    [v18 setKeyboardType:v17];
  }

  [v18 setOpaque:0];
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
  v7 = [v6 balloonSubjectFont];
  [v3 setFont:v7];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 entryFieldTextColor];
  [v3 setTextColor:v10];

  [v3 setSupportsBigEmojiTextStyles:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 theme];
  [v3 setKeyboardAppearance:{objc_msgSend(v12, "keyboardAppearance")}];

  [v3 setBackgroundColor:0];
  [v3 setOpaque:0];

  return v3;
}

+ (id)_createTranslationView
{
  v2 = [objc_opt_class() _createTextView:1 shouldUseNonEmojiKeyboard:0 shouldUseNonHandwritingKeyboard:0 shouldDisableKeyboardStickers:1 shouldAllowPollSuggestions:0];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticOutgoingTranslationEnabled];

  if (v4)
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
  v3 = [(CKMessageEntryContentView *)self translationLanguage];

  if (v3)
  {
    [(CKMessageEntryContentView *)self setTranslationVersion:[(CKMessageEntryContentView *)self translationVersion]+ 1];
    v4 = MEMORY[0x1E695DF58];
    v5 = [(CKMessageEntryContentView *)self conversation];
    v6 = [v5 userTranslationLanguageCode];
    v11 = [v4 localeWithLocaleIdentifier:v6];

    v7 = [(CKMessageEntryContentView *)self translator];
    v8 = [(CKMessageEntryContentView *)self textView];
    v9 = [v8 attributedText];
    v10 = [(CKMessageEntryContentView *)self translationLanguage];
    [v7 translate:v9 into:v10 from:v11 version:{-[CKMessageEntryContentView translationVersion](self, "translationVersion")}];
  }
}

- (id)pluginSnapshotViewForPluginAtIndex:(unint64_t)a3 isFromTextAttachment:(BOOL *)a4 startingScaleMultiplier:(double *)a5
{
  v9 = [(CKMessageEntryContentView *)self pluginView];

  if (!v9)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    --a3;
LABEL_4:
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__42;
    v23 = __Block_byref_object_dispose__42;
    v24 = 0;
    v10 = [(CKMessageEntryContentView *)self textView];
    v11 = [v10 attributedText];

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v12 = [v11 length];
    v13 = *MEMORY[0x1E69DB5F8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__CKMessageEntryContentView_pluginSnapshotViewForPluginAtIndex_isFromTextAttachment_startingScaleMultiplier___block_invoke;
    v17[3] = &unk_1E72F4700;
    v17[6] = a3;
    v17[7] = a4;
    v17[8] = a5;
    v17[4] = v18;
    v17[5] = &v19;
    [v11 enumerateAttribute:v13 inRange:0 options:v12 usingBlock:{0, v17}];
    v14 = v20[5];
    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v19, 8);
    goto LABEL_10;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 1.0;
  }

  v15 = [(CKMessageEntryContentView *)self pluginView];
  v14 = [v15 snapshotViewAfterScreenUpdates:0];

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

- (void)balloonPluginDataSource:(id)a3 shouldSendAsCopy:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  [v7 setSendAsCopy:v4];

  v8 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v9 = [v8 url];

  v10 = [(CKMessageEntryContentView *)self shelfPluginPayload];
  v11 = [v10 sendAsCopyURL];

  if (v11)
  {
    v12 = [(CKMessageEntryContentView *)self shelfPluginPayload];
    v13 = [v12 sendAsCopyURL];

    v9 = v13;
  }

  if (v9)
  {
    v14 = [v9 lastPathComponent];
    v15 = [v14 stringByRemovingPercentEncoding];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__CKMessageEntryContentView_balloonPluginDataSource_shouldSendAsCopy___block_invoke;
    v18[3] = &unk_1E72F4728;
    v19 = v9;
    v20 = v15;
    v21 = self;
    v16 = v15;
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

- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4
{
  if ([a4 isEqualToString:@"translationTextView"])
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

- (id)visibleTextViewIdentifiersFor:(id)a3
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"translationTextView";
  v5[1] = @"textView";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)textViewWillBeginEmojiRippleAnimation:(id)a3
{
  v4 = a3;
  v5 = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [v5 setPaused:1 includingAnimators:0];
  [v5 reset];
  v6 = [v4 textStorage];

  [v6 beginEditing];
  v7 = [v6 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CKMessageEntryContentView_textViewWillBeginEmojiRippleAnimation___block_invoke;
  v9[3] = &unk_1E72F4750;
  v10 = v6;
  v8 = v6;
  [v8 ck_enumerateTextAnimationsIn:0 options:v7 using:{0, v9}];
  [v8 endEditing];
}

- (void)textViewDidEndEmojiRippleAnimation:(id)a3
{
  v5 = [a3 textStorage];
  [v5 beginEditing];
  [v5 ck_addDisplayableAttributeForIMTextEffectAttribute];
  [v5 endEditing];
  v4 = [(CKMessageEntryContentView *)self textEffectCoordinator];
  [v4 setPaused:0 includingAnimators:0];
  [v4 updateWithReason:@"resumed because emoji ripple animation did end"];
}

- (void)compositionTranslator:(id)a3 didUpdateTranslation:(id)a4 sourceLanguage:(id)a5 destinationLanguage:(id)a6 version:(int64_t)a7
{
  v32 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CKMessageEntryContentView *)self translationVersion]== a7)
  {
    v13 = [v11 localeIdentifier];
    [(CKMessageEntryContentView *)self setSourceLanguageID:v13];

    v14 = [v12 localeIdentifier];
    [(CKMessageEntryContentView *)self setDestinationLanguageID:v14];

    v15 = [v32 mutableCopy];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 balloonTranslationSecondaryTextFont];

    v18 = [v15 length];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:v17 range:{0, v18}];
    v19 = [v15 copy];
    v20 = [(CKMessageEntryContentView *)self translationView];
    [v20 setAttributedText:v19];

    v21 = [(CKMessageEntryContentView *)self translationView];
    [v21 setFont:v17];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 theme];
    v24 = [v23 tertiaryLabelColor];
    v25 = [(CKMessageEntryContentView *)self translationView];
    [v25 setTextColor:v24];

    v26 = [(CKMessageEntryContentView *)self translationView];
    [v26 setHidden:0];

    v27 = [(CKMessageEntryContentView *)self translationView];
    v28 = [v27 textStorage];

    [v28 beginEditing];
    [v28 ck_addDisplayableAttributeForIMTextEffectAttribute];
    [v28 ck_addDisplayableAttributesForIMTextStyleAttributes];
    [v28 endEditing];
    v29 = [(CKMessageEntryContentView *)self delegate];
    [v29 messageEntryContentViewTranslationDidChange:self];

    [(CKMessageEntryContentView *)self invalidateComposition];
    v30 = [(CKMessageEntryContentView *)self pendingTranslationBlock];

    if (v30)
    {
      v31 = [(CKMessageEntryContentView *)self pendingTranslationBlock];
      v31[2]();

      [(CKMessageEntryContentView *)self setPendingTranslationBlock:0];
    }
  }
}

- (void)compositionTranslator:(id)a3 didFailTranslationForVersion:(int64_t)a4
{
  if ([(CKMessageEntryContentView *)self translationVersion]== a4)
  {
    v5 = [(CKMessageEntryContentView *)self translationView];
    [v5 setAttributedText:0];

    v6 = [(CKMessageEntryContentView *)self translationView];
    [v6 setHidden:1];

    v7 = [(CKMessageEntryContentView *)self delegate];
    [v7 messageEntryContentViewTranslationDidChange:self];

    [(CKMessageEntryContentView *)self invalidateComposition];
    v8 = [(CKMessageEntryContentView *)self pendingTranslationBlock];

    if (v8)
    {
      v9 = [(CKMessageEntryContentView *)self pendingTranslationBlock];
      v9[2]();

      [(CKMessageEntryContentView *)self setPendingTranslationBlock:0];
    }
  }
}

- (CKConversation)conversation
{
  WeakRetained = objc_loadWeakRetained(&self->_conversation);

  return WeakRetained;
}

- (id)richLinksEditMenuForAttributedText:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  v5 = a4.location;
  v7 = a3;
  if (length)
  {
    if ([MEMORY[0x1E69A8020] deviceIsLockedDown])
    {
      length = 0;
    }

    else
    {
      objc_initWeak(location, self);
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = [v7 string];
      v10 = [_TtC7ChatKit19CKRichLinkUtilities validURLsInString:v9 inRange:v5 validatesRichLinkSupport:length, 1];

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
        [v8 addObject:v14];

        objc_destroyWeak(&v39);
      }

      v15 = [v7 ck_linkPreviewTextAttachmentsInRange:{v5, length}];
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
        v35 = v7;
        v19 = [v18 actionWithTitle:v17 image:0 identifier:0 handler:v33];
        [v8 addObject:v19];

        objc_destroyWeak(v36);
      }

      if ([v15 count] == 1)
      {
        v20 = [v15 firstObject];
        if ([v20 canPresentCustomizationPicker])
        {
          v21 = CKFrameworkBundle();
          v22 = [v21 localizedStringForKey:@"CUSTOMIZE_LINK" value:&stru_1F04268F8 table:@"ChatKit"];

          v23 = MEMORY[0x1E69DC628];
          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __83__CKMessageEntryContentView_RichLinks__richLinksEditMenuForAttributedText_inRange___block_invoke_226;
          v31 = &unk_1E72EC060;
          v32 = v20;
          v24 = [v23 actionWithTitle:v22 image:0 identifier:0 handler:&v28];
          [v8 addObject:{v24, v28, v29, v30, v31}];
        }
      }

      v25 = MEMORY[0x1E69DCC60];
      v26 = [v8 copy];
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

- (void)_updateAttributedTextContent:(id)a3 byApplyingInteraction:(int64_t)a4 toLinkTextAttachments:(id)a5
{
  v8 = 0;
  v6 = [a3 ck_attributedStringByApplyingRichLinkInteraction:a4 toLinkTextAttachments:a5 stringDidChange:&v8];
  if (v8 == 1)
  {
    v7 = [(CKMessageEntryContentView *)self textView];
    [v7 setAttributedText:v6];
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
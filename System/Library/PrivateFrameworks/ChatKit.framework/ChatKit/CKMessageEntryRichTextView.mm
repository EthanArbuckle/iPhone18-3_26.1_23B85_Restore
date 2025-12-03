@interface CKMessageEntryRichTextView
- (BOOL)_reconfigureWithLayoutManager:(id)manager triggeredByLayoutManagerAccess:(BOOL)access triggeringSelector:(SEL)selector;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformDictationAction:(id)action;
- (BOOL)canResignFirstResponder;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handleTapOrLongPressOnMediaObjectForTransferGUID:(id)d characterIndex:(int64_t)index location:(CGPoint)location touchedCharacterFrame:(CGRect)frame;
- (BOOL)isSingleLineDocument;
- (BOOL)supportsCustomizationForLinkPreviewTextAttachment:(id)attachment;
- (CKMessageEntryRichTextView)initWithFrame:(CGRect)frame usingTextLayoutManager:(BOOL)manager shouldDisableAttachments:(BOOL)attachments shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions;
- (_NSRange)_rangeFromUITextRange:(id)range;
- (double)maxWidthForLinkPreviewTextAttachment:(id)attachment;
- (id)_compositionFromSelection;
- (id)_messagesReplacementTextForWritingToolText:(id)text;
- (id)adaptiveImageGlyphForTransferGUID:(id)d;
- (id)attributedTextForCompositionText:(id)text;
- (id)cachedMediaObjectForTransferGUID:(id)d;
- (id)cachedPluginDisplayContainerForGUID:(id)d;
- (id)composeImageForTransferGUID:(id)d traitCollection:(id)collection;
- (id)compositionText;
- (id)existingMediaObjectMatchingAdaptiveImageGlyph:(id)glyph;
- (id)mediaObjectForAdaptiveImageGlyph:(id)glyph;
- (id)pasteConfiguration;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification;
- (void)_ck_beginPasteOperationAndPasteAsRichText:(BOOL)text;
- (void)_showCustomInputView;
- (void)_updateTextContentForRichLinkInteractionType:(int64_t)type onTextAttachment:(id)attachment;
- (void)copy:(id)copy;
- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)handlePastedString:(id)string toRange:(id)range;
- (void)handleTapOrLongPress:(id)press;
- (void)inlineMediaViewTextAttachmentDidRequestGenerativeInteraction:(id)interaction;
- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range;
- (void)insertAdaptiveImageGlyph:(id)glyph withMediaObject:(id)object;
- (void)insertInputSuggestion:(id)suggestion;
- (void)linkPreviewTextAttachment:(id)attachment didAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy;
- (void)linkPreviewTextAttachment:(id)attachment didSelectInteractionType:(int64_t)type;
- (void)linkPreviewTextAttachment:(id)attachment willAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy;
- (void)linkPreviewTextAttachmentDidDismissCustomizationPicker:(id)picker;
- (void)linkPreviewTextAttachmentDidPresentCustomizationPicker:(id)picker;
- (void)linkPreviewTextAttachmentDidUpdateTextAttachmentSize:(id)size;
- (void)linkPreviewTextAttachmentWillDismissCustomizationPicker:(id)picker;
- (void)linkPreviewTextAttachmentWillPresentCustomizationPicker:(id)picker;
- (void)paste:(id)paste;
- (void)pasteAndMatchStyle:(id)style;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)previewDidChange:(id)change;
- (void)replaceTextInRange:(_NSRange)range withLinks:(id)links;
- (void)setAllowPollSuggestions:(BOOL)suggestions;
- (void)setAttributedText:(id)text;
- (void)setBalloonColor:(char)color;
- (void)setCompositionText:(id)text;
- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
- (void)updateContentsOfFileTransferPreviews;
- (void)validateCommand:(id)command;
- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion;
@end

@implementation CKMessageEntryRichTextView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryTextView *)&v4 dealloc];
}

- (BOOL)isSingleLineDocument
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryRichTextView;
  return [(CKMessageEntryRichTextView *)&v3 isSingleLineDocument];
}

- (id)pasteConfiguration
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 pasteConfigurationDisablingKeyboardStickers:{-[CKMessageEntryRichTextView disableKeyboardStickers](self, "disableKeyboardStickers")}];

  return v4;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v30 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (![(CKMessageEntryTextView *)self allowCalloutActions])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[CKMessageEntryRichTextView canPerformAction:withSender:]";
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s callouts disabled", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  if (sel_paste_ != action)
  {
    if (sel_delete_ == action)
    {
      selectedTextRange = [(CKMessageEntryRichTextView *)self selectedTextRange];
      if ([selectedTextRange isEmpty])
      {
        LOBYTE(__ck_canCreateComposition) = 0;
      }

      else
      {
        v21.receiver = self;
        v21.super_class = CKMessageEntryRichTextView;
        LOBYTE(__ck_canCreateComposition) = [(CKMessageEntryRichTextView *)&v21 canPerformAction:action withSender:senderCopy];
      }
    }

    else
    {
      v20.receiver = self;
      v20.super_class = CKMessageEntryRichTextView;
      LOBYTE(__ck_canCreateComposition) = [(CKMessageEntryRichTextView *)&v20 canPerformAction:action withSender:senderCopy];
    }

    goto LABEL_10;
  }

  if ([(CKMessageEntryRichTextView *)self disableAttachments])
  {
    pasteboard = [(CKMessageEntryRichTextView *)self pasteboard];
    hasImages = [pasteboard hasImages];

    if (hasImages)
    {
LABEL_9:
      LOBYTE(__ck_canCreateComposition) = 0;
      goto LABEL_10;
    }
  }

  delegate = [(CKMessageEntryRichTextView *)self delegate];
  if ([delegate messageEntryRichTextViewShouldBeDisabled:self])
  {
    __ck_canCreateComposition = 0;
  }

  else
  {
    pasteboard2 = [(CKMessageEntryRichTextView *)self pasteboard];
    __ck_canCreateComposition = [pasteboard2 __ck_canCreateComposition];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(action);
      if (__ck_canCreateComposition)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      pasteboard3 = [(CKMessageEntryRichTextView *)self pasteboard];
      itemProviders = [pasteboard3 itemProviders];
      *buf = 136315906;
      v23 = "[CKMessageEntryRichTextView canPerformAction:withSender:]";
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = itemProviders;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "%s %@ - %@ - %@", buf, 0x2Au);
    }
  }

LABEL_10:

  return __ck_canCreateComposition;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_paste_)
  {
    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKMessageEntryRichTextView;
    [(CKMessageEntryRichTextView *)&v5 validateCommand:commandCopy];
  }
}

- (BOOL)canResignFirstResponder
{
  selfCopy = self;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryRichTextViewShouldResignFirstResponder:selfCopy];

  return selfCopy;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CKMessageEntryTextView *)self preventShowingCalloutMenu])
  {
    v7 = 0;
  }

  else if (sel_delete_ == action)
  {
    selectedTextRange = [(CKMessageEntryRichTextView *)self selectedTextRange];
    if ([selectedTextRange isEmpty])
    {
      v7 = 0;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = CKMessageEntryRichTextView;
      v7 = [(CKMessageEntryRichTextView *)&v11 targetForAction:action withSender:senderCopy];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKMessageEntryRichTextView;
    v7 = [(CKMessageEntryRichTextView *)&v10 targetForAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)copy:(id)copy
{
  v7.receiver = self;
  v7.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryRichTextView *)&v7 copy:copy];
  _compositionFromSelection = [(CKMessageEntryRichTextView *)self _compositionFromSelection];
  pasteboard = [(CKMessageEntryRichTextView *)self pasteboard];
  pasteboardItemProviders = [_compositionFromSelection pasteboardItemProviders];
  [pasteboard setItemProviders:pasteboardItemProviders];
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  _compositionFromSelection = [(CKMessageEntryRichTextView *)self _compositionFromSelection];
  pasteboardItemProviders = [_compositionFromSelection pasteboardItemProviders];
  v8.receiver = self;
  v8.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryRichTextView *)&v8 cut:cutCopy];

  pasteboard = [(CKMessageEntryRichTextView *)self pasteboard];
  [pasteboard setItemProviders:pasteboardItemProviders];
}

- (id)_compositionFromSelection
{
  v22 = *MEMORY[0x1E69E9840];
  compositionText = [(CKMessageEntryRichTextView *)self compositionText];
  selectedRanges = [(CKMessageEntryRichTextView *)self selectedRanges];
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = selectedRanges;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v13 = [compositionText attributedSubstringFromRange:{rangeValue, v12}];
        [v5 appendAttributedString:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = [[CKComposition alloc] initWithText:v14 subject:0];

  return v15;
}

- (void)handlePastedString:(id)string toRange:(id)range
{
  stringCopy = string;
  if (stringCopy)
  {
    v7 = [(CKMessageEntryRichTextView *)self _rangeFromUITextRange:range];
    v9 = v8;
    [(CKMessageEntryRichTextView *)self unmarkText];
    if (!CKIsRunningInMacCatalyst())
    {
      v10 = CKFrameworkBundle();
      v11 = [v10 localizedStringForKey:@"PASTE" value:&stru_1F04268F8 table:@"ChatKit"];
      [(CKMessageEntryRichTextView *)self _registerUndoOperationForReplacementWithActionName:v11 replacementText:stringCopy];
    }

    attributedText = [(CKMessageEntryRichTextView *)self attributedText];
    v13 = [attributedText mutableCopy];

    [v13 replaceCharactersInRange:v7 withAttributedString:{v9, stringCopy}];
    v15[0] = v7;
    v15[1] = v9;
    v14 = CKSeparatedTextForTextInView(v13, v15, 0);
    [(CKMessageEntryRichTextView *)self setAttributedText:v14];

    -[CKMessageEntryRichTextView setSelectedRange:](self, "setSelectedRange:", [stringCopy length] + v15[0], 0);
  }
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Begin call to paste:", v6, 2u);
    }
  }

  [(CKMessageEntryRichTextView *)self _ck_beginPasteOperationAndPasteAsRichText:1];
}

- (void)pasteAndMatchStyle:(id)style
{
  styleCopy = style;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Begin call to pasteAndMatchStyle:", v6, 2u);
    }
  }

  [(CKMessageEntryRichTextView *)self _ck_beginPasteOperationAndPasteAsRichText:0];
}

- (void)_ck_beginPasteOperationAndPasteAsRichText:(BOOL)text
{
  textCopy = text;
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[CKMessageEntryRichTextView _ck_beginPasteOperationAndPasteAsRichText:]";
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(_TtC7ChatKit27CKCompositionBuilderContext);
  -[CKCompositionBuilderContext setIsInLockdownMode:](v6, "setIsInLockdownMode:", [MEMORY[0x1E69A8020] deviceIsLockedDown]);
  [(CKCompositionBuilderContext *)v6 setIsPastingAfterBracketCharacter:[(UITextView *)self ck_isCursorDirectlyAfterBracketCharacter]];
  [(CKCompositionBuilderContext *)v6 setCanUseRichTextAttributes:textCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKCompositionBuilderContext *)v6 setSupportsExpressiveText:[(CKMessageEntryTextView *)self isExpressiveTextEnabled]];
  }

  delegate = [(CKMessageEntryRichTextView *)self delegate];
  v10 = [delegate messageEntryRichTextViewSupportsInlineAdaptiveImageGlyphs:self];

  [(CKCompositionBuilderContext *)v6 setConversationSupportsInlineAdaptiveImageGlyphs:v10];
  pasteboard = [(CKMessageEntryRichTextView *)self pasteboard];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CKMessageEntryRichTextView__ck_beginPasteOperationAndPasteAsRichText___block_invoke;
  v12[3] = &unk_1E72EC918;
  v12[4] = self;
  [pasteboard __ck_compositionWithContext:v6 completionHandler:v12];
}

void __72__CKMessageEntryRichTextView__ck_beginPasteOperationAndPasteAsRichText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 messageEntryRichTextView:*(a1 + 32) didPasteComposition:v5];

    v8 = *(a1 + 32);
    v9 = [v5 text];
    v10 = [v8 attributedTextForCompositionText:v9];

    if (v10)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__CKMessageEntryRichTextView__ck_beginPasteOperationAndPasteAsRichText___block_invoke_2;
      v15[3] = &unk_1E72EB8D0;
      v11 = v10;
      v12 = *(a1 + 32);
      v16 = v11;
      v17 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v19 = "[CKMessageEntryRichTextView _ck_beginPasteOperationAndPasteAsRichText:]_block_invoke";
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%s Got nil attributed text for pasteboard composition", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[CKMessageEntryRichTextView _ck_beginPasteOperationAndPasteAsRichText:]_block_invoke";
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s - got nil pasteboard composition", buf, 0xCu);
    }
  }
}

void __72__CKMessageEntryRichTextView__ck_beginPasteOperationAndPasteAsRichText___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CKMessageEntryRichTextView _ck_beginPasteOperationAndPasteAsRichText:]_block_invoke_2";
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "%s - Pasting rich text", buf, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = CKMessageEntryRichTextView;
  objc_msgSendSuper2(&v7, sel__pasteAttributedString_pasteAsRichText_, v3, 1);
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
  {
    v6 = [*(a1 + 40) textStorage];
    [v6 ck_repairTextEffects];
  }
}

- (id)cachedPluginDisplayContainerForGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    pluginDisplayContainers = [(CKMessageEntryRichTextView *)self pluginDisplayContainers];
    v6 = [pluginDisplayContainers objectForKey:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedMediaObjectForTransferGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
    v6 = [mediaObjects objectForKey:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showCustomInputView
{
  [(CKMessageEntryTextView *)self resignFirstResponder];
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextViewDidTapHandwritingKey:self];
}

- (id)_messagesReplacementTextForWritingToolText:(id)text
{
  v4 = [CKComposition compositionForWritingToolsText:text];
  text = [v4 text];
  v6 = [(CKMessageEntryRichTextView *)self attributedTextForCompositionText:text];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  return v6;
}

- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  parametersCopy = parameters;
  contextCopy = context;
  coordinatorCopy = coordinator;
  v20 = [(CKMessageEntryRichTextView *)self _messagesReplacementTextForWritingToolText:text];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__CKMessageEntryRichTextView_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke;
  aBlock[3] = &unk_1E72EFEC0;
  v26 = v20;
  v27 = completionCopy;
  v21 = v20;
  v22 = completionCopy;
  v23 = _Block_copy(aBlock);
  v24.receiver = self;
  v24.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryRichTextView *)&v24 writingToolsCoordinator:coordinatorCopy replaceRange:location inContext:length proposedText:contextCopy reason:v21 animationParameters:reason completion:parametersCopy, v23];
}

uint64_t __128__CKMessageEntryRichTextView_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [beganCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(beganCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [v12 key];
        if ([v13 keyCode] == 75)
        {
          goto LABEL_9;
        }

        v14 = [v12 key];
        if ([v14 keyCode] == 78)
        {

LABEL_9:
LABEL_10:
          [(CKMessageEntryTextView *)self resignFirstResponder];
          goto LABEL_11;
        }

        v15 = [v12 key];
        keyCode = [v15 keyCode];

        if (keyCode == 77)
        {
          goto LABEL_10;
        }

LABEL_11:
        ++v11;
      }

      while (v9 != v11);
      v17 = [beganCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v17;
    }

    while (v17);
  }

  v18.receiver = self;
  v18.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryRichTextView *)&v18 pressesBegan:beganCopy withEvent:eventCopy];
}

- (CKMessageEntryRichTextView)initWithFrame:(CGRect)frame usingTextLayoutManager:(BOOL)manager shouldDisableAttachments:(BOOL)attachments shouldDisableKeyboardStickers:(BOOL)stickers shouldAllowPollSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  stickersCopy = stickers;
  attachmentsCopy = attachments;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (manager)
  {
    v28.receiver = self;
    v28.super_class = CKMessageEntryRichTextView;
    height = [(CKMessageEntryTextView *)&v28 initUsingTextLayoutManagerWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    textContainer = [(CKMessageEntryRichTextView *)height textContainer];
    [textContainer setSize:{width, 1.79769313e308}];

    textContainer2 = [(CKMessageEntryRichTextView *)height textContainer];
    [textContainer2 setWidthTracksTextView:1];

    if (([(CKMessageEntryRichTextView *)height isScrollEnabled]& 1) != 0)
    {
      goto LABEL_8;
    }

    textContainer3 = [(CKMessageEntryRichTextView *)height textContainer];
    [textContainer3 setHeightTracksTextView:1];
  }

  else
  {
    textContainer3 = objc_alloc_init(MEMORY[0x1E69DB850]);
    v19 = objc_alloc_init(MEMORY[0x1E69DB800]);
    [v19 setSize:{width, 1.79769313e308}];
    [v19 setWidthTracksTextView:1];
    if (([(CKMessageEntryRichTextView *)self isScrollEnabled]& 1) == 0)
    {
      [v19 setHeightTracksTextView:1];
    }

    v20 = objc_alloc_init(CKTextEntryLayoutManager);
    [(CKTextEntryLayoutManager *)v20 setAllowsNonContiguousLayout:1];
    [(CKTextEntryLayoutManager *)v20 addTextContainer:v19];
    [textContainer3 addLayoutManager:v20];
    v29.receiver = self;
    v29.super_class = CKMessageEntryRichTextView;
    height = [(CKMessageEntryTextView *)&v29 initWithFrame:v19 textContainer:x, y, width, height];
  }

LABEL_8:
  if (height)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
    [defaultCenter addObserver:height selector:sel_previewDidChange_ name:@"CKRichIconDidChangeNotification" object:0];
    [defaultCenter addObserver:height selector:sel__adaptiveImageGlyphWasGeneratedNotification_ name:@"CKAdaptiveImageGlyphGeneratedNotification" object:0];
    textStorage = [(CKMessageEntryRichTextView *)height textStorage];
    [textStorage setDelegate:height];

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMessageEntryRichTextView *)height setMediaObjects:v23];
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMessageEntryRichTextView *)height setPluginDisplayContainers:v24];
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMessageEntryRichTextView *)height setEmbeddedRichLinkConfigurations:v25];
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKMessageEntryRichTextView *)height setComposeImages:v26];
    [(CKMessageEntryTextView *)height setAllowCalloutActions:1];
    [(CKMessageEntryRichTextView *)height setDisableAttachments:attachmentsCopy];
    [(CKMessageEntryRichTextView *)height setDisableKeyboardStickers:stickersCopy];
    [(CKMessageEntryRichTextView *)height setAllowPollSuggestions:suggestionsCopy];
  }

  return height;
}

- (void)correctedTypedText:(id)text rangeOfReplacement:(id)replacement
{
  v18[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  replacementCopy = replacement;
  v8 = replacementCopy;
  if (textCopy)
  {
    if (replacementCopy)
    {
      v9 = [replacementCopy end];
      endOfDocument = [(CKMessageEntryRichTextView *)self endOfDocument];
      v11 = [(CKMessageEntryRichTextView *)self comparePosition:v9 toPosition:endOfDocument];

      if (!v11)
      {
        v16 = textCopy;
        v17[0] = @"TextCorrections";
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        v17[1] = @"UnderlineRanges";
        v18[0] = v12;
        v15 = v8;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
        v18[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

        [(CKMessageEntryTextView *)self setProofreadingInfo:v14];
      }
    }
  }
}

- (void)setAttributedText:(id)text
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryTextView *)&v3 setAttributedText:text];
}

- (void)setCompositionText:(id)text
{
  textCopy = text;
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  [mediaObjects removeAllObjects];
  embeddedRichLinkConfigurations = [(CKMessageEntryRichTextView *)self embeddedRichLinkConfigurations];
  [embeddedRichLinkConfigurations removeAllObjects];

  composeImages = [(CKMessageEntryRichTextView *)self composeImages];
  [composeImages removeAllObjects];

  undoManager = [(CKMessageEntryRichTextView *)self undoManager];
  [undoManager removeAllActions];

  v8 = [(CKMessageEntryRichTextView *)self attributedTextForCompositionText:textCopy];

  [(CKMessageEntryRichTextView *)self setAttributedText:v8];
}

- (id)compositionText
{
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  pluginDisplayContainers = [(CKMessageEntryRichTextView *)self pluginDisplayContainers];
  attributedText = [(CKMessageEntryRichTextView *)self attributedText];
  v6 = [attributedText mutableCopy];
  [v6 setAttributes:0 range:{0, objc_msgSend(attributedText, "length")}];
  v7 = [attributedText length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__CKMessageEntryRichTextView_compositionText__block_invoke;
  v14[3] = &unk_1E72EFEE8;
  v15 = mediaObjects;
  v8 = v6;
  v16 = v8;
  selfCopy = self;
  v18 = pluginDisplayContainers;
  v9 = pluginDisplayContainers;
  v10 = mediaObjects;
  [attributedText enumerateAttributesInRange:0 options:v7 usingBlock:{0, v14}];
  v11 = v18;
  v12 = v8;

  return v8;
}

void __45__CKMessageEntryRichTextView_compositionText__block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 objectForKey:@"CKFileTransferGUIDAttributeName"];
  v8 = [v6 objectForKey:*MEMORY[0x1E69DB5F8]];
  v9 = [v6 objectForKey:*MEMORY[0x1E69DB5F0]];
  v10 = [v6 objectForKey:@"CKPluginPayloadGUIDAttributeName"];
  v11 = *MEMORY[0x1E69A70F8];
  v12 = [v6 objectForKey:*MEMORY[0x1E69A70F8]];
  v43 = v12;
  v40 = v10;
  if (v7 && v8)
  {
    v13 = [a1[4] objectForKey:{v7, v10}];
    if (v13)
    {
      v14 = a1[5];
      v15 = CKCompositionMediaObjectForTextAttachmentAttributeName;
LABEL_11:
      [v14 addAttribute:*v15 value:v13 range:{a3, a4}];
LABEL_24:

      goto LABEL_25;
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__CKMessageEntryRichTextView_compositionText__block_invoke_cold_4();
    }

    goto LABEL_22;
  }

  if (v9)
  {
    v13 = [a1[6] mediaObjectForAdaptiveImageGlyph:{v9, v10}];
    if (v13)
    {
      v14 = a1[5];
      v15 = CKCompositionAdaptiveImageGlyphMediaObjectAttributeName;
      goto LABEL_11;
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__CKMessageEntryRichTextView_compositionText__block_invoke_cold_1();
    }

    goto LABEL_22;
  }

  if (v10)
  {
    v13 = [a1[7] objectForKey:{v10, v10}];
    if (v13)
    {
      v14 = a1[5];
      v15 = CKCompositionPluginDisplayContainerAttributeName;
      goto LABEL_11;
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__CKMessageEntryRichTextView_compositionText__block_invoke_cold_2();
    }

LABEL_22:

LABEL_23:
    v12 = v43;
    goto LABEL_24;
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = a4;
      v18 = [v8 configuration];
      v13 = [v18 entryItemUUID];

      v19 = [a1[6] embeddedRichLinkConfigurations];
      v20 = [v19 objectForKey:v13];

      if (v20)
      {
        [a1[5] addAttribute:@"EmbeddedRichLinkConfiguration" value:v20 range:{a3, v17}];
      }

      else
      {
        v39 = IMLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __45__CKMessageEntryRichTextView_compositionText__block_invoke_cold_3();
        }
      }

      a4 = v17;
      goto LABEL_23;
    }
  }

LABEL_25:
  v21 = v9;
  v42 = v7;
  if (v12)
  {
    [a1[5] addAttribute:v11 value:v12 range:{a3, a4}];
  }

  v22 = a4;
  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isRichLinkImprovementsEnabled];

  if (v24)
  {
    v25 = *MEMORY[0x1E69A70A8];
    v26 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A70A8]];
    if (v26)
    {
      [a1[5] addAttribute:v25 value:v26 range:{a3, v22}];
    }
  }

  v27 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v28 = [v27 isExpressiveTextEnabled];

  if (v28)
  {
    v29 = *MEMORY[0x1E69A7CF8];
    v30 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];
    if (v30)
    {
      [a1[5] addAttribute:v29 value:v30 range:{a3, v22}];
    }

    v31 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7D18]];
    v32 = v31;
    if (v31 && [v31 unsignedIntegerValue] == 1)
    {
      [a1[5] ck_addTextStyle:4 options:1 range:{a3, v22}];
    }

    v33 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7D08]];
    v34 = v33;
    if (v33 && [v33 unsignedIntegerValue] == 1)
    {
      [a1[5] ck_addTextStyle:8 options:1 range:{a3, v22}];
    }

    v35 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7CF0]];
    v36 = v35;
    if (v35 && [v35 unsignedIntegerValue] == 1)
    {
      [a1[5] ck_addTextStyle:1 options:1 range:{a3, v22}];
    }

    v37 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69A7D00]];
    v38 = v37;
    if (v37 && [v37 unsignedIntegerValue] == 1)
    {
      [a1[5] ck_addTextStyle:2 options:1 range:{a3, v22}];
    }
  }
}

- (BOOL)_reconfigureWithLayoutManager:(id)manager triggeredByLayoutManagerAccess:(BOOL)access triggeringSelector:(SEL)selector
{
  accessCopy = access;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CKMessageEntryRichTextView;
  if ([(CKMessageEntryRichTextView *)&v15 _reconfigureWithLayoutManager:managerCopy triggeredByLayoutManagerAccess:accessCopy triggeringSelector:selector])
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@ (%p) has been reconfigured to use TextKit 1 but TextKit 2 is enabled. This is not supported and indicates a programmer error.", v12, self];

    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  return 0;
}

- (void)setBalloonColor:(char)color
{
  if (self->_balloonColor != color)
  {
    self->_balloonColor = color;
    [(CKMessageEntryRichTextView *)self updateContentsOfFileTransferPreviews];
  }
}

- (void)replaceTextInRange:(_NSRange)range withLinks:(id)links
{
  location = range.location;
  v33 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  selfCopy = self;
  compositionText = [(CKMessageEntryRichTextView *)self compositionText];
  v25 = [compositionText mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = linksCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = -location;
    v24 = *v27;
    v10 = *MEMORY[0x1E69A5F00];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 url];
        v14 = [CKEmbeddedRichLinkConfiguration richLinkConfigurationWithURL:v13];

        v30 = @"EmbeddedRichLinkConfiguration";
        v31 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v15];
        v17 = [v12 range] - v9;
        [v12 range];
        [v25 replaceCharactersInRange:v17 withAttributedString:{v18, v16}];
        [v12 range];
        v9 += v19 - [v16 length];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v20 = [v25 copy];
  [(CKMessageEntryRichTextView *)selfCopy setCompositionText:v20];
}

- (BOOL)canPerformDictationAction:(id)action
{
  actionCopy = action;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  LOBYTE(self) = [delegate messageEntryRichTextView:self canPerformDictationAction:actionCopy];

  return self;
}

- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  storageCopy = storage;
  if (![(CKMessageEntryTextView *)self isShowingDictationPlaceholder])
  {
    selectedRange = [(CKMessageEntryRichTextView *)self selectedRange];
    v11 = v10;
    v18 = selectedRange;
    v19 = v10;
    v12 = CKSeparatedTextForTextInView(storageCopy, &v18, self);
    if (([storageCopy isEqualToAttributedString:v12] & 1) == 0)
    {
      [storageCopy setAttributedString:v12];
      if ((length & 0x8000000000000000) == 0)
      {
        v13 = (v18 - selectedRange);
        if (v18 != selectedRange || v19 != v11)
        {
          v14 = (v19 - v11);
          objc_initWeak(&location, self);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __82__CKMessageEntryRichTextView_textStorage_willProcessEditing_range_changeInLength___block_invoke;
          v15[3] = &unk_1E72EFF10;
          objc_copyWeak(v16, &location);
          v16[1] = v13;
          v16[2] = v14;
          dispatch_async(MEMORY[0x1E69E96A0], v15);
          objc_destroyWeak(v16);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __82__CKMessageEntryRichTextView_textStorage_willProcessEditing_range_changeInLength___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained selectedRange];
  v5 = v4;

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setSelectedRange:{v6 + v3, v7 + v5}];
}

- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range
{
  v6.receiver = self;
  v6.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryRichTextView *)&v6 insertAdaptiveImageGlyph:glyph replacementRange:range];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Adaptive image glyph inserted", v5, 2u);
  }
}

- (void)insertAdaptiveImageGlyph:(id)glyph withMediaObject:(id)object
{
  objectCopy = object;
  glyphCopy = glyph;
  transferGUID = [objectCopy transferGUID];
  if ([transferGUID length])
  {
    mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
    [mediaObjects setObject:objectCopy forKeyedSubscript:transferGUID];
  }

  else
  {
    mediaObjects = IMLogHandleForCategory();
    if (os_log_type_enabled(mediaObjects, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEntryRichTextView insertAdaptiveImageGlyph:withMediaObject:];
    }
  }

  selectedTextRange = [(CKMessageEntryRichTextView *)self selectedTextRange];
  [(CKMessageEntryRichTextView *)self insertAdaptiveImageGlyph:glyphCopy replacementRange:selectedTextRange];
}

- (id)mediaObjectForAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  v5 = [(CKMessageEntryRichTextView *)self existingMediaObjectMatchingAdaptiveImageGlyph:glyphCopy];
  if (v5)
  {
    v6 = v5;
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Found existing media object matching adaptive image glyph content identifier, e.g. repeated emoji in a message, reusing same transfer.", v13, 2u);
    }
  }

  else
  {
    v7 = +[CKMediaObjectManager sharedInstance];
    v8 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithAdaptiveImageGlyphFromUnknownSource:glyphCopy];
    v9 = [v7 mediaObjectWithSticker:v8 stickerUserInfo:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
      transferGUID = [v6 transferGUID];
      if ([transferGUID length])
      {
        mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
        [mediaObjects setObject:v6 forKeyedSubscript:transferGUID];
      }

      else
      {
        mediaObjects = IMLogHandleForCategory();
        if (os_log_type_enabled(mediaObjects, OS_LOG_TYPE_ERROR))
        {
          [CKMessageEntryRichTextView mediaObjectForAdaptiveImageGlyph:];
        }
      }
    }

    else
    {
      transferGUID = IMLogHandleForCategory();
      if (os_log_type_enabled(transferGUID, OS_LOG_TYPE_ERROR))
      {
        [CKMessageEntryRichTextView mediaObjectForAdaptiveImageGlyph:];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)existingMediaObjectMatchingAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  contentIdentifier = [glyphCopy contentIdentifier];
  if ([contentIdentifier length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__18;
    v16 = __Block_byref_object_dispose__18;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__CKMessageEntryRichTextView_existingMediaObjectMatchingAdaptiveImageGlyph___block_invoke;
    v9[3] = &unk_1E72EFF38;
    v10 = contentIdentifier;
    v11 = &v12;
    [mediaObjects enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __76__CKMessageEntryRichTextView_existingMediaObjectMatchingAdaptiveImageGlyph___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [v7 transfer];
  v9 = [v8 adaptiveImageGlyphContentIdentifier];
  if ([v9 length] && objc_msgSend(v9, "isEqualToString:", *(a1 + 32)))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__CKMessageEntryRichTextView_existingMediaObjectMatchingAdaptiveImageGlyph___block_invoke_cold_1();
      }
    }
  }
}

- (void)insertInputSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextView:self didReceiveInputSuggestion:suggestionCopy];
}

- (void)inlineMediaViewTextAttachmentDidRequestGenerativeInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  fileURL = [interactionCopy fileURL];

  [delegate messageEntryRichTextView:self didTapGenerativeButtonForImageURL:fileURL];
}

- (void)linkPreviewTextAttachmentDidUpdateTextAttachmentSize:(id)size
{
  sizeCopy = size;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextView:self didUpdateSizeForTextAttachment:sizeCopy];
}

- (void)linkPreviewTextAttachment:(id)attachment didSelectInteractionType:(int64_t)type
{
  attachmentCopy = attachment;
  v7 = attachmentCopy;
  if (!type)
  {
    selfCopy2 = self;
    v12 = 0;
    goto LABEL_7;
  }

  if (type == 2)
  {
    selfCopy2 = self;
    v12 = 2;
LABEL_7:
    v13 = v7;
    [(CKMessageEntryRichTextView *)selfCopy2 _updateTextContentForRichLinkInteractionType:v12 onTextAttachment:v7];
    goto LABEL_8;
  }

  if (type != 1)
  {
    goto LABEL_9;
  }

  v13 = attachmentCopy;
  configuration = [attachmentCopy configuration];
  v9 = [configuration url];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setURL:v9];

LABEL_8:
  v7 = v13;
LABEL_9:
}

- (void)_updateTextContentForRichLinkInteractionType:(int64_t)type onTextAttachment:(id)attachment
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  attachmentCopy = attachment;
  attributedText = [(CKMessageEntryRichTextView *)self attributedText];
  v11[0] = attachmentCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [attributedText ck_attributedStringByApplyingRichLinkInteraction:type toLinkTextAttachments:v8 stringDidChange:&v10];

  if (v10 == 1)
  {
    [(CKMessageEntryRichTextView *)self setAttributedText:v9];
  }
}

- (void)linkPreviewTextAttachment:(id)attachment willAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextView:self willAddPluginTextAttachmentViewControllerToViewHierarchy:hierarchyCopy];
}

- (void)linkPreviewTextAttachment:(id)attachment didAddPluginEntryViewControllerToViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextView:self didAddPluginTextAttachmentViewControllerToViewHierarchy:hierarchyCopy];
}

- (double)maxWidthForLinkPreviewTextAttachment:(id)attachment
{
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate balloonMaxWidthForMessageEntryRichTextView:self];
  v6 = v5;

  return v6;
}

- (BOOL)supportsCustomizationForLinkPreviewTextAttachment:(id)attachment
{
  selfCopy = self;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  LOBYTE(selfCopy) = [delegate messageEntryRichTextViewShouldAllowLinkCustomization:selfCopy];

  return selfCopy;
}

- (void)linkPreviewTextAttachmentWillPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextViewWillPresentCustomizationPicker:self];
}

- (void)linkPreviewTextAttachmentDidPresentCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextViewDidPresentCustomizationPicker:self];
}

- (void)linkPreviewTextAttachmentWillDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextViewWillDismissCustomizationPicker:self];
}

- (void)linkPreviewTextAttachmentDidDismissCustomizationPicker:(id)picker
{
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  [delegate messageEntryRichTextViewDidDismissCustomizationPicker:self];
}

- (void)setAllowPollSuggestions:(BOOL)suggestions
{
  if (self->_allowPollSuggestions != suggestions)
  {
    v16 = v3;
    v17 = v4;
    suggestionsCopy = suggestions;
    self->_allowPollSuggestions = suggestions;
    textInputTraits = [(CKMessageEntryRichTextView *)self textInputTraits];
    v8 = objc_opt_respondsToSelector();

    v9 = IMLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (suggestionsCopy)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Polls] Allowing Poll Suggestions", buf, 2u);
        }

        textInputTraits2 = [(CKMessageEntryRichTextView *)self textInputTraits];
        v9 = textInputTraits2;
        v12 = 0;
      }

      else
      {
        if (v10)
        {
          *v14 = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Polls] Disabling Poll Suggestions", v14, 2u);
        }

        textInputTraits2 = [(CKMessageEntryRichTextView *)self textInputTraits];
        v9 = textInputTraits2;
        v12 = 1;
      }

      [textInputTraits2 setKeyboardSuggestionOptions:v12];
    }

    else if (v10)
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Polls] Cannot disable Poll Suggestions, text input traits doesn't support keyboardSuggestionOptions", v13, 2u);
    }
  }
}

- (void)updateContentsOfFileTransferPreviews
{
  attributedText = [(CKMessageEntryRichTextView *)self attributedText];
  v4 = [attributedText mutableCopy];

  v5 = [v4 length];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __66__CKMessageEntryRichTextView_updateContentsOfFileTransferPreviews__block_invoke;
  v10 = &unk_1E72EFF60;
  selfCopy = self;
  v12 = v4;
  v6 = v4;
  [v6 enumerateAttribute:@"CKFileTransferGUIDAttributeName" inRange:0 options:v5 usingBlock:{0, &v7}];
  [(CKMessageEntryRichTextView *)self setAttributedText:v6, v7, v8, v9, v10, selfCopy];
}

void __66__CKMessageEntryRichTextView_updateContentsOfFileTransferPreviews__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v28 = v7;
    v8 = [*(a1 + 32) mediaObjects];
    v9 = [v8 objectForKey:v28];

    v10 = [v9 transfer];
    v11 = [v10 isAdaptiveImageGlyph];

    v12 = *(a1 + 40);
    if (v11)
    {
      v13 = *MEMORY[0x1E69DB5F0];
      v14 = [v12 attribute:*MEMORY[0x1E69DB5F0] atIndex:a3 effectiveRange:0];
      v15 = [*(a1 + 32) adaptiveImageGlyphForTransferGUID:v28];
      if (v14 == v15)
      {
LABEL_11:

        v7 = v28;
        goto LABEL_12;
      }

      v16 = *(a1 + 40);
      v17 = v13;
      v18 = v15;
    }

    else
    {
      v19 = *MEMORY[0x1E69DB5F8];
      v14 = [v12 attribute:*MEMORY[0x1E69DB5F8] atIndex:a3 effectiveRange:0];
      v20 = *(a1 + 32);
      v21 = [v20 traitCollection];
      v15 = [v20 composeImageForTransferGUID:v28 traitCollection:v21];

      v22 = [v14 image];

      if (v22 == v15 || v14 == 0)
      {
        goto LABEL_11;
      }

      [v14 setImage:v15];
      v24 = *MEMORY[0x1E695EFF8];
      v25 = *(MEMORY[0x1E695EFF8] + 8);
      [v15 size];
      [v14 setBounds:{v24, v25, v26, v27}];
      v16 = *(a1 + 40);
      v17 = v19;
      v18 = v14;
    }

    [v16 addAttribute:v17 value:v18 range:{a3, a4}];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_adaptiveImageGlyphWasGeneratedNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = object;
  if (isKindOfClass)
  {
    transferGUID = [object transferGUID];
    mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
    v8 = [mediaObjects objectForKey:transferGUID];

    if (v8)
    {
      [(CKMessageEntryRichTextView *)self updateContentsOfFileTransferPreviews];
    }

    v5 = object;
  }
}

- (void)previewDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = changeCopy;
  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    transferGUID = [object2 transferGUID];
    mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
    v10 = [mediaObjects objectForKey:transferGUID];

    if (v10)
    {
      composeImages = [(CKMessageEntryRichTextView *)self composeImages];
      [composeImages removeObjectForKey:transferGUID];

      [(CKMessageEntryRichTextView *)self updateContentsOfFileTransferPreviews];
    }

    v6 = changeCopy;
  }
}

- (id)adaptiveImageGlyphForTransferGUID:(id)d
{
  dCopy = d;
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  v6 = [mediaObjects objectForKey:dCopy];

  adaptiveImageGlyph = [v6 adaptiveImageGlyph];

  return adaptiveImageGlyph;
}

- (id)composeImageForTransferGUID:(id)d traitCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  composeImages = [(CKMessageEntryRichTextView *)self composeImages];
  v9 = [composeImages objectForKey:dCopy];
  if (!v9)
  {
    mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
    v11 = [mediaObjects objectForKey:dCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CKMessageEntryRichTextView composeImageForTransferGUID:traitCollection:];
      }

      v9 = 0;
    }

    else
    {
      delegate = [(CKMessageEntryRichTextView *)self delegate];
      [delegate maxWidthForPreviewImagesInMessageEntryRichTextView:self];
      v15 = v14;

      transfer = [v11 transfer];
      isSticker = [transfer isSticker];

      if (isSticker)
      {
        v18 = [v11 previewForWidth:0 orientation:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          image = [v18 image];
        }

        else
        {
          image = v18;
        }

        v20 = image;
        v21 = +[CKUIBehavior sharedBehaviors];
        [v20 size];
        v23 = v22;
        v25 = v24;
        [v20 scale];
        v27 = v26;
        v28 = +[CKUIBehavior sharedBehaviors];
        [v28 stickerScreenScale];
        [v21 stickerSizeScaledWithInitialSize:v23 imageScale:v25 userScale:v27 rectifiedScreenScale:1.0 maxWidth:{v29, 1.79769313e308}];
        v15 = v30;
      }

      delegate2 = [(CKMessageEntryRichTextView *)self delegate];
      v32 = [delegate2 gradientReferenceViewForMessageEntryRichTextView:self];

      v9 = [v11 composeImagesForEntryContentViewWidth:collectionCopy traitCollection:v32 gradientReferenceView:v15];
      [composeImages setObject:v9 forKey:dCopy];
    }
  }

  v33 = [MEMORY[0x1E696AD98] numberWithChar:{-[CKMessageEntryRichTextView balloonColor](self, "balloonColor")}];
  v34 = [v9 objectForKey:v33];

  return v34;
}

- (id)attributedTextForCompositionText:(id)text
{
  textCopy = text;
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  pluginDisplayContainers = [(CKMessageEntryRichTextView *)self pluginDisplayContainers];
  v7 = [textCopy mutableCopy];
  v8 = [v7 length];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke;
  v48[3] = &unk_1E72EFEE8;
  v9 = mediaObjects;
  v49 = v9;
  v10 = v7;
  v50 = v10;
  selfCopy = self;
  v11 = pluginDisplayContainers;
  v52 = v11;
  [textCopy enumerateAttributesInRange:0 options:v8 usingBlock:{0, v48}];
  typingAttributes = [(CKMessageEntryRichTextView *)self typingAttributes];
  v13 = [typingAttributes mutableCopy];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v8) = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (v8)
  {
    [v13 ck_removeBoldItalicUnderlineAndStrikethroughTypingAttributes];
    [v13 ck_removeTextAnimationsTypingAttributes];
  }

  [v10 addAttributes:v13 range:{0, objc_msgSend(v10, "length")}];
  v15 = [v10 attributesAtIndex:objc_msgSend(v10 effectiveRange:{"length") - 1, 0}];
  v16 = *MEMORY[0x1E69DB5F8];
  v17 = [v15 objectForKey:*MEMORY[0x1E69DB5F8]];

  if (v17)
  {
    v18 = [v15 mutableCopy];
    [v18 removeObjectForKey:@"CKFileTransferGUIDAttributeName"];
    [v18 removeObjectForKey:v16];
    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v18];
    [v10 appendAttributedString:v19];
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070]2 isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v22 = [textCopy length];
    v23 = *MEMORY[0x1E69A7CF8];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_2;
    v46[3] = &unk_1E72EF890;
    v24 = v10;
    v47 = v24;
    [textCopy enumerateAttribute:v23 inRange:0 options:v22 usingBlock:{0, v46}];
    v25 = *MEMORY[0x1E69A7D08];
    v26 = [textCopy length];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_3;
    v44[3] = &unk_1E72EF890;
    v27 = v24;
    v45 = v27;
    [textCopy enumerateAttribute:v25 inRange:0 options:v26 usingBlock:{0, v44}];
    v28 = *MEMORY[0x1E69A7D18];
    v29 = [textCopy length];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_4;
    v42[3] = &unk_1E72EF890;
    v30 = v27;
    v43 = v30;
    [textCopy enumerateAttribute:v28 inRange:0 options:v29 usingBlock:{0, v42}];
    v31 = *MEMORY[0x1E69A7CF0];
    v32 = [textCopy length];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_5;
    v40[3] = &unk_1E72EF890;
    v33 = v30;
    v41 = v33;
    [textCopy enumerateAttribute:v31 inRange:0 options:v32 usingBlock:{0, v40}];
    v34 = *MEMORY[0x1E69A7D00];
    v35 = [textCopy length];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_6;
    v38[3] = &unk_1E72EF890;
    v39 = v33;
    [textCopy enumerateAttribute:v34 inRange:0 options:v35 usingBlock:{0, v38}];
  }

  v36 = v10;

  return v10;
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"PluginDisplayContainer"];
  v8 = [v6 objectForKeyedSubscript:@"AdaptiveImageGlyphMediaObject"];
  v9 = [v6 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];
  v47 = v9;
  if (v8)
  {
    v10 = [v8 transferGUID];
    [a1[4] setObject:v8 forKey:v10];
    v11 = [v8 adaptiveImageGlyph];
    v12 = v11;
    if (v11)
    {
      v58[0] = *MEMORY[0x1E69DB5F0];
      v58[1] = @"CKFileTransferGUIDAttributeName";
      v59[0] = v11;
      v59[1] = v10;
      v13 = MEMORY[0x1E695DF20];
      v14 = v59;
      v15 = v58;
      v16 = 2;
    }

    else
    {
      v56 = @"CKFileTransferGUIDAttributeName";
      v57 = v10;
      v13 = MEMORY[0x1E695DF20];
      v14 = &v57;
      v15 = &v56;
      v16 = 1;
    }

    v19 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
    [a1[5] setAttributes:v19 range:{a3, a4}];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [v9 transferGUID];
    [a1[4] setObject:v47 forKey:v10];
    v17 = a1[6];
    v18 = [v17 traitCollection];
    v12 = [v17 composeImageForTransferGUID:v10 traitCollection:v18];

    v19 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
    [v19 setImage:v12];
    v20 = *MEMORY[0x1E695EFF8];
    v21 = *(MEMORY[0x1E695EFF8] + 8);
    [v12 size];
    [v19 setBounds:{v20, v21, v22, v23}];
    v24 = a1[5];
    v54[0] = *MEMORY[0x1E69DB5F8];
    v54[1] = @"CKFileTransferGUIDAttributeName";
    v55[0] = v19;
    v55[1] = v10;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v24 setAttributes:v25 range:{a3, a4}];
  }

LABEL_9:
  v48 = a4;
  v26 = [a1[6] embeddedRichLinkConfigurations];
  v27 = [v6 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 entryItemUUID];
    [v26 setObject:v28 forKey:v29];
    v30 = [[_TtC7ChatKit27CKLinkPreviewTextAttachment alloc] initWithDelegate:a1[6] configuration:v28];
    v31 = a1[5];
    v52 = *MEMORY[0x1E69DB5F8];
    v53 = v30;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [v31 setAttributes:v32 range:{a3, v48}];
  }

  if (v7)
  {
    v33 = [v7 pluginPayload];
    v34 = [v33 messageGUID];
    [a1[7] setObject:v7 forKey:v34];
    v35 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
    v46 = v7;
    v36 = [v7 composeImage];
    v37 = +[CKUIBehavior sharedBehaviors];
    [v37 previewMaxWidth];
    v39 = v38;

    [v36 size];
    v42 = v40;
    v43 = v41;
    if (v40 > v39 && v40 > 0.0)
    {
      v43 = v39 * (v41 / v40);
      v42 = v39;
    }

    [v35 setImage:v36];
    [v35 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v42, v43}];
    v44 = a1[5];
    v50[0] = *MEMORY[0x1E69DB5F8];
    v50[1] = @"CKPluginPayloadGUIDAttributeName";
    v51[0] = v35;
    v51[1] = v34;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v44 setAttributes:v45 range:{a3, v48}];

    v7 = v46;
  }
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) ck_applyTextEffectType:objc_msgSend(v7 range:{"integerValue"), a3, a4}];
    }
  }
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:8 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:4 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:1 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

void __63__CKMessageEntryRichTextView_attributedTextForCompositionText___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v10;
    if (isKindOfClass)
    {
      v9 = [v10 unsignedIntegerValue];
      v7 = v10;
      if (v9 == 1)
      {
        [*(a1 + 32) ck_addTextStyle:2 options:3 range:{a3, a4}];
        v7 = v10;
      }
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(CKMessageEntryRichTextView *)self delegate];
  LOBYTE(self) = [delegate messageEntryRichTextView:self shouldRecognizeGesture:beginCopy];

  return self;
}

- (BOOL)handleTapOrLongPressOnMediaObjectForTransferGUID:(id)d characterIndex:(int64_t)index location:(CGPoint)location touchedCharacterFrame:(CGRect)frame
{
  width = frame.size.width;
  x = location.x;
  dCopy = d;
  mediaObjects = [(CKMessageEntryRichTextView *)self mediaObjects];
  v12 = [mediaObjects objectForKeyedSubscript:dCopy];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    delegate = [(CKMessageEntryRichTextView *)self delegate];
    [delegate messageEntryRichTextView:self didTapMediaObject:v12];

    if (x <= width * 0.5)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = index + 1;
    }

    [(CKMessageEntryRichTextView *)self setSelectedRange:indexCopy, 0];
    [(CKMessageEntryRichTextView *)self becomeFirstResponder];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)handleTapOrLongPress:(id)press
{
  pressCopy = press;
  v7.receiver = self;
  v7.super_class = CKMessageEntryRichTextView;
  [(CKMessageEntryTextView *)&v7 handleTapOrLongPress:pressCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || [pressCopy state] == 3)
  {
    delegate = [(CKMessageEntryRichTextView *)self delegate];
    [delegate messageEntryRichTextViewWasTapped:self isLongPress:isKindOfClass & 1];
  }
}

- (_NSRange)_rangeFromUITextRange:(id)range
{
  rangeCopy = range;
  beginningOfDocument = [(CKMessageEntryRichTextView *)self beginningOfDocument];
  start = [rangeCopy start];
  v7 = [(CKMessageEntryRichTextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

  start2 = [rangeCopy start];
  v9 = [rangeCopy end];

  v10 = [(CKMessageEntryRichTextView *)self offsetFromPosition:start2 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

void __45__CKMessageEntryRichTextView_compositionText__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)insertAdaptiveImageGlyph:withMediaObject:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)mediaObjectForAdaptiveImageGlyph:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)mediaObjectForAdaptiveImageGlyph:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__CKMessageEntryRichTextView_existingMediaObjectMatchingAdaptiveImageGlyph___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)composeImageForTransferGUID:traitCollection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
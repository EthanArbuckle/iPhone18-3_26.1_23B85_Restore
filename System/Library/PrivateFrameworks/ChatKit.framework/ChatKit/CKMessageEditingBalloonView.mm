@interface CKMessageEditingBalloonView
- (BOOL)hasBalloonShape;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CGRect)customTextViewLayoutBounds;
- (CKMessageEditingBalloonView)initWithFrame:(CGRect)frame;
- (CKMessageEditingBalloonViewDelegate)editingBalloonViewDelegate;
- (NSString)description;
- (id)textEffectsEditMenuForTextInRange:(_NSRange)range;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)applyTextEffect:(int64_t)effect toTextRange:(_NSRange)range;
- (void)applyTextStyle:(unint64_t)style toTextRange:(_NSRange)range;
- (void)compositionTranslator:(id)translator didFailTranslationForVersion:(int64_t)version;
- (void)compositionTranslator:(id)translator didUpdateTranslation:(id)translation sourceLanguage:(id)language destinationLanguage:(id)destinationLanguage version:(int64_t)version;
- (void)layoutSubviews;
- (void)messageEntryTextView:(id)view applyStyleChangeOfType:(unint64_t)type add:(BOOL)add forRange:(_NSRange)range;
- (void)messageEntryTextView:(id)view didSetAnimationName:(id)name forRange:(_NSRange)range;
- (void)messageEntryTextView:(id)view didUpdateForRange:(_NSRange)range conversionHandler:(id)handler;
- (void)messageEntryTextView:(id)view replaceRange:(_NSRange)range withAttributedText:(id)text;
- (void)messageEntryTextViewDidChangePencilMode:(id)mode;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style;
- (void)prepareForReuse;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewWritingToolsDidEnd:(id)end;
- (void)textViewWritingToolsWillBegin:(id)begin;
@end

@implementation CKMessageEditingBalloonView

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CKMessageEditingBalloonView;
  textView = [(CKTextBalloonView *)&v9 textView];
  v8.receiver = self;
  v8.super_class = CKMessageEditingBalloonView;
  v5 = [(CKTextBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKMessageEditingBalloonView textView:%@ %@]", textView, v5];

  return v6;
}

- (CKMessageEditingBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [(CKMessageEntryTextView *)[CKMessageEditingBalloonTextView alloc] initUsingTextLayoutManagerWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [CKMessageEntryContentView configureMessageBodyEntryTextView:v8 shouldUseNonEmojiKeyboard:0 shouldUseNonHandwritingKeyboard:0];
  v26.receiver = self;
  v26.super_class = CKMessageEditingBalloonView;
  height = [(CKTextBalloonView *)&v26 initWithFrame:v8 textView:x, y, width, height];
  v10 = height;
  if (height)
  {
    objc_storeStrong(&height->_messageEditingBalloonTextView, v8);
    [(CKTextBalloonView *)v10 targetTextContainerInsets];
    [v8 setTextContainerInset:?];
    [v8 setEditable:1];
    [v8 setScrollEnabled:1];
    [v8 setUserInteractionEnabled:1];
    [v8 setAlwaysBounceVertical:0];
    [v8 setSupportsBigEmojiTextStyles:1];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled)
    {
      [v8 setAllowsTextAnimations:1];
      [(CKMessageEntryTextView *)v10->_messageEditingBalloonTextView setTextFormattingDelegate:v10];
      textLayoutManager = [v8 textLayoutManager];
      [textLayoutManager setRequiresCTLineRef:1];
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070]2 isAutomaticOutgoingTranslationEnabled];

    if (isAutomaticOutgoingTranslationEnabled)
    {
      v16 = objc_opt_new();
      [v16 setDelegate:v10];
      [(CKMessageEditingBalloonView *)v10 setTranslator:v16];
      height2 = [(CKMessageEntryTextView *)[CKMessageEditingBalloonTextView alloc] initUsingTextLayoutManagerWithFrame:x, y, width, height];
      messageEditingBalloonTranslationView = v10->_messageEditingBalloonTranslationView;
      v10->_messageEditingBalloonTranslationView = height2;
      v19 = height2;

      [(CKMessageEditingBalloonTextView *)v19 setEditable:0];
      v20 = +[CKUIBehavior sharedBehaviors];
      theme = [v20 theme];
      secondaryLabelColor = [theme secondaryLabelColor];
      [(CKMessageEditingBalloonTextView *)v19 setTextColor:secondaryLabelColor];

      v23 = +[CKUIBehavior sharedBehaviors];
      balloonTranslationSecondaryTextFont = [v23 balloonTranslationSecondaryTextFont];
      [(CKMessageEntryTextView *)v19 setFont:balloonTranslationSecondaryTextFont];

      [(CKTextBalloonView *)v10 setTranslationSecondaryTextView:v19];
      [(CKMessageEditingBalloonView *)v10 addSubview:v19];
    }
  }

  return v10;
}

- (BOOL)hasBalloonShape
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  return isEntryViewRefreshEnabled ^ 1;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = CKMessageEditingBalloonView;
  [(CKTextBalloonView *)&v37 layoutSubviews];
  [(CKMessageEditingBalloonView *)self customTextViewLayoutBounds];
  if (CGRectIsEmpty(v38))
  {
    [(CKMessageEditingBalloonView *)self bounds];
  }

  else
  {
    [(CKMessageEditingBalloonView *)self customTextViewLayoutBounds];
  }

  [(CKTextBalloonView *)self _computedTextViewFrameForBoundsSize:v3, v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(CKTextBalloonView *)self containsExcessiveLineHeightCharacters])
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 transcriptTextFontLanguageAwareOutsets];
    v15 = v14;
    v17 = v16;

    v12 = v12 + v15 + v17;
  }

  if (CKMainScreenScale_once_30 != -1)
  {
    [CKMessageEditingBalloonView layoutSubviews];
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_30;
  if (*&CKMainScreenScale_sMainScreenScale_30 == 0.0)
  {
    v18 = 1.0;
  }

  v19 = floor(v6 * v18) / v18;
  v20 = ceil(v10 * v18) / v18;
  v21 = floor(v8 * v18) / v18;
  v22 = ceil(v12 * v18) / v18;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled && [(CKTextBalloonView *)self shouldShowTranslationSecondaryText])
  {
    translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    [translationSecondaryTextView setFrame:{v19, v21, v20, v26}];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v21 = v21 + v27;
  }

  textView = [(CKTextBalloonView *)self textView];
  [textView setFrame:{v19, v21, v20, v22}];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 textBalloonMinHeight];
    v33 = v32;

    [(CKMessageEditingBalloonView *)self bounds];
    Height = CGRectGetHeight(v39);
    if (v33 < Height)
    {
      Height = v33;
    }

    v35 = Height * 0.5;
    layer = [(CKMessageEditingBalloonView *)self layer];
    [layer setCornerRadius:v35];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKMessageEditingBalloonView;
  [(CKTextBalloonView *)&v3 prepareForReuse];
  [(CKTextBalloonView *)self setContainsExcessiveLineHeightCharacters:0];
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  if (!self->_typingAttributes)
  {
    typingAttributes = [editing typingAttributes];
    [(CKMessageEditingBalloonView *)self setTypingAttributes:typingAttributes];
  }

  return 1;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  rangeCopy = range;
  viewCopy = view;
  textCopy = text;
  textView = [(CKTextBalloonView *)self textView];
  v10 = textView;
  if (textView == viewCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ![viewCopy shouldUpdateMentionsInRange:&rangeCopy replacementText:textCopy])
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView:rangeCopy.location];
  effectsPickerAssistant = [v12 effectsPickerAssistant];
  [effectsPickerAssistant adjustTypingAttributesIfNeededForReplacement:textCopy inRange:{rangeCopy.location, rangeCopy.length}];

  v14 = 1;
LABEL_6:
  [viewCopy typingAttributes];

  return v14;
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  length = range.length;
  location = range.location;
  v8 = [actions mutableCopy];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (![mEMORY[0x1E69A8070] isExpressiveTextEnabled])
  {
    goto LABEL_12;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSendingExpressiveTextEnabled = [mEMORY[0x1E69A8070]2 isSendingExpressiveTextEnabled];

  if (!isSendingExpressiveTextEnabled)
  {
    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E69DCC60] ck_indexOfMenuWithMenuIdentifier:*MEMORY[0x1E69DE140] inMenuElementsArray:v8];
  if (v12 >= [v8 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (CKIsRunningInMacCatalyst())
  {
    mEMORY[0x1E69A8070] = [(CKMessageEditingBalloonView *)self textEffectsEditMenuForTextInRange:location, length];
    if (!mEMORY[0x1E69A8070])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  mEMORY[0x1E69A8070] = [messageEditingBalloonTextView showTextEffectsPickerEditMenuAction];

  if (mEMORY[0x1E69A8070])
  {
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
    [mEMORY[0x1E69A8070] setTitle:v16];

LABEL_11:
    [v8 insertObject:mEMORY[0x1E69A8070] atIndex:v13];
  }

LABEL_12:

LABEL_13:
  v17 = MEMORY[0x1E69DCC60];
  v18 = [v8 copy];
  v19 = [v17 menuWithChildren:v18];

  return v19;
}

- (void)textViewDidChange:(id)change
{
  [change updateFontIfNeededAndGetWasUsingBigEmojiStyle:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    translationLanguage = [(CKMessageEditingBalloonView *)self translationLanguage];

    if (translationLanguage)
    {
      [(CKMessageEditingBalloonView *)self setTranslationVersion:[(CKMessageEditingBalloonView *)self translationVersion]+ 1];
      translator = [(CKMessageEditingBalloonView *)self translator];
      textView = [(CKTextBalloonView *)self textView];
      attributedText = [textView attributedText];
      translationLanguage2 = [(CKMessageEditingBalloonView *)self translationLanguage];
      translationToLanguage = [(CKMessageEditingBalloonView *)self translationToLanguage];
      [translator translate:attributedText into:translationLanguage2 from:translationToLanguage version:{-[CKMessageEditingBalloonView translationVersion](self, "translationVersion")}];
    }
  }

  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  if (![(CKMessageEditingBalloonView *)self isBeingTornDown])
  {
    textView = [(CKTextBalloonView *)self textView];

    if (textView == selectionCopy && !+[CKMentionsUtilities supportsSupplementalLexiconMentions])
    {
      [selectionCopy checkForMentions];
    }
  }
}

- (void)textViewWritingToolsWillBegin:(id)begin
{
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewWritingToolsWillBegin:self];
}

- (void)textViewWritingToolsDidEnd:(id)end
{
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewWritingToolsDidEnd:self];
}

- (void)messageEntryTextView:(id)view didUpdateForRange:(_NSRange)range conversionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  if (length)
  {
    v13 = handlerCopy;
    textStorage = [view textStorage];
    [textStorage beginEditing];
    v11 = [textStorage ck_attributedStringByConverting:v13 range:{location, length}];
    [textStorage endEditing];
    editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];

    handlerCopy = v13;
  }
}

- (void)messageEntryTextView:(id)view didSetAnimationName:(id)name forRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    nameCopy = name;
    textStorage = [view textStorage];
    [textStorage beginEditing];
    [textStorage ck_toggleTextEffectNamed:nameCopy range:location getAdded:{length, 0}];

    [textStorage endEditing];
    editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];

    editingBalloonViewDelegate2 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [editingBalloonViewDelegate2 messageEditingBalloonView:self didChangeTextAnimationInRange:{location, length}];
  }
}

- (void)messageEntryTextView:(id)view applyStyleChangeOfType:(unint64_t)type add:(BOOL)add forRange:(_NSRange)range
{
  if (range.length)
  {
    location = range.location;
    if (range.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = range.length;
      addCopy = add;
      textStorage = [view textStorage];
      [textStorage beginEditing];
      if (addCopy)
      {
        [textStorage ck_addTextStyle:type options:3 range:{location, length}];
      }

      else
      {
        [textStorage ck_removeTextStyle:type options:3 range:{location, length}];
      }

      [textStorage endEditing];
      editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
      [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];
    }
  }
}

- (void)messageEntryTextView:(id)view replaceRange:(_NSRange)range withAttributedText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  v15 = [text mutableCopy];
  [v15 ck_replaceTextAnimationsWithIMTextEffects];
  [v15 ck_replaceBIUSWithIMTextStyles];
  v10 = *MEMORY[0x1E69DB648];
  [v15 removeAttribute:*MEMORY[0x1E69DB648] range:{0, objc_msgSend(v15, "length")}];
  v11 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v11 balloonTextFont];
  [v15 addAttribute:v10 value:balloonTextFont range:{0, objc_msgSend(v15, "length")}];

  [v15 ck_addDisplayableAttributeForIMTextEffectAttribute];
  [v15 ck_addDisplayableAttributesForIMTextStyleAttributes];
  textStorage = [viewCopy textStorage];

  [textStorage beginEditing];
  [textStorage replaceCharactersInRange:location withAttributedString:{length, v15}];
  [textStorage endEditing];
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];
}

- (void)messageEntryTextViewDidChangePencilMode:(id)mode
{
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewDidChangePencilMode:self];
}

- (id)textEffectsEditMenuForTextInRange:(_NSRange)range
{
  length = range.length;
  v4 = range.location;
  v31[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    objc_initWeak(&location, self);
    textView = [(CKTextBalloonView *)self textView];
    v9 = [textView ck_activeTextStylesInRange:{v4, length}];

    textView2 = [(CKTextBalloonView *)self textView];
    v11 = [textView2 ck_activeTextEffectTypeInRange:{v4, length}];

    messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
    selectedText = [messageEditingBalloonTextView selectedText];

    if (selectedText)
    {
      v14 = selectedText;
    }

    else
    {
      v14 = &stru_1F04268F8;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65__CKMessageEditingBalloonView_textEffectsEditMenuForTextInRange___block_invoke;
    v28[3] = &unk_1E72F0290;
    objc_copyWeak(v29, &location);
    v29[1] = v4;
    v29[2] = length;
    v15 = [CKTextEffectsMenuFactory textStylePaletteMenuWithActiveTextStyles:v9 selectedText:v14 handler:v28];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __65__CKMessageEditingBalloonView_textEffectsEditMenuForTextInRange___block_invoke_2;
    v26 = &unk_1E72F02B8;
    objc_copyWeak(v27, &location);
    v27[1] = v4;
    v27[2] = length;
    v16 = [CKTextEffectsMenuFactory inlineEffectMenuWithHandler:&v23 activeTextEffectType:v11];
    v17 = CKIsRunningInMacCatalyst();
    v18 = MEMORY[0x1E69DCC60];
    v31[0] = v15;
    v31[1] = v16;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:{2, v23, v24, v25, v26}];
    if (v17)
    {
      v20 = 17;
    }

    else
    {
      v20 = 1;
    }

    v21 = [v18 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:v20 children:v19];

    objc_destroyWeak(v27);
    objc_destroyWeak(v29);

    objc_destroyWeak(&location);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __65__CKMessageEditingBalloonView_textEffectsEditMenuForTextInRange___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applyTextStyle:a2 toTextRange:{*(a1 + 40), *(a1 + 48)}];
}

void __65__CKMessageEditingBalloonView_textEffectsEditMenuForTextInRange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applyTextEffect:a2 toTextRange:{*(a1 + 40), *(a1 + 48)}];
}

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style
{
  v20 = *MEMORY[0x1E69E9840];
  messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  selectedRange = [messageEditingBalloonTextView selectedRange];
  v8 = v7;

  messageEditingBalloonTextView2 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  text = [messageEditingBalloonTextView2 text];

  if (selectedRange + v8 <= [text length])
  {
    [(CKMessageEditingBalloonView *)self applyTextStyle:style toTextRange:selectedRange, v8];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = IMTextStyleAttributeNameFromStyle();
      v21.location = selectedRange;
      v21.length = v8;
      v13 = NSStringFromRange(v21);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = [text length];
      _os_log_error_impl(&dword_19020E000, v11, OS_LOG_TYPE_ERROR, "Invalid range when toggling text style {%@} for range {%@} with textLength {%lu}.", &v14, 0x20u);
    }
  }
}

- (void)applyTextStyle:(unint64_t)style toTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v8 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v8 balloonTextFont];

  [messageEditingBalloonTextView ck_applyWithTextStyle:style toRange:location baseFont:{length, balloonTextFont}];
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];
}

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  selectedRange = [messageEditingBalloonTextView selectedRange];
  v8 = v7;

  messageEditingBalloonTextView2 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  text = [messageEditingBalloonTextView2 text];

  if (selectedRange + v8 <= [text length])
  {
    [(CKMessageEditingBalloonView *)self applyTextEffect:type toTextRange:selectedRange, v8];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = IMTextEffectNameFromType();
      v21.location = selectedRange;
      v21.length = v8;
      v13 = NSStringFromRange(v21);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = [text length];
      _os_log_error_impl(&dword_19020E000, v11, OS_LOG_TYPE_ERROR, "Invalid range when toggling text style {%@} for range {%@} with textLength {%lu}.", &v14, 0x20u);
    }
  }
}

- (void)applyTextEffect:(int64_t)effect toTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  [messageEditingBalloonTextView ck_toggleTextEffect:effect inRange:location getAdded:length undo:{0, &__block_literal_global_72}];
  editingBalloonViewDelegate = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [editingBalloonViewDelegate messageEditingBalloonViewContentDidChange:self];
}

- (void)compositionTranslator:(id)translator didUpdateTranslation:(id)translation sourceLanguage:(id)language destinationLanguage:(id)destinationLanguage version:(int64_t)version
{
  translationCopy = translation;
  languageCopy = language;
  destinationLanguageCopy = destinationLanguage;
  if ([(CKMessageEditingBalloonView *)self translationVersion]== version)
  {
    localeIdentifier = [languageCopy localeIdentifier];
    [(CKMessageEditingBalloonView *)self setSourceLanguageID:localeIdentifier];

    localeIdentifier2 = [destinationLanguageCopy localeIdentifier];
    [(CKMessageEditingBalloonView *)self setDestinationLanguageID:localeIdentifier2];

    messageEditingBalloonTranslationView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [messageEditingBalloonTranslationView setAttributedText:translationCopy];

    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    secondaryLabelColor = [theme secondaryLabelColor];
    messageEditingBalloonTranslationView2 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [messageEditingBalloonTranslationView2 setTextColor:secondaryLabelColor];

    v20 = +[CKUIBehavior sharedBehaviors];
    balloonTranslationSecondaryTextFont = [v20 balloonTranslationSecondaryTextFont];
    messageEditingBalloonTranslationView3 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [messageEditingBalloonTranslationView3 setFont:balloonTranslationSecondaryTextFont];

    pendingTranslationBlock = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];

    if (pendingTranslationBlock)
    {
      pendingTranslationBlock2 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];
      pendingTranslationBlock2[2]();

      [(CKMessageEditingBalloonView *)self setPendingTranslationBlock:0];
    }
  }
}

- (void)compositionTranslator:(id)translator didFailTranslationForVersion:(int64_t)version
{
  if ([(CKMessageEditingBalloonView *)self translationVersion]== version)
  {
    messageEditingBalloonTranslationView = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [messageEditingBalloonTranslationView setAttributedText:0];

    pendingTranslationBlock = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];

    if (pendingTranslationBlock)
    {
      pendingTranslationBlock2 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];
      pendingTranslationBlock2[2]();

      [(CKMessageEditingBalloonView *)self setPendingTranslationBlock:0];
    }
  }
}

- (CKMessageEditingBalloonViewDelegate)editingBalloonViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editingBalloonViewDelegate);

  return WeakRetained;
}

- (CGRect)customTextViewLayoutBounds
{
  x = self->_customTextViewLayoutBounds.origin.x;
  y = self->_customTextViewLayoutBounds.origin.y;
  width = self->_customTextViewLayoutBounds.size.width;
  height = self->_customTextViewLayoutBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
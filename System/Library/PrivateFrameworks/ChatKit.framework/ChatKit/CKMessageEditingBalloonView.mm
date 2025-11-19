@interface CKMessageEditingBalloonView
- (BOOL)hasBalloonShape;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CGRect)customTextViewLayoutBounds;
- (CKMessageEditingBalloonView)initWithFrame:(CGRect)a3;
- (CKMessageEditingBalloonViewDelegate)editingBalloonViewDelegate;
- (NSString)description;
- (id)textEffectsEditMenuForTextInRange:(_NSRange)a3;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)applyTextEffect:(int64_t)a3 toTextRange:(_NSRange)a4;
- (void)applyTextStyle:(unint64_t)a3 toTextRange:(_NSRange)a4;
- (void)compositionTranslator:(id)a3 didFailTranslationForVersion:(int64_t)a4;
- (void)compositionTranslator:(id)a3 didUpdateTranslation:(id)a4 sourceLanguage:(id)a5 destinationLanguage:(id)a6 version:(int64_t)a7;
- (void)layoutSubviews;
- (void)messageEntryTextView:(id)a3 applyStyleChangeOfType:(unint64_t)a4 add:(BOOL)a5 forRange:(_NSRange)a6;
- (void)messageEntryTextView:(id)a3 didSetAnimationName:(id)a4 forRange:(_NSRange)a5;
- (void)messageEntryTextView:(id)a3 didUpdateForRange:(_NSRange)a4 conversionHandler:(id)a5;
- (void)messageEntryTextView:(id)a3 replaceRange:(_NSRange)a4 withAttributedText:(id)a5;
- (void)messageEntryTextViewDidChangePencilMode:(id)a3;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3;
- (void)prepareForReuse;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewWritingToolsDidEnd:(id)a3;
- (void)textViewWritingToolsWillBegin:(id)a3;
@end

@implementation CKMessageEditingBalloonView

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CKMessageEditingBalloonView;
  v4 = [(CKTextBalloonView *)&v9 textView];
  v8.receiver = self;
  v8.super_class = CKMessageEditingBalloonView;
  v5 = [(CKTextBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKMessageEditingBalloonView textView:%@ %@]", v4, v5];

  return v6;
}

- (CKMessageEditingBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKMessageEntryTextView *)[CKMessageEditingBalloonTextView alloc] initUsingTextLayoutManagerWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [CKMessageEntryContentView configureMessageBodyEntryTextView:v8 shouldUseNonEmojiKeyboard:0 shouldUseNonHandwritingKeyboard:0];
  v26.receiver = self;
  v26.super_class = CKMessageEditingBalloonView;
  v9 = [(CKTextBalloonView *)&v26 initWithFrame:v8 textView:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageEditingBalloonTextView, v8);
    [(CKTextBalloonView *)v10 targetTextContainerInsets];
    [v8 setTextContainerInset:?];
    [v8 setEditable:1];
    [v8 setScrollEnabled:1];
    [v8 setUserInteractionEnabled:1];
    [v8 setAlwaysBounceVertical:0];
    [v8 setSupportsBigEmojiTextStyles:1];
    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isExpressiveTextEnabled];

    if (v12)
    {
      [v8 setAllowsTextAnimations:1];
      [(CKMessageEntryTextView *)v10->_messageEditingBalloonTextView setTextFormattingDelegate:v10];
      v13 = [v8 textLayoutManager];
      [v13 setRequiresCTLineRef:1];
    }

    v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v15 = [v14 isAutomaticOutgoingTranslationEnabled];

    if (v15)
    {
      v16 = objc_opt_new();
      [v16 setDelegate:v10];
      [(CKMessageEditingBalloonView *)v10 setTranslator:v16];
      v17 = [(CKMessageEntryTextView *)[CKMessageEditingBalloonTextView alloc] initUsingTextLayoutManagerWithFrame:x, y, width, height];
      messageEditingBalloonTranslationView = v10->_messageEditingBalloonTranslationView;
      v10->_messageEditingBalloonTranslationView = v17;
      v19 = v17;

      [(CKMessageEditingBalloonTextView *)v19 setEditable:0];
      v20 = +[CKUIBehavior sharedBehaviors];
      v21 = [v20 theme];
      v22 = [v21 secondaryLabelColor];
      [(CKMessageEditingBalloonTextView *)v19 setTextColor:v22];

      v23 = +[CKUIBehavior sharedBehaviors];
      v24 = [v23 balloonTranslationSecondaryTextFont];
      [(CKMessageEntryTextView *)v19 setFont:v24];

      [(CKTextBalloonView *)v10 setTranslationSecondaryTextView:v19];
      [(CKMessageEditingBalloonView *)v10 addSubview:v19];
    }
  }

  return v10;
}

- (BOOL)hasBalloonShape
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  return v3 ^ 1;
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
  v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v24 = [v23 isAutomaticOutgoingTranslationEnabled];

  if (v24 && [(CKTextBalloonView *)self shouldShowTranslationSecondaryText])
  {
    v25 = [(CKTextBalloonView *)self translationSecondaryTextView];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    [v25 setFrame:{v19, v21, v20, v26}];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v21 = v21 + v27;
  }

  v28 = [(CKTextBalloonView *)self textView];
  [v28 setFrame:{v19, v21, v20, v22}];
  v29 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v30 = [v29 isEntryViewRefreshEnabled];

  if (v30)
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
    v36 = [(CKMessageEditingBalloonView *)self layer];
    [v36 setCornerRadius:v35];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKMessageEditingBalloonView;
  [(CKTextBalloonView *)&v3 prepareForReuse];
  [(CKTextBalloonView *)self setContainsExcessiveLineHeightCharacters:0];
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  if (!self->_typingAttributes)
  {
    v4 = [a3 typingAttributes];
    [(CKMessageEditingBalloonView *)self setTypingAttributes:v4];
  }

  return 1;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v16 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [(CKTextBalloonView *)self textView];
  v10 = v9;
  if (v9 == v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ![v7 shouldUpdateMentionsInRange:&v16 replacementText:v8])
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView:v16.location];
  v13 = [v12 effectsPickerAssistant];
  [v13 adjustTypingAttributesIfNeededForReplacement:v8 inRange:{v16.location, v16.length}];

  v14 = 1;
LABEL_6:
  [v7 typingAttributes];

  return v14;
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = [a5 mutableCopy];
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (![v9 isExpressiveTextEnabled])
  {
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v11 = [v10 isSendingExpressiveTextEnabled];

  if (!v11)
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
    v9 = [(CKMessageEditingBalloonView *)self textEffectsEditMenuForTextInRange:location, length];
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v9 = [v14 showTextEffectsPickerEditMenuAction];

  if (v9)
  {
    v15 = CKFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"TEXT_EFFECTS" value:&stru_1F04268F8 table:@"ChatKit"];
    [v9 setTitle:v16];

LABEL_11:
    [v8 insertObject:v9 atIndex:v13];
  }

LABEL_12:

LABEL_13:
  v17 = MEMORY[0x1E69DCC60];
  v18 = [v8 copy];
  v19 = [v17 menuWithChildren:v18];

  return v19;
}

- (void)textViewDidChange:(id)a3
{
  [a3 updateFontIfNeededAndGetWasUsingBigEmojiStyle:0];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isAutomaticOutgoingTranslationEnabled];

  if (v5)
  {
    v6 = [(CKMessageEditingBalloonView *)self translationLanguage];

    if (v6)
    {
      [(CKMessageEditingBalloonView *)self setTranslationVersion:[(CKMessageEditingBalloonView *)self translationVersion]+ 1];
      v7 = [(CKMessageEditingBalloonView *)self translator];
      v8 = [(CKTextBalloonView *)self textView];
      v9 = [v8 attributedText];
      v10 = [(CKMessageEditingBalloonView *)self translationLanguage];
      v11 = [(CKMessageEditingBalloonView *)self translationToLanguage];
      [v7 translate:v9 into:v10 from:v11 version:{-[CKMessageEditingBalloonView translationVersion](self, "translationVersion")}];
    }
  }

  v12 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v12 messageEditingBalloonViewContentDidChange:self];
}

- (void)textViewDidChangeSelection:(id)a3
{
  v5 = a3;
  if (![(CKMessageEditingBalloonView *)self isBeingTornDown])
  {
    v4 = [(CKTextBalloonView *)self textView];

    if (v4 == v5 && !+[CKMentionsUtilities supportsSupplementalLexiconMentions])
    {
      [v5 checkForMentions];
    }
  }
}

- (void)textViewWritingToolsWillBegin:(id)a3
{
  v4 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v4 messageEditingBalloonViewWritingToolsWillBegin:self];
}

- (void)textViewWritingToolsDidEnd:(id)a3
{
  v4 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v4 messageEditingBalloonViewWritingToolsDidEnd:self];
}

- (void)messageEntryTextView:(id)a3 didUpdateForRange:(_NSRange)a4 conversionHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  if (length)
  {
    v13 = v9;
    v10 = [a3 textStorage];
    [v10 beginEditing];
    v11 = [v10 ck_attributedStringByConverting:v13 range:{location, length}];
    [v10 endEditing];
    v12 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [v12 messageEditingBalloonViewContentDidChange:self];

    v9 = v13;
  }
}

- (void)messageEntryTextView:(id)a3 didSetAnimationName:(id)a4 forRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    v9 = a4;
    v12 = [a3 textStorage];
    [v12 beginEditing];
    [v12 ck_toggleTextEffectNamed:v9 range:location getAdded:{length, 0}];

    [v12 endEditing];
    v10 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [v10 messageEditingBalloonViewContentDidChange:self];

    v11 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
    [v11 messageEditingBalloonView:self didChangeTextAnimationInRange:{location, length}];
  }
}

- (void)messageEntryTextView:(id)a3 applyStyleChangeOfType:(unint64_t)a4 add:(BOOL)a5 forRange:(_NSRange)a6
{
  if (a6.length)
  {
    location = a6.location;
    if (a6.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = a6.length;
      v8 = a5;
      v12 = [a3 textStorage];
      [v12 beginEditing];
      if (v8)
      {
        [v12 ck_addTextStyle:a4 options:3 range:{location, length}];
      }

      else
      {
        [v12 ck_removeTextStyle:a4 options:3 range:{location, length}];
      }

      [v12 endEditing];
      v11 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
      [v11 messageEditingBalloonViewContentDidChange:self];
    }
  }
}

- (void)messageEntryTextView:(id)a3 replaceRange:(_NSRange)a4 withAttributedText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v15 = [a5 mutableCopy];
  [v15 ck_replaceTextAnimationsWithIMTextEffects];
  [v15 ck_replaceBIUSWithIMTextStyles];
  v10 = *MEMORY[0x1E69DB648];
  [v15 removeAttribute:*MEMORY[0x1E69DB648] range:{0, objc_msgSend(v15, "length")}];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 balloonTextFont];
  [v15 addAttribute:v10 value:v12 range:{0, objc_msgSend(v15, "length")}];

  [v15 ck_addDisplayableAttributeForIMTextEffectAttribute];
  [v15 ck_addDisplayableAttributesForIMTextStyleAttributes];
  v13 = [v9 textStorage];

  [v13 beginEditing];
  [v13 replaceCharactersInRange:location withAttributedString:{length, v15}];
  [v13 endEditing];
  v14 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v14 messageEditingBalloonViewContentDidChange:self];
}

- (void)messageEntryTextViewDidChangePencilMode:(id)a3
{
  v4 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v4 messageEditingBalloonViewDidChangePencilMode:self];
}

- (id)textEffectsEditMenuForTextInRange:(_NSRange)a3
{
  length = a3.length;
  v4 = a3.location;
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isExpressiveTextEnabled];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = [(CKTextBalloonView *)self textView];
    v9 = [v8 ck_activeTextStylesInRange:{v4, length}];

    v10 = [(CKTextBalloonView *)self textView];
    v11 = [v10 ck_activeTextEffectTypeInRange:{v4, length}];

    v12 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
    v13 = [v12 selectedText];

    if (v13)
    {
      v14 = v13;
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

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v6 = [v5 selectedRange];
  v8 = v7;

  v9 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v10 = [v9 text];

  if (v6 + v8 <= [v10 length])
  {
    [(CKMessageEditingBalloonView *)self applyTextStyle:a3 toTextRange:v6, v8];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = IMTextStyleAttributeNameFromStyle();
      v21.location = v6;
      v21.length = v8;
      v13 = NSStringFromRange(v21);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = [v10 length];
      _os_log_error_impl(&dword_19020E000, v11, OS_LOG_TYPE_ERROR, "Invalid range when toggling text style {%@} for range {%@} with textLength {%lu}.", &v14, 0x20u);
    }
  }
}

- (void)applyTextStyle:(unint64_t)a3 toTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 balloonTextFont];

  [v11 ck_applyWithTextStyle:a3 toRange:location baseFont:{length, v9}];
  v10 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v10 messageEditingBalloonViewContentDidChange:self];
}

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v6 = [v5 selectedRange];
  v8 = v7;

  v9 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  v10 = [v9 text];

  if (v6 + v8 <= [v10 length])
  {
    [(CKMessageEditingBalloonView *)self applyTextEffect:a3 toTextRange:v6, v8];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = IMTextEffectNameFromType();
      v21.location = v6;
      v21.length = v8;
      v13 = NSStringFromRange(v21);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2048;
      v19 = [v10 length];
      _os_log_error_impl(&dword_19020E000, v11, OS_LOG_TYPE_ERROR, "Invalid range when toggling text style {%@} for range {%@} with textLength {%lu}.", &v14, 0x20u);
    }
  }
}

- (void)applyTextEffect:(int64_t)a3 toTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTextView];
  [v9 ck_toggleTextEffect:a3 inRange:location getAdded:length undo:{0, &__block_literal_global_72}];
  v8 = [(CKMessageEditingBalloonView *)self editingBalloonViewDelegate];
  [v8 messageEditingBalloonViewContentDidChange:self];
}

- (void)compositionTranslator:(id)a3 didUpdateTranslation:(id)a4 sourceLanguage:(id)a5 destinationLanguage:(id)a6 version:(int64_t)a7
{
  v25 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CKMessageEditingBalloonView *)self translationVersion]== a7)
  {
    v13 = [v11 localeIdentifier];
    [(CKMessageEditingBalloonView *)self setSourceLanguageID:v13];

    v14 = [v12 localeIdentifier];
    [(CKMessageEditingBalloonView *)self setDestinationLanguageID:v14];

    v15 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [v15 setAttributedText:v25];

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 secondaryLabelColor];
    v19 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [v19 setTextColor:v18];

    v20 = +[CKUIBehavior sharedBehaviors];
    v21 = [v20 balloonTranslationSecondaryTextFont];
    v22 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [v22 setFont:v21];

    v23 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];

    if (v23)
    {
      v24 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];
      v24[2]();

      [(CKMessageEditingBalloonView *)self setPendingTranslationBlock:0];
    }
  }
}

- (void)compositionTranslator:(id)a3 didFailTranslationForVersion:(int64_t)a4
{
  if ([(CKMessageEditingBalloonView *)self translationVersion]== a4)
  {
    v5 = [(CKMessageEditingBalloonView *)self messageEditingBalloonTranslationView];
    [v5 setAttributedText:0];

    v6 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];

    if (v6)
    {
      v7 = [(CKMessageEditingBalloonView *)self pendingTranslationBlock];
      v7[2]();

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
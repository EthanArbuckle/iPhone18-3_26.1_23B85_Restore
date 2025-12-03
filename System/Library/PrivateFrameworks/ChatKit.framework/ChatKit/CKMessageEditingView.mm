@interface CKMessageEditingView
- (BOOL)becomeFirstResponder;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKComposition)currentComposition;
- (CKMessageEditingView)initWithMessageEditingViewDelegate:(id)delegate translationLanguage:(id)language toTranslationLanguage:(id)translationLanguage;
- (CKMessageEditingViewDelegate)messageEditingViewDelegate;
- (char)balloonColorType;
- (id)adaptiveImageGlyphForTransferGUID:(id)d;
- (id)keyCommands;
- (id)styledAttributedStringFromString:(id)string;
- (void)_applyExpressiveTextFormattingToAttributedText:(id)text forCompositionText:(id)compositionText;
- (void)_confirmButtonSelected:(id)selected;
- (void)_insertAdaptiveImageGlyphs:(id)glyphs;
- (void)_rejectButtonSelected:(id)selected;
- (void)_updateTextFieldWithOriginalComposition;
- (void)applyGrammarCheckingIndication;
- (void)layoutSubviews;
- (void)messageEditingBalloonView:(id)view didChangeTextAnimationInRange:(_NSRange)range;
- (void)messageEditingBalloonViewContentDidChange:(id)change;
- (void)messageEditingBalloonViewWritingToolsDidEnd:(id)end;
- (void)messageEditingBalloonViewWritingToolsWillBegin:(id)begin;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style;
- (void)setMessageEditingBalloonTintColor:(id)color;
- (void)setMessageEditingViewState:(int64_t)state;
- (void)setOriginalComposition:(id)composition;
- (void)traitCollectionDidChange:(id)change;
- (void)underlineWithProofreadingInfo:(id)info;
@end

@implementation CKMessageEditingView

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type
{
  messageEditingBalloonView = [(CKMessageEditingView *)self messageEditingBalloonView];
  [messageEditingBalloonView modifySelectedTextByTogglingTextEffectType:type];
}

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style
{
  messageEditingBalloonView = [(CKMessageEditingView *)self messageEditingBalloonView];
  [messageEditingBalloonView modifySelectedTextByTogglingTextStyle:style];
}

- (CKMessageEditingView)initWithMessageEditingViewDelegate:(id)delegate translationLanguage:(id)language toTranslationLanguage:(id)translationLanguage
{
  delegateCopy = delegate;
  languageCopy = language;
  translationLanguageCopy = translationLanguage;
  v42.receiver = self;
  v42.super_class = CKMessageEditingView;
  v11 = [(CKMessageEditingView *)&v42 init];
  v12 = v11;
  if (v11)
  {
    v11->_messageEditingViewState = 0;
    [(CKMessageEditingView *)v11 setMessageEditingViewDelegate:delegateCopy];
    objc_storeStrong(&v12->_translationLanguage, language);
    objc_storeStrong(&v12->_translationToLanguage, translationLanguage);
    v13 = +[CKUIBehavior sharedBehaviors];
    messageEditingRejectButtonBaseConfiguration = [v13 messageEditingRejectButtonBaseConfiguration];

    v15 = +[CKUIBehavior sharedBehaviors];
    messageEditingRejectButtonImage = [v15 messageEditingRejectButtonImage];
    [messageEditingRejectButtonBaseConfiguration setImage:messageEditingRejectButtonImage];

    objc_initWeak(&location, v12);
    v17 = MEMORY[0x1E69DC628];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke;
    v39[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v40, &location);
    [v17 actionWithHandler:v39];
    v35 = v18 = messageEditingRejectButtonBaseConfiguration;
    v19 = [CKCustomButton buttonWithConfiguration:messageEditingRejectButtonBaseConfiguration primaryAction:v35];
    objc_storeStrong(&v12->_rejectButton, v19);
    [(CKMessageEditingView *)v12 addSubview:v12->_rejectButton];
    v36 = translationLanguageCopy;
    v34 = delegateCopy;
    messageEditingViewDelegate = [(CKMessageEditingView *)v12 messageEditingViewDelegate];
    messageEditingColorType = [messageEditingViewDelegate messageEditingColorType];

    v22 = +[CKUIBehavior sharedBehaviors];
    messageEditingConfirmButtonBaseConfiguration = [v22 messageEditingConfirmButtonBaseConfiguration];

    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 updateMessageEditingConfirmButtonConfiguration:messageEditingConfirmButtonBaseConfiguration forButtonColor:messageEditingColorType isEnabled:1];

    v25 = MEMORY[0x1E69DC628];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke_2;
    v37[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v38, &location);
    v26 = [v25 actionWithHandler:v37];
    v27 = [CKCustomButton buttonWithConfiguration:messageEditingConfirmButtonBaseConfiguration primaryAction:v26];
    objc_storeStrong(&v12->_confirmButton, v27);
    [(CKMessageEditingView *)v12 addSubview:v12->_confirmButton];
    v28 = objc_opt_class();
    v29 = CKBalloonViewForClass(v28);
    [v29 setEditingBalloonViewDelegate:v12];
    [v29 setHasTail:1];
    [v29 setOrientation:1];
    [v29 setBalloonShape:0];
    [v29 setCanUseOpaqueMask:0];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

    v32 = isAutomaticOutgoingTranslationEnabled ^ 1;
    if (!languageCopy)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      [v29 setTranslationLanguage:languageCopy];
      [v29 setShouldShowTranslationSecondaryText:1];
      [v29 setTranslationToLanguage:v36];
    }

    objc_storeStrong(&v12->_messageEditingBalloonView, v29);
    [(CKMessageEditingView *)v12 addSubview:v12->_messageEditingBalloonView];
    [(CKMessageEditingView *)v12 updateKeyboardActionButtonIfNeeded];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    delegateCopy = v34;
    translationLanguageCopy = v36;
  }

  return v12;
}

void __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _rejectButtonSelected:v4];
}

void __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _confirmButtonSelected:v4];
}

- (void)setMessageEditingBalloonTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_messageEditingBalloonTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_messageEditingBalloonTintColor, color);
    messageEditingBalloonView = [(CKMessageEditingView *)self messageEditingBalloonView];
    [messageEditingBalloonView ck_applyGlassBackgroundWithTintColor:colorCopy];
  }
}

- (void)setOriginalComposition:(id)composition
{
  objc_storeStrong(&self->_originalComposition, composition);

  [(CKMessageEditingView *)self _updateTextFieldWithOriginalComposition];
}

- (void)_updateTextFieldWithOriginalComposition
{
  text = [(CKComposition *)self->_originalComposition text];
  translation = [(CKComposition *)self->_originalComposition translation];
  v4 = [(CKMessageEditingView *)self styledAttributedStringFromString:text];
  v5 = [(CKMessageEditingView *)self styledAttributedStringFromString:translation];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v4];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v5];
  [(CKTextBalloonView *)self->_messageEditingBalloonView prepareForDisplay];
  [(CKMessageEditingView *)self setNeedsLayout];
}

- (id)styledAttributedStringFromString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy mutableCopy];
  v6 = +[CKUIBehavior sharedBehaviors];
  balloonParagraphStyle = [v6 balloonParagraphStyle];

  if (!balloonParagraphStyle)
  {
    balloonParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  }

  [v5 addAttribute:*MEMORY[0x1E69DB688] value:balloonParagraphStyle range:{0, objc_msgSend(v5, "length")}];
  v8 = [v5 length];
  v9 = +[CKUIBehavior sharedBehaviors];
  balloonTextFont = [v9 balloonTextFont];

  color = [(CKBalloonView *)self->_messageEditingBalloonView color];
  __ck_bigEmojiStyle = [v5 __ck_bigEmojiStyle];
  if ((__ck_bigEmojiStyle - 1) >= 3)
  {
    v16 = 0;
    if (__ck_bigEmojiStyle)
    {
      goto LABEL_8;
    }

    v13 = +[CKUIBehavior sharedBehaviors];
    theme = [v13 theme];
    transcriptBigEmojiColor = [theme balloonTextColorForColorType:color];
  }

  else
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    theme = [v13 theme];
    transcriptBigEmojiColor = [theme transcriptBigEmojiColor];
  }

  v16 = transcriptBigEmojiColor;

LABEL_8:
  [v5 addAttribute:*MEMORY[0x1E69DB650] value:v16 range:{0, v8}];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:balloonTextFont range:{0, v8}];
  [(CKMessageEditingView *)self _insertAdaptiveImageGlyphs:v5];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    [(CKMessageEditingView *)self _applyExpressiveTextFormattingToAttributedText:v5 forCompositionText:stringCopy];
  }

  v19 = [v5 copy];

  return v19;
}

- (void)_applyExpressiveTextFormattingToAttributedText:(id)text forCompositionText:(id)compositionText
{
  textCopy = text;
  compositionTextCopy = compositionText;
  v7 = [compositionTextCopy length];
  v8 = *MEMORY[0x1E69A7CF8];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke;
  v35[3] = &unk_1E72EF890;
  v9 = textCopy;
  v36 = v9;
  [compositionTextCopy enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v35}];
  v10 = *MEMORY[0x1E69A7D08];
  v11 = [compositionTextCopy length];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_2;
  v33[3] = &unk_1E72EF890;
  v12 = v9;
  v34 = v12;
  [compositionTextCopy enumerateAttribute:v10 inRange:0 options:v11 usingBlock:{0, v33}];
  v13 = *MEMORY[0x1E69A7D18];
  v14 = [compositionTextCopy length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_3;
  v31[3] = &unk_1E72EF890;
  v15 = v12;
  v32 = v15;
  [compositionTextCopy enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v31}];
  v16 = *MEMORY[0x1E69A7CF0];
  v17 = [compositionTextCopy length];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_4;
  v29[3] = &unk_1E72EF890;
  v18 = v15;
  v30 = v18;
  [compositionTextCopy enumerateAttribute:v16 inRange:0 options:v17 usingBlock:{0, v29}];
  v19 = *MEMORY[0x1E69A7D00];
  v20 = [compositionTextCopy length];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_5;
  v27[3] = &unk_1E72EF890;
  v21 = v18;
  v28 = v21;
  [compositionTextCopy enumerateAttribute:v19 inRange:0 options:v20 usingBlock:{0, v27}];
  v22 = *MEMORY[0x1E69A70F8];
  v23 = [compositionTextCopy length];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_6;
  v25[3] = &unk_1E72EF890;
  v26 = v21;
  v24 = v21;
  [compositionTextCopy enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v25}];
}

void __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) ck_addTextStyle:1 options:3 range:{a3, a4}];
  }

  return result;
}

- (void)_insertAdaptiveImageGlyphs:(id)glyphs
{
  v4 = MEMORY[0x1E69A5B80];
  glyphsCopy = glyphs;
  sharedInstance = [v4 sharedInstance];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CKMessageEditingView__insertAdaptiveImageGlyphs___block_invoke;
  aBlock[3] = &unk_1E72EBF70;
  v12 = sharedInstance;
  v7 = sharedInstance;
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CKMessageEditingView__insertAdaptiveImageGlyphs___block_invoke_2;
  v10[3] = &unk_1E72F1108;
  v10[4] = self;
  v9 = _Block_copy(v10);
  [glyphsCopy __im_insertAdaptiveImageGlyphsForFileTransfersUsingFileTransferProvider:v8 adaptiveImageGlyphProvider:v9 isCommSafetySensitiveProvider:&__block_literal_global_88];
}

id __51__CKMessageEditingView__insertAdaptiveImageGlyphs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 guid];
  v4 = [*(a1 + 32) adaptiveImageGlyphForTransferGUID:v3];
  if (!v4)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Do not have NSAdaptiveImageGlyph for transfer. Will display as blank space.", v7, 2u);
    }
  }

  return v4;
}

- (id)adaptiveImageGlyphForTransferGUID:(id)d
{
  dCopy = d;
  v4 = +[CKMediaObjectManager sharedInstance];
  v5 = [v4 mediaObjectWithTransferGUID:dCopy imMessage:0 chatContext:0];
  v6 = v5;
  if (v5)
  {
    adaptiveImageGlyph = [v5 adaptiveImageGlyph];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKMessageEditingView *)dCopy adaptiveImageGlyphForTransferGUID:v8];
    }

    adaptiveImageGlyph = 0;
  }

  return adaptiveImageGlyph;
}

- (CKComposition)currentComposition
{
  currentCompositionText = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionText];
  currentCompositionTranslation = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionTranslation];
  v5 = [[CKComposition alloc] initWithText:currentCompositionText subject:0 translation:currentCompositionTranslation shelfPluginPayload:0 bizIntent:0 shelfMediaObject:0 proofreadingInfo:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticOutgoingTranslationEnabled];

  if (isAutomaticOutgoingTranslationEnabled)
  {
    sourceLanguageID = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView sourceLanguageID];
    [(CKComposition *)v5 setSourceLanguageID:sourceLanguageID];

    destinationLanguageID = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView destinationLanguageID];
    [(CKComposition *)v5 setDestinationLanguageID:destinationLanguageID];
  }

  return v5;
}

- (void)_rejectButtonSelected:(id)selected
{
  selectedCopy = selected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Reject button selected", v7, 2u);
    }
  }

  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewRejectButtonSelected:self];
}

- (void)_confirmButtonSelected:(id)selected
{
  selectedCopy = selected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Confirm button selected", v7, 2u);
    }
  }

  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewConfirmButtonSelected:self];
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = CKMessageEditingView;
  [(CKMessageEditingView *)&v15 traitCollectionDidChange:change];
  traitCollection = [(CKMessageEditingView *)self traitCollection];
  -[CKBalloonView setUserInterfaceStyle:](self->_messageEditingBalloonView, "setUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  currentComposition = [(CKMessageEditingView *)self currentComposition];
  text = [currentComposition text];

  currentComposition2 = [(CKMessageEditingView *)self currentComposition];
  translation = [currentComposition2 translation];

  v9 = [(CKMessageEditingView *)self styledAttributedStringFromString:text];
  v10 = [(CKMessageEditingView *)self styledAttributedStringFromString:translation];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v9];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v10];
  balloonColorType = [(CKMessageEditingView *)self balloonColorType];
  [(CKColoredBalloonView *)self->_messageEditingBalloonView setColor:balloonColorType];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  v14 = [theme unfilledBalloonColorForColorType:balloonColorType];
  [v14 ck_imColorComponents];
  [(CKBalloonView *)self->_messageEditingBalloonView setStrokeColor:?];

  [(CKBalloonView *)self->_messageEditingBalloonView setNeedsPrepareForDisplay];
  [(CKBalloonView *)self->_messageEditingBalloonView prepareForDisplayIfNeeded];
}

- (char)balloonColorType
{
  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  messageEditingColorType = [messageEditingViewDelegate messageEditingColorType];

  currentComposition = [(CKMessageEditingView *)self currentComposition];
  text = [currentComposition text];

  v7 = [text __ck_bigEmojiStyle] - 1;
  messageEditingViewState = [(CKMessageEditingView *)self messageEditingViewState];
  if (v7 >= 3)
  {
    v9 = messageEditingColorType;
  }

  else
  {
    v9 = 13;
  }

  if (messageEditingViewState == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = messageEditingColorType;
  }

  if (messageEditingViewState != 3)
  {
    v9 = v10;
  }

  if (v7 >= 3)
  {
    v11 = messageEditingColorType;
  }

  else
  {
    v11 = 13;
  }

  if (messageEditingViewState == 2)
  {
    v12 = 13;
  }

  else
  {
    v12 = messageEditingColorType;
  }

  if (messageEditingViewState != 1)
  {
    v11 = v12;
  }

  if (messageEditingViewState <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

- (void)setMessageEditingViewState:(int64_t)state
{
  if (self->_messageEditingViewState != state)
  {
    self->_messageEditingViewState = state;
    messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
    messageEditingViewBalloonHasTail = [messageEditingViewDelegate messageEditingViewBalloonHasTail];

    currentComposition = [(CKMessageEditingView *)self currentComposition];
    text = [currentComposition text];

    currentComposition2 = [(CKMessageEditingView *)self currentComposition];
    translation = [currentComposition2 translation];

    v11 = 0.0;
    if (state == 4)
    {
      v13 = 1;
      [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView setBeingTornDown:1];
      v14 = 0;
    }

    else if (state == 3)
    {
      v13 = 1;
      [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView setBeingTornDown:1];
      v14 = 0;
      messageEditingViewBalloonHasTail = 1;
    }

    else
    {
      v12 = state == 2;
      v13 = state != 2;
      if (v12)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        v11 = 1.0;
      }
    }

    [(UIButton *)self->_rejectButton setAlpha:v11];
    [(UIButton *)self->_confirmButton setAlpha:v11];
    balloonColorType = [(CKMessageEditingView *)self balloonColorType];
    [(CKColoredBalloonView *)self->_messageEditingBalloonView setColor:balloonColorType];
    v16 = +[CKUIBehavior sharedBehaviors];
    theme = [v16 theme];
    v18 = [theme unfilledBalloonColorForColorType:balloonColorType];
    [v18 ck_imColorComponents];
    [(CKBalloonView *)self->_messageEditingBalloonView setStrokeColor:?];

    [(CKBalloonView *)self->_messageEditingBalloonView setBalloonStyle:v14];
    [(CKColoredBalloonView *)self->_messageEditingBalloonView setHasTail:messageEditingViewBalloonHasTail];
    v19 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v19 theme];
    v21 = [theme2 balloonTextColorForColorType:{-[CKBalloonView color](self->_messageEditingBalloonView, "color")}];
    textView = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
    [textView setTextColor:v21];

    textView2 = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
    [textView2 setShouldAdjustInsetsForMinimumSize:v13];

    v24 = [(CKMessageEditingView *)self styledAttributedStringFromString:text];
    v25 = [(CKMessageEditingView *)self styledAttributedStringFromString:translation];
    [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v24];
    [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v25];
    [(CKBalloonView *)self->_messageEditingBalloonView setNeedsPrepareForDisplay];
    [(CKBalloonView *)self->_messageEditingBalloonView prepareForDisplayIfNeeded];
  }
}

- (BOOL)becomeFirstResponder
{
  textView = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
  becomeFirstResponder = [textView becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)layoutSubviews
{
  v172.receiver = self;
  v172.super_class = CKMessageEditingView;
  [(CKMessageEditingView *)&v172 layoutSubviews];
  [(CKMessageEditingView *)self bounds];
  v151 = v3;
  v147 = v4;
  v6 = v5;
  rect = v7;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernSplitViewControllerEnabled = [mEMORY[0x1E69A8070] isModernSplitViewControllerEnabled];

  if (isModernSplitViewControllerEnabled)
  {
    [(CKMessageEditingView *)self safeAreaInsets];
    v11 = v10;
    [(CKMessageEditingView *)self safeAreaInsets];
    v6 = v6 - (v11 + v12);
    v132 = v11;
    v151 = v11;
  }

  else
  {
    v132 = 0.0;
  }

  [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView frame];
  v144 = v14;
  v145 = v13;
  v16 = v15;
  v143 = v17;
  _shouldReverseLayoutDirection = [(CKMessageEditingView *)self _shouldReverseLayoutDirection];
  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewDismissAnimationBalloonMaxWidth];
  v21 = v20;

  v22 = +[CKUIBehavior sharedBehaviors];
  [v22 balloonMaskTailWidth];
  v24 = v23;

  [(UIButton *)self->_rejectButton sizeThatFits:v6, rect];
  v26 = v25;
  v28 = v27;
  [(UIButton *)self->_confirmButton sizeThatFits:v6, rect];
  v30 = v29;
  v32 = v31;
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  v133 = v16;
  if (isEntryViewRefreshEnabled)
  {
    if (v26 >= v28)
    {
      v35 = v26;
    }

    else
    {
      v35 = v28;
    }

    if (v30 >= v32)
    {
      v36 = v30;
    }

    else
    {
      v36 = v32;
    }

    if (v35 >= v36)
    {
      v32 = v36;
    }

    else
    {
      v32 = v35;
    }

    v30 = v32;
    v28 = v32;
    v26 = v32;
  }

  v146 = v21;
  v131 = v24;
  v37 = v21 - v24;
  if (_shouldReverseLayoutDirection)
  {
    v38 = v32;
  }

  else
  {
    v38 = v28;
  }

  v135 = v38;
  if (_shouldReverseLayoutDirection)
  {
    v39 = v30;
  }

  else
  {
    v39 = v26;
  }

  if (_shouldReverseLayoutDirection)
  {
    v40 = v28;
  }

  else
  {
    v40 = v32;
  }

  v138 = v40;
  v139 = v26;
  if (!_shouldReverseLayoutDirection)
  {
    v26 = v30;
  }

  traitCollection = [(CKMessageEditingView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v141 = v30;
  v142 = v32;
  v140 = v28;
  amount = v26;
  if (horizontalSizeClass == 1 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v43 = objc_claimAutoreleasedReturnValue(), [v43 messageEditingNonCompactLeftEdgeToButtonMinimumPadding], v45 = v39 + v44, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "messageEditingNonCompactBalloonToLeftButtonPadding"), v48 = v146 + v45 + v47, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "messageEditingNonCompactBalloonPillEdgeToRightButtonPadding"), v51 = v26 + v48 + v50, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "messageEditingNonCompactRightEdgeToButtonPadding"), v54 = v51 - v53, v52, v49, v46, v43, v6 < v54))
  {
    v55 = (v6 - v37 - v39 - v26) * 0.25;
    v56 = v55;
    v137 = v55;
    v134 = v55;
  }

  else
  {
    v57 = +[CKUIBehavior sharedBehaviors];
    [v57 messageEditingNonCompactBalloonToLeftButtonPadding];
    v59 = v58;

    v60 = +[CKUIBehavior sharedBehaviors];
    [v60 messageEditingNonCompactBalloonPillEdgeToRightButtonPadding];
    v62 = v61;

    v63 = +[CKUIBehavior sharedBehaviors];
    [v63 messageEditingNonCompactRightEdgeToButtonPadding];
    v64 = v26;
    v55 = v65;

    v134 = v59;
    v137 = v62;
    v56 = v6 - v39 - v59 - v37 - v62 - v64 - v55;
  }

  v173.origin.x = v151;
  v173.origin.y = v147;
  remainder.origin.x = v151;
  remainder.origin.y = v147;
  v173.size.height = rect;
  remainder.size.width = v6;
  remainder.size.height = rect;
  v66 = MEMORY[0x1E695F058];
  v155 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  origin = slice.origin;
  slice.size = v155;
  v173.size.width = v6;
  CGRectDivide(v173, &slice, &remainder, v56, CGRectMinXEdge);
  v169.origin = origin;
  v169.size = v155;
  CGRectDivide(remainder, &v169, &remainder, v39, CGRectMinXEdge);
  x = v169.origin.x;
  y = v169.origin.y;
  width = v169.size.width;
  height = v169.size.height;
  if (CKMainScreenScale_once_35 != -1)
  {
    [CKMessageEditingView layoutSubviews];
  }

  if (*&CKMainScreenScale_sMainScreenScale_35 == 0.0)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = *&CKMainScreenScale_sMainScreenScale_35;
  }

  v72 = floor((x + (width - v39) * 0.5) * v71);
  v73 = floor((y + (height - v135) * 0.5) * v71);
  CGRectDivide(remainder, &slice, &remainder, v134, CGRectMinXEdge);
  CGRectDivide(remainder, &slice, &remainder, v55, CGRectMaxXEdge);
  v168.origin = origin;
  v168.size = v155;
  CGRectDivide(remainder, &v168, &remainder, amount, CGRectMaxXEdge);
  v75 = v168.origin.x;
  v74 = v168.origin.y;
  v76 = v168.size.width;
  v77 = v168.size.height;
  if (CKMainScreenScale_once_35 != -1)
  {
    [CKMessageEditingView layoutSubviews];
  }

  v136 = v72 / v71;
  v78 = v73 / v71;
  if (*&CKMainScreenScale_sMainScreenScale_35 == 0.0)
  {
    v79 = 1.0;
  }

  else
  {
    v79 = *&CKMainScreenScale_sMainScreenScale_35;
  }

  amounta = floor((v75 + (v76 - amount) * 0.5) * v79) / v79;
  v80 = floor((v74 + (v77 - v138) * 0.5) * v79) / v79;
  CGRectDivide(remainder, &slice, &remainder, v137, CGRectMaxXEdge);
  v81 = v66[1].x;
  v82 = v66[1].y;
  messageEditingViewState = self->_messageEditingViewState;
  if (messageEditingViewState > 4)
  {
    v156 = v66[1].y;
    recta = v66[1].x;
    v152 = origin;
    v101 = v145;
    v102 = v133;
    v103 = v136;
  }

  else if (messageEditingViewState == 2)
  {
    v153 = remainder.size.height;
    v148 = vaddq_f64(remainder.origin, 0);
    v119 = *(MEMORY[0x1E69DDCE0] + 16);
    v167.origin = *MEMORY[0x1E69DDCE0];
    v167.size = v119;
    v166.origin = v167.origin;
    v166.size = v119;
    v165[0] = 0uLL;
    LOBYTE(v162) = 0;
    recta = remainder.size.width - (0.0 - v131);
    [(CKTextBalloonView *)self->_messageEditingBalloonView sizeThatFits:v165 translationSecondaryTextSize:&v166 tailInsets:&v167 textAlignmentInsets:&v162 isSingleLine:?];
    v121 = v120;
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled2)
    {
      v121 = v121 - v166.size.width;
    }

    [(CKTextBalloonView *)self->_messageEditingBalloonView setTranslationSecondaryTextSize:v165[0]];
    v124 = v153;
    if (v121 >= v153)
    {
      v125 = v153;
    }

    else
    {
      v125 = v121;
    }

    v102 = v133;
    v103 = v136;
    v156 = v125;
    if (CKMainScreenScale_once_35 != -1)
    {
      [CKMessageEditingView layoutSubviews];
      v124 = v153;
      v125 = v156;
    }

    v101 = v145;
    v126 = CKMainScreenScale_sMainScreenScale_35;
    if (*&CKMainScreenScale_sMainScreenScale_35 == 0.0)
    {
      *&v126 = 1.0;
    }

    v127.f64[0] = recta;
    v127.f64[1] = v124;
    v128.f64[0] = recta;
    v128.f64[1] = v125;
    v129 = vsubq_f64(v127, v128);
    __asm { FMOV            V2.2D, #0.5 }

    v152 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v148, vmulq_f64(v129, _Q2)), *&v126)), vdupq_lane_s64(v126, 0));
  }

  else
  {
    v167.origin.x = v151;
    v167.origin.y = v147;
    v167.size.width = v6;
    v167.size.height = rect;
    v166.origin = *v66;
    v166.size = v155;
    messageEditingViewDelegate2 = [(CKMessageEditingView *)self messageEditingViewDelegate];
    [messageEditingViewDelegate2 messageEditingViewDismissAnimationContentInsets];
    v86 = v85;
    v88 = v87;

    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernSplitViewControllerEnabled2 = [mEMORY[0x1E69A8070]4 isModernSplitViewControllerEnabled];

    if (isModernSplitViewControllerEnabled2)
    {
      v91 = v86 - v132;
    }

    else
    {
      v91 = v86;
    }

    v174.origin.x = v151;
    v174.origin.y = v147;
    v174.size.width = v6;
    v174.size.height = rect;
    CGRectDivide(v174, &v166, &v167, v91, CGRectMinXEdge);
    CGRectDivide(v167, &v166, &v167, v88, CGRectMaxXEdge);
    if (v146 >= v167.size.width)
    {
      v81 = v167.size.width;
    }

    else
    {
      v81 = v146;
    }

    v92 = *(MEMORY[0x1E69DDCE0] + 16);
    v165[0] = *MEMORY[0x1E69DDCE0];
    v165[1] = v92;
    v164 = 0;
    v162 = v165[0];
    v163 = v92;
    [(CKTextBalloonView *)self->_messageEditingBalloonView sizeThatFits:0 translationSecondaryTextSize:&v162 tailInsets:v165 textAlignmentInsets:&v164 isSingleLine:v81, 1.79769313e308];
    recta = v93;
    v95 = v94;
    mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]5 isEntryViewRefreshEnabled];

    v98 = v95 - *&v163;
    if (!isEntryViewRefreshEnabled3)
    {
      v98 = v95;
    }

    v156 = v98;
    memset(&v161, 0, sizeof(v161));
    CGRectDivide(v167, &v161, &v167, recta, CGRectMaxXEdge);
    v99 = v161.origin;
    size = v161.size;
    if (CKMainScreenScale_once_35 != -1)
    {
      v158 = v161.origin;
      v154 = v161.size;
      [CKMessageEditingView layoutSubviews];
      size = v154;
      v99 = v158;
    }

    v101 = v145;
    v102 = v133;
    v103 = v136;
    v104 = CKMainScreenScale_sMainScreenScale_35;
    v105.f64[0] = recta;
    v105.f64[1] = v156;
    if (*&CKMainScreenScale_sMainScreenScale_35 == 0.0)
    {
      *&v104 = 1.0;
    }

    v106 = vsubq_f64(size, v105);
    __asm { FMOV            V2.2D, #0.5 }

    v152 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v99, vmulq_f64(v106, _Q2)), *&v104)), vdupq_lane_s64(v104, 0));
    messageEditingBalloonTextView = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView messageEditingBalloonTextView];
    ck_isTextLayoutExclusivelyUsingRTLWritingDirection = [messageEditingBalloonTextView ck_isTextLayoutExclusivelyUsingRTLWritingDirection];
    v114 = -vabdd_f64(v81, recta);
    if (!ck_isTextLayoutExclusivelyUsingRTLWritingDirection)
    {
      v114 = 0.0;
    }

    origin.x = v114;

    origin = *&origin.x;
    v82 = v156;
  }

  if (_shouldReverseLayoutDirection)
  {
    v115 = v80;
  }

  else
  {
    v115 = v78;
  }

  if (_shouldReverseLayoutDirection)
  {
    v116 = amounta;
  }

  else
  {
    v116 = v103;
  }

  if (_shouldReverseLayoutDirection)
  {
    v117 = v78;
  }

  else
  {
    v117 = v80;
  }

  if (!_shouldReverseLayoutDirection)
  {
    v103 = amounta;
  }

  [(UIButton *)self->_rejectButton setFrame:v116, v115, v139, v140];
  [(UIButton *)self->_confirmButton setFrame:v103, v117, v141, v142];
  [(CKColoredBalloonView *)self->_messageEditingBalloonView setFrame:?];
  [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView setCustomTextViewLayoutBounds:origin, v81, v82];
  self->_firstLayoutPassCompleted = 1;
  v175.origin.x = v152.f64[0];
  v175.size.height = v156;
  v175.origin.y = v152.f64[1];
  v175.size.width = recta;
  v176.origin.x = v101;
  v176.origin.y = v102;
  v176.size.height = v143;
  v176.size.width = v144;
  if (!CGRectEqualToRect(v175, v176))
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageEditingViewDelegate);
    [WeakRetained messageEditingViewDidUpdateBalloonViewFrame:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 messageEditingNonCompactLeftEdgeToButtonMinimumPadding];
  v43 = v7;

  [(UIButton *)self->_rejectButton sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(UIButton *)self->_confirmButton sizeThatFits:width, height];
  v13 = v12;
  v15 = v14;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (v9 >= v11)
  {
    v18 = v9;
  }

  else
  {
    v18 = v11;
  }

  if (v13 >= v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= v19)
  {
    v18 = v19;
  }

  if (isEntryViewRefreshEnabled)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  if (isEntryViewRefreshEnabled)
  {
    v21 = v18;
  }

  else
  {
    v21 = v13;
  }

  if (isEntryViewRefreshEnabled)
  {
    v11 = v18;
    v22 = v18;
  }

  else
  {
    v22 = v9;
  }

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 messageEditingNonCompactBalloonToLeftButtonPadding];
  v25 = v24;

  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewDismissAnimationBalloonMaxWidth];
  v28 = v27;

  v29 = +[CKUIBehavior sharedBehaviors];
  [v29 messageEditingNonCompactBalloonPillEdgeToRightButtonPadding];
  v31 = v30;
  v32 = +[CKUIBehavior sharedBehaviors];
  [v32 balloonMaskTailWidth];
  v34 = v31 - v33;

  v35 = +[CKUIBehavior sharedBehaviors];
  [v35 messageEditingNonCompactRightEdgeToButtonPadding];
  v37 = v36;

  v38 = v21 + v43 + v22 + v25 + v28 + v34 + v37;
  [(CKBalloonView *)self->_messageEditingBalloonView sizeThatFits:v28, 1.79769313e308];
  if (v39 >= v11)
  {
    v40 = v39;
  }

  else
  {
    v40 = v11;
  }

  if (v40 >= v20)
  {
    v41 = v40;
  }

  else
  {
    v41 = v20;
  }

  v42 = v38;
  result.height = v41;
  result.width = v42;
  return result;
}

- (id)keyCommands
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E69DCBA0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 3];
  v5 = [v3 keyCommandWithInput:v4 modifierFlags:0 action:sel__confirmButtonSelected_];

  [v5 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v5];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__confirmButtonSelected_];
  [v6 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v6];
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x10000 action:sel__confirmButtonSelected_];
  [v7 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v7];
  v8 = [array copy];

  return v8;
}

- (void)applyGrammarCheckingIndication
{
  textView = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
  [textView applyGrammarCheckingIndication];
}

- (void)underlineWithProofreadingInfo:(id)info
{
  messageEditingBalloonView = self->_messageEditingBalloonView;
  infoCopy = info;
  textView = [(CKTextBalloonView *)messageEditingBalloonView textView];
  v5 = [infoCopy objectForKeyedSubscript:@"TextCorrections"];
  lastObject = [v5 lastObject];
  v7 = [infoCopy objectForKeyedSubscript:@"UnderlineRanges"];

  if (v7 && [v7 count])
  {
    lastObject2 = [v7 lastObject];
    v9 = [lastObject2 end];
    endOfDocument = [textView endOfDocument];
    v11 = [v9 isEqual:endOfDocument];

    if (v11)
    {
      interactionAssistant = [textView interactionAssistant];
      [interactionAssistant underlineCorrectedTextInRange:lastObject2 typedString:lastObject];
    }
  }
}

- (void)messageEditingBalloonViewWritingToolsWillBegin:(id)begin
{
  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewWritingToolsWillBegin:self];
}

- (void)messageEditingBalloonViewWritingToolsDidEnd:(id)end
{
  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [messageEditingViewDelegate messageEditingViewWritingToolsDidEnd:self];
}

- (void)messageEditingBalloonViewContentDidChange:(id)change
{
  currentCompositionText = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionText];
  v4 = [currentCompositionText length] != 0;
  [(UIButton *)self->_confirmButton setEnabled:v4];
  configuration = [(UIButton *)self->_confirmButton configuration];
  messageEditingViewDelegate = [(CKMessageEditingView *)self messageEditingViewDelegate];
  messageEditingColorType = [messageEditingViewDelegate messageEditingColorType];

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 updateMessageEditingConfirmButtonConfiguration:configuration forButtonColor:messageEditingColorType isEnabled:v4];

  [(UIButton *)self->_confirmButton setConfiguration:configuration];
  [(CKMessageEditingView *)self updateKeyboardActionButtonIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_messageEditingViewDelegate);
  [WeakRetained messageEditingViewDidUpdateBalloonViewContent:self];
}

- (void)messageEditingBalloonView:(id)view didChangeTextAnimationInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageEditingViewDelegate);
    [WeakRetained messageEditingView:self didChangeTextAnimationInRange:{location, length}];
  }
}

- (CKMessageEditingViewDelegate)messageEditingViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageEditingViewDelegate);

  return WeakRetained;
}

- (void)adaptiveImageGlyphForTransferGUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Could not create adaptive image glyph because could not find media object for transfer guid: %@", &v2, 0xCu);
}

@end
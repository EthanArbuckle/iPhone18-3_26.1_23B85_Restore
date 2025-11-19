@interface CKMessageEditingView
- (BOOL)becomeFirstResponder;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKComposition)currentComposition;
- (CKMessageEditingView)initWithMessageEditingViewDelegate:(id)a3 translationLanguage:(id)a4 toTranslationLanguage:(id)a5;
- (CKMessageEditingViewDelegate)messageEditingViewDelegate;
- (char)balloonColorType;
- (id)adaptiveImageGlyphForTransferGUID:(id)a3;
- (id)keyCommands;
- (id)styledAttributedStringFromString:(id)a3;
- (void)_applyExpressiveTextFormattingToAttributedText:(id)a3 forCompositionText:(id)a4;
- (void)_confirmButtonSelected:(id)a3;
- (void)_insertAdaptiveImageGlyphs:(id)a3;
- (void)_rejectButtonSelected:(id)a3;
- (void)_updateTextFieldWithOriginalComposition;
- (void)applyGrammarCheckingIndication;
- (void)layoutSubviews;
- (void)messageEditingBalloonView:(id)a3 didChangeTextAnimationInRange:(_NSRange)a4;
- (void)messageEditingBalloonViewContentDidChange:(id)a3;
- (void)messageEditingBalloonViewWritingToolsDidEnd:(id)a3;
- (void)messageEditingBalloonViewWritingToolsWillBegin:(id)a3;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3;
- (void)setMessageEditingBalloonTintColor:(id)a3;
- (void)setMessageEditingViewState:(int64_t)a3;
- (void)setOriginalComposition:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)underlineWithProofreadingInfo:(id)a3;
@end

@implementation CKMessageEditingView

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3
{
  v4 = [(CKMessageEditingView *)self messageEditingBalloonView];
  [v4 modifySelectedTextByTogglingTextEffectType:a3];
}

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3
{
  v4 = [(CKMessageEditingView *)self messageEditingBalloonView];
  [v4 modifySelectedTextByTogglingTextStyle:a3];
}

- (CKMessageEditingView)initWithMessageEditingViewDelegate:(id)a3 translationLanguage:(id)a4 toTranslationLanguage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42.receiver = self;
  v42.super_class = CKMessageEditingView;
  v11 = [(CKMessageEditingView *)&v42 init];
  v12 = v11;
  if (v11)
  {
    v11->_messageEditingViewState = 0;
    [(CKMessageEditingView *)v11 setMessageEditingViewDelegate:v8];
    objc_storeStrong(&v12->_translationLanguage, a4);
    objc_storeStrong(&v12->_translationToLanguage, a5);
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 messageEditingRejectButtonBaseConfiguration];

    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 messageEditingRejectButtonImage];
    [v14 setImage:v16];

    objc_initWeak(&location, v12);
    v17 = MEMORY[0x1E69DC628];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke;
    v39[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v40, &location);
    [v17 actionWithHandler:v39];
    v35 = v18 = v14;
    v19 = [CKCustomButton buttonWithConfiguration:v14 primaryAction:v35];
    objc_storeStrong(&v12->_rejectButton, v19);
    [(CKMessageEditingView *)v12 addSubview:v12->_rejectButton];
    v36 = v10;
    v34 = v8;
    v20 = [(CKMessageEditingView *)v12 messageEditingViewDelegate];
    v21 = [v20 messageEditingColorType];

    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 messageEditingConfirmButtonBaseConfiguration];

    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 updateMessageEditingConfirmButtonConfiguration:v23 forButtonColor:v21 isEnabled:1];

    v25 = MEMORY[0x1E69DC628];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __101__CKMessageEditingView_initWithMessageEditingViewDelegate_translationLanguage_toTranslationLanguage___block_invoke_2;
    v37[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v38, &location);
    v26 = [v25 actionWithHandler:v37];
    v27 = [CKCustomButton buttonWithConfiguration:v23 primaryAction:v26];
    objc_storeStrong(&v12->_confirmButton, v27);
    [(CKMessageEditingView *)v12 addSubview:v12->_confirmButton];
    v28 = objc_opt_class();
    v29 = CKBalloonViewForClass(v28);
    [v29 setEditingBalloonViewDelegate:v12];
    [v29 setHasTail:1];
    [v29 setOrientation:1];
    [v29 setBalloonShape:0];
    [v29 setCanUseOpaqueMask:0];
    v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v31 = [v30 isAutomaticOutgoingTranslationEnabled];

    v32 = v31 ^ 1;
    if (!v9)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      [v29 setTranslationLanguage:v9];
      [v29 setShouldShowTranslationSecondaryText:1];
      [v29 setTranslationToLanguage:v36];
    }

    objc_storeStrong(&v12->_messageEditingBalloonView, v29);
    [(CKMessageEditingView *)v12 addSubview:v12->_messageEditingBalloonView];
    [(CKMessageEditingView *)v12 updateKeyboardActionButtonIfNeeded];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    v8 = v34;
    v10 = v36;
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

- (void)setMessageEditingBalloonTintColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_messageEditingBalloonTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_messageEditingBalloonTintColor, a3);
    v5 = [(CKMessageEditingView *)self messageEditingBalloonView];
    [v5 ck_applyGlassBackgroundWithTintColor:v6];
  }
}

- (void)setOriginalComposition:(id)a3
{
  objc_storeStrong(&self->_originalComposition, a3);

  [(CKMessageEditingView *)self _updateTextFieldWithOriginalComposition];
}

- (void)_updateTextFieldWithOriginalComposition
{
  v6 = [(CKComposition *)self->_originalComposition text];
  v3 = [(CKComposition *)self->_originalComposition translation];
  v4 = [(CKMessageEditingView *)self styledAttributedStringFromString:v6];
  v5 = [(CKMessageEditingView *)self styledAttributedStringFromString:v3];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v4];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v5];
  [(CKTextBalloonView *)self->_messageEditingBalloonView prepareForDisplay];
  [(CKMessageEditingView *)self setNeedsLayout];
}

- (id)styledAttributedStringFromString:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 balloonParagraphStyle];

  if (!v7)
  {
    v7 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  }

  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{0, objc_msgSend(v5, "length")}];
  v8 = [v5 length];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 balloonTextFont];

  v11 = [(CKBalloonView *)self->_messageEditingBalloonView color];
  v12 = [v5 __ck_bigEmojiStyle];
  if ((v12 - 1) >= 3)
  {
    v16 = 0;
    if (v12)
    {
      goto LABEL_8;
    }

    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = [v14 balloonTextColorForColorType:v11];
  }

  else
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = [v14 transcriptBigEmojiColor];
  }

  v16 = v15;

LABEL_8:
  [v5 addAttribute:*MEMORY[0x1E69DB650] value:v16 range:{0, v8}];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:v10 range:{0, v8}];
  [(CKMessageEditingView *)self _insertAdaptiveImageGlyphs:v5];
  v17 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v18 = [v17 isExpressiveTextEnabled];

  if (v18)
  {
    [(CKMessageEditingView *)self _applyExpressiveTextFormattingToAttributedText:v5 forCompositionText:v4];
  }

  v19 = [v5 copy];

  return v19;
}

- (void)_applyExpressiveTextFormattingToAttributedText:(id)a3 forCompositionText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 length];
  v8 = *MEMORY[0x1E69A7CF8];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke;
  v35[3] = &unk_1E72EF890;
  v9 = v5;
  v36 = v9;
  [v6 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v35}];
  v10 = *MEMORY[0x1E69A7D08];
  v11 = [v6 length];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_2;
  v33[3] = &unk_1E72EF890;
  v12 = v9;
  v34 = v12;
  [v6 enumerateAttribute:v10 inRange:0 options:v11 usingBlock:{0, v33}];
  v13 = *MEMORY[0x1E69A7D18];
  v14 = [v6 length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_3;
  v31[3] = &unk_1E72EF890;
  v15 = v12;
  v32 = v15;
  [v6 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v31}];
  v16 = *MEMORY[0x1E69A7CF0];
  v17 = [v6 length];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_4;
  v29[3] = &unk_1E72EF890;
  v18 = v15;
  v30 = v18;
  [v6 enumerateAttribute:v16 inRange:0 options:v17 usingBlock:{0, v29}];
  v19 = *MEMORY[0x1E69A7D00];
  v20 = [v6 length];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_5;
  v27[3] = &unk_1E72EF890;
  v21 = v18;
  v28 = v21;
  [v6 enumerateAttribute:v19 inRange:0 options:v20 usingBlock:{0, v27}];
  v22 = *MEMORY[0x1E69A70F8];
  v23 = [v6 length];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__CKMessageEditingView__applyExpressiveTextFormattingToAttributedText_forCompositionText___block_invoke_6;
  v25[3] = &unk_1E72EF890;
  v26 = v21;
  v24 = v21;
  [v6 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v25}];
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

- (void)_insertAdaptiveImageGlyphs:(id)a3
{
  v4 = MEMORY[0x1E69A5B80];
  v5 = a3;
  v6 = [v4 sharedInstance];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CKMessageEditingView__insertAdaptiveImageGlyphs___block_invoke;
  aBlock[3] = &unk_1E72EBF70;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CKMessageEditingView__insertAdaptiveImageGlyphs___block_invoke_2;
  v10[3] = &unk_1E72F1108;
  v10[4] = self;
  v9 = _Block_copy(v10);
  [v5 __im_insertAdaptiveImageGlyphsForFileTransfersUsingFileTransferProvider:v8 adaptiveImageGlyphProvider:v9 isCommSafetySensitiveProvider:&__block_literal_global_88];
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

- (id)adaptiveImageGlyphForTransferGUID:(id)a3
{
  v3 = a3;
  v4 = +[CKMediaObjectManager sharedInstance];
  v5 = [v4 mediaObjectWithTransferGUID:v3 imMessage:0 chatContext:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 adaptiveImageGlyph];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CKMessageEditingView *)v3 adaptiveImageGlyphForTransferGUID:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (CKComposition)currentComposition
{
  v3 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionText];
  v4 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionTranslation];
  v5 = [[CKComposition alloc] initWithText:v3 subject:0 translation:v4 shelfPluginPayload:0 bizIntent:0 shelfMediaObject:0 proofreadingInfo:0];
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isAutomaticOutgoingTranslationEnabled];

  if (v7)
  {
    v8 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView sourceLanguageID];
    [(CKComposition *)v5 setSourceLanguageID:v8];

    v9 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView destinationLanguageID];
    [(CKComposition *)v5 setDestinationLanguageID:v9];
  }

  return v5;
}

- (void)_rejectButtonSelected:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Reject button selected", v7, 2u);
    }
  }

  v6 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v6 messageEditingViewRejectButtonSelected:self];
}

- (void)_confirmButtonSelected:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Confirm button selected", v7, 2u);
    }
  }

  v6 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v6 messageEditingViewConfirmButtonSelected:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = CKMessageEditingView;
  [(CKMessageEditingView *)&v15 traitCollectionDidChange:a3];
  v4 = [(CKMessageEditingView *)self traitCollection];
  -[CKBalloonView setUserInterfaceStyle:](self->_messageEditingBalloonView, "setUserInterfaceStyle:", [v4 userInterfaceStyle]);

  v5 = [(CKMessageEditingView *)self currentComposition];
  v6 = [v5 text];

  v7 = [(CKMessageEditingView *)self currentComposition];
  v8 = [v7 translation];

  v9 = [(CKMessageEditingView *)self styledAttributedStringFromString:v6];
  v10 = [(CKMessageEditingView *)self styledAttributedStringFromString:v8];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v9];
  [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v10];
  v11 = [(CKMessageEditingView *)self balloonColorType];
  [(CKColoredBalloonView *)self->_messageEditingBalloonView setColor:v11];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 unfilledBalloonColorForColorType:v11];
  [v14 ck_imColorComponents];
  [(CKBalloonView *)self->_messageEditingBalloonView setStrokeColor:?];

  [(CKBalloonView *)self->_messageEditingBalloonView setNeedsPrepareForDisplay];
  [(CKBalloonView *)self->_messageEditingBalloonView prepareForDisplayIfNeeded];
}

- (char)balloonColorType
{
  v3 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  v4 = [v3 messageEditingColorType];

  v5 = [(CKMessageEditingView *)self currentComposition];
  v6 = [v5 text];

  v7 = [v6 __ck_bigEmojiStyle] - 1;
  v8 = [(CKMessageEditingView *)self messageEditingViewState];
  if (v7 >= 3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 13;
  }

  if (v8 == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v8 != 3)
  {
    v9 = v10;
  }

  if (v7 >= 3)
  {
    v11 = v4;
  }

  else
  {
    v11 = 13;
  }

  if (v8 == 2)
  {
    v12 = 13;
  }

  else
  {
    v12 = v4;
  }

  if (v8 != 1)
  {
    v11 = v12;
  }

  if (v8 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

- (void)setMessageEditingViewState:(int64_t)a3
{
  if (self->_messageEditingViewState != a3)
  {
    self->_messageEditingViewState = a3;
    v6 = [(CKMessageEditingView *)self messageEditingViewDelegate];
    v7 = [v6 messageEditingViewBalloonHasTail];

    v8 = [(CKMessageEditingView *)self currentComposition];
    v26 = [v8 text];

    v9 = [(CKMessageEditingView *)self currentComposition];
    v10 = [v9 translation];

    v11 = 0.0;
    if (a3 == 4)
    {
      v13 = 1;
      [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView setBeingTornDown:1];
      v14 = 0;
    }

    else if (a3 == 3)
    {
      v13 = 1;
      [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView setBeingTornDown:1];
      v14 = 0;
      v7 = 1;
    }

    else
    {
      v12 = a3 == 2;
      v13 = a3 != 2;
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
    v15 = [(CKMessageEditingView *)self balloonColorType];
    [(CKColoredBalloonView *)self->_messageEditingBalloonView setColor:v15];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 theme];
    v18 = [v17 unfilledBalloonColorForColorType:v15];
    [v18 ck_imColorComponents];
    [(CKBalloonView *)self->_messageEditingBalloonView setStrokeColor:?];

    [(CKBalloonView *)self->_messageEditingBalloonView setBalloonStyle:v14];
    [(CKColoredBalloonView *)self->_messageEditingBalloonView setHasTail:v7];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 theme];
    v21 = [v20 balloonTextColorForColorType:{-[CKBalloonView color](self->_messageEditingBalloonView, "color")}];
    v22 = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
    [v22 setTextColor:v21];

    v23 = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
    [v23 setShouldAdjustInsetsForMinimumSize:v13];

    v24 = [(CKMessageEditingView *)self styledAttributedStringFromString:v26];
    v25 = [(CKMessageEditingView *)self styledAttributedStringFromString:v10];
    [(CKTextBalloonView *)self->_messageEditingBalloonView setAttributedText:v24];
    [(CKTextBalloonView *)self->_messageEditingBalloonView setAlternateAttributedText:v25];
    [(CKBalloonView *)self->_messageEditingBalloonView setNeedsPrepareForDisplay];
    [(CKBalloonView *)self->_messageEditingBalloonView prepareForDisplayIfNeeded];
  }
}

- (BOOL)becomeFirstResponder
{
  v2 = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
  v3 = [v2 becomeFirstResponder];

  return v3;
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
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isModernSplitViewControllerEnabled];

  if (v9)
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
  v18 = [(CKMessageEditingView *)self _shouldReverseLayoutDirection];
  v19 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v19 messageEditingViewDismissAnimationBalloonMaxWidth];
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
  v33 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v34 = [v33 isEntryViewRefreshEnabled];

  v133 = v16;
  if (v34)
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
  if (v18)
  {
    v38 = v32;
  }

  else
  {
    v38 = v28;
  }

  v135 = v38;
  if (v18)
  {
    v39 = v30;
  }

  else
  {
    v39 = v26;
  }

  if (v18)
  {
    v40 = v28;
  }

  else
  {
    v40 = v32;
  }

  v138 = v40;
  v139 = v26;
  if (!v18)
  {
    v26 = v30;
  }

  v41 = [(CKMessageEditingView *)self traitCollection];
  v42 = [v41 horizontalSizeClass];

  v141 = v30;
  v142 = v32;
  v140 = v28;
  amount = v26;
  if (v42 == 1 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v43 = objc_claimAutoreleasedReturnValue(), [v43 messageEditingNonCompactLeftEdgeToButtonMinimumPadding], v45 = v39 + v44, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "messageEditingNonCompactBalloonToLeftButtonPadding"), v48 = v146 + v45 + v47, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "messageEditingNonCompactBalloonPillEdgeToRightButtonPadding"), v51 = v26 + v48 + v50, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "messageEditingNonCompactRightEdgeToButtonPadding"), v54 = v51 - v53, v52, v49, v46, v43, v6 < v54))
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
    v122 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v123 = [v122 isEntryViewRefreshEnabled];

    if (v123)
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
    v84 = [(CKMessageEditingView *)self messageEditingViewDelegate];
    [v84 messageEditingViewDismissAnimationContentInsets];
    v86 = v85;
    v88 = v87;

    v89 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v90 = [v89 isModernSplitViewControllerEnabled];

    if (v90)
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
    v96 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v97 = [v96 isEntryViewRefreshEnabled];

    v98 = v95 - *&v163;
    if (!v97)
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
    v112 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView messageEditingBalloonTextView];
    v113 = [v112 ck_isTextLayoutExclusivelyUsingRTLWritingDirection];
    v114 = -vabdd_f64(v81, recta);
    if (!v113)
    {
      v114 = 0.0;
    }

    origin.x = v114;

    origin = *&origin.x;
    v82 = v156;
  }

  if (v18)
  {
    v115 = v80;
  }

  else
  {
    v115 = v78;
  }

  if (v18)
  {
    v116 = amounta;
  }

  else
  {
    v116 = v103;
  }

  if (v18)
  {
    v117 = v78;
  }

  else
  {
    v117 = v80;
  }

  if (!v18)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 messageEditingNonCompactLeftEdgeToButtonMinimumPadding];
  v43 = v7;

  [(UIButton *)self->_rejectButton sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(UIButton *)self->_confirmButton sizeThatFits:width, height];
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v17 = [v16 isEntryViewRefreshEnabled];

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

  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  if (v17)
  {
    v21 = v18;
  }

  else
  {
    v21 = v13;
  }

  if (v17)
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

  v26 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v26 messageEditingViewDismissAnimationBalloonMaxWidth];
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
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E69DCBA0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 3];
  v5 = [v3 keyCommandWithInput:v4 modifierFlags:0 action:sel__confirmButtonSelected_];

  [v5 setWantsPriorityOverSystemBehavior:1];
  [v2 addObject:v5];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__confirmButtonSelected_];
  [v6 setWantsPriorityOverSystemBehavior:1];
  [v2 addObject:v6];
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x10000 action:sel__confirmButtonSelected_];
  [v7 setWantsPriorityOverSystemBehavior:1];
  [v2 addObject:v7];
  v8 = [v2 copy];

  return v8;
}

- (void)applyGrammarCheckingIndication
{
  v2 = [(CKTextBalloonView *)self->_messageEditingBalloonView textView];
  [v2 applyGrammarCheckingIndication];
}

- (void)underlineWithProofreadingInfo:(id)a3
{
  messageEditingBalloonView = self->_messageEditingBalloonView;
  v4 = a3;
  v13 = [(CKTextBalloonView *)messageEditingBalloonView textView];
  v5 = [v4 objectForKeyedSubscript:@"TextCorrections"];
  v6 = [v5 lastObject];
  v7 = [v4 objectForKeyedSubscript:@"UnderlineRanges"];

  if (v7 && [v7 count])
  {
    v8 = [v7 lastObject];
    v9 = [v8 end];
    v10 = [v13 endOfDocument];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v13 interactionAssistant];
      [v12 underlineCorrectedTextInRange:v8 typedString:v6];
    }
  }
}

- (void)messageEditingBalloonViewWritingToolsWillBegin:(id)a3
{
  v4 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v4 messageEditingViewWritingToolsWillBegin:self];
}

- (void)messageEditingBalloonViewWritingToolsDidEnd:(id)a3
{
  v4 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  [v4 messageEditingViewWritingToolsDidEnd:self];
}

- (void)messageEditingBalloonViewContentDidChange:(id)a3
{
  v10 = [(CKMessageEditingBalloonView *)self->_messageEditingBalloonView currentCompositionText];
  v4 = [v10 length] != 0;
  [(UIButton *)self->_confirmButton setEnabled:v4];
  v5 = [(UIButton *)self->_confirmButton configuration];
  v6 = [(CKMessageEditingView *)self messageEditingViewDelegate];
  v7 = [v6 messageEditingColorType];

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 updateMessageEditingConfirmButtonConfiguration:v5 forButtonColor:v7 isEnabled:v4];

  [(UIButton *)self->_confirmButton setConfiguration:v5];
  [(CKMessageEditingView *)self updateKeyboardActionButtonIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_messageEditingViewDelegate);
  [WeakRetained messageEditingViewDidUpdateBalloonViewContent:self];
}

- (void)messageEditingBalloonView:(id)a3 didChangeTextAnimationInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isExpressiveTextEnabled];

  if (v8)
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
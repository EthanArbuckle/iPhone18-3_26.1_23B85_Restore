@interface CKTextBalloonView
+ (BOOL)supportsAllowsTextAnimationChanges;
- (BOOL)_shouldShowTranslationSecondaryTextView;
- (BOOL)isCandidateForTextEffectPlayback;
- (BOOL)isSelected;
- (BOOL)shouldResignFirstResponderFor:(id)a3;
- (CGRect)_computedTextViewFrameForBoundsSize:(CGSize)a3;
- (CGSize)_minimumFittingSize;
- (CGSize)_textSizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 textAlignmentInsets:(UIEdgeInsets *)a5 isSingleLine:(BOOL *)a6;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CGSize)sizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 tailInsets:(UIEdgeInsets *)a5 textAlignmentInsets:(UIEdgeInsets *)a6 isSingleLine:(BOOL *)a7;
- (CGSize)translationSecondaryTextSize;
- (CKBalloonTextViewProtocol)translationSecondaryTextView;
- (CKTextBalloonView)initWithFrame:(CGRect)a3;
- (CKTextBalloonView)initWithFrame:(CGRect)a3 textView:(id)a4;
- (CKTextBalloonViewTextEffectsDelegate)textEffectsDelegate;
- (NSString)description;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (UIEdgeInsets)targetTextContainerInsets;
- (UIView)dividerLine;
- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)a3;
- (double)textViewWidthForWidth:(double)a3;
- (id)nonVibrantSubViews;
- (id)updateTextSelectionState:(id)a3 forTextSelectionArea:(int64_t)a4;
- (unint64_t)_allowedTextViewLayoutAction;
- (void)__updateTextViewFrame;
- (void)_textViewDidChangeCustomRenderBounds:(id)a3;
- (void)_updateAlphaOfTextView;
- (void)_updateDividerViewFrame;
- (void)_updateTextContainerInsets;
- (void)_updateTextViewFrame;
- (void)_updateTextViewOrigin;
- (void)addFilter:(id)a3;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)a3;
- (void)configureForMessagePart:(id)a3;
- (void)cullSubviewsWithVisibleBounds:(CGRect)a3;
- (void)detachInvisibleInkEffectView;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)interactionStartedFromPreviewItemControllerInTextView:(id)a3;
- (void)interactionStartedLongPressInTextView:(id)a3;
- (void)interactionStartedTapInTextView:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5;
- (void)interactionStoppedFromPreviewItemControllerInTextView:(id)a3;
- (void)interactionTextView:(id)a3 userDidDragOutsideViewWithPoint:(CGPoint)a4;
- (void)interactionTextViewDidStopSelection:(id)a3;
- (void)interactionTextViewShouldCopyToPasteboard:(id)a3;
- (void)invisibleInkEffectViewWasResumed;
- (void)invisibleInkEffectViewWasSuspended;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)restoreFromLargeTextTruncation;
- (void)setAlternateAttributedText:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setDimsContentOverTranscriptBackground:(BOOL)a3;
- (void)setSelected:(BOOL)a3 withSelectionState:(id)a4;
- (void)tapGestureRecognized:(id)a3;
- (void)textView:(id)a3 willDismissEditMenuWithAnimator:(id)a4;
- (void)textViewDidChangeSelection:(id)a3;
- (void)truncateForLargeText;
- (void)updateRasterizationForInvisibleInkEffect;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3;
@end

@implementation CKTextBalloonView

- (UIEdgeInsets)targetTextContainerInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonTextContainerInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)prepareForDisplay
{
  v48 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v46 prepareForDisplay];
  v3 = [(CKTextBalloonView *)self textView];
  v4 = [(CKTextBalloonView *)self translationSecondaryTextView];
  v5 = [(CKTextBalloonView *)self attributedText];
  v6 = [(CKTextBalloonView *)self alternateAttributedText];
  v7 = 0x1E69A8000uLL;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isExpressiveTextEnabled];

  if (v9 && ([objc_opt_class() supportsAllowsTextAnimationChanges] & 1) == 0)
  {
    if ([v3 allowsTextAnimations])
    {
      v10 = [(CKTextBalloonView *)self textEffectsDelegate];
      v11 = [v10 customTextRenderingDisplayLinkForTextBalloonViewTextView:self];

      v12 = [(CKTextBalloonView *)self textView];
      [v12 _setCustomRenderDisplayLink:v11];
    }

    if ([v4 allowsTextAnimations])
    {
      v13 = [(CKTextBalloonView *)self textEffectsDelegate];
      v14 = [v13 customTextRenderingDisplayLinkForTextBalloonViewTextView:self];

      v15 = [(CKTextBalloonView *)self translationSecondaryTextView];
      [v15 _setCustomRenderDisplayLink:v14];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [(CKBalloonView *)self filters];
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v35 = v4;
    v19 = *v43;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [v21 textColor];

        if (v22)
        {
          v34 = v3;
          v23 = [v5 mutableCopy];
          v24 = *MEMORY[0x1E69DB650];
          v25 = [v5 length];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __38__CKTextBalloonView_prepareForDisplay__block_invoke;
          v39[3] = &unk_1E72F12B8;
          v26 = v23;
          v40 = v26;
          v41 = v21;
          [v26 enumerateAttribute:v24 inRange:0 options:v25 usingBlock:{0, v39}];
          v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v26];

          if (v6)
          {
            v28 = [v6 mutableCopy];
            v29 = [v28 length];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __38__CKTextBalloonView_prepareForDisplay__block_invoke_2;
            v36[3] = &unk_1E72F12B8;
            v37 = v28;
            v38 = v21;
            v30 = v28;
            [v30 enumerateAttribute:v24 inRange:0 options:v29 usingBlock:{0, v36}];
            v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v30];

            v6 = v31;
          }

          v4 = v35;
          v7 = 0x1E69A8000uLL;

          v5 = v27;
          v3 = v34;
          goto LABEL_19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v4 = v35;
    v7 = 0x1E69A8000;
  }

LABEL_19:

  if (objc_opt_respondsToSelector())
  {
    [v3 setAttributedText:v5 checkForMentions:0];
  }

  else
  {
    [v3 setAttributedText:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAttributedText:v6 checkForMentions:0];
  }

  else
  {
    [v4 setAttributedText:v6];
  }

  v32 = [*(v7 + 112) sharedFeatureFlags];
  v33 = [v32 isExpressiveTextEnabled];

  if (v33 && [objc_opt_class() supportsAllowsTextAnimationChanges])
  {
    [v3 _setCustomRenderDisplayLink:0];
    [v3 setAllowsTextAnimations:0];
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView _setCustomRenderDisplayLink:0];
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAllowsTextAnimations:0];
  }
}

- (CKBalloonTextViewProtocol)translationSecondaryTextView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticIncomingTranslationEnabled];

  if (v4 && !self->_translationSecondaryTextView && [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    v5 = +[CKBalloonTextView makeTextView];
    [v5 _disableTiledViews];
    [v5 setInteractionDelegate:self];
    [v5 setDelegate:self];
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [v5 setTextContainerInset:?];
    [v5 setShouldAdjustInsetsForMinimumSize:1];
    [(CKTextBalloonView *)self addSubview:v5];
    translationSecondaryTextView = self->_translationSecondaryTextView;
    self->_translationSecondaryTextView = v5;
  }

  v7 = self->_translationSecondaryTextView;

  return v7;
}

- (BOOL)_shouldShowTranslationSecondaryTextView
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticIncomingTranslationEnabled];

  if (!v4 || ![(CKTextBalloonView *)self shouldShowTranslationSecondaryText])
  {
    return 0;
  }

  v5 = [(CKTextBalloonView *)self alternateAttributedText];
  if (v5)
  {
    v6 = [(CKTextBalloonView *)self alternateAttributedText];
    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)supportsAllowsTextAnimationChanges
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isExpressiveTextEnabled];

  if (!v3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E69DD168];

  return [v4 ck_supportsDynamicallyTogglingAllowsTextAnimations];
}

- (CGSize)_minimumFittingSize
{
  if ([(CKBalloonView *)self hasTail])
  {
    v3 = [(CKBalloonView *)self balloonTailShape];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 skinnyBalloonMaskSizeWithTailShape:v3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)updateRasterizationForInvisibleInkEffect
{
  if ([(CKBalloonView *)self invisibleInkEffectEnabled])
  {
    v3 = [(CKBalloonView *)self invisibleInkEffectPaused];
  }

  else
  {
    v3 = 0;
  }

  v5 = [(CKBalloonView *)self invisibleInkEffectController];
  v4 = [v5 effectView];
  [v4 _setShouldRasterize:v3];
}

- (void)configureForComposition:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v32 configureForComposition:v4];
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  v6 = [v4 text];
  v7 = [v5 initWithAttributedString:v6];

  v8 = [v7 length];
  v9 = *MEMORY[0x1E69DB650];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 theme];
  v12 = [v11 balloonTextColorForColorType:{-[CKBalloonView color](self, "color")}];
  [v7 addAttribute:v9 value:v12 range:{0, v8}];

  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v7 __ck_bigEmojiStyleWithSingleBigEmojiSupported:{objc_msgSend(v13, "entryViewSupportsSingleBigEmojiFont")}];
  v15 = 0;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v16 = [v13 multipleBigEmojiFont];
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_11;
      }

      v16 = [v13 singleBigAssetFont];
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_11;
    }

    v16 = [v13 singleBigEmojiFont];
  }

  else
  {
    v16 = [v13 balloonTextFont];
  }

  v15 = v16;
LABEL_11:
  v17 = *MEMORY[0x1E69DB648];
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:v15 range:{0, v8}];
  v18 = [v4 subject];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD40]);
    [v4 subject];
    v20 = v30 = v9;
    v21 = [v19 initWithAttributedString:v20];

    v22 = [v21 length];
    +[CKUIBehavior sharedBehaviors];
    v31 = v13;
    v24 = v23 = self;
    v25 = [v24 balloonSubjectFont];
    [v21 addAttribute:v17 value:v25 range:{0, v22}];

    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 theme];
    v28 = [v27 balloonTextColorForColorType:{-[CKBalloonView color](v23, "color")}];
    [v21 addAttribute:v30 value:v28 range:{0, v22}];

    self = v23;
    v13 = v31;

    v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v21 appendAttributedString:v29];

    [v21 appendAttributedString:v7];
    v7 = v21;
  }

  [(CKTextBalloonView *)self setAttributedText:v7];
}

- (void)configureForMessagePart:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v12 configureForMessagePart:v4];
  if ([v4 containsHyperlink])
  {
    v5 = [(CKTextBalloonView *)self textView];
    v13[0] = *MEMORY[0x1E69DB650];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];
    v8 = [v7 balloonTextLinkColorForColorType:{objc_msgSend(v4, "color")}];
    v13[1] = *MEMORY[0x1E69DB758];
    v14[0] = v8;
    v14[1] = &unk_1F04E7FB0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v5 setLinkTextAttributes:v9];
  }

  v10 = [v4 transcriptText];
  [(CKTextBalloonView *)self setAttributedText:v10];

  -[CKTextBalloonView setDimsContentOverTranscriptBackground:](self, "setDimsContentOverTranscriptBackground:", [v4 dimsContentOverTranscriptBackground]);
  [v4 translationSecondaryTextSize];
  [(CKTextBalloonView *)self setTranslationSecondaryTextSize:?];
  -[CKTextBalloonView setShouldShowTranslationSecondaryText:](self, "setShouldShowTranslationSecondaryText:", [v4 showTranslationAlternateText]);
  v11 = [v4 alternateTranscriptText];
  [(CKTextBalloonView *)self setAlternateAttributedText:v11];

  -[CKTextBalloonView setContainsExcessiveLineHeightCharacters:](self, "setContainsExcessiveLineHeightCharacters:", [v4 containsExcessiveLineHeightCharacters]);
  [(CKTextBalloonView *)self _updateTextContainerInsets];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKTextBalloonView *)self textView];
  v8.receiver = self;
  v8.super_class = CKTextBalloonView;
  v5 = [(CKColoredBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKTextBalloonView textView:%@ %@]", v4, v5];

  return v6;
}

- (CKTextBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[CKBalloonTextView makeTextView];
  v9 = [(CKTextBalloonView *)self initWithFrame:v8 textView:x, y, width, height];

  return v9;
}

- (CKTextBalloonView)initWithFrame:(CGRect)a3 textView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CKTextBalloonView;
  v10 = [(CKColoredBalloonView *)&v16 initWithFrame:x, y, width, height];
  if (v10)
  {
    [v9 _disableTiledViews];
    [v9 setInteractionDelegate:v10];
    [v9 setDelegate:v10];
    [(CKTextBalloonView *)v10 targetTextContainerInsets];
    [v9 setTextContainerInset:?];
    [v9 setShouldAdjustInsetsForMinimumSize:1];
    [(CKTextBalloonView *)v10 addSubview:v9];
    [(CKTextBalloonView *)v10 setTextView:v9];
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [(CKTextBalloonView *)v10 registerForTraitChanges:v11 withHandler:&__block_literal_global_190];

    v17 = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(CKTextBalloonView *)v10 registerForTraitChanges:v13 withHandler:&__block_literal_global_212_1];

    [(CKTextBalloonView *)v10 setIgnoreSelectionEvent:1];
  }

  return v10;
}

- (unint64_t)_allowedTextViewLayoutAction
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (!v4)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);
  v6 = [WeakRetained textBalloonViewAllowedLayoutActionForTextBalloonView:self];

  v7 = [(CKTextBalloonView *)self textView];
  LODWORD(WeakRetained) = [v7 ck_hasPlayingOrPausedTextAnimator];

  if (WeakRetained)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)layoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v4 textBalloonViewWillLayoutSubviews:self];
  }

  v14.receiver = self;
  v14.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v14 layoutSubviews];
  v5 = [(CKTextBalloonView *)self _allowedTextViewLayoutAction];
  if (v5 == 1)
  {
    [(CKTextBalloonView *)self _updateTextViewOrigin];
  }

  else if (!v5)
  {
    [(CKTextBalloonView *)self _updateTextViewFrame];
  }

  [(CKTextBalloonView *)self _updateDividerViewFrame];
  v6 = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v7 textBalloonViewDidLayoutSubviews:self];
  }

  if ([(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    v8 = [(CKTextBalloonView *)self translationSecondaryTextView];
    [v8 setAlpha:1.0];

    v9 = [(CKTextBalloonView *)self dividerLine];
    [v9 setAlpha:1.0];

    v10 = [(CKTextBalloonView *)self dividerLine];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 balloonTranslationDividerLineColorInPrintingPathForColorType:{-[CKBalloonView color](self, "color")}];
    [v10 setBackgroundColor:v13];
  }

  else
  {
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAlpha:0.0];
    [(UIView *)self->_dividerLine setAlpha:0.0];
  }
}

- (void)_updateTextContainerInsets
{
  [(CKTextBalloonView *)self targetTextContainerInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = [(CKTextBalloonView *)self textView];
  [v12 setTextContainerInset:{v4, v6, v8, v10}];
  translationSecondaryTextView = self->_translationSecondaryTextView;
  if (translationSecondaryTextView)
  {
    [(CKBalloonTextViewProtocol *)translationSecondaryTextView setTextContainerInset:v4, v6, v8, v10];
  }
}

- (UIEdgeInsets)balloonTypePillContentInsets
{
  v20.receiver = self;
  v20.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v20 balloonTypePillContentInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 textAlignmentRectInsetsScaleFactor];
  v12 = v3 * v11;
  v13 = v5 * v11;
  v14 = v7 * v11;
  v15 = v9 * v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

void __38__CKTextBalloonView_prepareForDisplay__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69DB650];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) textColor];
  [v7 addAttribute:v6 value:v8 range:{a3, a4}];
}

void __38__CKTextBalloonView_prepareForDisplay__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69DB650];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) textColor];
  [v7 addAttribute:v6 value:v8 range:{a3, a4}];
}

- (void)prepareForReuse
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v21 prepareForReuse];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    v5 = [(CKTextBalloonView *)self textView];
    v6 = [v5 allowsTextAnimations];

    if (v6)
    {
      v7 = [(CKTextBalloonView *)self textView];
      [v7 _setCustomRenderDisplayLink:0];

      if ([objc_opt_class() supportsAllowsTextAnimationChanges])
      {
        v8 = [(CKTextBalloonView *)self textView];
        [v8 setAllowsTextAnimations:0];

        [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAllowsTextAnimations:0];
      }
    }
  }

  [(CKTextBalloonView *)self setDimsContentOverTranscriptBackground:0];
  v9 = [(CKTextBalloonView *)self textView];
  [v9 setHidden:0];

  v10 = [(CKTextBalloonView *)self translationSecondaryTextView];
  [v10 setAlpha:0.0];

  v11 = [(CKTextBalloonView *)self dividerLine];
  [v11 setAlpha:0.0];

  [(CKTextBalloonView *)self setContainsExcessiveLineHeightCharacters:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [(CKTextBalloonView *)self nonVibrantSubViews];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) setUserInteractionEnabled:1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)setDimsContentOverTranscriptBackground:(BOOL)a3
{
  if (self->_dimsContentOverTranscriptBackground != a3)
  {
    self->_dimsContentOverTranscriptBackground = a3;
    [(CKTextBalloonView *)self _updateAlphaOfTextView];
  }
}

- (void)_updateAlphaOfTextView
{
  v3 = 1.0;
  if (self->_dimsContentOverTranscriptBackground)
  {
    v4 = [(CKTextBalloonView *)self traitCollection];
    v5 = [v4 isTranscriptBackgroundActive];

    if (v5)
    {
      v3 = 0.5;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v6 = [(CKBalloonView *)self filters];
  v9 = [v6 lastObject];

  if (v9)
  {
    [v9 contentAlpha];
    v3 = v7;
  }

  v8 = [(CKTextBalloonView *)self textView];
  [v8 setAlpha:v3];
}

- (BOOL)shouldResignFirstResponderFor:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) key];
        v8 = [v7 charactersIgnoringModifiers];
        v9 = [v8 length];

        if (v9)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (CGSize)_textSizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 textAlignmentInsets:(UIEdgeInsets *)a5 isSingleLine:(BOOL *)a6
{
  height = a3.height;
  width = a3.width;
  v12 = [(CKTextBalloonView *)self textView];
  [v12 sizeThatFits:a5 textAlignmentInsets:a6 isSingleLine:{width, height}];
  v14 = v13;
  v16 = v15;

  if ([(NSAttributedString *)self->_alternateAttributedText length]&& [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    v17 = [(CKTextBalloonView *)self translationSecondaryTextView];
    [v17 sizeThatFits:a5 textAlignmentInsets:a6 isSingleLine:{width, height}];
    v19 = v18;
    v21 = v20;

    if (a4)
    {
      a4->width = v19;
      a4->height = v21;
    }

    v16 = v16 + v21;
    if (v19 >= v14)
    {
      v14 = v19;
    }
  }

  v22 = v14;
  v23 = v16;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:0 tailInsets:a4 textAlignmentInsets:0 isSingleLine:a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:a5 tailInsets:a4 textAlignmentInsets:0 isSingleLine:a3.width, a3.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 isSingleLine:(BOOL *)a5
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:0 tailInsets:a4 textAlignmentInsets:0 isSingleLine:a3.width, a3.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 translationSecondaryTextSize:(CGSize *)a4 tailInsets:(UIEdgeInsets *)a5 textAlignmentInsets:(UIEdgeInsets *)a6 isSingleLine:(BOOL *)a7
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self __ck_alignmentRectSizeForFrameSize:?];
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v72 = *MEMORY[0x1E69DDCE0];
  v73 = v14;
  v71 = *MEMORY[0x1E695F060];
  [(CKTextBalloonView *)self _textSizeThatFits:&v71 translationSecondaryTextSize:&v72 textAlignmentInsets:a7 isSingleLine:?];
  v65 = v15;
  v68 = v16;
  [(CKBalloonView *)self tailInsetsForViewSize:width, height];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(CKColoredBalloonView *)self alignmentRectInsetsForBoundsSize:width, height];
  UIEdgeInsetsSubtract();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(CKTextBalloonView *)self targetTextContainerInsets];
  v37 = v28 + v32 + v65 - (v33 + v34) - (*(&v72 + 1) - v33 + *(&v73 + 1) - v34);
  v38 = v26 + v30 + v68 - (v35 + v36);
  v66 = v20;
  v69 = v18;
  v39 = v20 + v24;
  v40 = v24;
  v41 = v39 + v37;
  v42 = v18 + v22;
  v43 = v22;
  v44 = v42 + v38;
  UIEdgeInsetsAdd();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = [(CKTextBalloonView *)self textView];
  if ([v53 shouldAdjustInsetsForMinimumSize])
  {
    [(CKTextBalloonView *)self _minimumFittingSize];
    v56 = (v54 - v41) * 0.5;
    v57 = v52 - v56;
    v58 = v48 - v56;
    if (v41 < v54)
    {
      v48 = v58;
      v52 = v57;
      v41 = v54;
    }

    v59 = (v55 - v44) * 0.5;
    v60 = v46 - v59;
    v61 = v50 - v59;
    if (v44 < v55)
    {
      v46 = v60;
      v50 = v61;
      v44 = v55;
    }
  }

  if ([(CKBalloonView *)self hasSuggestedActionsMenu:*&v66])
  {
    v41 = fmax(v41, 250.0);
    [(CKTextBalloonView *)self suggestedActionsMenuAdditionalHeightForBalloonSize:v41, 1.79769313e308];
    v44 = v44 + v62;
    v50 = v50 + v62;
  }

  if (a6)
  {
    a6->top = v46;
    a6->left = v48;
    a6->bottom = v50;
    a6->right = v52;
  }

  if (a4)
  {
    *a4 = v71;
  }

  if (a5)
  {
    a5->top = v70;
    a5->left = v67;
    a5->bottom = v43;
    a5->right = v40;
  }

  v63 = v41;
  v64 = v44;
  result.height = v64;
  result.width = v63;
  return result;
}

- (void)clearFilters
{
  v13.receiver = self;
  v13.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v13 clearFilters];
  v3 = [(CKTextBalloonView *)self textView];
  v4 = [(CKTextBalloonView *)self translationSecondaryTextView];
  v5 = [v3 layer];
  [v5 setAllowsGroupBlending:1];

  v6 = [v3 layer];
  [v6 setAllowsGroupOpacity:1];

  v7 = [v3 layer];
  [v7 setCompositingFilter:0];

  v8 = [(CKTextBalloonView *)self attributedText];
  [v3 setAttributedText:v8];

  v9 = [v4 layer];
  [v9 setAllowsGroupBlending:1];

  v10 = [v4 layer];
  [v10 setAllowsGroupOpacity:1];

  v11 = [v4 layer];
  [v11 setCompositingFilter:0];

  v12 = [(CKTextBalloonView *)self alternateAttributedText];
  [v4 setAttributedText:v12];

  [(CKTextBalloonView *)self _updateAlphaOfTextView];
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v30 addFilter:v4];
  v5 = [(CKTextBalloonView *)self textView];
  v6 = [v5 layer];
  [v6 setAllowsGroupBlending:0];

  v7 = [v5 layer];
  [v7 setAllowsGroupOpacity:0];

  v8 = [v5 layer];
  v9 = [v4 textCompositingFilter];
  [v8 setCompositingFilter:v9];

  [(CKTextBalloonView *)self _updateAlphaOfTextView];
  v10 = [v4 textColor];

  if (v10)
  {
    v11 = [v5 attributedText];
    v12 = [v11 mutableCopy];

    v13 = *MEMORY[0x1E69DB650];
    v14 = [v12 length];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __31__CKTextBalloonView_addFilter___block_invoke;
    v27[3] = &unk_1E72F12B8;
    v28 = v12;
    v15 = v4;
    v29 = v15;
    v16 = v12;
    [v16 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v27}];
    [v5 setAttributedText:v16];
    v17 = [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView attributedText];
    v18 = [v17 mutableCopy];

    v19 = [v18 length];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __31__CKTextBalloonView_addFilter___block_invoke_2;
    v24 = &unk_1E72F12B8;
    v25 = v18;
    v26 = v15;
    v20 = v18;
    [v20 enumerateAttribute:v13 inRange:0 options:v19 usingBlock:{0, &v21}];
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAttributedText:v20, v21, v22, v23, v24];
  }
}

void __31__CKTextBalloonView_addFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69DB650];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) textColor];
  [v7 addAttribute:v6 value:v8 range:{a3, a4}];
}

void __31__CKTextBalloonView_addFilter___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69DB650];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) textColor];
  [v7 addAttribute:v6 value:v8 range:{a3, a4}];
}

- (BOOL)isCandidateForTextEffectPlayback
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v4 isSuspended];

  return v5;
}

- (void)_updateDividerViewFrame
{
  v3 = [(CKTextBalloonView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  v24 = [(CKTextBalloonView *)self textView];
  v6 = [(CKTextBalloonView *)self translationSecondaryTextView];
  v7 = [v24 textContainer];
  [v7 lineFragmentPadding];
  v9 = v8;

  [v24 frame];
  Width = CGRectGetWidth(v26);
  [v6 frame];
  v11 = CGRectGetWidth(v27);
  [v24 frame];
  MinY = CGRectGetMinY(v28);
  v13 = v5;
  if (v5 == 0.0)
  {
    if (CKMainScreenScale_once_72 != -1)
    {
      [CKTextBalloonView _updateDividerViewFrame];
    }

    if (*&CKMainScreenScale_sMainScreenScale_72 == 0.0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = *&CKMainScreenScale_sMainScreenScale_72;
    }
  }

  [v6 frame];
  MinX = CGRectGetMinX(v29);
  if (v5 == 0.0)
  {
    if (CKMainScreenScale_once_72 != -1)
    {
      [CKTextBalloonView _updateDividerViewFrame];
    }

    if (*&CKMainScreenScale_sMainScreenScale_72 == 0.0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = *&CKMainScreenScale_sMainScreenScale_72;
    }
  }

  v15 = v9 + MinX;
  v16 = floor(MinY * v13) / v13;
  if (Width >= v11)
  {
    v17 = Width;
  }

  else
  {
    v17 = v11;
  }

  v18 = v17 + v9 * -2.0;
  v19 = floor(v15 * v5) / v5;
  v20 = [(CKTextBalloonView *)self dividerLine];
  [v20 frame];
  v22 = v21;

  v23 = [(CKTextBalloonView *)self dividerLine];
  [v23 setFrame:{v19, v16, v18, v22}];
}

- (void)_updateTextViewFrame
{
  v3 = objc_autoreleasePoolPush();
  [(CKTextBalloonView *)self __updateTextViewFrame];

  objc_autoreleasePoolPop(v3);
}

- (void)__updateTextViewFrame
{
  [(CKTextBalloonView *)self bounds];
  [(CKTextBalloonView *)self _computedTextViewFrameForBoundsSize:v3, v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v19 = [(CKTextBalloonView *)self textView];
  if ([(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    v13 = [(CKTextBalloonView *)self translationSecondaryTextView];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v15 = v14;
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [v13 setTextContainerInset:?];
    [v13 setFrame:{v6, v8, v10, v15}];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v17 = v8 + v16;
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    [v19 setFrame:{v6, v17, v10, v12 - v18}];
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [v19 setTextContainerInset:?];
  }

  else
  {
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [v19 setTextContainerInset:?];
    [v19 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)_updateTextViewOrigin
{
  [(CKTextBalloonView *)self bounds];
  [(CKTextBalloonView *)self _computedTextViewFrameForBoundsSize:v3, v4];
  v6 = v5;
  v8 = v7;
  rect = v9;
  v11 = v10;
  v12 = [(CKTextBalloonView *)self textView];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(CKTextBalloonView *)self bounds];
  Width = CGRectGetWidth(v35);
  v36.origin.x = v14;
  v36.origin.y = v16;
  v36.size.width = v18;
  v36.size.height = v20;
  v31 = CGRectGetWidth(v36);
  if ([(CKTextBalloonView *)self _shouldReverseLayoutDirection])
  {
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = rect;
    v37.size.height = v11;
    v22 = CGRectGetWidth(v37);
    v38.size.height = v11;
    v23 = Width - v22;
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = rect;
    MinX = Width - v31 - (v23 - CGRectGetMinX(v38));
  }

  else
  {
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = rect;
    v39.size.height = v11;
    MinX = CGRectGetMinX(v39);
  }

  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  MinY = CGRectGetMinY(v40);
  v26 = [(CKTextBalloonView *)self textView];
  [v26 frame];
  v28 = v27;
  v30 = v29;

  recta = [(CKTextBalloonView *)self textView];
  [recta setFrame:{MinX, MinY, v28, v30}];
}

- (CGRect)_computedTextViewFrameForBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKColoredBalloonView *)self alignmentRectInsetsForBoundsSize:?];
  v7 = v6;
  v36 = v8;
  v10 = width - (v8 + v9);
  v12 = height - (v6 + v11);
  [(CKBalloonView *)self textAlignmentInsets];
  v14 = v13;
  v16 = v15;
  v18 = v15 + v17;
  v20 = v12 + v13 + v19;
  if ([(CKTextBalloonView *)self containsExcessiveLineHeightCharacters])
  {
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 transcriptTextFontLanguageAwareOutsets];
    v23 = v22;
    v25 = v24;

    v20 = v20 + v23 + v25;
  }

  v26 = v10 + v18;
  v27 = [(CKTextBalloonView *)self traitCollection];
  [v27 displayScale];
  v29 = v28;

  if (v29 == 0.0)
  {
    if (CKMainScreenScale_once_72 != -1)
    {
      [CKTextBalloonView _updateDividerViewFrame];
    }

    v30 = *&CKMainScreenScale_sMainScreenScale_72;
    if (*&CKMainScreenScale_sMainScreenScale_72 == 0.0)
    {
      v30 = 1.0;
    }

    v31 = ceil(v26 * v30) / v30;
    if (*&CKMainScreenScale_sMainScreenScale_72 == 0.0)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = *&CKMainScreenScale_sMainScreenScale_72;
    }
  }

  else
  {
    v32 = v29;
    v31 = ceil(v26 * v29) / v29;
  }

  v33 = round((v7 + 0.0 - v14) * v29) / v29;
  v34 = round((v36 + 0.0 - v16) * v29) / v29;
  v35 = ceil(v20 * v32) / v32;
  result.size.height = v35;
  result.size.width = v31;
  result.origin.y = v33;
  result.origin.x = v34;
  return result;
}

- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CKBalloonView *)self hasSuggestedActionsMenu];
  result = 0.0;
  if (v6)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 suggestedActionButtonInsets];
    v10 = v9;

    [(CKBalloonView *)self suggestedActionsMenuHeightForSize:width, height];
    return v10 + v11;
  }

  return result;
}

- (void)interactionStartedFromPreviewItemControllerInTextView:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 interactionStartedFromPreviewItemControllerInBalloonView:self];
}

- (void)interactionStoppedFromPreviewItemControllerInTextView:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 interactionStoppedFromPreviewItemControllerInBalloonView:self];
}

- (void)interactionStartedLongPressInTextView:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 balloonViewLongTouched:self];
}

- (void)interactionTextViewDidStopSelection:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 balloonViewDidStopTextSelection:self];
}

- (void)interactionStartedTapInTextView:(id)a3 withModifierFlags:(int64_t)a4 selectedText:(id)a5
{
  v7 = a5;
  v8 = [(CKBalloonView *)self delegate];
  [v8 balloonViewTapped:self withModifierFlags:a4 selectedText:v7];
}

- (void)textViewDidChangeSelection:(id)a3
{
  v7 = a3;
  if (![(CKTextBalloonView *)self ignoreSelectionEvent])
  {
    v4 = [v7 selectedTextRange];
    v5 = [v7 textInRange:v4];
    if ([v5 length])
    {
      v6 = [(CKBalloonView *)self delegate];
      [v6 balloonViewTextViewDidChangeSelection:self selectedText:v5 textView:v7];

      [(CKBalloonView *)self setHasHighlightOverlay:0 animated:1 autoDismiss:0];
    }
  }
}

- (void)textView:(id)a3 willDismissEditMenuWithAnimator:(id)a4
{
  v5 = [(CKBalloonView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKBalloonView *)self delegate];
    [v7 balloonViewWillDismissEditMenu:self];
  }
}

- (void)_textViewDidChangeCustomRenderBounds:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);
  [WeakRetained textBalloonViewTextViewDidChangeRenderBounds:self];
}

- (void)interactionTextViewShouldCopyToPasteboard:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 balloonViewShouldCopyToPasteboard:self];
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  if ([v4 modifierFlags])
  {
    v9.receiver = self;
    v9.super_class = CKTextBalloonView;
    [(CKBalloonView *)&v9 tapGestureRecognized:v4];
  }

  else
  {
    v5 = [(CKTextBalloonView *)self textView];
    v6 = [v5 selectedTextRange];
    v7 = [v5 textInRange:v6];
    v8 = [(CKBalloonView *)self delegate];
    [v8 balloonViewTapped:self withModifierFlags:objc_msgSend(v4 selectedText:{"modifierFlags"), v7}];
  }
}

- (void)interactionTextView:(id)a3 userDidDragOutsideViewWithPoint:(CGPoint)a4
{
  [(CKTextBalloonView *)self convertPoint:a3 fromView:a4.x, a4.y];
  v6 = v5;
  v8 = v7;
  [(CKTextBalloonView *)self bounds];
  v11.x = v6;
  v11.y = v8;
  if (!CGRectContainsPoint(v12, v11))
  {
    v9 = [(CKBalloonView *)self delegate];
    [v9 balloonView:self userDidDragOutsideBalloonWithPoint:{v6, v8}];
  }
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  if (self->_attributedText != v4)
  {
    v6 = v4;
    v5 = [(NSAttributedString *)v4 copy];

    objc_storeStrong(&self->_attributedText, v5);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v4 = v5;
  }
}

- (void)setAlternateAttributedText:(id)a3
{
  v4 = a3;
  alternateAttributedText = self->_alternateAttributedText;
  if (alternateAttributedText != v4)
  {
    if (v4 | alternateAttributedText)
    {
      v7 = v4;
      if (([(NSAttributedString *)alternateAttributedText isEqual:v4]& 1) != 0)
      {
        v4 = v7;
      }

      else
      {
        v6 = [v7 copy];

        objc_storeStrong(&self->_alternateAttributedText, v6);
        [(CKBalloonView *)self setNeedsPrepareForDisplay];
        v4 = v6;
      }
    }

    else
    {
      v4 = 0;
    }
  }
}

- (double)textViewWidthForWidth:(double)a3
{
  [(CKTextBalloonView *)self alignmentRectForFrame:0.0, 0.0, a3, 0.0];
  v5 = v4;
  [(CKBalloonView *)self textAlignmentInsets];
  return v5 + v6 + v7;
}

- (void)cullSubviewsWithVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKBalloonView *)self invisibleInkEffectController];
  v9 = [v8 effectView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTextBalloonView *)self convertRect:v9 toView:x, y, width, height];
    [v9 cullSubviewsWithVisibleBounds:?];
  }
}

- (UIView)dividerLine
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticIncomingTranslationEnabled];

  if (v4 && !self->_dividerLine && [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 0.0, 1.0}];
    [(CKTextBalloonView *)self addSubview:v5];
    dividerLine = self->_dividerLine;
    self->_dividerLine = v5;
  }

  v7 = self->_dividerLine;

  return v7;
}

- (void)invisibleInkEffectViewWasUncovered
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  [v3 suspendForTimeInterval:5.0];

  v4 = [(CKTextBalloonView *)self textEffectsDelegate];

  if (v4)
  {
    v5 = [(CKTextBalloonView *)self textEffectsDelegate];
    [v5 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)invisibleInkEffectViewWasSuspended
{
  v5.receiver = self;
  v5.super_class = CKTextBalloonView;
  [(CKBalloonView *)&v5 invisibleInkEffectViewWasSuspended];
  v3 = [(CKTextBalloonView *)self textEffectsDelegate];

  if (v3)
  {
    v4 = [(CKTextBalloonView *)self textEffectsDelegate];
    [v4 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)invisibleInkEffectViewWasResumed
{
  v5.receiver = self;
  v5.super_class = CKTextBalloonView;
  [(CKBalloonView *)&v5 invisibleInkEffectViewWasResumed];
  v3 = [(CKTextBalloonView *)self textEffectsDelegate];

  if (v3)
  {
    v4 = [(CKTextBalloonView *)self textEffectsDelegate];
    [v4 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)attachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v3 effectView];

  [(CKTextBalloonView *)self invisibleInkEffectViewClass];
  if (objc_opt_isKindOfClass())
  {
    [v5 attachToBalloonView:self];
  }

  v4 = [(CKTextBalloonView *)self textView];
  [(CKTextBalloonView *)self insertSubview:v5 aboveSubview:v4];
}

- (void)detachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v4 = [v3 effectView];

  [(CKTextBalloonView *)self invisibleInkEffectViewClass];
  if (objc_opt_isKindOfClass())
  {
    [v4 detachFromBalloonView];
  }

  [v4 removeFromSuperview];
}

- (void)truncateForLargeText
{
  v3 = [(CKTextBalloonView *)self textView];
  v4 = [v3 textContainer];
  [v4 setMaximumNumberOfLines:3];

  v6 = [(CKTextBalloonView *)self textView];
  v5 = [v6 textContainer];
  [v5 setLineBreakMode:4];
}

- (void)restoreFromLargeTextTruncation
{
  v3 = [(CKTextBalloonView *)self textView];
  v4 = [v3 textContainer];
  [v4 setMaximumNumberOfLines:0];

  v6 = [(CKTextBalloonView *)self textView];
  v5 = [v6 textContainer];
  [v5 setLineBreakMode:0];
}

- (void)setSelected:(BOOL)a3 withSelectionState:(id)a4
{
  v4 = a3;
  v13 = a4;
  [(CKTextBalloonView *)self setIgnoreSelectionEvent:1];
  v6 = [(CKTextBalloonView *)self textView];
  if (!v4)
  {
    goto LABEL_6;
  }

  v7 = [v13 style];
  if (!v7)
  {
    [v6 setFakeSelected:0];
    [v6 setBalloonTextSelectedRange:{0, 0}];
    v12 = 1;
    goto LABEL_8;
  }

  if (v7 != 1)
  {
    goto LABEL_9;
  }

  [v13 textSelectionRange];
  if (v8)
  {
    [v6 setFakeSelected:0];
    v9 = [v13 textSelectionRange];
    v11 = v10;
  }

  else
  {
LABEL_6:
    [v6 setFakeSelected:v4];
    v9 = 0;
    v11 = 0;
  }

  [v6 setBalloonTextSelectedRange:{v9, v11}];
  v12 = 0;
LABEL_8:
  [(CKBalloonView *)self setHasHighlightOverlay:v12 animated:1 autoDismiss:0];
LABEL_9:
}

- (BOOL)isSelected
{
  v2 = [(CKTextBalloonView *)self textView];
  if ([v2 isFakeSelected])
  {
    v3 = 1;
  }

  else
  {
    [v2 selectedRange];
    v3 = v4 != 0;
  }

  return v3;
}

- (id)nonVibrantSubViews
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isAutomaticIncomingTranslationEnabled];

  if (v4)
  {
    dividerLine = self->_dividerLine;
    if (dividerLine)
    {
      translationSecondaryTextView = self->_translationSecondaryTextView;
      if (translationSecondaryTextView)
      {
        textView = self->_textView;
        v15 = dividerLine;
        v16 = translationSecondaryTextView;
        v7 = MEMORY[0x1E695DEC8];
        p_textView = &textView;
        v9 = 3;
        goto LABEL_8;
      }
    }

    v13 = self->_textView;
    v7 = MEMORY[0x1E695DEC8];
    p_textView = &v13;
  }

  else
  {
    v12 = self->_textView;
    v7 = MEMORY[0x1E695DEC8];
    p_textView = &v12;
  }

  v9 = 1;
LABEL_8:
  v10 = [v7 arrayWithObjects:p_textView count:{v9, v12, v13, textView, v15, v16}];

  return v10;
}

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)updateTextSelectionState:(id)a3 forTextSelectionArea:(int64_t)a4
{
  v6 = a3;
  v7 = [(CKTextBalloonView *)self textView];
  v8 = v7;
  if (a4 == 1)
  {
    v11 = [v7 text];
    v12 = [v11 length];

    v13 = [v6 textSelectionRange];
    [v6 textSelectionRange];
    if (v14 + v13 >= v12)
    {
      goto LABEL_9;
    }

    v15 = [v6 textSelectionRange];
    [v6 textSelectionRange];
    v10 = v16 + v15;
    v17 = [v6 textSelectionRange];
    [v6 textSelectionRange];
    v9 = v12 - (v17 + v18);
  }

  else
  {
    if (a4 || ![v6 textSelectionRange])
    {
      goto LABEL_9;
    }

    v9 = [v6 textSelectionRange];
    v10 = 0;
  }

  v19 = +[CKBalloonSelectionState balloonSelectionState:textSelectionRange:](CKBalloonSelectionState, "balloonSelectionState:textSelectionRange:", [v6 style], v10, v9);
  if (v19)
  {
    v20 = v19;
    [(CKTextBalloonView *)self setSelected:1 withSelectionState:v19];
    goto LABEL_10;
  }

LABEL_9:
  v20 = v6;
LABEL_10:

  return v20;
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v7 = [(CKTextBalloonView *)self layer];
  v5 = [(CKTextBalloonView *)self textView];
  v6 = [v5 layer];
  [v7 insertSublayer:v4 below:v6];
}

- (CKTextBalloonViewTextEffectsDelegate)textEffectsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  return WeakRetained;
}

- (CGSize)translationSecondaryTextSize
{
  width = self->_translationSecondaryTextSize.width;
  height = self->_translationSecondaryTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
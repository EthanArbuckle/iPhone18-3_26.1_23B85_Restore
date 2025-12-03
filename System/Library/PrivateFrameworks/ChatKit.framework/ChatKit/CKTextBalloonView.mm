@interface CKTextBalloonView
+ (BOOL)supportsAllowsTextAnimationChanges;
- (BOOL)_shouldShowTranslationSecondaryTextView;
- (BOOL)isCandidateForTextEffectPlayback;
- (BOOL)isSelected;
- (BOOL)shouldResignFirstResponderFor:(id)for;
- (CGRect)_computedTextViewFrameForBoundsSize:(CGSize)size;
- (CGSize)_minimumFittingSize;
- (CGSize)_textSizeThatFits:(CGSize)fits translationSecondaryTextSize:(CGSize *)size textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CGSize)sizeThatFits:(CGSize)fits translationSecondaryTextSize:(CGSize *)size tailInsets:(UIEdgeInsets *)insets textAlignmentInsets:(UIEdgeInsets *)alignmentInsets isSingleLine:(BOOL *)line;
- (CGSize)translationSecondaryTextSize;
- (CKBalloonTextViewProtocol)translationSecondaryTextView;
- (CKTextBalloonView)initWithFrame:(CGRect)frame;
- (CKTextBalloonView)initWithFrame:(CGRect)frame textView:(id)view;
- (CKTextBalloonViewTextEffectsDelegate)textEffectsDelegate;
- (NSString)description;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (UIEdgeInsets)targetTextContainerInsets;
- (UIView)dividerLine;
- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)size;
- (double)textViewWidthForWidth:(double)width;
- (id)nonVibrantSubViews;
- (id)updateTextSelectionState:(id)state forTextSelectionArea:(int64_t)area;
- (unint64_t)_allowedTextViewLayoutAction;
- (void)__updateTextViewFrame;
- (void)_textViewDidChangeCustomRenderBounds:(id)bounds;
- (void)_updateAlphaOfTextView;
- (void)_updateDividerViewFrame;
- (void)_updateTextContainerInsets;
- (void)_updateTextViewFrame;
- (void)_updateTextViewOrigin;
- (void)addFilter:(id)filter;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)composition;
- (void)configureForMessagePart:(id)part;
- (void)cullSubviewsWithVisibleBounds:(CGRect)bounds;
- (void)detachInvisibleInkEffectView;
- (void)insertHighlightOverlayLayer:(id)layer;
- (void)interactionStartedFromPreviewItemControllerInTextView:(id)view;
- (void)interactionStartedLongPressInTextView:(id)view;
- (void)interactionStartedTapInTextView:(id)view withModifierFlags:(int64_t)flags selectedText:(id)text;
- (void)interactionStoppedFromPreviewItemControllerInTextView:(id)view;
- (void)interactionTextView:(id)view userDidDragOutsideViewWithPoint:(CGPoint)point;
- (void)interactionTextViewDidStopSelection:(id)selection;
- (void)interactionTextViewShouldCopyToPasteboard:(id)pasteboard;
- (void)invisibleInkEffectViewWasResumed;
- (void)invisibleInkEffectViewWasSuspended;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)restoreFromLargeTextTruncation;
- (void)setAlternateAttributedText:(id)text;
- (void)setAttributedText:(id)text;
- (void)setDimsContentOverTranscriptBackground:(BOOL)background;
- (void)setSelected:(BOOL)selected withSelectionState:(id)state;
- (void)tapGestureRecognized:(id)recognized;
- (void)textView:(id)view willDismissEditMenuWithAnimator:(id)animator;
- (void)textViewDidChangeSelection:(id)selection;
- (void)truncateForLargeText;
- (void)updateRasterizationForInvisibleInkEffect;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews;
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
  textView = [(CKTextBalloonView *)self textView];
  translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
  attributedText = [(CKTextBalloonView *)self attributedText];
  alternateAttributedText = [(CKTextBalloonView *)self alternateAttributedText];
  v7 = 0x1E69A8000uLL;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && ([objc_opt_class() supportsAllowsTextAnimationChanges] & 1) == 0)
  {
    if ([textView allowsTextAnimations])
    {
      textEffectsDelegate = [(CKTextBalloonView *)self textEffectsDelegate];
      v11 = [textEffectsDelegate customTextRenderingDisplayLinkForTextBalloonViewTextView:self];

      textView2 = [(CKTextBalloonView *)self textView];
      [textView2 _setCustomRenderDisplayLink:v11];
    }

    if ([translationSecondaryTextView allowsTextAnimations])
    {
      textEffectsDelegate2 = [(CKTextBalloonView *)self textEffectsDelegate];
      v14 = [textEffectsDelegate2 customTextRenderingDisplayLinkForTextBalloonViewTextView:self];

      translationSecondaryTextView2 = [(CKTextBalloonView *)self translationSecondaryTextView];
      [translationSecondaryTextView2 _setCustomRenderDisplayLink:v14];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  filters = [(CKBalloonView *)self filters];
  v17 = [filters countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v35 = translationSecondaryTextView;
    v19 = *v43;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(filters);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        textColor = [v21 textColor];

        if (textColor)
        {
          v34 = textView;
          v23 = [attributedText mutableCopy];
          v24 = *MEMORY[0x1E69DB650];
          v25 = [attributedText length];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __38__CKTextBalloonView_prepareForDisplay__block_invoke;
          v39[3] = &unk_1E72F12B8;
          v26 = v23;
          v40 = v26;
          v41 = v21;
          [v26 enumerateAttribute:v24 inRange:0 options:v25 usingBlock:{0, v39}];
          v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v26];

          if (alternateAttributedText)
          {
            v28 = [alternateAttributedText mutableCopy];
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

            alternateAttributedText = v31;
          }

          translationSecondaryTextView = v35;
          v7 = 0x1E69A8000uLL;

          attributedText = v27;
          textView = v34;
          goto LABEL_19;
        }
      }

      v18 = [filters countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    translationSecondaryTextView = v35;
    v7 = 0x1E69A8000;
  }

LABEL_19:

  if (objc_opt_respondsToSelector())
  {
    [textView setAttributedText:attributedText checkForMentions:0];
  }

  else
  {
    [textView setAttributedText:attributedText];
  }

  if (objc_opt_respondsToSelector())
  {
    [translationSecondaryTextView setAttributedText:alternateAttributedText checkForMentions:0];
  }

  else
  {
    [translationSecondaryTextView setAttributedText:alternateAttributedText];
  }

  sharedFeatureFlags = [*(v7 + 112) sharedFeatureFlags];
  isExpressiveTextEnabled2 = [sharedFeatureFlags isExpressiveTextEnabled];

  if (isExpressiveTextEnabled2 && [objc_opt_class() supportsAllowsTextAnimationChanges])
  {
    [textView _setCustomRenderDisplayLink:0];
    [textView setAllowsTextAnimations:0];
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView _setCustomRenderDisplayLink:0];
    [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAllowsTextAnimations:0];
  }
}

- (CKBalloonTextViewProtocol)translationSecondaryTextView
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled && !self->_translationSecondaryTextView && [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (!isAutomaticIncomingTranslationEnabled || ![(CKTextBalloonView *)self shouldShowTranslationSecondaryText])
  {
    return 0;
  }

  alternateAttributedText = [(CKTextBalloonView *)self alternateAttributedText];
  if (alternateAttributedText)
  {
    alternateAttributedText2 = [(CKTextBalloonView *)self alternateAttributedText];
    v7 = [alternateAttributedText2 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)supportsAllowsTextAnimationChanges
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
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
    balloonTailShape = [(CKBalloonView *)self balloonTailShape];
  }

  else
  {
    balloonTailShape = 0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 skinnyBalloonMaskSizeWithTailShape:balloonTailShape];
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
    invisibleInkEffectPaused = [(CKBalloonView *)self invisibleInkEffectPaused];
  }

  else
  {
    invisibleInkEffectPaused = 0;
  }

  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];
  [effectView _setShouldRasterize:invisibleInkEffectPaused];
}

- (void)configureForComposition:(id)composition
{
  compositionCopy = composition;
  v32.receiver = self;
  v32.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v32 configureForComposition:compositionCopy];
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  text = [compositionCopy text];
  v7 = [v5 initWithAttributedString:text];

  v8 = [v7 length];
  v9 = *MEMORY[0x1E69DB650];
  v10 = +[CKUIBehavior sharedBehaviors];
  theme = [v10 theme];
  v12 = [theme balloonTextColorForColorType:{-[CKBalloonView color](self, "color")}];
  [v7 addAttribute:v9 value:v12 range:{0, v8}];

  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v7 __ck_bigEmojiStyleWithSingleBigEmojiSupported:{objc_msgSend(v13, "entryViewSupportsSingleBigEmojiFont")}];
  v15 = 0;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      multipleBigEmojiFont = [v13 multipleBigEmojiFont];
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_11;
      }

      multipleBigEmojiFont = [v13 singleBigAssetFont];
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_11;
    }

    multipleBigEmojiFont = [v13 singleBigEmojiFont];
  }

  else
  {
    multipleBigEmojiFont = [v13 balloonTextFont];
  }

  v15 = multipleBigEmojiFont;
LABEL_11:
  v17 = *MEMORY[0x1E69DB648];
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:v15 range:{0, v8}];
  subject = [compositionCopy subject];
  if (subject)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD40]);
    [compositionCopy subject];
    v20 = v30 = v9;
    v21 = [v19 initWithAttributedString:v20];

    v22 = [v21 length];
    +[CKUIBehavior sharedBehaviors];
    v31 = v13;
    v24 = v23 = self;
    balloonSubjectFont = [v24 balloonSubjectFont];
    [v21 addAttribute:v17 value:balloonSubjectFont range:{0, v22}];

    v26 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v26 theme];
    v28 = [theme2 balloonTextColorForColorType:{-[CKBalloonView color](v23, "color")}];
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

- (void)configureForMessagePart:(id)part
{
  v14[2] = *MEMORY[0x1E69E9840];
  partCopy = part;
  v12.receiver = self;
  v12.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v12 configureForMessagePart:partCopy];
  if ([partCopy containsHyperlink])
  {
    textView = [(CKTextBalloonView *)self textView];
    v13[0] = *MEMORY[0x1E69DB650];
    v6 = +[CKUIBehavior sharedBehaviors];
    theme = [v6 theme];
    v8 = [theme balloonTextLinkColorForColorType:{objc_msgSend(partCopy, "color")}];
    v13[1] = *MEMORY[0x1E69DB758];
    v14[0] = v8;
    v14[1] = &unk_1F04E7FB0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [textView setLinkTextAttributes:v9];
  }

  transcriptText = [partCopy transcriptText];
  [(CKTextBalloonView *)self setAttributedText:transcriptText];

  -[CKTextBalloonView setDimsContentOverTranscriptBackground:](self, "setDimsContentOverTranscriptBackground:", [partCopy dimsContentOverTranscriptBackground]);
  [partCopy translationSecondaryTextSize];
  [(CKTextBalloonView *)self setTranslationSecondaryTextSize:?];
  -[CKTextBalloonView setShouldShowTranslationSecondaryText:](self, "setShouldShowTranslationSecondaryText:", [partCopy showTranslationAlternateText]);
  alternateTranscriptText = [partCopy alternateTranscriptText];
  [(CKTextBalloonView *)self setAlternateAttributedText:alternateTranscriptText];

  -[CKTextBalloonView setContainsExcessiveLineHeightCharacters:](self, "setContainsExcessiveLineHeightCharacters:", [partCopy containsExcessiveLineHeightCharacters]);
  [(CKTextBalloonView *)self _updateTextContainerInsets];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  textView = [(CKTextBalloonView *)self textView];
  v8.receiver = self;
  v8.super_class = CKTextBalloonView;
  v5 = [(CKColoredBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKTextBalloonView textView:%@ %@]", textView, v5];

  return v6;
}

- (CKTextBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[CKBalloonTextView makeTextView];
  height = [(CKTextBalloonView *)self initWithFrame:v8 textView:x, y, width, height];

  return height;
}

- (CKTextBalloonView)initWithFrame:(CGRect)frame textView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = CKTextBalloonView;
  height = [(CKColoredBalloonView *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    [viewCopy _disableTiledViews];
    [viewCopy setInteractionDelegate:height];
    [viewCopy setDelegate:height];
    [(CKTextBalloonView *)height targetTextContainerInsets];
    [viewCopy setTextContainerInset:?];
    [viewCopy setShouldAdjustInsetsForMinimumSize:1];
    [(CKTextBalloonView *)height addSubview:viewCopy];
    [(CKTextBalloonView *)height setTextView:viewCopy];
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [(CKTextBalloonView *)height registerForTraitChanges:v11 withHandler:&__block_literal_global_190];

    v17 = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(CKTextBalloonView *)height registerForTraitChanges:v13 withHandler:&__block_literal_global_212_1];

    [(CKTextBalloonView *)height setIgnoreSelectionEvent:1];
  }

  return height;
}

- (unint64_t)_allowedTextViewLayoutAction
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (!isExpressiveTextEnabled)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);
  v6 = [WeakRetained textBalloonViewAllowedLayoutActionForTextBalloonView:self];

  textView = [(CKTextBalloonView *)self textView];
  LODWORD(WeakRetained) = [textView ck_hasPlayingOrPausedTextAnimator];

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
  _allowedTextViewLayoutAction = [(CKTextBalloonView *)self _allowedTextViewLayoutAction];
  if (_allowedTextViewLayoutAction == 1)
  {
    [(CKTextBalloonView *)self _updateTextViewOrigin];
  }

  else if (!_allowedTextViewLayoutAction)
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
    translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
    [translationSecondaryTextView setAlpha:1.0];

    dividerLine = [(CKTextBalloonView *)self dividerLine];
    [dividerLine setAlpha:1.0];

    dividerLine2 = [(CKTextBalloonView *)self dividerLine];
    v11 = +[CKUIBehavior sharedBehaviors];
    theme = [v11 theme];
    v13 = [theme balloonTranslationDividerLineColorInPrintingPathForColorType:{-[CKBalloonView color](self, "color")}];
    [dividerLine2 setBackgroundColor:v13];
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
  textView = [(CKTextBalloonView *)self textView];
  [textView setTextContainerInset:{v4, v6, v8, v10}];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textView = [(CKTextBalloonView *)self textView];
    allowsTextAnimations = [textView allowsTextAnimations];

    if (allowsTextAnimations)
    {
      textView2 = [(CKTextBalloonView *)self textView];
      [textView2 _setCustomRenderDisplayLink:0];

      if ([objc_opt_class() supportsAllowsTextAnimationChanges])
      {
        textView3 = [(CKTextBalloonView *)self textView];
        [textView3 setAllowsTextAnimations:0];

        [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView setAllowsTextAnimations:0];
      }
    }
  }

  [(CKTextBalloonView *)self setDimsContentOverTranscriptBackground:0];
  textView4 = [(CKTextBalloonView *)self textView];
  [textView4 setHidden:0];

  translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
  [translationSecondaryTextView setAlpha:0.0];

  dividerLine = [(CKTextBalloonView *)self dividerLine];
  [dividerLine setAlpha:0.0];

  [(CKTextBalloonView *)self setContainsExcessiveLineHeightCharacters:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  nonVibrantSubViews = [(CKTextBalloonView *)self nonVibrantSubViews];
  v13 = [nonVibrantSubViews countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(nonVibrantSubViews);
        }

        [*(*(&v17 + 1) + 8 * v16++) setUserInteractionEnabled:1];
      }

      while (v14 != v16);
      v14 = [nonVibrantSubViews countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)setDimsContentOverTranscriptBackground:(BOOL)background
{
  if (self->_dimsContentOverTranscriptBackground != background)
  {
    self->_dimsContentOverTranscriptBackground = background;
    [(CKTextBalloonView *)self _updateAlphaOfTextView];
  }
}

- (void)_updateAlphaOfTextView
{
  v3 = 1.0;
  if (self->_dimsContentOverTranscriptBackground)
  {
    traitCollection = [(CKTextBalloonView *)self traitCollection];
    isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

    if (isTranscriptBackgroundActive)
    {
      v3 = 0.5;
    }

    else
    {
      v3 = 1.0;
    }
  }

  filters = [(CKBalloonView *)self filters];
  lastObject = [filters lastObject];

  if (lastObject)
  {
    [lastObject contentAlpha];
    v3 = v7;
  }

  textView = [(CKTextBalloonView *)self textView];
  [textView setAlpha:v3];
}

- (BOOL)shouldResignFirstResponderFor:(id)for
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  forCopy = for;
  v4 = [forCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(forCopy);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) key];
        charactersIgnoringModifiers = [v7 charactersIgnoringModifiers];
        v9 = [charactersIgnoringModifiers length];

        if (v9)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [forCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (CGSize)_textSizeThatFits:(CGSize)fits translationSecondaryTextSize:(CGSize *)size textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line
{
  height = fits.height;
  width = fits.width;
  textView = [(CKTextBalloonView *)self textView];
  [textView sizeThatFits:insets textAlignmentInsets:line isSingleLine:{width, height}];
  v14 = v13;
  v16 = v15;

  if ([(NSAttributedString *)self->_alternateAttributedText length]&& [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
    [translationSecondaryTextView sizeThatFits:insets textAlignmentInsets:line isSingleLine:{width, height}];
    v19 = v18;
    v21 = v20;

    if (size)
    {
      size->width = v19;
      size->height = v21;
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

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:0 tailInsets:insets textAlignmentInsets:0 isSingleLine:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:tailInsets tailInsets:insets textAlignmentInsets:0 isSingleLine:fits.width, fits.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets isSingleLine:(BOOL *)line
{
  [(CKTextBalloonView *)self sizeThatFits:0 translationSecondaryTextSize:0 tailInsets:insets textAlignmentInsets:0 isSingleLine:fits.width, fits.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits translationSecondaryTextSize:(CGSize *)size tailInsets:(UIEdgeInsets *)insets textAlignmentInsets:(UIEdgeInsets *)alignmentInsets isSingleLine:(BOOL *)line
{
  height = fits.height;
  width = fits.width;
  [(UIView *)self __ck_alignmentRectSizeForFrameSize:?];
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v72 = *MEMORY[0x1E69DDCE0];
  v73 = v14;
  v71 = *MEMORY[0x1E695F060];
  [(CKTextBalloonView *)self _textSizeThatFits:&v71 translationSecondaryTextSize:&v72 textAlignmentInsets:line isSingleLine:?];
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
  textView = [(CKTextBalloonView *)self textView];
  if ([textView shouldAdjustInsetsForMinimumSize])
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

  if (alignmentInsets)
  {
    alignmentInsets->top = v46;
    alignmentInsets->left = v48;
    alignmentInsets->bottom = v50;
    alignmentInsets->right = v52;
  }

  if (size)
  {
    *size = v71;
  }

  if (insets)
  {
    insets->top = v70;
    insets->left = v67;
    insets->bottom = v43;
    insets->right = v40;
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
  textView = [(CKTextBalloonView *)self textView];
  translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
  layer = [textView layer];
  [layer setAllowsGroupBlending:1];

  layer2 = [textView layer];
  [layer2 setAllowsGroupOpacity:1];

  layer3 = [textView layer];
  [layer3 setCompositingFilter:0];

  attributedText = [(CKTextBalloonView *)self attributedText];
  [textView setAttributedText:attributedText];

  layer4 = [translationSecondaryTextView layer];
  [layer4 setAllowsGroupBlending:1];

  layer5 = [translationSecondaryTextView layer];
  [layer5 setAllowsGroupOpacity:1];

  layer6 = [translationSecondaryTextView layer];
  [layer6 setCompositingFilter:0];

  alternateAttributedText = [(CKTextBalloonView *)self alternateAttributedText];
  [translationSecondaryTextView setAttributedText:alternateAttributedText];

  [(CKTextBalloonView *)self _updateAlphaOfTextView];
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  v30.receiver = self;
  v30.super_class = CKTextBalloonView;
  [(CKColoredBalloonView *)&v30 addFilter:filterCopy];
  textView = [(CKTextBalloonView *)self textView];
  layer = [textView layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [textView layer];
  [layer2 setAllowsGroupOpacity:0];

  layer3 = [textView layer];
  textCompositingFilter = [filterCopy textCompositingFilter];
  [layer3 setCompositingFilter:textCompositingFilter];

  [(CKTextBalloonView *)self _updateAlphaOfTextView];
  textColor = [filterCopy textColor];

  if (textColor)
  {
    attributedText = [textView attributedText];
    v12 = [attributedText mutableCopy];

    v13 = *MEMORY[0x1E69DB650];
    v14 = [v12 length];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __31__CKTextBalloonView_addFilter___block_invoke;
    v27[3] = &unk_1E72F12B8;
    v28 = v12;
    v15 = filterCopy;
    v29 = v15;
    v16 = v12;
    [v16 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v27}];
    [textView setAttributedText:v16];
    attributedText2 = [(CKBalloonTextViewProtocol *)self->_translationSecondaryTextView attributedText];
    v18 = [attributedText2 mutableCopy];

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
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];

  if (!invisibleInkEffectController)
  {
    return 1;
  }

  invisibleInkEffectController2 = [(CKBalloonView *)self invisibleInkEffectController];
  isSuspended = [invisibleInkEffectController2 isSuspended];

  return isSuspended;
}

- (void)_updateDividerViewFrame
{
  traitCollection = [(CKTextBalloonView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  textView = [(CKTextBalloonView *)self textView];
  translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
  textContainer = [textView textContainer];
  [textContainer lineFragmentPadding];
  v9 = v8;

  [textView frame];
  Width = CGRectGetWidth(v26);
  [translationSecondaryTextView frame];
  v11 = CGRectGetWidth(v27);
  [textView frame];
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

  [translationSecondaryTextView frame];
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
  dividerLine = [(CKTextBalloonView *)self dividerLine];
  [dividerLine frame];
  v22 = v21;

  dividerLine2 = [(CKTextBalloonView *)self dividerLine];
  [dividerLine2 setFrame:{v19, v16, v18, v22}];
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
  textView = [(CKTextBalloonView *)self textView];
  if ([(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
  {
    translationSecondaryTextView = [(CKTextBalloonView *)self translationSecondaryTextView];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v15 = v14;
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [translationSecondaryTextView setTextContainerInset:?];
    [translationSecondaryTextView setFrame:{v6, v8, v10, v15}];
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    v17 = v8 + v16;
    [(CKTextBalloonView *)self translationSecondaryTextSize];
    [textView setFrame:{v6, v17, v10, v12 - v18}];
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [textView setTextContainerInset:?];
  }

  else
  {
    [(CKTextBalloonView *)self targetTextContainerInsets];
    [textView setTextContainerInset:?];
    [textView setFrame:{v6, v8, v10, v12}];
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
  textView = [(CKTextBalloonView *)self textView];
  [textView frame];
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
  textView2 = [(CKTextBalloonView *)self textView];
  [textView2 frame];
  v28 = v27;
  v30 = v29;

  recta = [(CKTextBalloonView *)self textView];
  [recta setFrame:{MinX, MinY, v28, v30}];
}

- (CGRect)_computedTextViewFrameForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  traitCollection = [(CKTextBalloonView *)self traitCollection];
  [traitCollection displayScale];
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

- (double)suggestedActionsMenuAdditionalHeightForBalloonSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  hasSuggestedActionsMenu = [(CKBalloonView *)self hasSuggestedActionsMenu];
  result = 0.0;
  if (hasSuggestedActionsMenu)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 suggestedActionButtonInsets];
    v10 = v9;

    [(CKBalloonView *)self suggestedActionsMenuHeightForSize:width, height];
    return v10 + v11;
  }

  return result;
}

- (void)interactionStartedFromPreviewItemControllerInTextView:(id)view
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate interactionStartedFromPreviewItemControllerInBalloonView:self];
}

- (void)interactionStoppedFromPreviewItemControllerInTextView:(id)view
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate interactionStoppedFromPreviewItemControllerInBalloonView:self];
}

- (void)interactionStartedLongPressInTextView:(id)view
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate balloonViewLongTouched:self];
}

- (void)interactionTextViewDidStopSelection:(id)selection
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate balloonViewDidStopTextSelection:self];
}

- (void)interactionStartedTapInTextView:(id)view withModifierFlags:(int64_t)flags selectedText:(id)text
{
  textCopy = text;
  delegate = [(CKBalloonView *)self delegate];
  [delegate balloonViewTapped:self withModifierFlags:flags selectedText:textCopy];
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  if (![(CKTextBalloonView *)self ignoreSelectionEvent])
  {
    selectedTextRange = [selectionCopy selectedTextRange];
    v5 = [selectionCopy textInRange:selectedTextRange];
    if ([v5 length])
    {
      delegate = [(CKBalloonView *)self delegate];
      [delegate balloonViewTextViewDidChangeSelection:self selectedText:v5 textView:selectionCopy];

      [(CKBalloonView *)self setHasHighlightOverlay:0 animated:1 autoDismiss:0];
    }
  }
}

- (void)textView:(id)view willDismissEditMenuWithAnimator:(id)animator
{
  v5 = [(CKBalloonView *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonViewWillDismissEditMenu:self];
  }
}

- (void)_textViewDidChangeCustomRenderBounds:(id)bounds
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);
  [WeakRetained textBalloonViewTextViewDidChangeRenderBounds:self];
}

- (void)interactionTextViewShouldCopyToPasteboard:(id)pasteboard
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate balloonViewShouldCopyToPasteboard:self];
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy modifierFlags])
  {
    v9.receiver = self;
    v9.super_class = CKTextBalloonView;
    [(CKBalloonView *)&v9 tapGestureRecognized:recognizedCopy];
  }

  else
  {
    textView = [(CKTextBalloonView *)self textView];
    selectedTextRange = [textView selectedTextRange];
    v7 = [textView textInRange:selectedTextRange];
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonViewTapped:self withModifierFlags:objc_msgSend(recognizedCopy selectedText:{"modifierFlags"), v7}];
  }
}

- (void)interactionTextView:(id)view userDidDragOutsideViewWithPoint:(CGPoint)point
{
  [(CKTextBalloonView *)self convertPoint:view fromView:point.x, point.y];
  v6 = v5;
  v8 = v7;
  [(CKTextBalloonView *)self bounds];
  v11.x = v6;
  v11.y = v8;
  if (!CGRectContainsPoint(v12, v11))
  {
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonView:self userDidDragOutsideBalloonWithPoint:{v6, v8}];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (self->_attributedText != textCopy)
  {
    v6 = textCopy;
    v5 = [(NSAttributedString *)textCopy copy];

    objc_storeStrong(&self->_attributedText, v5);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    textCopy = v5;
  }
}

- (void)setAlternateAttributedText:(id)text
{
  textCopy = text;
  alternateAttributedText = self->_alternateAttributedText;
  if (alternateAttributedText != textCopy)
  {
    if (textCopy | alternateAttributedText)
    {
      v7 = textCopy;
      if (([(NSAttributedString *)alternateAttributedText isEqual:textCopy]& 1) != 0)
      {
        textCopy = v7;
      }

      else
      {
        v6 = [v7 copy];

        objc_storeStrong(&self->_alternateAttributedText, v6);
        [(CKBalloonView *)self setNeedsPrepareForDisplay];
        textCopy = v6;
      }
    }

    else
    {
      textCopy = 0;
    }
  }
}

- (double)textViewWidthForWidth:(double)width
{
  [(CKTextBalloonView *)self alignmentRectForFrame:0.0, 0.0, width, 0.0];
  v5 = v4;
  [(CKBalloonView *)self textAlignmentInsets];
  return v5 + v6 + v7;
}

- (void)cullSubviewsWithVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKTextBalloonView *)self convertRect:effectView toView:x, y, width, height];
    [effectView cullSubviewsWithVisibleBounds:?];
  }
}

- (UIView)dividerLine
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled && !self->_dividerLine && [(CKTextBalloonView *)self _shouldShowTranslationSecondaryTextView])
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
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController suspendForTimeInterval:5.0];

  textEffectsDelegate = [(CKTextBalloonView *)self textEffectsDelegate];

  if (textEffectsDelegate)
  {
    textEffectsDelegate2 = [(CKTextBalloonView *)self textEffectsDelegate];
    [textEffectsDelegate2 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)invisibleInkEffectViewWasSuspended
{
  v5.receiver = self;
  v5.super_class = CKTextBalloonView;
  [(CKBalloonView *)&v5 invisibleInkEffectViewWasSuspended];
  textEffectsDelegate = [(CKTextBalloonView *)self textEffectsDelegate];

  if (textEffectsDelegate)
  {
    textEffectsDelegate2 = [(CKTextBalloonView *)self textEffectsDelegate];
    [textEffectsDelegate2 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)invisibleInkEffectViewWasResumed
{
  v5.receiver = self;
  v5.super_class = CKTextBalloonView;
  [(CKBalloonView *)&v5 invisibleInkEffectViewWasResumed];
  textEffectsDelegate = [(CKTextBalloonView *)self textEffectsDelegate];

  if (textEffectsDelegate)
  {
    textEffectsDelegate2 = [(CKTextBalloonView *)self textEffectsDelegate];
    [textEffectsDelegate2 textBalloonViewTextView:self didChangeTextEffectPlaybackCandidateStatus:{-[CKTextBalloonView isCandidateForTextEffectPlayback](self, "isCandidateForTextEffectPlayback")}];
  }
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [(CKTextBalloonView *)self invisibleInkEffectViewClass];
  if (objc_opt_isKindOfClass())
  {
    [effectView attachToBalloonView:self];
  }

  textView = [(CKTextBalloonView *)self textView];
  [(CKTextBalloonView *)self insertSubview:effectView aboveSubview:textView];
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [(CKTextBalloonView *)self invisibleInkEffectViewClass];
  if (objc_opt_isKindOfClass())
  {
    [effectView detachFromBalloonView];
  }

  [effectView removeFromSuperview];
}

- (void)truncateForLargeText
{
  textView = [(CKTextBalloonView *)self textView];
  textContainer = [textView textContainer];
  [textContainer setMaximumNumberOfLines:3];

  textView2 = [(CKTextBalloonView *)self textView];
  textContainer2 = [textView2 textContainer];
  [textContainer2 setLineBreakMode:4];
}

- (void)restoreFromLargeTextTruncation
{
  textView = [(CKTextBalloonView *)self textView];
  textContainer = [textView textContainer];
  [textContainer setMaximumNumberOfLines:0];

  textView2 = [(CKTextBalloonView *)self textView];
  textContainer2 = [textView2 textContainer];
  [textContainer2 setLineBreakMode:0];
}

- (void)setSelected:(BOOL)selected withSelectionState:(id)state
{
  selectedCopy = selected;
  stateCopy = state;
  [(CKTextBalloonView *)self setIgnoreSelectionEvent:1];
  textView = [(CKTextBalloonView *)self textView];
  if (!selectedCopy)
  {
    goto LABEL_6;
  }

  style = [stateCopy style];
  if (!style)
  {
    [textView setFakeSelected:0];
    [textView setBalloonTextSelectedRange:{0, 0}];
    v12 = 1;
    goto LABEL_8;
  }

  if (style != 1)
  {
    goto LABEL_9;
  }

  [stateCopy textSelectionRange];
  if (v8)
  {
    [textView setFakeSelected:0];
    textSelectionRange = [stateCopy textSelectionRange];
    v11 = v10;
  }

  else
  {
LABEL_6:
    [textView setFakeSelected:selectedCopy];
    textSelectionRange = 0;
    v11 = 0;
  }

  [textView setBalloonTextSelectedRange:{textSelectionRange, v11}];
  v12 = 0;
LABEL_8:
  [(CKBalloonView *)self setHasHighlightOverlay:v12 animated:1 autoDismiss:0];
LABEL_9:
}

- (BOOL)isSelected
{
  textView = [(CKTextBalloonView *)self textView];
  if ([textView isFakeSelected])
  {
    v3 = 1;
  }

  else
  {
    [textView selectedRange];
    v3 = v4 != 0;
  }

  return v3;
}

- (id)nonVibrantSubViews
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x1E69A8070] isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled)
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

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews
{
  v13 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(subviewsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:0];
      }

      while (v5 != v7);
      v5 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)updateTextSelectionState:(id)state forTextSelectionArea:(int64_t)area
{
  stateCopy = state;
  textView = [(CKTextBalloonView *)self textView];
  v8 = textView;
  if (area == 1)
  {
    text = [textView text];
    v12 = [text length];

    textSelectionRange = [stateCopy textSelectionRange];
    [stateCopy textSelectionRange];
    if (v14 + textSelectionRange >= v12)
    {
      goto LABEL_9;
    }

    textSelectionRange2 = [stateCopy textSelectionRange];
    [stateCopy textSelectionRange];
    v10 = v16 + textSelectionRange2;
    textSelectionRange3 = [stateCopy textSelectionRange];
    [stateCopy textSelectionRange];
    textSelectionRange4 = v12 - (textSelectionRange3 + v18);
  }

  else
  {
    if (area || ![stateCopy textSelectionRange])
    {
      goto LABEL_9;
    }

    textSelectionRange4 = [stateCopy textSelectionRange];
    v10 = 0;
  }

  v19 = +[CKBalloonSelectionState balloonSelectionState:textSelectionRange:](CKBalloonSelectionState, "balloonSelectionState:textSelectionRange:", [stateCopy style], v10, textSelectionRange4);
  if (v19)
  {
    v20 = v19;
    [(CKTextBalloonView *)self setSelected:1 withSelectionState:v19];
    goto LABEL_10;
  }

LABEL_9:
  v20 = stateCopy;
LABEL_10:

  return v20;
}

- (void)insertHighlightOverlayLayer:(id)layer
{
  layerCopy = layer;
  layer = [(CKTextBalloonView *)self layer];
  textView = [(CKTextBalloonView *)self textView];
  layer2 = [textView layer];
  [layer insertSublayer:layerCopy below:layer2];
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
@interface SFURLLabel
- (BOOL)_defaultTighteningWithoutTruncationFitsInWidth:(double)a3;
- (BOOL)_shouldShrinkTextToFitWidth;
- (BOOL)needsMasking;
- (CGSize)_fittingURLSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)urlSize;
- (SFURLLabel)initWithFadeOutDistance:(double)a3;
- (double)_minimumScaleFactor;
- (double)lastLineBaselineFrameOriginY;
- (int64_t)_lineBreakMode;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateMask;
- (void)_updateSize;
- (void)_updateSizeIfNeeded;
- (void)beginTextSizeAnimation;
- (void)endTextSizeAnimation;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setFadeOutEdge:(int64_t)a3;
- (void)setFadeOutEnabled:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignmentEdge:(int64_t)a3;
@end

@implementation SFURLLabel

- (void)_updateSize
{
  [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = v3;
  width = self->_urlSize.width;
  height = self->_urlSize.height;
  self->_urlSize.width = v7;
  if (_SFEqualWithEpsilon(v3, 0.0, 0.001))
  {
    v4 = self->_urlSize.height;
  }

  else
  {
    self->_urlSize.height = v4;
  }

  if (width != self->_urlSize.width || height != v4)
  {
    [(SFURLLabel *)self invalidateIntrinsicContentSize];
    if (!self->_needsUpdateSize)
    {

      [(SFURLLabel *)self setNeedsLayout];
    }
  }
}

- (void)_updateSizeIfNeeded
{
  if (self->_needsUpdateSize)
  {
    [(SFURLLabel *)self _updateSize];
  }

  self->_needsUpdateSize = 0;
}

- (void)_updateMask
{
  if ([(SFURLLabel *)self needsMasking]|| [(SFURLLabel *)self isAnimatingTextSize])
  {
    fadeOut = self->_fadeOut;
  }

  else
  {
    fadeOut = 0;
  }

  [(SFURLLabel *)self setMaskView:fadeOut];
}

- (int64_t)_lineBreakMode
{
  if (self->_fadeOutEnabled && ![(UILabel *)self->_label allowsDefaultTighteningForTruncation])
  {
    return 2;
  }

  if (self->_fadeOutEdge == 1)
  {
    return 4;
  }

  return 3;
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = SFURLLabel;
  [(SFURLLabel *)&v40 layoutSubviews];
  [(SFURLLabel *)self _updateSizeIfNeeded];
  [(SFURLLabel *)self _fittingURLSize];
  self->_fittingURLSize.width = v3;
  self->_fittingURLSize.height = v4;
  p_textSizeTransitionContext = &self->_textSizeTransitionContext;
  if (self->_textSizeTransitionContext.transitionCount)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __28__SFURLLabel_layoutSubviews__block_invoke;
    v39[3] = &unk_1E721B360;
    v39[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v39];
  }

  [(SFURLLabel *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  p_label = &self->_label;
  [(UILabel *)self->_label setLineBreakMode:[(SFURLLabel *)self _lineBreakMode]];
  label = self->_label;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v38.a = *MEMORY[0x1E695EFD0];
  *&v38.c = v16;
  *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
  [(UILabel *)label setTransform:&v38];
  if (self->_fadeOutEnabled)
  {
    if (self->_textAlignmentEdge)
    {
      v41.origin.x = v7;
      v41.origin.y = v9;
      v41.size.width = v11;
      v41.size.height = v13;
      v17 = CGRectGetMaxX(v41) - self->_fittingURLSize.width;
    }

    else
    {
      v17 = 0.0;
    }

    v42.origin.x = v7;
    v42.origin.y = v9;
    v42.size.width = v11;
    v42.size.height = v13;
    CGRectGetHeight(v42);
    v18 = _SFRoundRectToPixels(v17);
  }

  else
  {
    [(SFURLLabel *)self bounds];
  }

  [(UILabel *)*p_label setFrame:v18];
  if (p_textSizeTransitionContext->label)
  {
    v19 = [(UILabel *)*p_label textColor];
    [(UILabel *)p_textSizeTransitionContext->label setTextColor:v19];

    [(UILabel *)*p_label center];
    [(UILabel *)p_textSizeTransitionContext->label setCenter:?];
    [(UILabel *)*p_label frame];
    Width = CGRectGetWidth(v43);
    v21 = Width / CGRectGetWidth(self->_textSizeTransitionContext.previousLabelFrame);
    [(UILabel *)*p_label frame];
    Height = CGRectGetHeight(v44);
    v23 = Height / CGRectGetHeight(self->_textSizeTransitionContext.previousLabelFrame);
    CGAffineTransformMakeScale(&v37, v21, v23);
    v24 = p_textSizeTransitionContext->label;
    v38 = v37;
    [(UILabel *)v24 setTransform:&v38];
    v25 = _SFEqualWithEpsilon(v21, 1.0, 0.0001) && _SFEqualWithEpsilon(v23, 1.0, 0.0001);
    [(UILabel *)*p_label setAlpha:!v25];
    v26 = v25;
  }

  else
  {
    v26 = 1.0;
    p_textSizeTransitionContext = &self->_label;
  }

  [(UILabel *)p_textSizeTransitionContext->label setAlpha:v26];
  [(SFURLLabel *)self bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  if (![(SFURLLabel *)self needsMasking])
  {
    fadeOutDistance = self->_fadeOutDistance;
    v32 = v32 + fadeOutDistance;
    v36 = v28 - fadeOutDistance;
    if (self->_textAlignmentEdge == 1)
    {
      v28 = v36;
    }
  }

  [(UIImageView *)self->_fadeOut setFrame:v28, v30, v32, v34];
  [(SFURLLabel *)self _updateMask];
}

- (BOOL)needsMasking
{
  if (!self->_fadeOutEnabled)
  {
    return 0;
  }

  width = self->_fittingURLSize.width;
  [(SFURLLabel *)self bounds];
  return width > CGRectGetWidth(v4) + 0.001;
}

- (CGSize)urlSize
{
  width = self->_urlSize.width;
  height = self->_urlSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SFURLLabel)initWithFadeOutDistance:(double)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFURLLabel;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(SFURLLabel *)&v21 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_fadeOutDistance = a3;
    v8->_fadeOutEnabled = 1;
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v9->_label;
    v9->_label = v10;

    v12 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9->_label setBackgroundColor:v12];

    [(UILabel *)v9->_label setContentMode:9];
    v13 = [(SFURLLabel *)v9 contentView];
    [v13 addSubview:v9->_label];
    [v13 setClipsToBounds:0];
    v14 = [[SFURLLabelFadeOutImageView alloc] initWithFrame:v4, v5, v6, v7];
    fadeOut = v9->_fadeOut;
    v9->_fadeOut = &v14->super;

    v16 = SFFadeOutImage(0, v9->_fadeOutDistance);
    [(UIImageView *)v9->_fadeOut setImage:v16];

    v22[0] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18 = [(SFURLLabel *)v9 registerForTraitChanges:v17 withTarget:v9 action:sel__preferredContentSizeCategoryDidChange];

    v19 = v9;
  }

  return v9;
}

uint64_t __28__SFURLLabel_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setBounds:{0.0, 0.0, *(*(a1 + 32) + 616), *(*(a1 + 32) + 624)}];
  Width = CGRectGetWidth(*(*(a1 + 32) + 584));
  [*(*(a1 + 32) + 544) bounds];
  v3 = Width / CGRectGetWidth(v10);
  Height = CGRectGetHeight(*(*(a1 + 32) + 584));
  [*(*(a1 + 32) + 544) bounds];
  v5 = CGRectGetHeight(v11);
  CGAffineTransformMakeScale(&v9, v3, Height / v5);
  v6 = *(*(a1 + 32) + 544);
  v8 = v9;
  return [v6 setTransform:&v8];
}

- (void)setTextAlignmentEdge:(int64_t)a3
{
  if (self->_textAlignmentEdge != a3)
  {
    self->_textAlignmentEdge = a3;
    [(SFURLLabel *)self setNeedsLayout];
  }
}

- (void)setFadeOutEdge:(int64_t)a3
{
  if (self->_fadeOutEdge != a3)
  {
    self->_fadeOutEdge = a3;
    v5 = SFFadeOutImage(a3 != 0, self->_fadeOutDistance);
    [(UIImageView *)self->_fadeOut setImage:v5];
  }
}

- (void)setFadeOutEnabled:(BOOL)a3
{
  if (self->_fadeOutEnabled != a3)
  {
    self->_fadeOutEnabled = a3;
    [(SFURLLabel *)self setNeedsLayout];
  }
}

- (void)beginTextSizeAnimation
{
  p_textSizeTransitionContext = &self->_textSizeTransitionContext;
  if (self->_textSizeTransitionContext.label)
  {
    ++self->_textSizeTransitionContext.transitionCount;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(UILabel *)self->_label bounds];
    v5 = [v4 initWithFrame:?];
    v6 = [(UILabel *)self->_label font];
    [(UILabel *)v5 setFont:v6];

    v7 = [(UILabel *)self->_label textColor];
    [(UILabel *)v5 setTextColor:v7];

    v8 = [(UILabel *)self->_label text];
    [(UILabel *)v5 setText:v8];

    [(UILabel *)v5 setTextAlignment:[(UILabel *)self->_label textAlignment]];
    [(UILabel *)v5 setLineBreakMode:[(UILabel *)self->_label lineBreakMode]];
    [(UILabel *)v5 setNumberOfLines:[(UILabel *)self->_label numberOfLines]];
    [(UILabel *)v5 setAdjustsFontSizeToFitWidth:[(UILabel *)self->_label adjustsFontSizeToFitWidth]];
    [(UILabel *)v5 setAllowsDefaultTighteningForTruncation:[(UILabel *)self->_label allowsDefaultTighteningForTruncation]];
    label = p_textSizeTransitionContext->label;
    p_textSizeTransitionContext->label = v5;
    v10 = v5;

    [(UILabel *)self->_label bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    p_textSizeTransitionContext->previousLabelFrame.origin.x = v12;
    p_textSizeTransitionContext->previousLabelFrame.origin.y = v14;
    p_textSizeTransitionContext->previousLabelFrame.size.width = v16;
    p_textSizeTransitionContext->previousLabelFrame.size.height = v18;
    v19 = p_textSizeTransitionContext->label;
    ++p_textSizeTransitionContext->transitionCount;
    if (!v19)
    {
      return;
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__SFURLLabel_beginTextSizeAnimation__block_invoke;
  v20[3] = &unk_1E721B360;
  v20[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
}

uint64_t __36__SFURLLabel_beginTextSizeAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateMask];
  [*(*(a1 + 32) + 544) center];
  [*(*(a1 + 32) + 568) setCenter:?];
  v2 = [*(a1 + 32) contentView];
  [v2 addSubview:*(*(a1 + 32) + 568)];

  v3 = *(*(a1 + 32) + 544);

  return [v3 setAlpha:0.0];
}

- (void)endTextSizeAnimation
{
  p_textSizeTransitionContext = &self->_textSizeTransitionContext;
  v3 = self->_textSizeTransitionContext.transitionCount - 1;
  self->_textSizeTransitionContext.transitionCount = v3;
  if (!v3)
  {
    [(SFURLLabel *)self _updateMask];
    [(UILabel *)p_textSizeTransitionContext->label removeFromSuperview];
    label = p_textSizeTransitionContext->label;
    p_textSizeTransitionContext->label = 0;

    v6 = self->_label;

    [(UILabel *)v6 setAlpha:1.0];
  }
}

- (void)setText:(id)a3
{
  v11 = a3;
  v4 = [(UILabel *)self->_label text];
  v5 = [v11 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_label setText:v11];
    p_textSizeTransitionContext = &self->_textSizeTransitionContext;
    if (self->_textSizeTransitionContext.transitionCount)
    {
      [(UILabel *)p_textSizeTransitionContext->label setText:v11];
      [(UILabel *)p_textSizeTransitionContext->label sizeToFit];
      [(UILabel *)p_textSizeTransitionContext->label bounds];
      self->_textSizeTransitionContext.previousLabelFrame.origin.x = v7;
      self->_textSizeTransitionContext.previousLabelFrame.origin.y = v8;
      self->_textSizeTransitionContext.previousLabelFrame.size.width = v9;
      self->_textSizeTransitionContext.previousLabelFrame.size.height = v10;
    }

    [(SFURLLabel *)self _updateSize];
  }
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_label font];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_label setFont:v6];
    [(SFURLLabel *)self _updateSize];
  }
}

- (void)setAttributedText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_label attributedText];
  v5 = [v6 isEqualToAttributedString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_label setAttributedText:v6];
    [(SFURLLabel *)self _updateSize];
  }
}

- (double)lastLineBaselineFrameOriginY
{
  [(SFURLLabel *)self layoutIfNeeded];
  label = self->_label;

  [(UILabel *)label _lastLineBaselineFrameOriginY];
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SFURLLabel *)self _updateSizeIfNeeded];
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v7 = self->_urlSize.width;
    v8 = self->_urlSize.height;
  }

  else
  {
    [(UILabel *)self->_label sizeThatFits:width, height];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_fittingURLSize
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(SFURLLabel *)self bounds];
  Width = CGRectGetWidth(v25);
  if ([(SFURLLabel *)self _shouldShrinkTextToFitWidth]&& (p_urlSize = &self->_urlSize, self->_urlSize.width > Width))
  {
    v5 = [(SFURLLabel *)self _defaultTighteningWithoutTruncationFitsInWidth:Width];
    label = self->_label;
    if (v5)
    {
      [(UILabel *)label setAdjustsFontSizeToFitWidth:0];
      [(UILabel *)self->_label setAllowsDefaultTighteningForTruncation:1];
      height = self->_urlSize.height;
    }

    else
    {
      [(UILabel *)label setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_label setAllowsDefaultTighteningForTruncation:0];
      v10 = MEMORY[0x1E69DB878];
      v11 = [(UILabel *)self->_label font];
      v12 = [v11 fontDescriptor];
      v13 = [(UILabel *)self->_label font];
      [v13 pointSize];
      v15 = v14;
      [(SFURLLabel *)self _minimumScaleFactor];
      v17 = [v10 fontWithDescriptor:v12 size:v15 * v16];

      v18 = [(UILabel *)self->_label text];
      v22 = *MEMORY[0x1E69DB648];
      v23[0] = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [v18 sizeWithAttributes:v19];
      v21 = v20;

      Width = fmax(Width, v21);
      height = p_urlSize->height;
    }
  }

  else
  {
    [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)self->_label setAllowsDefaultTighteningForTruncation:0];
    Width = self->_urlSize.width;
    height = self->_urlSize.height;
  }

  v8 = Width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)_shouldShrinkTextToFitWidth
{
  if (!self->_shrinksTextToFitWidth)
  {
    return 0;
  }

  if (!self->_fadeOutEnabled)
  {
    return 0;
  }

  [(SFURLLabel *)self bounds];
  if (CGRectGetWidth(v4) == 0.0)
  {
    return 0;
  }

  [(SFURLLabel *)self bounds];
  return CGRectGetHeight(v5) != 0.0;
}

- (BOOL)_defaultTighteningWithoutTruncationFitsInWidth:(double)a3
{
  v4 = [(UILabel *)self->_label attributedText];
  v5 = CTLineCreateWithAttributedString(v4);

  if (!v5)
  {
    return 0;
  }

  JustifiedLineWithOptions = CTLineCreateJustifiedLineWithOptions();
  CFRelease(v5);
  if (!JustifiedLineWithOptions)
  {
    return 0;
  }

  TypographicBounds = CTLineGetTypographicBounds(JustifiedLineWithOptions, 0, 0, 0);
  v8 = TypographicBounds - CTLineGetTrailingWhitespaceWidth(JustifiedLineWithOptions);
  CFRelease(JustifiedLineWithOptions);
  return v8 <= a3;
}

- (double)_minimumScaleFactor
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(SFURLLabel *)self traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  v7 = MEMORY[0x1E69DB878];
  v8 = *MEMORY[0x1E69DDD28];
  v9 = [(SFURLLabel *)self traitCollection];
  v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v9];

  [v10 pointSize];
  v12 = v11;
  [v6 pointSize];
  v14 = v12 / v13;

  return v14;
}

- (CGSize)intrinsicContentSize
{
  [(SFURLLabel *)self _updateSizeIfNeeded];
  width = self->_urlSize.width;
  height = self->_urlSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_preferredContentSizeCategoryDidChange
{
  if ([(SFURLLabel *)self adjustsFontForContentSizeCategory])
  {

    [(SFURLLabel *)self _setNeedsUpdateSize];
  }
}

@end
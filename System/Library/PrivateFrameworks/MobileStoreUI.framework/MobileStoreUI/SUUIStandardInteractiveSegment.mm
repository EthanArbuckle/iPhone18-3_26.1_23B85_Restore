@interface SUUIStandardInteractiveSegment
- (CGSize)_titleLabelSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIStandardInteractiveSegment)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentEdgeInsets;
- (id)_backgroundImage;
- (id)_borderImage;
- (id)_createCorneredImageWithScale:(double)scale forBorder:(BOOL)border;
- (id)_inverseProgressTimingFunction;
- (id)_progressTimingFunction;
- (unint64_t)_cornersForSegmentPosition:(int64_t)position;
- (void)_applySelectionProgress;
- (void)_reloadCorneredImages;
- (void)_updateBorderAndBackgroundContainerViewTinting;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)title;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRelativeSelectionProgress:(double)progress;
- (void)setSegmentPosition:(int64_t)position;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SUUIStandardInteractiveSegment

- (SUUIStandardInteractiveSegment)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SUUIStandardInteractiveSegment;
  v3 = [(SUUIStandardInteractiveSegment *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *&v3->_contentEdgeInsets.top = xmmword_259FCB9F0;
    *&v3->_contentEdgeInsets.bottom = xmmword_259FCB9F0;
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    borderAndBackgroundContainerView = v4->_borderAndBackgroundContainerView;
    v4->_borderAndBackgroundContainerView = v10;

    [(UIView *)v4->_borderAndBackgroundContainerView setTintAdjustmentMode:1];
    [(UIView *)v4->_borderAndBackgroundContainerView setUserInteractionEnabled:0];
    [(SUUIStandardInteractiveSegment *)v4 addSubview:v4->_borderAndBackgroundContainerView];
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
    borderImageView = v4->_borderImageView;
    v4->_borderImageView = v12;

    [(UIImageView *)v4->_borderImageView setContentMode:0];
    [(UIView *)v4->_borderAndBackgroundContainerView addSubview:v4->_borderImageView];
    [(SUUIStandardInteractiveSegment *)v4 _updateBorderAndBackgroundContainerViewTinting];
  }

  return v4;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = SUUIStandardInteractiveSegment;
  [(SUUIStandardInteractiveSegment *)&v47 layoutSubviews];
  traitCollection = [(SUUIStandardInteractiveSegment *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  if (v5 > 0.00000011920929)
  {
    v46 = v5;
    [(SUUIStandardInteractiveSegment *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIView *)self->_borderAndBackgroundContainerView setFrame:?];
    [(UIView *)self->_borderAndBackgroundContainerView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (!self->_hasValidCorneredImages)
    {
      [(SUUIStandardInteractiveSegment *)self _reloadCorneredImages];
    }

    v22 = [(SUUIStandardInteractiveSegment *)self _cornersForSegmentPosition:self->_segmentPosition];
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    v40 = v17;
    v41 = v19;
    Width = CGRectGetWidth(v48);
    v45 = *(MEMORY[0x277CBF3A0] + 8);
    v49.origin.x = v7;
    v49.origin.y = v9;
    v49.size.width = v11;
    v49.size.height = v13;
    v24 = v21;
    v25 = CGRectGetWidth(v49);
    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    Height = CGRectGetHeight(v50);
    v26 = Width + -0.5;
    v27 = v25 + -1.0;
    v28 = 1.0;
    if ((~v22 & 5) != 0)
    {
      v27 = v25;
      v28 = 0.0;
      v26 = Width;
      v29 = 0.0;
    }

    else
    {
      v29 = 0.5;
    }

    v30 = v27 + -1.0;
    if ((v22 & 0xA) != 0xALL)
    {
      v30 = v27;
    }

    v42 = v30;
    v43 = v28;
    if ((v22 & 0xA) == 0xALL)
    {
      v31 = v26 + -0.5;
    }

    else
    {
      v31 = v26;
    }

    v51.origin.x = v15;
    v51.origin.y = v40;
    v51.size.width = v41;
    v51.size.height = v24;
    v32 = CGRectGetHeight(v51) + -1.0;
    [(UIImageView *)self->_highlightedBackgroundImageView setFrame:v29, 0.5, v31, v32];
    [(UIImageView *)self->_selectedBackgroundImageView setFrame:v29, 0.5, v31, v32];
    [(UIImageView *)self->_borderImageView frame];
    v52.origin.x = v15;
    v52.origin.y = v40;
    v52.size.width = v41;
    v52.size.height = v24;
    v33 = CGRectGetWidth(v52);
    v53.origin.x = v15;
    v53.origin.y = v40;
    v53.size.width = v41;
    v53.size.height = v24;
    [(UIImageView *)self->_borderImageView setFrame:0.0, 0.0, v33, CGRectGetHeight(v53)];
    top = self->_contentEdgeInsets.top;
    left = self->_contentEdgeInsets.left;
    v36 = v43 + left;
    v37 = v45 + top;
    v38 = v42 - (left + self->_contentEdgeInsets.right);
    v39 = Height - (top + self->_contentEdgeInsets.bottom);
    [(SUUIStandardInteractiveSegment *)self _titleLabelSize];
    v54.origin.x = v36;
    v54.origin.y = v37;
    v54.size.width = v38;
    v54.size.height = v39;
    CGRectGetWidth(v54);
    v55.origin.x = v36;
    v55.origin.y = v37;
    v55.size.width = v38;
    v55.size.height = v39;
    CGRectGetHeight(v55);
    UIRectCenteredIntegralRectScale();
    [(UILabel *)self->_titleLabel setFrame:*&v46];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(SUUIStandardInteractiveSegment *)self _titleLabelSize];
  v7 = v6;
  top = self->_contentEdgeInsets.top;
  bottom = self->_contentEdgeInsets.bottom;
  v11 = v10 + self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
  v12 = ~[(SUUIStandardInteractiveSegment *)self _cornersForSegmentPosition:self->_segmentPosition];
  v13 = v11 + 1.0;
  if ((v12 & 5) != 0)
  {
    v13 = v11;
  }

  v14 = v13 + 1.0;
  if ((v12 & 0xA) != 0)
  {
    v14 = v13;
  }

  v15 = v7 + top + bottom;
  if (width < v14)
  {
    v14 = width;
  }

  if (height < v15)
  {
    v15 = height;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SUUIStandardInteractiveSegment;
  [(SUUIStandardInteractiveSegment *)&v3 tintColorDidChange];
  [(SUUIStandardInteractiveSegment *)self _updateBorderAndBackgroundContainerViewTinting];
  [(SUUIStandardInteractiveSegment *)self _applySelectionProgress];
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = SUUIStandardInteractiveSegment;
  changeCopy = change;
  [(SUUIStandardInteractiveSegment *)&v13 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(SUUIStandardInteractiveSegment *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  v10 = v6 > 0.00000011920929 || v9 <= 0.00000011920929;
  v11 = vabdd_f64(v9, v6);
  if (!v10 || v11 > 0.00000011920929)
  {
    [(SUUIStandardInteractiveSegment *)self _setNeedsReloadCorneredImages];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SUUIStandardInteractiveSegment *)self isHighlighted];
  v17.receiver = self;
  v17.super_class = SUUIStandardInteractiveSegment;
  [(SUUIStandardInteractiveSegment *)&v17 setHighlighted:highlightedCopy];
  isHighlighted2 = [(SUUIStandardInteractiveSegment *)self isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    highlightTransactionCount = self->_highlightTransactionCount;
    if (isHighlighted2)
    {
      self->_highlightTransactionCount = highlightTransactionCount + 1;
      highlightedBackgroundImageView = self->_highlightedBackgroundImageView;
      if (!highlightedBackgroundImageView)
      {
        v9 = objc_alloc(MEMORY[0x277D755E8]);
        v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v11 = self->_highlightedBackgroundImageView;
        self->_highlightedBackgroundImageView = v10;

        [(UIImageView *)self->_highlightedBackgroundImageView setContentMode:0];
        v12 = self->_highlightedBackgroundImageView;
        _backgroundImage = [(SUUIStandardInteractiveSegment *)self _backgroundImage];
        [(UIImageView *)v12 setImage:_backgroundImage];

        [(UIView *)self->_borderAndBackgroundContainerView insertSubview:self->_highlightedBackgroundImageView belowSubview:self->_borderImageView];
        [(SUUIStandardInteractiveSegment *)self setNeedsLayout];
        highlightedBackgroundImageView = self->_highlightedBackgroundImageView;
      }

      [(UIImageView *)highlightedBackgroundImageView setAlpha:0.15];
    }

    else
    {
      v14 = highlightTransactionCount - 1;
      if (v14)
      {
        self->_highlightTransactionCount = v14;
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __49__SUUIStandardInteractiveSegment_setHighlighted___block_invoke;
        v16[3] = &unk_2798F5BE8;
        v16[4] = self;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __49__SUUIStandardInteractiveSegment_setHighlighted___block_invoke_2;
        v15[3] = &unk_2798F5D30;
        v15[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:327680 delay:v16 options:v15 animations:0.2 completion:0.0];
      }
    }
  }
}

void __49__SUUIStandardInteractiveSegment_setHighlighted___block_invoke_2(uint64_t a1)
{
  --*(*(a1 + 32) + 504);
  v2 = *(a1 + 32);
  if (!*(v2 + 504))
  {
    [*(v2 + 496) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 496);
    *(v4 + 496) = 0;
  }
}

- (void)setRelativeSelectionProgress:(double)progress
{
  relativeSelectionProgress = self->_relativeSelectionProgress;
  if (relativeSelectionProgress < progress || relativeSelectionProgress > progress || !self->_hasSetRelativeSelectionProgress)
  {
    self->_hasSetRelativeSelectionProgress = 1;
    self->_relativeSelectionProgress = progress;
    [(SUUIStandardInteractiveSegment *)self _applySelectionProgress];
  }
}

- (void)setSegmentPosition:(int64_t)position
{
  if (self->_segmentPosition != position)
  {
    self->_segmentPosition = position;
    [(SUUIStandardInteractiveSegment *)self _setNeedsReloadCorneredImages];
  }
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  attributedTitle = self->_attributedTitle;
  if (attributedTitle != titleCopy)
  {
    v11 = titleCopy;
    attributedTitle = [(NSAttributedString *)attributedTitle isEqualToAttributedString:titleCopy];
    titleCopy = v11;
    if ((attributedTitle & 1) == 0)
    {
      v6 = [(NSAttributedString *)v11 copy];
      v7 = self->_attributedTitle;
      self->_attributedTitle = v6;

      v8 = [(NSAttributedString *)self->_attributedTitle mutableCopy];
      [(NSAttributedString *)v8 removeAttribute:*MEMORY[0x277D740C0] range:0, [(NSAttributedString *)v8 length]];
      titleLabelAttributedString = self->_titleLabelAttributedString;
      if (titleLabelAttributedString != v8 && ![(NSAttributedString *)titleLabelAttributedString isEqualToAttributedString:v8])
      {
        objc_storeStrong(&self->_titleLabelAttributedString, v8);
        titleLabel = self->_titleLabel;
        if (titleLabel)
        {
          [(UILabel *)titleLabel setAttributedText:self->_titleLabelAttributedString];
          self->_hasDirtyTitleLabelSize = 1;
          [(SUUIStandardInteractiveSegment *)self setNeedsLayout];
        }

        [(SUUIStandardInteractiveSegment *)self _applySelectionProgress];
      }

      titleCopy = v11;
    }
  }

  MEMORY[0x2821F96F8](attributedTitle, titleCopy);
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = insets;
    [(SUUIStandardInteractiveSegment *)self setNeedsLayout];
  }
}

- (void)_applySelectionProgress
{
  if (self->_hasSetRelativeSelectionProgress)
  {
    [(SUUIStandardInteractiveSegment *)self _normalizedSelectionProgressForRelativeSelectionProgress:self->_relativeSelectionProgress];
    v5 = v4;
    _progressTimingFunction = [(SUUIStandardInteractiveSegment *)self _progressTimingFunction];
    *&v7 = v5;
    v33 = _progressTimingFunction;
    [_progressTimingFunction _solveForInput:v7];
    v9 = v8;
    v10 = [(NSAttributedString *)self->_titleLabelAttributedString length];
    titleLabel = self->_titleLabel;
    if (v10)
    {
      if (!titleLabel)
      {
        v12 = objc_alloc(MEMORY[0x277D756B8]);
        v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v14 = self->_titleLabel;
        self->_titleLabel = v13;

        v15 = self->_titleLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v15 setBackgroundColor:clearColor];

        v17 = self->_titleLabel;
        v18 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
        [(UILabel *)v17 setFont:v18];

        [(UILabel *)self->_titleLabel setAttributedText:self->_titleLabelAttributedString];
        [(UILabel *)self->_titleLabel _setTextColorFollowsTintColor:1];
        [(SUUIStandardInteractiveSegment *)self addSubview:self->_titleLabel];
        self->_hasDirtyTitleLabelSize = 1;
        [(SUUIStandardInteractiveSegment *)self setNeedsLayout];
      }

      layer = [(UILabel *)self->_titleLabel layer];
      v20 = layer;
      if (v9 <= 0.00000011921)
      {
        v21 = 0;
      }

      else
      {
        v21 = *MEMORY[0x277CDA658];
      }

      [(UILabel *)layer setCompositingFilter:v21];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v20 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    _inverseProgressTimingFunction = [(SUUIStandardInteractiveSegment *)self _inverseProgressTimingFunction];
    v23 = 1.0 - v5;
    *&v23 = 1.0 - v5;
    [_inverseProgressTimingFunction _solveForInput:v23];
    v25 = 1.0 - v24;
    selectedBackgroundImageView = self->_selectedBackgroundImageView;
    if (v25 <= 0.00000011920929)
    {
      [(UIImageView *)selectedBackgroundImageView removeFromSuperview];
      v32 = self->_selectedBackgroundImageView;
      self->_selectedBackgroundImageView = 0;
    }

    else
    {
      if (!selectedBackgroundImageView)
      {
        v27 = objc_alloc(MEMORY[0x277D755E8]);
        v28 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v29 = self->_selectedBackgroundImageView;
        self->_selectedBackgroundImageView = v28;

        [(UIImageView *)self->_selectedBackgroundImageView setContentMode:0];
        v30 = self->_selectedBackgroundImageView;
        _backgroundImage = [(SUUIStandardInteractiveSegment *)self _backgroundImage];
        [(UIImageView *)v30 setImage:_backgroundImage];

        [(UIView *)self->_borderAndBackgroundContainerView insertSubview:self->_selectedBackgroundImageView aboveSubview:self->_borderImageView];
        [(SUUIStandardInteractiveSegment *)self setNeedsLayout];
        selectedBackgroundImageView = self->_selectedBackgroundImageView;
      }

      [(UIImageView *)selectedBackgroundImageView setAlpha:v25];
    }
  }
}

- (id)_backgroundImage
{
  if (!self->_backgroundImage)
  {
    traitCollection = [(SUUIStandardInteractiveSegment *)self traitCollection];
    [traitCollection displayScale];
    v5 = v4;

    if (v5 > 0.00000011920929)
    {
      v6 = [(SUUIStandardInteractiveSegment *)self _createCorneredImageWithScale:0 forBorder:v5];
      backgroundImage = self->_backgroundImage;
      self->_backgroundImage = v6;
    }
  }

  v8 = self->_backgroundImage;

  return v8;
}

- (id)_borderImage
{
  if (!self->_borderImage)
  {
    traitCollection = [(SUUIStandardInteractiveSegment *)self traitCollection];
    [traitCollection displayScale];
    v5 = v4;

    if (v5 > 0.00000011920929)
    {
      v6 = [(SUUIStandardInteractiveSegment *)self _createCorneredImageWithScale:1 forBorder:v5];
      borderImage = self->_borderImage;
      self->_borderImage = v6;
    }
  }

  v8 = self->_borderImage;

  return v8;
}

- (unint64_t)_cornersForSegmentPosition:(int64_t)position
{
  if (position == 3)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v6 = userInterfaceLayoutDirection == 0;
    v7 = 5;
    v8 = 10;
  }

  else
  {
    if (position != 1)
    {
      if (position)
      {
        return 0;
      }

      else
      {
        return -1;
      }
    }

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];

    v6 = userInterfaceLayoutDirection2 == 0;
    v7 = 10;
    v8 = 5;
  }

  if (v6)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

- (id)_createCorneredImageWithScale:(double)scale forBorder:(BOOL)border
{
  borderCopy = border;
  v6 = [(SUUIStandardInteractiveSegment *)self _cornersForSegmentPosition:self->_segmentPosition];
  if (borderCopy)
  {
    v7 = 8.0;
  }

  else
  {
    v7 = 7.0;
  }

  v8 = v7 + v7 * 2.0 + 1.0;
  if ((v6 & 5) != 0)
  {
    v8 = v7 * 2.0 + 1.0;
    v9 = 0.0;
  }

  else
  {
    v9 = 0.0 - v7;
  }

  if ((v6 & 0xA) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7 + v8;
  }

  v24.width = v7 * 2.0 + 1.0;
  v24.height = v24.width;
  UIGraphicsBeginImageContextWithOptions(v24, 0, scale);
  blackColor = [MEMORY[0x277D75348] blackColor];
  [blackColor set];

  v12 = MEMORY[0x277D75208];
  v13 = 0;
  if (borderCopy)
  {
    v14 = v9;
    v15 = v10;
    v16 = v7 * 2.0 + 1.0;
    v25 = CGRectInset(*(&v13 - 1), 0.5, 0.5);
    v17 = [v12 bezierPathWithRoundedRect:v25.origin.x cornerRadius:{v25.origin.y, v25.size.width, v25.size.height, 3.5}];
    [v17 setLineWidth:1.0];
    [v17 stroke];
  }

  else
  {
    v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v9 cornerRadius:{0.0, v10, v7 * 2.0 + 1.0, 3.5}];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [blackColor2 setFill];

    [v17 fill];
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v20 = [v19 resizableImageWithCapInsets:{v7, v7, v7, v7}];

  v21 = [v20 imageWithRenderingMode:2];

  return v21;
}

- (id)_inverseProgressTimingFunction
{
  inverseProgressTimingFunction = self->_inverseProgressTimingFunction;
  if (!inverseProgressTimingFunction)
  {
    v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    v5 = self->_inverseProgressTimingFunction;
    self->_inverseProgressTimingFunction = v4;

    inverseProgressTimingFunction = self->_inverseProgressTimingFunction;
  }

  return inverseProgressTimingFunction;
}

- (id)_progressTimingFunction
{
  progressTimingFunction = self->_progressTimingFunction;
  if (!progressTimingFunction)
  {
    v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    v5 = self->_progressTimingFunction;
    self->_progressTimingFunction = v4;

    progressTimingFunction = self->_progressTimingFunction;
  }

  return progressTimingFunction;
}

- (void)_reloadCorneredImages
{
  self->_hasValidCorneredImages = 1;
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  borderImage = self->_borderImage;
  self->_borderImage = 0;

  if (self->_highlightedBackgroundImageView || self->_selectedBackgroundImageView)
  {
    _backgroundImage = [(SUUIStandardInteractiveSegment *)self _backgroundImage];
    [(UIImageView *)self->_highlightedBackgroundImageView setImage:_backgroundImage];
    [(UIImageView *)self->_selectedBackgroundImageView setImage:_backgroundImage];
  }

  if (self->_borderImageView)
  {
    _borderImage = [(SUUIStandardInteractiveSegment *)self _borderImage];
    [(UIImageView *)self->_borderImageView setImage:_borderImage];
  }
}

- (CGSize)_titleLabelSize
{
  if (self->_hasDirtyTitleLabelSize)
  {
    self->_hasDirtyTitleLabelSize = 0;
    p_titleLabelSize = &self->_titleLabelSize;
    [(UILabel *)self->_titleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    p_titleLabelSize->width = width;
    p_titleLabelSize->height = height;
  }

  else
  {
    width = self->_titleLabelSize.width;
    height = self->_titleLabelSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateBorderAndBackgroundContainerViewTinting
{
  tintColor = [(SUUIStandardInteractiveSegment *)self tintColor];
  [tintColor alphaComponent];
  v4 = v3;
  v5 = fabs(v3 + -1.0);
  borderAndBackgroundContainerView = self->_borderAndBackgroundContainerView;
  if (v5 <= 0.00000011920929)
  {
    [(UIView *)self->_borderAndBackgroundContainerView setTintColor:tintColor];
    v4 = 1.0;
  }

  else
  {
    v7 = [tintColor colorWithAlphaComponent:1.0];
    [(UIView *)borderAndBackgroundContainerView setTintColor:v7];
  }

  [(UIView *)self->_borderAndBackgroundContainerView setAlpha:v4];
  layer = [(UIView *)self->_borderAndBackgroundContainerView layer];
  [layer setAllowsGroupOpacity:v5 > 0.00000011920929];
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
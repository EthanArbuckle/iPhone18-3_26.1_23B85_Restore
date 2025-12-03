@interface MediaControlsRoundButton
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)assetFrame;
- (CGSize)assetSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MediaControlsRoundButton)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)setAsset:(id)asset;
- (void)setAxis:(int64_t)axis;
- (void)setEnabled:(BOOL)enabled;
- (void)setGlyphState:(id)state;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)updateAssetVisualStyling;
- (void)updateContentSizeCategory;
- (void)updateLabelVisualStyling;
- (void)updateVisualStyling;
@end

@implementation MediaControlsRoundButton

- (CGRect)assetFrame
{
  contentVerticalAlignment = [(MediaControlsRoundButton *)self contentVerticalAlignment];
  [(MediaControlsRoundButton *)self bounds];
  if (contentVerticalAlignment)
  {
    UIRectCenteredXInRect();
  }

  else
  {
    UIRectCenteredIntegralRect();
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = MediaControlsRoundButton;
  [(MediaControlsRoundButton *)&v29 layoutSubviews];
  [(MediaControlsRoundButton *)self bounds];
  [(MediaControlsRoundButton *)self assetFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MRUAssetView *)self->_assetView setFrame:?];
  axis = self->_axis;
  if (axis == 1)
  {
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    CGRectGetMaxX(v32);
    UIRectInset();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)*p_titleLabel sizeThatFits:v25, v27];
    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    CGRectGetMinX(v33);
    UIRectCenteredYInRect();
  }

  else
  {
    if (axis)
    {
      return;
    }

    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    CGRectGetMaxY(v30);
    UIRectInset();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    p_titleLabel = &self->_titleLabel;
    [(UILabel *)*p_titleLabel sizeThatFits:v16, v18];
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    CGRectGetMinY(v31);
    UIRectCenteredXInRect();
  }

  [(UILabel *)*p_titleLabel setFrame:?];
}

- (void)updateAssetVisualStyling
{
  if (([(MediaControlsRoundButton *)self isEnabled]& 1) != 0)
  {
    if ([(MediaControlsRoundButton *)self isHighlighted])
    {
      v3 = 0.2;
    }

    else
    {
      v3 = 1.0;
    }

    [(MRUAssetView *)self->_assetView setAlpha:v3];
  }

  else
  {
    [(MRUAssetView *)self->_assetView setAlpha:0.5];
  }

  if (!self->_stylingProvider)
  {
    if (([(MediaControlsRoundButton *)self isSelected]& 1) != 0)
    {
      [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }
    v4 = ;
    [(MRUAssetView *)self->_assetView setTintColor:v4];
  }
}

- (void)updateLabelVisualStyling
{
  if (self->_labelHidden)
  {
    titleLabel = self->_titleLabel;
    v4 = 0.0;
LABEL_13:

    [(UILabel *)titleLabel setAlpha:v4];
    return;
  }

  if (!self->_stylingProvider)
  {
    goto LABEL_9;
  }

  isEnabled = [(MediaControlsRoundButton *)self isEnabled];
  stylingProvider = self->_stylingProvider;
  if ((isEnabled & 1) == 0)
  {
    v9 = self->_titleLabel;
    traitCollection = [(MediaControlsRoundButton *)self traitCollection];
    [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:v9 traitCollection:traitCollection];

    titleLabel = self->_titleLabel;
    goto LABEL_12;
  }

  if (!stylingProvider)
  {
LABEL_9:
    isEnabled2 = [(MediaControlsRoundButton *)self isEnabled];
    titleLabel = self->_titleLabel;
    if (isEnabled2)
    {
      v4 = 1.0;
      goto LABEL_13;
    }

LABEL_12:
    v4 = 0.5;
    goto LABEL_13;
  }

  v7 = self->_titleLabel;
  traitCollection2 = [(MediaControlsRoundButton *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:v7 traitCollection:traitCollection2];
}

- (MediaControlsRoundButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MediaControlsRoundButton;
  v7 = [(MediaControlsRoundButton *)&v20 initWithFrame:?];
  if (v7)
  {
    v8 = objc_alloc_init(MRUAssetView);
    assetView = v7->_assetView;
    v7->_assetView = v8;

    [(MRUAssetView *)v7->_assetView setUserInteractionEnabled:0];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:27.0];
    [(MRUAssetView *)v7->_assetView setImageSymbolConfiguration:v10];

    [(MediaControlsRoundButton *)v7 addSubview:v7->_assetView];
    v11 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v11;

    [(UILabel *)v7->_titleLabel setNumberOfLines:3];
    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    LODWORD(v13) = 1051931443;
    [(UILabel *)v7->_titleLabel _setHyphenationFactor:v13];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7->_titleLabel setTextColor:labelColor];

    [(UILabel *)v7->_titleLabel setClipsToBounds:0];
    [(UILabel *)v7->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(MediaControlsRoundButton *)v7 addSubview:v7->_titleLabel];
    v22[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [(MediaControlsRoundButton *)v7 registerForTraitChanges:v15 withAction:sel_updateVisualStyling];

    v21 = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v18 = [(MediaControlsRoundButton *)v7 registerForTraitChanges:v17 withAction:sel_updateContentSizeCategory];

    [(MediaControlsRoundButton *)v7 updateContentSizeCategory];
    [(MediaControlsRoundButton *)v7 updateAssetVisualStyling];
    [(MediaControlsRoundButton *)v7 updateLabelVisualStyling];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(MediaControlsRoundButton *)self assetFrame];
  v8 = v6;
  v9 = v7;
  axis = self->_axis;
  if (axis == 1)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width - (v6 + 8.0), height - v7];
    v8 = v8 + MRUSizeCeilToViewScale(self);
    if (v9 < v13)
    {
      v9 = v13;
    }
  }

  else if (!axis)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width - v6, height - (v7 + 8.0)];
    v11 = MRUSizeCeilToViewScale(self);
    if (v11 >= v8)
    {
      v8 = v11;
    }

    v9 = v9 + v12;
  }

  if (v8 >= width)
  {
    v14 = width;
  }

  else
  {
    v14 = v8;
  }

  if (v9 >= height)
  {
    v15 = height;
  }

  else
  {
    v15 = v9;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setAsset:(id)asset
{
  objc_storeStrong(&self->_asset, asset);
  assetCopy = asset;
  [(MRUAssetView *)self->_assetView setAsset:assetCopy];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];
  [(MediaControlsRoundButton *)self setAccessibilityLabel:titleCopy];

  [(MediaControlsRoundButton *)self setNeedsLayout];
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(MRUAssetView *)self->_assetView setGlyphState:stateCopy];
}

- (void)setAxis:(int64_t)axis
{
  self->_axis = axis;
  if (axis)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v4];

  [(MediaControlsRoundButton *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUAssetView *)self->_assetView setStylingProvider:v6];
    [(MediaControlsRoundButton *)self updateLabelVisualStyling];
    providerCopy = v6;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = MediaControlsRoundButton;
  [(MediaControlsRoundButton *)&v4 setHighlighted:highlighted];
  [(MediaControlsRoundButton *)self updateAssetVisualStyling];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = MediaControlsRoundButton;
  [(MediaControlsRoundButton *)&v4 setSelected:selected];
  [(MediaControlsRoundButton *)self updateAssetVisualStyling];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = MediaControlsRoundButton;
  [(MediaControlsRoundButton *)&v4 setEnabled:enabled];
  [(MediaControlsRoundButton *)self updateLabelVisualStyling];
  [(MediaControlsRoundButton *)self updateAssetVisualStyling];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MediaControlsRoundButton *)self assetFrame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MediaControlsRoundButton;
  return (*MEMORY[0x1E69DD9B8] | [(MediaControlsRoundButton *)&v3 accessibilityTraits]) & ~*MEMORY[0x1E69DD9F0];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)updateVisualStyling
{
  [(MediaControlsRoundButton *)self updateAssetVisualStyling];

  [(MediaControlsRoundButton *)self updateLabelVisualStyling];
}

- (void)updateContentSizeCategory
{
  mru_volumeButtonTitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonTitleFont];
  [(UILabel *)self->_titleLabel setFont:mru_volumeButtonTitleFont];
}

- (CGSize)assetSize
{
  width = self->_assetSize.width;
  height = self->_assetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
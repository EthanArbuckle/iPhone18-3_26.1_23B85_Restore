@interface MRUOutputDeviceAssetView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUOutputDeviceAssetView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAsset:(id)asset;
- (void)setGlyphState:(id)state;
- (void)setStylingProvider:(id)provider;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateContentSizeCategory;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRUOutputDeviceAssetView

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = MRUOutputDeviceAssetView;
  [(MRUOutputDeviceAssetView *)&v39 layoutSubviews];
  [(MRUOutputDeviceAssetView *)self bounds];
  UIRectCenteredXInRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(MRUOutputDeviceAsset *)self->_asset type])
  {
    UIRectCenteredRect();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  [(MRUAssetView *)self->_assetView setFrame:v4, v6, v8, v10];
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  CGRectGetMaxY(v40);
  UIRectInset();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(BSUIEmojiLabelView *)self->_titleLabel sizeThatFits:v19, v21];
  MRUSizeCeilToViewScale(self);
  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  CGRectGetMinY(v41);
  v42.origin.x = v16;
  v42.origin.y = v18;
  v42.size.width = v20;
  v42.size.height = v22;
  CGRectGetWidth(v42);
  UIRectCenteredXInRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(BSUIEmojiLabelView *)self->_titleLabel setFrame:?];
  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  CGRectGetHeight(v43);
  UIRectInset();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v35, v37];
  MRUSizeCeilToViewScale(self);
  v44.origin.x = v32;
  v44.origin.y = v34;
  v44.size.width = v36;
  v44.size.height = v38;
  CGRectGetMinY(v44);
  v45.origin.x = v32;
  v45.origin.y = v34;
  v45.size.width = v36;
  v45.size.height = v38;
  CGRectGetWidth(v45);
  UIRectCenteredXInRect();
  [(UILabel *)self->_subtitleLabel setFrame:?];
}

- (void)updateVisibility
{
  type = [(MRUOutputDeviceAsset *)self->_asset type];
  v4 = 1.0;
  if (!type)
  {
    v4 = 0.0;
  }

  titleLabel = self->_titleLabel;

  [(BSUIEmojiLabelView *)titleLabel setAlpha:v4];
}

- (MRUOutputDeviceAssetView)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MRUOutputDeviceAssetView;
  v3 = [(MRUOutputDeviceAssetView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUAssetView);
    assetView = v3->_assetView;
    v3->_assetView = v4;

    [(MRUAssetView *)v3->_assetView setPackageScale:1.25];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:1 scale:44.0];
    [(MRUAssetView *)v3->_assetView setImageSymbolConfiguration:v6];

    [(MRUAssetView *)v3->_assetView setUserInteractionEnabled:0];
    [(MRUAssetView *)v3->_assetView setClipsToBounds:0];
    [(MRUAssetView *)v3->_assetView controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_assetView];
    v7 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(BSUIEmojiLabelView *)v3->_titleLabel setTextAlignment:1];
    [(BSUIEmojiLabelView *)v3->_titleLabel setNumberOfLines:2];
    [(BSUIEmojiLabelView *)v3->_titleLabel setClipsToBounds:0];
    [(BSUIEmojiLabelView *)v3->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_titleLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v9;

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v3->_subtitleLabel setClipsToBounds:0];
    [(UILabel *)v3->_subtitleLabel controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_subtitleLabel];
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [(MRUOutputDeviceAssetView *)v3 registerForTraitChanges:v11 withAction:sel_updateVisualStyling];

    v17 = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(MRUOutputDeviceAssetView *)v3 registerForTraitChanges:v13 withAction:sel_updateContentSizeCategory];

    [(MRUOutputDeviceAssetView *)v3 updateContentSizeCategory];
    [(MRUOutputDeviceAssetView *)v3 updateVisibility];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 54.0;
  v7 = 54.0 + 8.0;
  mru_volumeTitleFont = [MEMORY[0x1E69DB878] mru_volumeTitleFont];
  [mru_volumeTitleFont lineHeight];
  v10 = v9;

  if ([(MRUOutputDeviceAsset *)self->_asset type])
  {
    [(BSUIEmojiLabelView *)self->_titleLabel sizeThatFits:width, height - v7];
    v11 = MRUSizeCeilToViewScale(self);
    if (v11 >= 54.0)
    {
      v6 = v11;
    }

    [(UILabel *)self->_subtitleLabel sizeThatFits:width, height - v7];
    v12 = MRUSizeCeilToViewScale(self);
    if (v12 >= v6)
    {
      v6 = v12;
    }
  }

  v13 = v7 + v10 + v10;
  if (v6 >= width)
  {
    v14 = width;
  }

  else
  {
    v14 = v6;
  }

  if (v13 >= height)
  {
    v13 = height;
  }

  result.height = v13;
  result.width = v14;
  return result;
}

- (void)setAsset:(id)asset
{
  objc_storeStrong(&self->_asset, asset);
  assetCopy = asset;
  [(MRUAssetView *)self->_assetView setAsset:assetCopy];

  [(MRUOutputDeviceAssetView *)self updateVisibility];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(BSUIEmojiLabelView *)self->_titleLabel setText:titleCopy];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_subtitle, subtitle);
  subtitleCopy = subtitle;
  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(MRUAssetView *)self->_assetView setGlyphState:stateCopy];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUAssetView *)self->_assetView setStylingProvider:v6];
    [(MRUOutputDeviceAssetView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRUOutputDeviceAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  subtitleLabel = self->_subtitleLabel;
  traitCollection2 = [(MRUOutputDeviceAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:subtitleLabel traitCollection:traitCollection2];
}

- (void)updateContentSizeCategory
{
  mru_volumeTitleFont = [MEMORY[0x1E69DB878] mru_volumeTitleFont];
  [(BSUIEmojiLabelView *)self->_titleLabel setFont:mru_volumeTitleFont];

  mru_volumeButtonTitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonTitleFont];
  [(UILabel *)self->_subtitleLabel setFont:mru_volumeButtonTitleFont];
}

@end
@interface MRMediaControlsVideoPickerHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRMediaControlsVideoPickerHeaderView)initWithFrame:(CGRect)frame;
- (void)_updateStyle;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)provider;
@end

@implementation MRMediaControlsVideoPickerHeaderView

- (MRMediaControlsVideoPickerHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = MRMediaControlsVideoPickerHeaderView;
  v7 = [(MRMediaControlsVideoPickerHeaderView *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    [(UILabel *)v7->_titleLabel setNumberOfLines:0];
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v11 = [mediaControlsBundle localizedStringForKey:@"AIRPLAY_VIDEO_PICKER_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
    [(UILabel *)v7->_titleLabel setText:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    airPlayIconImageView = v7->_airPlayIconImageView;
    v7->_airPlayIconImageView = v12;

    v14 = +[MediaControlsTheme airplayVideoImage];
    [(UIImageView *)v7->_airPlayIconImageView setImage:v14];

    v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:32.0];
    [(UIImageView *)v7->_airPlayIconImageView setPreferredSymbolConfiguration:v15];

    [(MRMediaControlsVideoPickerHeaderView *)v7 addSubview:v7->_titleLabel];
    [(MRMediaControlsVideoPickerHeaderView *)v7 addSubview:v7->_airPlayIconImageView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = MRMediaControlsVideoPickerHeaderView;
  [(MRMediaControlsVideoPickerHeaderView *)&v28 layoutSubviews];
  [(MRMediaControlsVideoPickerHeaderView *)self bounds];
  [(MRMediaControlsVideoPickerHeaderView *)self bounds];
  UIRectCenteredIntegralRect();
  [(UIImageView *)self->_airPlayIconImageView sizeThatFits:v3, v4];
  UIRectCenteredXInRect();
  v26 = v6;
  v27 = v5;
  v8 = v7;
  v10 = v9;
  UIRectInset();
  UIRectInset();
  v12 = v11;
  v14 = v13;
  titleLabel = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [titleLabel sizeThatFits:{v12, v14}];

  UIRectCenteredXInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  airPlayIconImageView = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
  [airPlayIconImageView setFrame:{v27, v26, v8, v10}];

  titleLabel2 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [titleLabel2 setFrame:{v17, v19, v21, v23}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(MRMediaControlsVideoPickerHeaderView *)self traitCollection];
  [traitCollection displayScale];

  UIRoundToScale();
  v8 = v7;
  [(UIImageView *)self->_airPlayIconImageView sizeThatFits:width, height];
  v10 = v9 + 10.0;
  titleLabel = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v13 = v10 + v12 + 10.0;

  if (v8 >= v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v14 = providerCopy;
    titleLabel = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:titleLabel];

    v8 = self->_visualStylingProvider;
    airPlayIconImageView = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:airPlayIconImageView];

    objc_storeStrong(&self->_visualStylingProvider, provider);
    v10 = self->_visualStylingProvider;
    titleLabel2 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
    [(MTVisualStylingProvider *)v10 automaticallyUpdateView:titleLabel2 withStyle:0];

    v12 = self->_visualStylingProvider;
    airPlayIconImageView2 = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
    [(MTVisualStylingProvider *)v12 automaticallyUpdateView:airPlayIconImageView2 withStyle:0];

    providerCopy = v14;
  }
}

- (void)_updateStyle
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD28];
  traitCollection = [(MRMediaControlsVideoPickerHeaderView *)self traitCollection];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:traitCollection];
  v9 = [v6 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  titleLabel = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [titleLabel setFont:v7];

  [(MRMediaControlsVideoPickerHeaderView *)self setNeedsLayout];
}

@end
@interface MRMediaControlsVideoPickerHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRMediaControlsVideoPickerHeaderView)initWithFrame:(CGRect)a3;
- (void)_updateStyle;
- (void)layoutSubviews;
- (void)setVisualStylingProvider:(id)a3;
@end

@implementation MRMediaControlsVideoPickerHeaderView

- (MRMediaControlsVideoPickerHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v10 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v11 = [v10 localizedStringForKey:@"AIRPLAY_VIDEO_PICKER_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
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
  v15 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [v15 sizeThatFits:{v12, v14}];

  UIRectCenteredXInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
  [v24 setFrame:{v27, v26, v8, v10}];

  v25 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [v25 setFrame:{v17, v19, v21, v23}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MRMediaControlsVideoPickerHeaderView *)self traitCollection];
  [v6 displayScale];

  UIRoundToScale();
  v8 = v7;
  [(UIImageView *)self->_airPlayIconImageView sizeThatFits:width, height];
  v10 = v9 + 10.0;
  v11 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [v11 sizeThatFits:{width, height}];
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

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v14 = v5;
    v7 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:v7];

    v8 = self->_visualStylingProvider;
    v9 = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:v9];

    objc_storeStrong(&self->_visualStylingProvider, a3);
    v10 = self->_visualStylingProvider;
    v11 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
    [(MTVisualStylingProvider *)v10 automaticallyUpdateView:v11 withStyle:0];

    v12 = self->_visualStylingProvider;
    v13 = [(MRMediaControlsVideoPickerHeaderView *)self airPlayIconImageView];
    [(MTVisualStylingProvider *)v12 automaticallyUpdateView:v13 withStyle:0];

    v5 = v14;
  }
}

- (void)_updateStyle
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD28];
  v5 = [(MRMediaControlsVideoPickerHeaderView *)self traitCollection];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:v5];
  v9 = [v6 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  v8 = [(MRMediaControlsVideoPickerHeaderView *)self titleLabel];
  [v8 setFont:v7];

  [(MRMediaControlsVideoPickerHeaderView *)self setNeedsLayout];
}

@end
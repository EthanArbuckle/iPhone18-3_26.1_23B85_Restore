@interface MRMediaControlsVideoPickerFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRMediaControlsVideoPickerFooterView)initWithFrame:(CGRect)a3;
- (id)titleLabelText;
- (void)_updateStyle;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3;
@end

@implementation MRMediaControlsVideoPickerFooterView

- (MRMediaControlsVideoPickerFooterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = MRMediaControlsVideoPickerFooterView;
  v7 = [(MPButton *)&v16 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    customTitleLabel = v7->_customTitleLabel;
    v7->_customTitleLabel = v8;

    v10 = [(MRMediaControlsVideoPickerFooterView *)v7 customTitleLabel];
    [v10 setTextAlignment:1];

    v11 = [(MRMediaControlsVideoPickerFooterView *)v7 customTitleLabel];
    [v11 setNumberOfLines:1];

    v12 = [(MRMediaControlsVideoPickerFooterView *)v7 titleLabelText];
    v13 = [(MRMediaControlsVideoPickerFooterView *)v7 customTitleLabel];
    [v13 setText:v12];

    v14 = [(MRMediaControlsVideoPickerFooterView *)v7 customTitleLabel];
    [(MRMediaControlsVideoPickerFooterView *)v7 addSubview:v14];
  }

  return v7;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MRMediaControlsVideoPickerFooterView;
  [(MPButton *)&v17 layoutSubviews];
  [(MRMediaControlsVideoPickerFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
  [v7 sizeThatFits:{v4, v6}];

  UIRectCenteredIntegralRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MRMediaControlsVideoPickerFooterView *)self traitCollection];
  [v5 displayScale];

  UIRoundToScale();
  if (v6 >= height)
  {
    v7 = height;
  }

  else
  {
    v7 = v6;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (id)titleLabelText
{
  v2 = MGGetSInt32Answer();
  v3 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
  v4 = v3;
  v5 = @"AIRPLAY_VIDEO_PICKER_BUTTON_TITLE_IPHONE";
  if (v2 == 3)
  {
    v5 = @"AIRPLAY_VIDEO_PICKER_BUTTON_TITLE_IPAD";
  }

  if (v2 == 2)
  {
    v6 = @"AIRPLAY_VIDEO_PICKER_BUTTON_TITLE_IPOD";
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 localizedStringForKey:v6 value:&stru_1F1445548 table:@"MediaControls"];

  return v7;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = MRMediaControlsVideoPickerFooterView;
  [(MRMediaControlsVideoPickerFooterView *)&v11 setHighlighted:?];
  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.47;
  }

  v6 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
  [v6 alpha];
  v8 = v7;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MRMediaControlsVideoPickerFooterView_setHighlighted___block_invoke;
  v9[3] = &unk_1E7665790;
  v9[4] = self;
  v10 = v3;
  v9[5] = v8;
  [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v9 options:0 animations:v5 completion:0.0];
}

void __55__MRMediaControlsVideoPickerFooterView_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 40) * 0.2;
  }

  else
  {
    v1 = *(a1 + 40);
  }

  v2 = [*(a1 + 32) customTitleLabel];
  [v2 setAlpha:v1];
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v10 = v5;
    v7 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
    [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:v7];

    objc_storeStrong(&self->_visualStylingProvider, a3);
    v8 = self->_visualStylingProvider;
    v9 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
    [(MTVisualStylingProvider *)v8 automaticallyUpdateView:v9 withStyle:0];

    v5 = v10;
  }
}

- (void)_updateStyle
{
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [(MRMediaControlsVideoPickerFooterView *)self traitCollection];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:v5];
  v11 = [v6 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  v8 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
  [v8 setFont:v7];

  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [(MRMediaControlsVideoPickerFooterView *)self customTitleLabel];
  [v10 setTintColor:v9];

  [(MRMediaControlsVideoPickerFooterView *)self setNeedsLayout];
}

@end
@interface HKSimulatedWatchNotificationQuickLookView
- (HKSimulatedWatchNotificationQuickLookView)initWithIconImage:(id)a3 titleText:(id)a4 detailText:(id)a5 tintColor:(id)a6;
- (void)_layoutQuickLook;
- (void)_setUpSubviews;
@end

@implementation HKSimulatedWatchNotificationQuickLookView

- (HKSimulatedWatchNotificationQuickLookView)initWithIconImage:(id)a3 titleText:(id)a4 detailText:(id)a5 tintColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKSimulatedWatchNotificationQuickLookView;
  v14 = [(HKSimulatedWatchNotificationQuickLookView *)&v17 initWithFrame:0.0, 0.0, 142.0, 195.0];
  v15 = v14;
  if (v14)
  {
    [(HKSimulatedWatchNotificationQuickLookView *)v14 setIconImage:v10];
    [(HKSimulatedWatchNotificationQuickLookView *)v15 setTitleLabelText:v11];
    [(HKSimulatedWatchNotificationQuickLookView *)v15 setDetailLabelText:v12];
    [(HKSimulatedWatchNotificationQuickLookView *)v15 setTintColor:v13];
    [(HKSimulatedWatchNotificationQuickLookView *)v15 _setUpSubviews];
    [(HKSimulatedWatchNotificationQuickLookView *)v15 _layoutQuickLook];
  }

  return v15;
}

- (void)_setUpSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  quickLookIconView = self->_quickLookIconView;
  self->_quickLookIconView = v3;

  [(UIImageView *)self->_quickLookIconView setImage:self->_iconImage];
  [(HKSimulatedWatchNotificationQuickLookView *)self addSubview:self->_quickLookIconView];
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  quickLookTitleContainer = self->_quickLookTitleContainer;
  self->_quickLookTitleContainer = v5;

  v7 = self->_quickLookTitleContainer;
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v7 setBackgroundColor:v8];

  [(HKSimulatedWatchNotificationQuickLookView *)self addSubview:self->_quickLookTitleContainer];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  quickLookTitleLabel = self->_quickLookTitleLabel;
  self->_quickLookTitleLabel = v9;

  [(UILabel *)self->_quickLookTitleLabel setMinimumScaleFactor:0.8];
  v11 = self->_quickLookTitleLabel;
  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v11 setTextColor:v12];

  [(UILabel *)self->_quickLookTitleLabel setTextAlignment:1];
  [(UILabel *)self->_quickLookTitleLabel setLineBreakMode:4];
  v13 = self->_quickLookTitleLabel;
  v14 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v13 setBackgroundColor:v14];

  [(UILabel *)self->_quickLookTitleLabel setNumberOfLines:2];
  [(UIView *)self->_quickLookTitleContainer addSubview:self->_quickLookTitleLabel];
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  quickLookSubtitleContainer = self->_quickLookSubtitleContainer;
  self->_quickLookSubtitleContainer = v15;

  v17 = self->_quickLookSubtitleContainer;
  v18 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)v17 setBackgroundColor:v18];

  [(HKSimulatedWatchNotificationQuickLookView *)self addSubview:self->_quickLookSubtitleContainer];
  v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  quickLookSubtitleLabel = self->_quickLookSubtitleLabel;
  self->_quickLookSubtitleLabel = v19;

  [(UILabel *)self->_quickLookSubtitleLabel setNumberOfLines:1];
  v21 = self->_quickLookSubtitleContainer;
  v22 = self->_quickLookSubtitleLabel;

  [(UIView *)v21 addSubview:v22];
}

- (void)_layoutQuickLook
{
  v3 = self->_titleLabelText;
  v4 = [(NSString *)self->_detailLabelText localizedUppercaseString];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:19.0];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [(UILabel *)self->_quickLookTitleLabel setFont:v5];
  [(UILabel *)self->_quickLookSubtitleLabel setFont:v6];
  [(UILabel *)self->_quickLookTitleLabel setText:v3];
  [(UILabel *)self->_quickLookTitleLabel sizeThatFits:142.0, 47.0];
  v31 = v7;
  v9 = v8;
  quickLookSubtitleLabel = self->_quickLookSubtitleLabel;
  if (v8 <= 25.0)
  {
    [(UILabel *)quickLookSubtitleLabel setNumberOfLines:2];
    v18 = [v4 length];
    v19 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v20 = [v19 mutableCopy];

    [v20 setLineSpacing:2.5];
    [v20 setAlignment:1];
    [v20 setLineBreakMode:0];
    LODWORD(v21) = 1.0;
    [v20 setHyphenationFactor:v21];
    v22 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
    [v22 addAttribute:*MEMORY[0x1E69DB650] value:self->_tintColor range:{0, v18}];
    [v22 addAttribute:*MEMORY[0x1E69DB648] value:v6 range:{0, v18}];
    [v22 addAttribute:*MEMORY[0x1E69DB688] value:v20 range:{0, v18}];
    [(UILabel *)self->_quickLookSubtitleLabel setAttributedText:v22];
    [(UILabel *)self->_quickLookSubtitleLabel sizeThatFits:142.0, 37.5];
    v14 = v23;
    v13 = v24;

    v16 = 27.0;
    v15 = 69.5;
    v17 = 163.0;
  }

  else
  {
    [(UILabel *)quickLookSubtitleLabel setAttributedText:0];
    [(UILabel *)self->_quickLookSubtitleLabel setLineBreakMode:4];
    [(UILabel *)self->_quickLookSubtitleLabel setText:v4];
    [(UILabel *)self->_quickLookSubtitleLabel setTextColor:self->_tintColor];
    [(UILabel *)self->_quickLookSubtitleLabel sizeToFit];
    [(UILabel *)self->_quickLookSubtitleLabel frame];
    v13 = v12;
    if (v11 <= 139.0)
    {
      v14 = v11;
    }

    else
    {
      v14 = 139.0;
    }

    v15 = 62.5;
    v16 = 25.5;
    v17 = 178.0;
  }

  quickLookIconView = self->_quickLookIconView;
  v26 = *(MEMORY[0x1E695EFD0] + 16);
  v32[0] = *MEMORY[0x1E695EFD0];
  v32[1] = v26;
  v32[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIImageView *)quickLookIconView setTransform:v32];
  [(UIImageView *)self->_quickLookIconView setFrame:0.0, 0.0, 98.0, 98.0];
  [(UIImageView *)self->_quickLookIconView setCenter:71.0, v15];
  v27 = fmin(v31, 142.0);
  [(UILabel *)self->_quickLookTitleLabel setFrame:0.0, 0.0, v27, v9];
  [(UILabel *)self->_quickLookTitleLabel _firstLineBaselineOffsetFromBoundsTop];
  v29 = v16 - v28;
  [(UIImageView *)self->_quickLookIconView frame];
  v30 = v29 + CGRectGetMaxY(v33);
  [(UILabel *)self->_quickLookTitleLabel frame];
  [(UIView *)self->_quickLookTitleContainer setFrame:0.0, 0.0, v27];
  [(UIView *)self->_quickLookTitleContainer setCenter:71.0, v9 * 0.5 + v30];
  [(UILabel *)self->_quickLookSubtitleLabel setFrame:0.0, 0.0, v14, v13];
  [(UILabel *)self->_quickLookSubtitleLabel frame];
  [(UIView *)self->_quickLookSubtitleContainer setFrame:0.0, 0.0, v14];
  [(UIView *)self->_quickLookSubtitleContainer setCenter:71.0, v17];
}

@end
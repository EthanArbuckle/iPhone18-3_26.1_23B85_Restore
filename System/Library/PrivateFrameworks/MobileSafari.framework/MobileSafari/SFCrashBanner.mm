@interface SFCrashBanner
- (BOOL)_shouldUseManuallyWrappedCrashMessageForWidth:(double)a3;
- (CGSize)_labelLayoutSizeForWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFCrashBanner)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBannerText:(id)a3 manuallyWrappedBannerText:(id)a4;
- (void)themeDidChange;
@end

@implementation SFCrashBanner

- (SFCrashBanner)initWithFrame:(CGRect)a3
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = SFCrashBanner;
  v3 = [(SFPinnableBanner *)&v57 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFCrashBanner *)v3 setClipsToBounds:0];
    v5 = [(SFCrashBanner *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = _WBSLocalizedString();
    bannerText = v4->_bannerText;
    v4->_bannerText = v6;

    v8 = _WBSLocalizedString();
    manuallyWrappedBannerText = v4->_manuallyWrappedBannerText;
    v4->_manuallyWrappedBannerText = v8;

    v4->_messageType = 0;
    v10 = [SFThemeColorEffectView alloc];
    v11 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v12 = [(SFThemeColorEffectView *)v10 initWithEffect:v11];
    backdrop = v4->_backdrop;
    v4->_backdrop = v12;

    [(SFCrashBanner *)v4 bounds];
    [(SFThemeColorEffectView *)v4->_backdrop setFrame:?];
    [(SFThemeColorEffectView *)v4->_backdrop setAutoresizingMask:18];
    [(SFCrashBanner *)v4 addSubview:v4->_backdrop];
    v14 = objc_alloc_init(MEMORY[0x1E69DC738]);
    closeButton = v4->_closeButton;
    v4->_closeButton = v14;

    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    v17 = MEMORY[0x1E69DCAD8];
    v18 = *MEMORY[0x1E69DDD08];
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    v20 = [v17 configurationWithFont:v19];

    [(UIButton *)v4->_closeButton setImage:v16 forState:0];
    v56 = v20;
    [(UIButton *)v4->_closeButton setPreferredSymbolConfiguration:v20 forImageInState:0];
    v21 = objc_alloc(MEMORY[0x1E69DD298]);
    [(SFCrashBanner *)v4 bounds];
    v22 = [v21 initWithFrame:?];
    contentEffectView = v4->_contentEffectView;
    v4->_contentEffectView = v22;

    [(UIVisualEffectView *)v4->_contentEffectView setAutoresizingMask:18];
    [(SFCrashBanner *)v4 addSubview:v4->_contentEffectView];
    v24 = [(UIVisualEffectView *)v4->_contentEffectView contentView];
    [v24 addSubview:v4->_closeButton];

    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v25;

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v18];
    [(UILabel *)v4->_label setFont:v27];

    [(UILabel *)v4->_label setLineBreakMode:0];
    [(UILabel *)v4->_label setNumberOfLines:0];
    v28 = [(UIVisualEffectView *)v4->_contentEffectView contentView];
    [v28 addSubview:v4->_label];

    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v28) = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v50 = MEMORY[0x1E696ACD8];
    v29 = [(UIButton *)v4->_closeButton centerYAnchor];
    v55 = [(SFCrashBanner *)v4 centerYAnchor];
    v30 = [v29 constraintEqualToAnchor:?];
    v54 = v30;
    if (v28)
    {
      v59[0] = v30;
      v45 = [(UILabel *)v4->_label centerYAnchor];
      v53 = [(SFCrashBanner *)v4 centerYAnchor];
      v52 = [v45 constraintEqualToAnchor:?];
      v59[1] = v52;
      v31 = [(UILabel *)v4->_label leadingAnchor];
      v49 = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      [v49 leadingAnchor];
      v48 = v51 = v31;
      v47 = [v31 constraintEqualToAnchor:8.0 constant:?];
      v59[2] = v47;
      v32 = [(UIButton *)v4->_closeButton trailingAnchor];
      v33 = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      v34 = [v33 trailingAnchor];
      v35 = [v32 constraintEqualToAnchor:v34 constant:-8.0];
      v59[3] = v35;
      v36 = [(UIButton *)v4->_closeButton leadingAnchor];
      [(UILabel *)v4->_label trailingAnchor];
      v46 = v29;
      v38 = v37 = v16;
      v39 = [v36 constraintEqualToAnchor:v38 constant:2.5];
      v59[4] = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];
      [v50 activateConstraints:v40];

      v41 = v45;
      v16 = v37;
      v29 = v46;
    }

    else
    {
      v58[0] = v30;
      v41 = [(UILabel *)v4->_label centerYAnchor];
      v53 = [(SFCrashBanner *)v4 centerYAnchor];
      v52 = [v41 constraintEqualToAnchor:?];
      v58[1] = v52;
      v51 = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      v42 = [v51 leadingAnchor];
      v48 = [(UIButton *)v4->_closeButton leadingAnchor];
      v49 = v42;
      v47 = [v42 constraintEqualToAnchor:-8.0 constant:?];
      v58[2] = v47;
      v32 = [(UIButton *)v4->_closeButton trailingAnchor];
      v33 = [(UILabel *)v4->_label leadingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33 constant:-2.5];
      v58[3] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
      [v50 activateConstraints:v35];
    }

    v43 = v4;
  }

  return v4;
}

- (void)themeDidChange
{
  v15 = [(SFPinnableBanner *)self theme];
  if ([v15 backdropIsDark])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v3 = ;
  [(UILabel *)self->_label setTextColor:v3];
  v4 = [v15 traitCollection];
  [(SFCrashBanner *)self _setLocalOverrideTraitCollection:v4];

  [(SFThemeColorEffectView *)self->_backdrop setTheme:v15];
  if (v15)
  {
    v5 = MEMORY[0x1E69DD248];
    v6 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v7 = [v5 effectForBlurEffect:v6];
    [(UIVisualEffectView *)self->_contentEffectView setEffect:v7];
  }

  else
  {
    v8 = [0 backdropIsTinted];
    v9 = MEMORY[0x1E69DD248];
    v10 = [0 backdropEffect];
    if (v8)
    {
      v11 = [v9 effectForBlurEffect:v10];
      [(UIVisualEffectView *)self->_contentEffectView setEffect:v11];

      closeButton = self->_closeButton;
      v13 = v3;
    }

    else
    {
      v14 = [v9 effectForBlurEffect:v10 style:4];
      [(UIVisualEffectView *)self->_contentEffectView setEffect:v14];

      closeButton = self->_closeButton;
      v13 = 0;
    }

    [(UIButton *)closeButton setTintColor:v13];
  }
}

- (BOOL)_shouldUseManuallyWrappedCrashMessageForWidth:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  bannerText = self->_bannerText;
  v13 = *MEMORY[0x1E69DB648];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v5 initWithString:bannerText attributes:v8];

  v10 = CTTypesetterCreateWithAttributedString(v9);
  v11 = CTTypesetterSuggestLineBreak(v10, 0, a3);
  CFRelease(v10);
  LOBYTE(v10) = v11 < [(__CFAttributedString *)v9 length];

  return v10;
}

- (CGSize)_labelLayoutSizeForWidth:(double)a3
{
  p_cachedLabelLayoutSize = &self->_cachedLabelLayoutSize;
  width = self->_cachedLabelLayoutSize.width;
  if (width == a3)
  {
    height = self->_cachedLabelLayoutSize.height;
  }

  else
  {
    v6 = a3 + -16.0;
    [(UIButton *)self->_closeButton bounds];
    width = v6 - (v7 + 2.5);
    if (![(SFCrashBanner *)self _shouldUseManuallyWrappedCrashMessageForWidth:width]|| (p_bannerText = &self->_manuallyWrappedBannerText, ![(NSString *)self->_manuallyWrappedBannerText length]))
    {
      p_bannerText = &self->_bannerText;
    }

    [(UILabel *)self->_label setText:*p_bannerText];
    [(UILabel *)self->_label sizeThatFits:width, 1.79769313e308];
    height = v9 + 18.0;
    p_cachedLabelLayoutSize->width = width;
    p_cachedLabelLayoutSize->height = height;
  }

  v11 = width;
  result.height = height;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SFCrashBanner;
  [(SFCrashBanner *)&v6 layoutSubviews];
  v3 = [(SFPinnableBanner *)self theme];
  if ([v3 backdropIsDark])
  {
    v4 = [v3 separatorColor];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  [(SFPinnableBanner *)self setShowsTopSeparator:v5];
  [(SFPinnableBanner *)self setShowsBottomSeparator:v5 ^ 1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SFCrashBanner *)self _labelLayoutSizeForWidth:a3.width, a3.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setBannerText:(id)a3 manuallyWrappedBannerText:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  bannerText = self->_bannerText;
  self->_bannerText = v7;

  v9 = [v6 copy];
  manuallyWrappedBannerText = self->_manuallyWrappedBannerText;
  self->_manuallyWrappedBannerText = v9;

  [(SFCrashBanner *)self setNeedsLayout];
}

@end
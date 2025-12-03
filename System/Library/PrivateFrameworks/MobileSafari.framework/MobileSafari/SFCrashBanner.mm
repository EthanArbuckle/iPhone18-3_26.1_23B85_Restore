@interface SFCrashBanner
- (BOOL)_shouldUseManuallyWrappedCrashMessageForWidth:(double)width;
- (CGSize)_labelLayoutSizeForWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFCrashBanner)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBannerText:(id)text manuallyWrappedBannerText:(id)bannerText;
- (void)themeDidChange;
@end

@implementation SFCrashBanner

- (SFCrashBanner)initWithFrame:(CGRect)frame
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = SFCrashBanner;
  v3 = [(SFPinnableBanner *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFCrashBanner *)v3 setClipsToBounds:0];
    layer = [(SFCrashBanner *)v4 layer];
    [layer setAllowsGroupBlending:0];

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
    contentView = [(UIVisualEffectView *)v4->_contentEffectView contentView];
    [contentView addSubview:v4->_closeButton];

    v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v25;

    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v18];
    [(UILabel *)v4->_label setFont:v27];

    [(UILabel *)v4->_label setLineBreakMode:0];
    [(UILabel *)v4->_label setNumberOfLines:0];
    contentView2 = [(UIVisualEffectView *)v4->_contentEffectView contentView];
    [contentView2 addSubview:v4->_label];

    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(contentView2) = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v50 = MEMORY[0x1E696ACD8];
    centerYAnchor = [(UIButton *)v4->_closeButton centerYAnchor];
    centerYAnchor2 = [(SFCrashBanner *)v4 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:?];
    v54 = v30;
    if (contentView2)
    {
      v59[0] = v30;
      centerYAnchor3 = [(UILabel *)v4->_label centerYAnchor];
      centerYAnchor4 = [(SFCrashBanner *)v4 centerYAnchor];
      v52 = [centerYAnchor3 constraintEqualToAnchor:?];
      v59[1] = v52;
      leadingAnchor = [(UILabel *)v4->_label leadingAnchor];
      safeAreaLayoutGuide = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      [safeAreaLayoutGuide leadingAnchor];
      leadingAnchor4 = safeAreaLayoutGuide3 = leadingAnchor;
      v47 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
      v59[2] = v47;
      trailingAnchor = [(UIButton *)v4->_closeButton trailingAnchor];
      safeAreaLayoutGuide2 = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
      v59[3] = v35;
      leadingAnchor2 = [(UIButton *)v4->_closeButton leadingAnchor];
      [(UILabel *)v4->_label trailingAnchor];
      v46 = centerYAnchor;
      v38 = v37 = v16;
      v39 = [leadingAnchor2 constraintEqualToAnchor:v38 constant:2.5];
      v59[4] = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];
      [v50 activateConstraints:v40];

      centerYAnchor5 = centerYAnchor3;
      v16 = v37;
      centerYAnchor = v46;
    }

    else
    {
      v58[0] = v30;
      centerYAnchor5 = [(UILabel *)v4->_label centerYAnchor];
      centerYAnchor4 = [(SFCrashBanner *)v4 centerYAnchor];
      v52 = [centerYAnchor5 constraintEqualToAnchor:?];
      v58[1] = v52;
      safeAreaLayoutGuide3 = [(SFCrashBanner *)v4 safeAreaLayoutGuide];
      leadingAnchor3 = [safeAreaLayoutGuide3 leadingAnchor];
      leadingAnchor4 = [(UIButton *)v4->_closeButton leadingAnchor];
      safeAreaLayoutGuide = leadingAnchor3;
      v47 = [leadingAnchor3 constraintEqualToAnchor:-8.0 constant:?];
      v58[2] = v47;
      trailingAnchor = [(UIButton *)v4->_closeButton trailingAnchor];
      safeAreaLayoutGuide2 = [(UILabel *)v4->_label leadingAnchor];
      trailingAnchor2 = [trailingAnchor constraintEqualToAnchor:safeAreaLayoutGuide2 constant:-2.5];
      v58[3] = trailingAnchor2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
      [v50 activateConstraints:v35];
    }

    v43 = v4;
  }

  return v4;
}

- (void)themeDidChange
{
  theme = [(SFPinnableBanner *)self theme];
  if ([theme backdropIsDark])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v3 = ;
  [(UILabel *)self->_label setTextColor:v3];
  traitCollection = [theme traitCollection];
  [(SFCrashBanner *)self _setLocalOverrideTraitCollection:traitCollection];

  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  if (theme)
  {
    v5 = MEMORY[0x1E69DD248];
    v6 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v7 = [v5 effectForBlurEffect:v6];
    [(UIVisualEffectView *)self->_contentEffectView setEffect:v7];
  }

  else
  {
    backdropIsTinted = [0 backdropIsTinted];
    v9 = MEMORY[0x1E69DD248];
    backdropEffect = [0 backdropEffect];
    if (backdropIsTinted)
    {
      v11 = [v9 effectForBlurEffect:backdropEffect];
      [(UIVisualEffectView *)self->_contentEffectView setEffect:v11];

      closeButton = self->_closeButton;
      v13 = v3;
    }

    else
    {
      v14 = [v9 effectForBlurEffect:backdropEffect style:4];
      [(UIVisualEffectView *)self->_contentEffectView setEffect:v14];

      closeButton = self->_closeButton;
      v13 = 0;
    }

    [(UIButton *)closeButton setTintColor:v13];
  }
}

- (BOOL)_shouldUseManuallyWrappedCrashMessageForWidth:(double)width
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
  v11 = CTTypesetterSuggestLineBreak(v10, 0, width);
  CFRelease(v10);
  LOBYTE(v10) = v11 < [(__CFAttributedString *)v9 length];

  return v10;
}

- (CGSize)_labelLayoutSizeForWidth:(double)width
{
  p_cachedLabelLayoutSize = &self->_cachedLabelLayoutSize;
  width = self->_cachedLabelLayoutSize.width;
  if (width == width)
  {
    height = self->_cachedLabelLayoutSize.height;
  }

  else
  {
    v6 = width + -16.0;
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

  widthCopy = width;
  result.height = height;
  result.width = widthCopy;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SFCrashBanner;
  [(SFCrashBanner *)&v6 layoutSubviews];
  theme = [(SFPinnableBanner *)self theme];
  if ([theme backdropIsDark])
  {
    separatorColor = [theme separatorColor];
    v5 = separatorColor == 0;
  }

  else
  {
    v5 = 0;
  }

  [(SFPinnableBanner *)self setShowsTopSeparator:v5];
  [(SFPinnableBanner *)self setShowsBottomSeparator:v5 ^ 1];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SFCrashBanner *)self _labelLayoutSizeForWidth:fits.width, fits.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setBannerText:(id)text manuallyWrappedBannerText:(id)bannerText
{
  bannerTextCopy = bannerText;
  v7 = [text copy];
  bannerText = self->_bannerText;
  self->_bannerText = v7;

  v9 = [bannerTextCopy copy];
  manuallyWrappedBannerText = self->_manuallyWrappedBannerText;
  self->_manuallyWrappedBannerText = v9;

  [(SFCrashBanner *)self setNeedsLayout];
}

@end
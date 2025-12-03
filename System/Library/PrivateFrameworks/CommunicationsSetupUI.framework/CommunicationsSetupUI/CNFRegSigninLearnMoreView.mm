@interface CNFRegSigninLearnMoreView
- (CNFRegSigninLearnMoreView)initWithSpecifier:(id)specifier;
- (UIButton)learnMoreButton;
- (UIImageView)splashImageView;
- (UILabel)titleLabel;
- (UILabel)verbiageLabel;
- (double)preferredHeightForWidth:(double)width;
- (id)_serviceTitle;
- (id)_splashImage;
- (id)signingInLabel;
- (id)signingInSpinner;
- (void)_learnMorePressed:(id)pressed;
- (void)layoutSubviews;
- (void)setAuthKitSignInView:(id)view;
- (void)setServiceType:(int64_t)type;
@end

@implementation CNFRegSigninLearnMoreView

- (CNFRegSigninLearnMoreView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = CNFRegSigninLearnMoreView;
  v6 = [(CNFRegSigninLearnMoreView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, specifier);
    v7->_serviceType = 0;
  }

  return v7;
}

- (id)_serviceTitle
{
  serviceType = [(CNFRegSigninLearnMoreView *)self serviceType];
  if (serviceType > 2)
  {
    v6 = &stru_2856D3978;
  }

  else
  {
    v3 = off_278DE8CB0[serviceType];
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:v3 value:&stru_2856D3978 table:v5];
  }

  return v6;
}

- (void)setAuthKitSignInView:(id)view
{
  objc_storeStrong(&self->_authKitSignInView, view);
  viewCopy = view;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(UIView *)self->_authKitSignInView setBackgroundColor:v5];

  [(CNFRegSigninLearnMoreView *)self addSubview:self->_authKitSignInView];
}

- (id)_splashImage
{
  serviceType = self->_serviceType;
  if (serviceType > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278DE8CC8[serviceType];
  }

  v4 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = [v4 _applicationIconImageForBundleIdentifier:v3 format:2 scale:?];

  return v6;
}

- (UIButton)learnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (!learnMoreButton)
  {
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:@"FACETIME_SPLASH_LEARN_MORE" value:&stru_2856D3978 table:v5];
    v7 = CNFRegGlobalAppearanceController();
    userInteractionColor = [v7 userInteractionColor];
    v9 = [CNFRegLearnMoreButton roundedButtonWithText:v6 color:userInteractionColor];
    v10 = self->_learnMoreButton;
    self->_learnMoreButton = v9;

    titleLabel = [(UIButton *)self->_learnMoreButton titleLabel];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v12];

    [(UIButton *)self->_learnMoreButton setAutoresizingMask:5];
    [(UIButton *)self->_learnMoreButton addTarget:self action:sel__learnMorePressed_ forControlEvents:64];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_learnMoreButton];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];
    learnMoreButton = self->_learnMoreButton;
  }

  return learnMoreButton;
}

- (UIImageView)splashImageView
{
  if (!self->_splashImageView)
  {
    v3 = CNFRegGlobalAppearanceController();
    splashScreenShowsIcon = [v3 splashScreenShowsIcon];

    if (splashScreenShowsIcon)
    {
      v5 = objc_alloc(MEMORY[0x277D755E8]);
      _splashImage = [(CNFRegSigninLearnMoreView *)self _splashImage];
      v7 = [v5 initWithImage:_splashImage];
      splashImageView = self->_splashImageView;
      self->_splashImageView = v7;

      [(UIImageView *)self->_splashImageView sizeToFit];
      [(CNFRegSigninLearnMoreView *)self addSubview:self->_splashImageView];
      [(CNFRegSigninLearnMoreView *)self setNeedsLayout];
    }
  }

  v9 = self->_splashImageView;

  return v9;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    _serviceTitle = [(CNFRegSigninLearnMoreView *)self _serviceTitle];
    [(UILabel *)self->_titleLabel setText:_serviceTitle];

    v8 = [MEMORY[0x277D74300] _thinSystemFontOfSize:35.0];
    [(UILabel *)self->_titleLabel setFont:v8];

    v9 = CNFRegGlobalAppearanceController();
    splashTitleLabelTextColor = [v9 splashTitleLabelTextColor];
    [(UILabel *)self->_titleLabel setTextColor:splashTitleLabelTextColor];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:clearColor];

    [(UILabel *)self->_titleLabel sizeToFit];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_titleLabel];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)verbiageLabel
{
  verbiageLabel = self->_verbiageLabel;
  if (!verbiageLabel)
  {
    v4 = +[CNFRegAppearanceController globalAppearanceController];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_verbiageLabel;
    self->_verbiageLabel = v6;

    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    supportsWLAN = [mEMORY[0x277D07DB0] supportsWLAN];
    v10 = _os_feature_enabled_impl();
    v11 = CNFRegStringTableName();
    v12 = CommunicationsSetupUIBundle();
    v13 = @"FACETIME_SPLASH_SYNOPSIS_WLAN";
    if (v10)
    {
      v13 = @"FACETIME_SPLASH_SYNOPSIS_WLAN_APPLEACCOUNT";
    }

    v14 = @"FACETIME_SPLASH_SYNOPSIS_WIFI_APPLEACCOUNT";
    if (!v10)
    {
      v14 = @"FACETIME_SPLASH_SYNOPSIS_WIFI";
    }

    if (supportsWLAN)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = CNFLocalizedStringFromTableInBundleWithFallback(v15, v11, v12);
    [(UILabel *)self->_verbiageLabel setText:v16];

    tableFooterFont = [v4 tableFooterFont];
    [(UILabel *)self->_verbiageLabel setFont:tableFooterFont];

    tableHeaderTextColor = [v4 tableHeaderTextColor];
    [(UILabel *)self->_verbiageLabel setTextColor:tableHeaderTextColor];

    [(UILabel *)self->_verbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_verbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_verbiageLabel setTextAlignment:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_verbiageLabel setBackgroundColor:clearColor];

    tableHeaderTextShadowColor = [v4 tableHeaderTextShadowColor];
    [(UILabel *)self->_verbiageLabel setShadowColor:tableHeaderTextShadowColor];

    [v4 tableHeaderTextShadowOffset];
    [(UILabel *)self->_verbiageLabel setShadowOffset:?];
    [(UILabel *)self->_verbiageLabel setAutoresizingMask:18];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_verbiageLabel];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];

    verbiageLabel = self->_verbiageLabel;
  }

  return verbiageLabel;
}

- (id)signingInLabel
{
  signingInLabel = self->_signingInLabel;
  if (!signingInLabel)
  {
    v4 = +[CNFRegAppearanceController globalAppearanceController];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_signingInLabel;
    self->_signingInLabel = v6;

    v8 = CommunicationsSetupUIBundle();
    v9 = CNFRegStringTableName();
    v10 = [v8 localizedStringForKey:@"SIGNING_IN" value:&stru_2856D3978 table:v9];
    [(UILabel *)self->_signingInLabel setText:v10];

    tableFooterFont = [v4 tableFooterFont];
    [(UILabel *)self->_signingInLabel setFont:tableFooterFont];

    tableHeaderTextColor = [v4 tableHeaderTextColor];
    [(UILabel *)self->_signingInLabel setTextColor:tableHeaderTextColor];

    [(UILabel *)self->_signingInLabel setNumberOfLines:0];
    [(UILabel *)self->_signingInLabel setLineBreakMode:0];
    [(UILabel *)self->_signingInLabel setTextAlignment:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_signingInLabel setBackgroundColor:clearColor];

    tableHeaderTextShadowColor = [v4 tableHeaderTextShadowColor];
    [(UILabel *)self->_signingInLabel setShadowColor:tableHeaderTextShadowColor];

    [v4 tableHeaderTextShadowOffset];
    [(UILabel *)self->_signingInLabel setShadowOffset:?];
    [(UILabel *)self->_signingInLabel setAutoresizingMask:18];
    [(UILabel *)self->_signingInLabel setHidden:1];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_signingInLabel];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];

    signingInLabel = self->_signingInLabel;
  }

  return signingInLabel;
}

- (id)signingInSpinner
{
  signingInSpinner = self->_signingInSpinner;
  if (!signingInSpinner)
  {
    v4 = +[CNFRegAppearanceController globalAppearanceController];
    v5 = objc_alloc(MEMORY[0x277D750E8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_signingInSpinner;
    self->_signingInSpinner = v6;

    tableHeaderTextColor = [v4 tableHeaderTextColor];
    [(UIActivityIndicatorView *)self->_signingInSpinner setColor:tableHeaderTextColor];

    [(UIActivityIndicatorView *)self->_signingInSpinner setHidden:1];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_signingInSpinner];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];

    signingInSpinner = self->_signingInSpinner;
  }

  return signingInSpinner;
}

- (void)setServiceType:(int64_t)type
{
  if (self->_serviceType != type)
  {
    self->_serviceType = type;
    splashImageView = [(CNFRegSigninLearnMoreView *)self splashImageView];
    _splashImage = [(CNFRegSigninLearnMoreView *)self _splashImage];
    [splashImageView setImage:_splashImage];

    _serviceTitle = [(CNFRegSigninLearnMoreView *)self _serviceTitle];
    [(UILabel *)self->_titleLabel setText:_serviceTitle];

    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(CNFRegSigninLearnMoreView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v91 = v9;
  splashImageView = [(CNFRegSigninLearnMoreView *)self splashImageView];
  [splashImageView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v94.origin.x = v4;
  v94.origin.y = v6;
  v94.size.width = v8;
  v94.size.height = v10;
  MidX = CGRectGetMidX(v94);
  v95.origin.x = v12;
  v95.origin.y = v14;
  v95.size.width = v16;
  v95.size.height = v18;
  v20 = floor(MidX - CGRectGetWidth(v95) * 0.5);
  [splashImageView setFrame:{v20, 48.0, v16, v18}];
  v96.origin.x = v20;
  v96.origin.y = 48.0;
  v96.size.width = v16;
  v96.size.height = v18;
  v21 = CGRectGetMaxY(v96) + 44.0;
  titleLabel = [(CNFRegSigninLearnMoreView *)self titleLabel];
  [titleLabel frame];
  v24 = v23;
  v26 = v25;
  v97.origin.x = v4;
  v97.origin.y = v6;
  v97.size.width = v8;
  v97.size.height = v91;
  v27 = floor(CGRectGetMidX(v97) - v24 * 0.5);
  font = [titleLabel font];
  [font ascender];
  v30 = floor(v21 - v29);

  [titleLabel setFrame:{v27, v30, v24, v26}];
  v98.origin.x = v27;
  v98.origin.y = v30;
  v98.size.width = v24;
  v98.size.height = v26;
  MaxY = CGRectGetMaxY(v98);
  font2 = [titleLabel font];
  [font2 descender];
  v34 = MaxY + v33 + 43.0;

  verbiageLabel = [(CNFRegSigninLearnMoreView *)self verbiageLabel];
  v99.origin.x = v4;
  v99.origin.y = v6;
  v99.size.width = v8;
  v99.size.height = v91;
  [verbiageLabel sizeThatFits:{CGRectGetWidth(v99) + -20.0, 1.79769313e308}];
  v37 = v36;
  v39 = v38;
  v100.origin.x = v4;
  v100.origin.y = v6;
  v100.size.width = v8;
  v100.size.height = v91;
  v40 = floor(CGRectGetMidX(v100) - v37 * 0.5);
  [verbiageLabel numberOfLines];
  font3 = [verbiageLabel font];
  [font3 ascender];
  font4 = [verbiageLabel font];
  [font4 descender];
  font5 = [verbiageLabel font];
  [font5 leading];

  font6 = [verbiageLabel font];
  [font6 ascender];
  v46 = floor(v34 - v45);

  [verbiageLabel setFrame:{v40, v46, v37, v39}];
  v101.origin.x = v40;
  v101.origin.y = v46;
  v101.size.width = v37;
  v101.size.height = v39;
  v47 = CGRectGetMaxY(v101);
  font7 = [verbiageLabel font];
  [font7 descender];
  v50 = v49;

  learnMoreButton = [(CNFRegSigninLearnMoreView *)self learnMoreButton];
  [learnMoreButton sizeToFit];
  [learnMoreButton bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v8;
  v90 = v8;
  if (v52 <= v8)
  {
    v8 = v52;
  }

  v60 = v47 + v50 + 24.0;
  v102.origin.x = v4;
  v102.origin.y = v6;
  v102.size.width = v59;
  v102.size.height = v91;
  v61 = CGRectGetMidX(v102);
  v103.origin.x = v54;
  v103.origin.y = v56;
  v103.size.width = v8;
  v103.size.height = v58;
  v62 = floor(v61 - CGRectGetWidth(v103) * 0.5);
  titleLabel2 = [learnMoreButton titleLabel];
  font8 = [titleLabel2 font];
  [font8 ascender];
  v66 = floor(v60 - v65);

  [learnMoreButton setFrame:{v62, v66, v8, v58}];
  v104.origin.x = v62;
  v104.origin.y = v66;
  v104.size.width = v8;
  v104.size.height = v58;
  v67 = CGRectGetMaxY(v104);
  titleLabel3 = [learnMoreButton titleLabel];
  font9 = [titleLabel3 font];
  [font9 descender];
  v71 = ceil(v67 + v70 + 40.0);

  [(UIView *)self->_authKitSignInView sizeToFit];
  [(CNFRegSigninLearnMoreView *)self frame];
  v73 = v72;
  v105.origin.x = v4;
  v105.size.width = v90;
  v105.origin.y = v6;
  v105.size.height = v91;
  [(UIView *)self->_authKitSignInView setFrame:0.0, v71, v73, CGRectGetHeight(v105) - v71];
  [(UIView *)self->_authKitSignInView setTranslatesAutoresizingMaskIntoConstraints:1];
  signingInLabel = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [signingInLabel sizeToFit];

  signingInLabel2 = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [signingInLabel2 frame];
  v77 = v76;
  v79 = v78;

  [(CNFRegSigninLearnMoreView *)self frame];
  v81 = v80 * 0.5 - v77 * 0.5;
  signingInLabel3 = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [signingInLabel3 setFrame:{v81, v71, v77, v79}];

  signingInSpinner = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [signingInSpinner sizeToFit];

  signingInSpinner2 = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [signingInSpinner2 frame];
  v86 = v85;
  v88 = v87;

  signingInSpinner3 = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [signingInSpinner3 setFrame:{v81 - v86 + -6.0, v71, v86, v88}];
}

- (double)preferredHeightForWidth:(double)width
{
  if (width == 0.0)
  {
    width = 320.0;
  }

  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (width >= 20.0)
  {
    v5 = width + -20.0;
  }

  else
  {
    v5 = 0.0;
  }

  splashImageView = [(CNFRegSigninLearnMoreView *)self splashImageView];
  [splashImageView size];
  v8 = v4 + v7 + 92.0;
  titleLabel = [(CNFRegSigninLearnMoreView *)self titleLabel];
  text = [titleLabel text];
  if (text)
  {
    v11 = text;
    text2 = [titleLabel text];
    v13 = [text2 length];

    if (v13)
    {
      [titleLabel sizeThatFits:{v5, 1.79769313e308}];
      v8 = v8 + v14 + 43.0;
    }
  }

  verbiageLabel = [(CNFRegSigninLearnMoreView *)self verbiageLabel];
  text3 = [verbiageLabel text];
  if (text3)
  {
    v17 = text3;
    text4 = [verbiageLabel text];
    v19 = [text4 length];

    if (v19)
    {
      [verbiageLabel sizeThatFits:{v5, 1.79769313e308}];
      v8 = v8 + v20 + 24.0;
    }
  }

  learnMoreButton = [(CNFRegSigninLearnMoreView *)self learnMoreButton];
  [learnMoreButton frame];
  v23 = v8 + v22 + 40.0;

  [(UIView *)self->_authKitSignInView frame];
  v25 = v23 + v24;

  return v25;
}

- (void)_learnMorePressed:(id)pressed
{
  v3 = *MEMORY[0x277D76620];
  v4 = CNFRegLocalizedSplashScreenURL();
  [v3 openURL:v4 withCompletionHandler:0];
}

@end
@interface CNFRegSigninLearnMoreView
- (CNFRegSigninLearnMoreView)initWithSpecifier:(id)a3;
- (UIButton)learnMoreButton;
- (UIImageView)splashImageView;
- (UILabel)titleLabel;
- (UILabel)verbiageLabel;
- (double)preferredHeightForWidth:(double)a3;
- (id)_serviceTitle;
- (id)_splashImage;
- (id)signingInLabel;
- (id)signingInSpinner;
- (void)_learnMorePressed:(id)a3;
- (void)layoutSubviews;
- (void)setAuthKitSignInView:(id)a3;
- (void)setServiceType:(int64_t)a3;
@end

@implementation CNFRegSigninLearnMoreView

- (CNFRegSigninLearnMoreView)initWithSpecifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNFRegSigninLearnMoreView;
  v6 = [(CNFRegSigninLearnMoreView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, a3);
    v7->_serviceType = 0;
  }

  return v7;
}

- (id)_serviceTitle
{
  v2 = [(CNFRegSigninLearnMoreView *)self serviceType];
  if (v2 > 2)
  {
    v6 = &stru_2856D3978;
  }

  else
  {
    v3 = off_278DE8CB0[v2];
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:v3 value:&stru_2856D3978 table:v5];
  }

  return v6;
}

- (void)setAuthKitSignInView:(id)a3
{
  objc_storeStrong(&self->_authKitSignInView, a3);
  v6 = a3;
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
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
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
    v8 = [v7 userInteractionColor];
    v9 = [CNFRegLearnMoreButton roundedButtonWithText:v6 color:v8];
    v10 = self->_learnMoreButton;
    self->_learnMoreButton = v9;

    v11 = [(UIButton *)self->_learnMoreButton titleLabel];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v11 setFont:v12];

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
    v4 = [v3 splashScreenShowsIcon];

    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277D755E8]);
      v6 = [(CNFRegSigninLearnMoreView *)self _splashImage];
      v7 = [v5 initWithImage:v6];
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

    v7 = [(CNFRegSigninLearnMoreView *)self _serviceTitle];
    [(UILabel *)self->_titleLabel setText:v7];

    v8 = [MEMORY[0x277D74300] _thinSystemFontOfSize:35.0];
    [(UILabel *)self->_titleLabel setFont:v8];

    v9 = CNFRegGlobalAppearanceController();
    v10 = [v9 splashTitleLabelTextColor];
    [(UILabel *)self->_titleLabel setTextColor:v10];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v11 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:v11];

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

    v8 = [MEMORY[0x277D07DB0] sharedInstance];
    v9 = [v8 supportsWLAN];
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

    if (v9)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = CNFLocalizedStringFromTableInBundleWithFallback(v15, v11, v12);
    [(UILabel *)self->_verbiageLabel setText:v16];

    v17 = [v4 tableFooterFont];
    [(UILabel *)self->_verbiageLabel setFont:v17];

    v18 = [v4 tableHeaderTextColor];
    [(UILabel *)self->_verbiageLabel setTextColor:v18];

    [(UILabel *)self->_verbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_verbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_verbiageLabel setTextAlignment:1];
    v19 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_verbiageLabel setBackgroundColor:v19];

    v20 = [v4 tableHeaderTextShadowColor];
    [(UILabel *)self->_verbiageLabel setShadowColor:v20];

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

    v11 = [v4 tableFooterFont];
    [(UILabel *)self->_signingInLabel setFont:v11];

    v12 = [v4 tableHeaderTextColor];
    [(UILabel *)self->_signingInLabel setTextColor:v12];

    [(UILabel *)self->_signingInLabel setNumberOfLines:0];
    [(UILabel *)self->_signingInLabel setLineBreakMode:0];
    [(UILabel *)self->_signingInLabel setTextAlignment:1];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_signingInLabel setBackgroundColor:v13];

    v14 = [v4 tableHeaderTextShadowColor];
    [(UILabel *)self->_signingInLabel setShadowColor:v14];

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

    v8 = [v4 tableHeaderTextColor];
    [(UIActivityIndicatorView *)self->_signingInSpinner setColor:v8];

    [(UIActivityIndicatorView *)self->_signingInSpinner setHidden:1];
    [(CNFRegSigninLearnMoreView *)self addSubview:self->_signingInSpinner];
    [(CNFRegSigninLearnMoreView *)self setNeedsLayout];

    signingInSpinner = self->_signingInSpinner;
  }

  return signingInSpinner;
}

- (void)setServiceType:(int64_t)a3
{
  if (self->_serviceType != a3)
  {
    self->_serviceType = a3;
    v5 = [(CNFRegSigninLearnMoreView *)self splashImageView];
    v6 = [(CNFRegSigninLearnMoreView *)self _splashImage];
    [v5 setImage:v6];

    v7 = [(CNFRegSigninLearnMoreView *)self _serviceTitle];
    [(UILabel *)self->_titleLabel setText:v7];

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
  v92 = [(CNFRegSigninLearnMoreView *)self splashImageView];
  [v92 bounds];
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
  [v92 setFrame:{v20, 48.0, v16, v18}];
  v96.origin.x = v20;
  v96.origin.y = 48.0;
  v96.size.width = v16;
  v96.size.height = v18;
  v21 = CGRectGetMaxY(v96) + 44.0;
  v22 = [(CNFRegSigninLearnMoreView *)self titleLabel];
  [v22 frame];
  v24 = v23;
  v26 = v25;
  v97.origin.x = v4;
  v97.origin.y = v6;
  v97.size.width = v8;
  v97.size.height = v91;
  v27 = floor(CGRectGetMidX(v97) - v24 * 0.5);
  v28 = [v22 font];
  [v28 ascender];
  v30 = floor(v21 - v29);

  [v22 setFrame:{v27, v30, v24, v26}];
  v98.origin.x = v27;
  v98.origin.y = v30;
  v98.size.width = v24;
  v98.size.height = v26;
  MaxY = CGRectGetMaxY(v98);
  v32 = [v22 font];
  [v32 descender];
  v34 = MaxY + v33 + 43.0;

  v35 = [(CNFRegSigninLearnMoreView *)self verbiageLabel];
  v99.origin.x = v4;
  v99.origin.y = v6;
  v99.size.width = v8;
  v99.size.height = v91;
  [v35 sizeThatFits:{CGRectGetWidth(v99) + -20.0, 1.79769313e308}];
  v37 = v36;
  v39 = v38;
  v100.origin.x = v4;
  v100.origin.y = v6;
  v100.size.width = v8;
  v100.size.height = v91;
  v40 = floor(CGRectGetMidX(v100) - v37 * 0.5);
  [v35 numberOfLines];
  v41 = [v35 font];
  [v41 ascender];
  v42 = [v35 font];
  [v42 descender];
  v43 = [v35 font];
  [v43 leading];

  v44 = [v35 font];
  [v44 ascender];
  v46 = floor(v34 - v45);

  [v35 setFrame:{v40, v46, v37, v39}];
  v101.origin.x = v40;
  v101.origin.y = v46;
  v101.size.width = v37;
  v101.size.height = v39;
  v47 = CGRectGetMaxY(v101);
  v48 = [v35 font];
  [v48 descender];
  v50 = v49;

  v51 = [(CNFRegSigninLearnMoreView *)self learnMoreButton];
  [v51 sizeToFit];
  [v51 bounds];
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
  v63 = [v51 titleLabel];
  v64 = [v63 font];
  [v64 ascender];
  v66 = floor(v60 - v65);

  [v51 setFrame:{v62, v66, v8, v58}];
  v104.origin.x = v62;
  v104.origin.y = v66;
  v104.size.width = v8;
  v104.size.height = v58;
  v67 = CGRectGetMaxY(v104);
  v68 = [v51 titleLabel];
  v69 = [v68 font];
  [v69 descender];
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
  v74 = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [v74 sizeToFit];

  v75 = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [v75 frame];
  v77 = v76;
  v79 = v78;

  [(CNFRegSigninLearnMoreView *)self frame];
  v81 = v80 * 0.5 - v77 * 0.5;
  v82 = [(CNFRegSigninLearnMoreView *)self signingInLabel];
  [v82 setFrame:{v81, v71, v77, v79}];

  v83 = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [v83 sizeToFit];

  v84 = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [v84 frame];
  v86 = v85;
  v88 = v87;

  v89 = [(CNFRegSigninLearnMoreView *)self signingInSpinner];
  [v89 setFrame:{v81 - v86 + -6.0, v71, v86, v88}];
}

- (double)preferredHeightForWidth:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 320.0;
  }

  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3 >= 20.0)
  {
    v5 = a3 + -20.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(CNFRegSigninLearnMoreView *)self splashImageView];
  [v6 size];
  v8 = v4 + v7 + 92.0;
  v9 = [(CNFRegSigninLearnMoreView *)self titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 text];
    v13 = [v12 length];

    if (v13)
    {
      [v9 sizeThatFits:{v5, 1.79769313e308}];
      v8 = v8 + v14 + 43.0;
    }
  }

  v15 = [(CNFRegSigninLearnMoreView *)self verbiageLabel];
  v16 = [v15 text];
  if (v16)
  {
    v17 = v16;
    v18 = [v15 text];
    v19 = [v18 length];

    if (v19)
    {
      [v15 sizeThatFits:{v5, 1.79769313e308}];
      v8 = v8 + v20 + 24.0;
    }
  }

  v21 = [(CNFRegSigninLearnMoreView *)self learnMoreButton];
  [v21 frame];
  v23 = v8 + v22 + 40.0;

  [(UIView *)self->_authKitSignInView frame];
  v25 = v23 + v24;

  return v25;
}

- (void)_learnMorePressed:(id)a3
{
  v3 = *MEMORY[0x277D76620];
  v4 = CNFRegLocalizedSplashScreenURL();
  [v3 openURL:v4 withCompletionHandler:0];
}

@end
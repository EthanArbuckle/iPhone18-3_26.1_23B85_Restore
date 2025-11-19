@interface CKRegistrationView
- (CGSize)manualSizeToFitForAuthKitSignInView;
- (UIActivityIndicatorView)signingInSpinner;
- (UIButton)learnMoreButton;
- (UIImageView)iconImageView;
- (UILabel)signingInLabel;
- (UILabel)titleLabel;
- (UILabel)verbiageLabel;
- (void)_learnMorePressed:(id)a3;
- (void)layoutSubviews;
- (void)setAuthKitSignInView:(id)a3;
- (void)setPrivacyLinkView:(id)a3;
- (void)setSigningIn:(BOOL)a3;
@end

@implementation CKRegistrationView

- (void)setAuthKitSignInView:(id)a3
{
  v5 = a3;
  authKitSignInView = self->_authKitSignInView;
  if (authKitSignInView != v5)
  {
    v9 = v5;
    [(UIView *)authKitSignInView removeFromSuperview];
    objc_storeStrong(&self->_authKitSignInView, a3);
    v7 = self->_authKitSignInView;
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    [(UIView *)self->_authKitSignInView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(CKRegistrationView *)self addSubview:self->_authKitSignInView];
    v5 = v9;
  }
}

- (void)setSigningIn:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_authKitSignInView setHidden:?];
  v5 = [(CKRegistrationView *)self signingInLabel];
  v6 = !v3;
  [v5 setHidden:v6];

  v7 = [(CKRegistrationView *)self signingInSpinner];
  [v7 setHidden:v6];

  v8 = [(CKRegistrationView *)self signingInSpinner];
  v9 = v8;
  if (v6)
  {
    [v8 stopAnimating];
  }

  else
  {
    [v8 startAnimating];
  }

  [(CKRegistrationView *)self setNeedsDisplay];
}

- (void)setPrivacyLinkView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_privacyLinkView removeFromSuperview];
  privacyLinkView = self->_privacyLinkView;
  self->_privacyLinkView = v4;
  v6 = v4;

  [(UIView *)self->_privacyLinkView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(CKRegistrationView *)self addSubview:self->_privacyLinkView];
}

- (UIImageView)iconImageView
{
  iconImageView = self->_iconImageView;
  if (!iconImageView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 signInAppIconImage];
    v7 = [v4 initWithImage:v6];
    v8 = self->_iconImageView;
    self->_iconImageView = v7;

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 signInSplashImageSize];
    v11 = v10;
    v13 = v12;

    v14 = self->_iconImageView;
    if (v11 == *MEMORY[0x1E695F060] && v13 == *(MEMORY[0x1E695F060] + 8))
    {
      [(UIImageView *)v14 sizeToFit];
    }

    else
    {
      [(UIImageView *)v14 setFrame:0.0, 0.0, v11, v13];
    }

    [(CKRegistrationView *)self addSubview:self->_iconImageView];
    [(CKRegistrationView *)self setNeedsLayout];
    iconImageView = self->_iconImageView;
  }

  return iconImageView;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)self->_titleLabel setText:v8];

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 signInTitleFont];
    [(UILabel *)self->_titleLabel setFont:v10];

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 primaryLabelColor];
    [(UILabel *)self->_titleLabel setTextColor:v13];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:v14];

    [(UILabel *)self->_titleLabel sizeToFit];
    [(CKRegistrationView *)self addSubview:self->_titleLabel];
    [(CKRegistrationView *)self setNeedsLayout];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)verbiageLabel
{
  verbiageLabel = self->_verbiageLabel;
  if (!verbiageLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_verbiageLabel;
    self->_verbiageLabel = v5;

    v7 = MGGetBoolAnswer();
    v8 = CKFrameworkBundle();
    v9 = v8;
    if (v7)
    {
      v10 = @"IMESSAGE_REGISTRATION_BLURB_GREENTEA";
    }

    else
    {
      v10 = @"IMESSAGE_REGISTRATION_BLURB";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)self->_verbiageLabel setText:v11];

    v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
    [(UILabel *)self->_verbiageLabel setFont:v13];

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v16 = [v15 primaryLabelColor];
    [(UILabel *)self->_verbiageLabel setTextColor:v16];

    [(UILabel *)self->_verbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_verbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_verbiageLabel setTextAlignment:1];
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_verbiageLabel setBackgroundColor:v17];

    [(UILabel *)self->_verbiageLabel setAutoresizingMask:18];
    [(UILabel *)self->_verbiageLabel sizeToFit];
    [(CKRegistrationView *)self addSubview:self->_verbiageLabel];
    [(CKRegistrationView *)self setNeedsLayout];

    verbiageLabel = self->_verbiageLabel;
  }

  return verbiageLabel;
}

- (UILabel)signingInLabel
{
  signingInLabel = self->_signingInLabel;
  if (!signingInLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_signingInLabel;
    self->_signingInLabel = v5;

    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"IMESSAGE_REGISTRATION_SIGNING_IN" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)self->_signingInLabel setText:v8];

    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)self->_signingInLabel setFont:v9];

    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 theme];
    v12 = [v11 primaryLabelColor];
    [(UILabel *)self->_signingInLabel setTextColor:v12];

    [(UILabel *)self->_signingInLabel setNumberOfLines:0];
    [(UILabel *)self->_signingInLabel setLineBreakMode:0];
    [(UILabel *)self->_signingInLabel setTextAlignment:1];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_signingInLabel setBackgroundColor:v13];

    [(UILabel *)self->_signingInLabel setAutoresizingMask:18];
    [(UILabel *)self->_signingInLabel setHidden:1];
    [(CKRegistrationView *)self addSubview:self->_signingInLabel];
    [(CKRegistrationView *)self setNeedsLayout];
    signingInLabel = self->_signingInLabel;
  }

  return signingInLabel;
}

- (UIActivityIndicatorView)signingInSpinner
{
  signingInSpinner = self->_signingInSpinner;
  if (!signingInSpinner)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v5 = self->_signingInSpinner;
    self->_signingInSpinner = v4;

    [(UIActivityIndicatorView *)self->_signingInSpinner setHidden:1];
    [(CKRegistrationView *)self addSubview:self->_signingInSpinner];
    [(CKRegistrationView *)self setNeedsLayout];
    signingInSpinner = self->_signingInSpinner;
  }

  return signingInSpinner;
}

- (UIButton)learnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (!learnMoreButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v5 = self->_learnMoreButton;
    self->_learnMoreButton = v4;

    v6 = self->_learnMoreButton;
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"IMESSAGE_REGISTRATION_LEARN_MORE" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v10 = [(UIButton *)self->_learnMoreButton titleLabel];
    v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
    [v10 setFont:v11];

    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 signInTintColor];

    if (v13)
    {
      [(UIButton *)self->_learnMoreButton setTitleColor:v13 forState:0];
    }

    [(UIButton *)self->_learnMoreButton setAutoresizingMask:5];
    [(UIButton *)self->_learnMoreButton addTarget:self action:sel__learnMorePressed_ forControlEvents:64];
    [(CKRegistrationView *)self addSubview:self->_learnMoreButton];
    [(CKRegistrationView *)self setNeedsLayout];

    learnMoreButton = self->_learnMoreButton;
  }

  return learnMoreButton;
}

- (CGSize)manualSizeToFitForAuthKitSignInView
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [(UIView *)self->_authKitSignInView subviews];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v6 = 0.0;
    v7 = 2147483650.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v10 frame];
        MaxX = CGRectGetMaxX(v25);
        [v10 frame];
        v12 = MaxX - CGRectGetWidth(v26);
        [v10 frame];
        v13 = v12 + v12 + CGRectGetWidth(v27);
        [v10 frame];
        MaxY = CGRectGetMaxY(v28);
        [v10 frame];
        MinY = CGRectGetMinY(v29);
        if (v7 >= MinY)
        {
          v7 = MinY;
        }

        if (v8 <= v13)
        {
          v8 = v13;
        }

        if (v6 <= MaxY)
        {
          v6 = MaxY;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v7 = 2147483650.0;
    v8 = 0.0;
  }

  v16 = v7 + v7 + v6;
  v17 = v8;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  [(CKRegistrationView *)self bounds];
  v4 = v3;
  v98 = v3;
  v99 = v5;
  v6 = v5;
  v96 = v7;
  v9 = v8;
  rect = v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 signInSplashImageTopPadding];
  v12 = v11;

  v97 = [(CKRegistrationView *)self iconImageView];
  [v97 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v102.origin.x = v4;
  v102.origin.y = v6;
  v102.size.width = v96;
  v102.size.height = v9;
  MidX = CGRectGetMidX(v102);
  v103.origin.x = v14;
  v103.origin.y = v16;
  v103.size.width = v18;
  v103.size.height = v20;
  v22 = floor(MidX - CGRectGetWidth(v103) * 0.5);
  [v97 setFrame:{v22, v12, v18, v20}];
  v104.origin.x = v22;
  v104.origin.y = v12;
  v104.size.width = v18;
  v104.size.height = v20;
  MaxY = CGRectGetMaxY(v104);
  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 signInSplashImageBottomPadding];
  v26 = MaxY + v25;

  v27 = [(CKRegistrationView *)self titleLabel];
  [v27 frame];
  v29 = v28;
  v31 = v30;
  v105.origin.x = v98;
  v105.origin.y = v99;
  v105.size.width = v96;
  v105.size.height = rect;
  v32 = floor(CGRectGetMidX(v105) - v29 * 0.5);
  [v27 setFrame:{v32, v26, v29, v31}];
  v106.origin.x = v32;
  v106.origin.y = v26;
  v106.size.width = v29;
  v106.size.height = v31;
  v33 = CGRectGetMaxY(v106);
  v34 = +[CKUIBehavior sharedBehaviors];
  [v34 signInTitleBottomPadding];
  v36 = v33 + v35;

  v37 = [(CKRegistrationView *)self verbiageLabel];
  v107.origin.x = v98;
  v107.origin.y = v99;
  v107.size.width = v96;
  v107.size.height = rect;
  [v37 sizeThatFits:{CGRectGetWidth(v107) + -20.0, 1.79769313e308}];
  v39 = v38;
  v41 = v40;
  v108.origin.x = v98;
  v108.origin.y = v99;
  v108.size.width = v96;
  v108.size.height = rect;
  v42 = floor(CGRectGetMidX(v108) - v39 * 0.5);
  [v37 setFrame:{v42, v36, v39, v41}];
  v109.origin.x = v42;
  v109.origin.y = v36;
  v109.size.width = v39;
  v109.size.height = v41;
  v43 = CGRectGetMaxY(v109) + 0.0;
  v44 = [(CKRegistrationView *)self learnMoreButton];
  [v44 sizeToFit];
  [v44 bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  if (v45 <= v96)
  {
    v52 = v45;
  }

  else
  {
    v52 = v96;
  }

  v110.origin.x = v98;
  v110.origin.y = v99;
  v110.size.width = v96;
  v110.size.height = rect;
  v53 = CGRectGetMidX(v110);
  v111.origin.x = v47;
  v111.origin.y = v49;
  v111.size.width = v52;
  v111.size.height = v51;
  v54 = floor(v53 - CGRectGetWidth(v111) * 0.5);
  [v44 setFrame:{v54, v43, v52, v51}];
  v112.origin.x = v54;
  v112.origin.y = v43;
  v112.size.width = v52;
  v112.size.height = v51;
  v55 = ceil(CGRectGetMaxY(v112) + 5.0);
  [(UIView *)self->_authKitSignInView origin];
  v57 = v56;
  v59 = v58;
  [(CKRegistrationView *)self manualSizeToFitForAuthKitSignInView];
  v62 = v61;
  v63 = v96;
  if (v60 <= v96)
  {
    v64 = v60;
  }

  else
  {
    v64 = v96;
  }

  v65 = v98;
  v66 = v99;
  v67 = rect;
  v68 = CGRectGetMidX(*(&v63 - 2));
  v113.origin.x = v57;
  v113.origin.y = v59;
  v113.size.width = v64;
  v113.size.height = v62;
  v69 = floor(v68 - CGRectGetWidth(v113) * 0.5);
  [(UIView *)self->_authKitSignInView setFrame:v69, v55, v64, v62];
  v70 = [(CKRegistrationView *)self signingInLabel];
  [v70 sizeToFit];

  v71 = [(CKRegistrationView *)self signingInLabel];
  [v71 frame];
  v73 = v72;
  v75 = v74;

  [(CKRegistrationView *)self frame];
  v77 = v76 * 0.5 - v73 * 0.5;
  v78 = [(CKRegistrationView *)self signingInLabel];
  [v78 setFrame:{v77, v55, v73, v75}];

  v79 = [(CKRegistrationView *)self signingInSpinner];
  [v79 sizeToFit];

  v80 = [(CKRegistrationView *)self signingInSpinner];
  [v80 frame];
  v82 = v81;
  v84 = v83;

  v85 = [(CKRegistrationView *)self signingInSpinner];
  [v85 setFrame:{v77 - v82 + -6.0, v55, v82, v84}];

  v114.origin.x = v69;
  v114.origin.y = v55;
  v114.size.width = v64;
  v114.size.height = v62;
  v86 = ceil(CGRectGetMaxY(v114));
  v87 = [(CKRegistrationView *)self privacyLinkView];
  v88 = +[CKUIBehavior sharedBehaviors];
  [v88 signInPrivacyWidthMultiplier];
  v90 = v96 * v89;

  LODWORD(v91) = 1112014848;
  LODWORD(v92) = 1132068864;
  [v87 systemLayoutSizeFittingSize:v90 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v91, v92}];
  v94 = v93;
  v115.origin.x = v98;
  v115.origin.y = v99;
  v115.size.width = v96;
  v115.size.height = rect;
  v95 = floor(CGRectGetMidX(v115) - v90 * 0.5);
  [v87 setFrame:{v95, v86, v90, v94}];
  v116.origin.x = v95;
  v116.origin.y = v86;
  v116.size.width = v90;
  v116.size.height = v94;
  [(CKRegistrationView *)self setContentSize:v96, ceil(CGRectGetMaxY(v116) + 20.0)];
}

- (void)_learnMorePressed:(id)a3
{
  v3 = MEMORY[0x193AF5ED0]("CNFRegSetStringTableForServiceType", @"CommunicationsSetupUI", a3);
  v3(1);
  v4 = MEMORY[0x193AF5ED0]("CNFRegLocalizedSplashScreenURL", @"CommunicationsSetupUI");
  v5 = *MEMORY[0x1E69DDA98];
  v6 = v4();
  [v5 openURL:v6];
}

@end
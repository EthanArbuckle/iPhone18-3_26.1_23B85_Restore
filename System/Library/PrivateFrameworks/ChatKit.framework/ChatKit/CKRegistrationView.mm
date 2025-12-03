@interface CKRegistrationView
- (CGSize)manualSizeToFitForAuthKitSignInView;
- (UIActivityIndicatorView)signingInSpinner;
- (UIButton)learnMoreButton;
- (UIImageView)iconImageView;
- (UILabel)signingInLabel;
- (UILabel)titleLabel;
- (UILabel)verbiageLabel;
- (void)_learnMorePressed:(id)pressed;
- (void)layoutSubviews;
- (void)setAuthKitSignInView:(id)view;
- (void)setPrivacyLinkView:(id)view;
- (void)setSigningIn:(BOOL)in;
@end

@implementation CKRegistrationView

- (void)setAuthKitSignInView:(id)view
{
  viewCopy = view;
  authKitSignInView = self->_authKitSignInView;
  if (authKitSignInView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)authKitSignInView removeFromSuperview];
    objc_storeStrong(&self->_authKitSignInView, view);
    v7 = self->_authKitSignInView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v7 setBackgroundColor:clearColor];

    [(UIView *)self->_authKitSignInView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(CKRegistrationView *)self addSubview:self->_authKitSignInView];
    viewCopy = v9;
  }
}

- (void)setSigningIn:(BOOL)in
{
  inCopy = in;
  [(UIView *)self->_authKitSignInView setHidden:?];
  signingInLabel = [(CKRegistrationView *)self signingInLabel];
  v6 = !inCopy;
  [signingInLabel setHidden:v6];

  signingInSpinner = [(CKRegistrationView *)self signingInSpinner];
  [signingInSpinner setHidden:v6];

  signingInSpinner2 = [(CKRegistrationView *)self signingInSpinner];
  v9 = signingInSpinner2;
  if (v6)
  {
    [signingInSpinner2 stopAnimating];
  }

  else
  {
    [signingInSpinner2 startAnimating];
  }

  [(CKRegistrationView *)self setNeedsDisplay];
}

- (void)setPrivacyLinkView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_privacyLinkView removeFromSuperview];
  privacyLinkView = self->_privacyLinkView;
  self->_privacyLinkView = viewCopy;
  v6 = viewCopy;

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
    signInAppIconImage = [v5 signInAppIconImage];
    v7 = [v4 initWithImage:signInAppIconImage];
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
    signInTitleFont = [v9 signInTitleFont];
    [(UILabel *)self->_titleLabel setFont:signInTitleFont];

    v11 = +[CKUIBehavior sharedBehaviors];
    theme = [v11 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [(UILabel *)self->_titleLabel setTextColor:primaryLabelColor];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_titleLabel setBackgroundColor:clearColor];

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
    theme = [v14 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [(UILabel *)self->_verbiageLabel setTextColor:primaryLabelColor];

    [(UILabel *)self->_verbiageLabel setNumberOfLines:0];
    [(UILabel *)self->_verbiageLabel setLineBreakMode:0];
    [(UILabel *)self->_verbiageLabel setTextAlignment:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_verbiageLabel setBackgroundColor:clearColor];

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
    theme = [v10 theme];
    primaryLabelColor = [theme primaryLabelColor];
    [(UILabel *)self->_signingInLabel setTextColor:primaryLabelColor];

    [(UILabel *)self->_signingInLabel setNumberOfLines:0];
    [(UILabel *)self->_signingInLabel setLineBreakMode:0];
    [(UILabel *)self->_signingInLabel setTextAlignment:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_signingInLabel setBackgroundColor:clearColor];

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
    titleLabel = [(UIButton *)self->_learnMoreButton titleLabel];
    v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
    [titleLabel setFont:v11];

    v12 = +[CKUIBehavior sharedBehaviors];
    signInTintColor = [v12 signInTintColor];

    if (signInTintColor)
    {
      [(UIButton *)self->_learnMoreButton setTitleColor:signInTintColor forState:0];
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
  subviews = [(UIView *)self->_authKitSignInView subviews];
  v3 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
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

      v4 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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

  iconImageView = [(CKRegistrationView *)self iconImageView];
  [iconImageView bounds];
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
  [iconImageView setFrame:{v22, v12, v18, v20}];
  v104.origin.x = v22;
  v104.origin.y = v12;
  v104.size.width = v18;
  v104.size.height = v20;
  MaxY = CGRectGetMaxY(v104);
  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 signInSplashImageBottomPadding];
  v26 = MaxY + v25;

  titleLabel = [(CKRegistrationView *)self titleLabel];
  [titleLabel frame];
  v29 = v28;
  v31 = v30;
  v105.origin.x = v98;
  v105.origin.y = v99;
  v105.size.width = v96;
  v105.size.height = rect;
  v32 = floor(CGRectGetMidX(v105) - v29 * 0.5);
  [titleLabel setFrame:{v32, v26, v29, v31}];
  v106.origin.x = v32;
  v106.origin.y = v26;
  v106.size.width = v29;
  v106.size.height = v31;
  v33 = CGRectGetMaxY(v106);
  v34 = +[CKUIBehavior sharedBehaviors];
  [v34 signInTitleBottomPadding];
  v36 = v33 + v35;

  verbiageLabel = [(CKRegistrationView *)self verbiageLabel];
  v107.origin.x = v98;
  v107.origin.y = v99;
  v107.size.width = v96;
  v107.size.height = rect;
  [verbiageLabel sizeThatFits:{CGRectGetWidth(v107) + -20.0, 1.79769313e308}];
  v39 = v38;
  v41 = v40;
  v108.origin.x = v98;
  v108.origin.y = v99;
  v108.size.width = v96;
  v108.size.height = rect;
  v42 = floor(CGRectGetMidX(v108) - v39 * 0.5);
  [verbiageLabel setFrame:{v42, v36, v39, v41}];
  v109.origin.x = v42;
  v109.origin.y = v36;
  v109.size.width = v39;
  v109.size.height = v41;
  v43 = CGRectGetMaxY(v109) + 0.0;
  learnMoreButton = [(CKRegistrationView *)self learnMoreButton];
  [learnMoreButton sizeToFit];
  [learnMoreButton bounds];
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
  [learnMoreButton setFrame:{v54, v43, v52, v51}];
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
  signingInLabel = [(CKRegistrationView *)self signingInLabel];
  [signingInLabel sizeToFit];

  signingInLabel2 = [(CKRegistrationView *)self signingInLabel];
  [signingInLabel2 frame];
  v73 = v72;
  v75 = v74;

  [(CKRegistrationView *)self frame];
  v77 = v76 * 0.5 - v73 * 0.5;
  signingInLabel3 = [(CKRegistrationView *)self signingInLabel];
  [signingInLabel3 setFrame:{v77, v55, v73, v75}];

  signingInSpinner = [(CKRegistrationView *)self signingInSpinner];
  [signingInSpinner sizeToFit];

  signingInSpinner2 = [(CKRegistrationView *)self signingInSpinner];
  [signingInSpinner2 frame];
  v82 = v81;
  v84 = v83;

  signingInSpinner3 = [(CKRegistrationView *)self signingInSpinner];
  [signingInSpinner3 setFrame:{v77 - v82 + -6.0, v55, v82, v84}];

  v114.origin.x = v69;
  v114.origin.y = v55;
  v114.size.width = v64;
  v114.size.height = v62;
  v86 = ceil(CGRectGetMaxY(v114));
  privacyLinkView = [(CKRegistrationView *)self privacyLinkView];
  v88 = +[CKUIBehavior sharedBehaviors];
  [v88 signInPrivacyWidthMultiplier];
  v90 = v96 * v89;

  LODWORD(v91) = 1112014848;
  LODWORD(v92) = 1132068864;
  [privacyLinkView systemLayoutSizeFittingSize:v90 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v91, v92}];
  v94 = v93;
  v115.origin.x = v98;
  v115.origin.y = v99;
  v115.size.width = v96;
  v115.size.height = rect;
  v95 = floor(CGRectGetMidX(v115) - v90 * 0.5);
  [privacyLinkView setFrame:{v95, v86, v90, v94}];
  v116.origin.x = v95;
  v116.origin.y = v86;
  v116.size.width = v90;
  v116.size.height = v94;
  [(CKRegistrationView *)self setContentSize:v96, ceil(CGRectGetMaxY(v116) + 20.0)];
}

- (void)_learnMorePressed:(id)pressed
{
  v3 = MEMORY[0x193AF5ED0]("CNFRegSetStringTableForServiceType", @"CommunicationsSetupUI", pressed);
  v3(1);
  v4 = MEMORY[0x193AF5ED0]("CNFRegLocalizedSplashScreenURL", @"CommunicationsSetupUI");
  v5 = *MEMORY[0x1E69DDA98];
  v6 = v4();
  [v5 openURL:v6];
}

@end
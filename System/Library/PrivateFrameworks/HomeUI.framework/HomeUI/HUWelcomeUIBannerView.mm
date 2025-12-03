@interface HUWelcomeUIBannerView
- (HUWelcomeUIBannerView)initWithFrame:(CGRect)frame;
- (void)_subclass_updateConstraints;
- (void)layoutOptionsDidChange;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUWelcomeUIBannerView

- (HUWelcomeUIBannerView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = HUWelcomeUIBannerView;
  v3 = [(HUBannerView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || objc_msgSend(MEMORY[0x277D14CE8], "isAnIPad"))
    {
      v5 = HUImageNamed(@"WelcomeBanner-Background-large");
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v5 = HUImageNamed(@"WelcomeBanner-Background");
      v7 = 0;
      v6 = 1;
    }

    v8 = [v4 initWithImage:v5];
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v8;

    if (v6)
    {
    }

    if (v7)
    {
    }

    [(UIImageView *)v3->_backgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_backgroundImageView setContentMode:2];
    [(UIImageView *)v3->_backgroundImageView setClipsToBounds:1];
    [(HUWelcomeUIBannerView *)v3 addSubview:v3->_backgroundImageView];
    [(HUWelcomeUIBannerView *)v3 sendSubviewToBack:v3->_backgroundImageView];
    footerView = [(HUBannerView *)v3 footerView];
    [(HUWelcomeUIBannerView *)v3 willRemoveSubview:footerView];

    v11 = [MEMORY[0x277D75210] effectWithStyle:9];
    v12 = [MEMORY[0x277D75D00] effectForBlurEffect:v11 style:4];
    v13 = [HULayeredVisualEffectView alloc];
    v14 = [HULayeredContentEffect contentWithVibrancyEffect:v12];
    v15 = [HULayeredBackgroundEffect backgroundWithBlurEffect:v11];
    v16 = [(HULayeredVisualEffectView *)v13 initWithContentEffect:v14 backgroundEffect:v15];
    welcomeFooterView = v3->_welcomeFooterView;
    v3->_welcomeFooterView = v16;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_welcomeFooterView setBackgroundColor:clearColor];

    [(UIView *)v3->_welcomeFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_welcomeFooterView setClipsToBounds:1];
    [(HUWelcomeUIBannerView *)v3 addSubview:v3->_welcomeFooterView];
    [(HUWelcomeUIBannerView *)v3 sendSubviewToBack:v3->_welcomeFooterView];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(HUWelcomeUIBannerView *)v3 setBackgroundColor:clearColor2];
  }

  return v3;
}

- (void)layoutOptionsDidChange
{
  objc_opt_class();
  layoutOptions = [(HUBannerView *)self layoutOptions];
  if (objc_opt_isKindOfClass())
  {
    v4 = layoutOptions;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    titleLabel = [(HUBannerView *)self titleLabel];
    titleLabelColor = [v5 titleLabelColor];
    [titleLabel setTextColor:titleLabelColor];

    descriptionLabel = [(HUBannerView *)self descriptionLabel];
    descriptionLabelColor = [v5 descriptionLabelColor];
    [descriptionLabel setTextColor:descriptionLabelColor];

    footerViewLabel = [(HUBannerView *)self footerViewLabel];
    footerLabelColor = [v5 footerLabelColor];
    [footerViewLabel setTextColor:footerLabelColor];

    continueButton = [(HUBannerView *)self continueButton];
    continueButtonColor = [v5 continueButtonColor];
    [continueButton setTitleColor:continueButtonColor forState:0];
  }

  layoutConstraints = [(HUWelcomeUIBannerView *)self layoutConstraints];

  if (layoutConstraints)
  {
    v15 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(HUWelcomeUIBannerView *)self layoutConstraints];
    [v15 deactivateConstraints:layoutConstraints2];
  }

  [(HUWelcomeUIBannerView *)self setLayoutConstraints:0];
  v17.receiver = self;
  v17.super_class = HUWelcomeUIBannerView;
  [(HUBannerView *)&v17 layoutOptionsDidChange];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v22.receiver = self;
  v22.super_class = HUWelcomeUIBannerView;
  [(HUBannerView *)&v22 updateUIWithAnimation:animation];
  objc_opt_class();
  layoutOptions = [(HUBannerView *)self layoutOptions];
  if (objc_opt_isKindOfClass())
  {
    v5 = layoutOptions;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 cellCornerRadius];
  v8 = v7;
  backgroundImageView = [(HUWelcomeUIBannerView *)self backgroundImageView];
  layer = [backgroundImageView layer];
  [layer setCornerRadius:v8];

  backgroundImageView2 = [(HUWelcomeUIBannerView *)self backgroundImageView];
  layer2 = [backgroundImageView2 layer];
  [layer2 setMaskedCorners:3];

  [v6 cellCornerRadius];
  v14 = v13;

  welcomeFooterView = [(HUWelcomeUIBannerView *)self welcomeFooterView];
  layer3 = [welcomeFooterView layer];
  [layer3 setCornerRadius:v14];

  welcomeFooterView2 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
  layer4 = [welcomeFooterView2 layer];
  [layer4 setMaskedCorners:12];

  lineView = [(HUBannerView *)self lineView];
  [lineView setHidden:1];

  continueButton = [(HUBannerView *)self continueButton];
  [continueButton setHidden:0];

  dismissButton = [(HUBannerView *)self dismissButton];
  [dismissButton setHidden:0];

  [(HUWelcomeUIBannerView *)self setNeedsUpdateConstraints];
}

- (void)_subclass_updateConstraints
{
  layoutConstraints = [(HUWelcomeUIBannerView *)self layoutConstraints];

  if (!layoutConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_opt_class();
    layoutOptions = [(HUBannerView *)self layoutOptions];
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutOptions;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    dismissButton = [(HUBannerView *)self dismissButton];
    topAnchor = [dismissButton topAnchor];
    topAnchor2 = [(HUWelcomeUIBannerView *)self topAnchor];
    if (v6)
    {
      [v6 dismissButtonTopInset];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      [array addObject:v10];

      dismissButton2 = [(HUBannerView *)self dismissButton];
      trailingAnchor = [dismissButton2 trailingAnchor];
      trailingAnchor2 = [(HUWelcomeUIBannerView *)self trailingAnchor];
      [v6 dismissButtonTrailingInset];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v14];
      [array addObject:v15];

      dismissButton3 = [(HUBannerView *)self dismissButton];
      heightAnchor = [dismissButton3 heightAnchor];
      [v6 dismissButtonHeightAndWidth];
      v18 = [heightAnchor constraintEqualToConstant:?];
      [array addObject:v18];

      dismissButton4 = [(HUBannerView *)self dismissButton];
      widthAnchor = [dismissButton4 widthAnchor];
      [v6 dismissButtonHeightAndWidth];
      widthAnchor2 = widthAnchor;
    }

    else
    {
      v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [array addObject:v23];

      dismissButton5 = [(HUBannerView *)self dismissButton];
      trailingAnchor3 = [dismissButton5 trailingAnchor];
      trailingAnchor4 = [(HUWelcomeUIBannerView *)self trailingAnchor];
      v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [array addObject:v27];

      dismissButton6 = [(HUBannerView *)self dismissButton];
      heightAnchor2 = [dismissButton6 heightAnchor];
      v30 = [heightAnchor2 constraintEqualToConstant:0.0];
      [array addObject:v30];

      dismissButton4 = [(HUBannerView *)self dismissButton];
      widthAnchor2 = [dismissButton4 widthAnchor];
      widthAnchor = widthAnchor2;
      v21 = 0.0;
    }

    v31 = [widthAnchor2 constraintEqualToConstant:v21];
    [array addObject:v31];

    iconImageView = [(HUBannerView *)self iconImageView];
    leadingAnchor = [iconImageView leadingAnchor];
    leadingAnchor2 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    [v6 leadingInset];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v35];

    traitCollection = [(HUWelcomeUIBannerView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v38 = *MEMORY[0x277D767F8];

    iconImageView2 = [(HUBannerView *)self iconImageView];
    topAnchor3 = [iconImageView2 topAnchor];
    if (preferredContentSizeCategory >= v38)
    {
      topAnchor4 = [(HUWelcomeUIBannerView *)self topAnchor];
      [v6 titleTopInset];
      firstBaselineAnchor = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
      [array addObject:firstBaselineAnchor];
    }

    else
    {
      topAnchor4 = [(HUBannerView *)self titleLabel];
      firstBaselineAnchor = [topAnchor4 firstBaselineAnchor];
      font = [v6 font];
      [font lineHeight];
      v45 = v44;
      [v6 font];
      v46 = v182 = v38;
      [v46 ascender];
      v48 = v45 - v47;
      font2 = [v6 font];
      [font2 descender];
      v51 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor constant:-(v48 - v50)];
      [array addObject:v51];

      v38 = v182;
    }

    iconImageView3 = [(HUBannerView *)self iconImageView];
    heightAnchor3 = [iconImageView3 heightAnchor];
    iconImageView4 = [(HUBannerView *)self iconImageView];
    image = [iconImageView4 image];
    if (image)
    {
      [v6 iconHeight];
    }

    else
    {
      v56 = 0.0;
    }

    v57 = [heightAnchor3 constraintEqualToConstant:v56];
    [array addObject:v57];

    iconImageView5 = [(HUBannerView *)self iconImageView];
    widthAnchor3 = [iconImageView5 widthAnchor];
    iconImageView6 = [(HUBannerView *)self iconImageView];
    heightAnchor4 = [iconImageView6 heightAnchor];
    v62 = [widthAnchor3 constraintEqualToAnchor:heightAnchor4];
    [array addObject:v62];

    traitCollection2 = [(HUWelcomeUIBannerView *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

    titleLabel = [(HUBannerView *)self titleLabel];
    topAnchor5 = [titleLabel topAnchor];
    if (preferredContentSizeCategory2 >= v38)
    {
      iconImageView7 = [(HUBannerView *)self iconImageView];
      bottomAnchor = [iconImageView7 bottomAnchor];
      [v6 verticalSpacingForLipElements];
      v69 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:?];
      [array addObject:v69];
    }

    else
    {
      iconImageView7 = [(HUWelcomeUIBannerView *)self topAnchor];
      [v6 titleTopInset];
      bottomAnchor = [topAnchor5 constraintEqualToAnchor:iconImageView7 constant:?];
      [array addObject:bottomAnchor];
    }

    titleLabel2 = [(HUBannerView *)self titleLabel];
    leadingAnchor3 = [titleLabel2 leadingAnchor];
    leadingAnchor4 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    [v6 leadingInset];
    v73 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    [array addObject:v73];

    titleLabel3 = [(HUBannerView *)self titleLabel];
    trailingAnchor5 = [titleLabel3 trailingAnchor];
    dismissButton7 = [(HUBannerView *)self dismissButton];
    leadingAnchor5 = [dismissButton7 leadingAnchor];
    v78 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor5];
    [array addObject:v78];

    descriptionLabel = [(HUBannerView *)self descriptionLabel];
    topAnchor6 = [descriptionLabel topAnchor];
    titleLabel4 = [(HUBannerView *)self titleLabel];
    bottomAnchor2 = [titleLabel4 bottomAnchor];
    [v6 verticalLabelSpacing];
    v83 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:?];
    [array addObject:v83];

    descriptionLabel2 = [(HUBannerView *)self descriptionLabel];
    leadingAnchor6 = [descriptionLabel2 leadingAnchor];
    leadingAnchor7 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    [v6 leadingInset];
    v87 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:?];
    [array addObject:v87];

    descriptionLabel3 = [(HUBannerView *)self descriptionLabel];
    trailingAnchor6 = [descriptionLabel3 trailingAnchor];
    trailingAnchor7 = [(HUWelcomeUIBannerView *)self trailingAnchor];
    [v6 trailingInset];
    v92 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v91];
    [array addObject:v92];

    lineView = [(HUBannerView *)self lineView];
    topAnchor7 = [lineView topAnchor];
    descriptionLabel4 = [(HUBannerView *)self descriptionLabel];
    bottomAnchor3 = [descriptionLabel4 bottomAnchor];
    [v6 verticalSpacingForLineView];
    v97 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:?];
    [array addObject:v97];

    lineView2 = [(HUBannerView *)self lineView];
    leadingAnchor8 = [lineView2 leadingAnchor];
    leadingAnchor9 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    [v6 leadingInset];
    v101 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:?];
    [array addObject:v101];

    lineView3 = [(HUBannerView *)self lineView];
    trailingAnchor8 = [lineView3 trailingAnchor];
    trailingAnchor9 = [(HUWelcomeUIBannerView *)self trailingAnchor];
    v105 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    [array addObject:v105];

    lineView4 = [(HUBannerView *)self lineView];
    heightAnchor5 = [lineView4 heightAnchor];
    v108 = [heightAnchor5 constraintEqualToConstant:1.0];
    [array addObject:v108];

    welcomeFooterView = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    bottomAnchor4 = [welcomeFooterView bottomAnchor];
    bottomAnchor5 = [(HUWelcomeUIBannerView *)self bottomAnchor];
    v112 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [array addObject:v112];

    welcomeFooterView2 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    leadingAnchor10 = [welcomeFooterView2 leadingAnchor];
    leadingAnchor11 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    v116 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    [array addObject:v116];

    welcomeFooterView3 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    trailingAnchor10 = [welcomeFooterView3 trailingAnchor];
    trailingAnchor11 = [(HUWelcomeUIBannerView *)self trailingAnchor];
    v120 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    [array addObject:v120];

    welcomeFooterView4 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    heightAnchor6 = [welcomeFooterView4 heightAnchor];
    footerViewLabelFont = [v6 footerViewLabelFont];
    [footerViewLabelFont lineHeight];
    v125 = v124;
    [v6 verticalSpacingForLipElements];
    v127 = [heightAnchor6 constraintEqualToConstant:v125 + v126 * 2.0];
    [array addObject:v127];

    footerViewLabel = [(HUBannerView *)self footerViewLabel];
    topAnchor8 = [footerViewLabel topAnchor];
    welcomeFooterView5 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    topAnchor9 = [welcomeFooterView5 topAnchor];
    [v6 verticalSpacingForLipElements];
    v132 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:?];
    [array addObject:v132];

    footerViewLabel2 = [(HUBannerView *)self footerViewLabel];
    leadingAnchor12 = [footerViewLabel2 leadingAnchor];
    welcomeFooterView6 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    leadingAnchor13 = [welcomeFooterView6 leadingAnchor];
    [v6 leadingInset];
    v137 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:?];
    [array addObject:v137];

    footerViewLabel3 = [(HUBannerView *)self footerViewLabel];
    trailingAnchor12 = [footerViewLabel3 trailingAnchor];
    continueButton = [(HUBannerView *)self continueButton];
    leadingAnchor14 = [continueButton leadingAnchor];
    [v6 trailingInset];
    v143 = [trailingAnchor12 constraintLessThanOrEqualToAnchor:leadingAnchor14 constant:-v142];
    [array addObject:v143];

    footerViewLabel4 = [(HUBannerView *)self footerViewLabel];
    bottomAnchor6 = [footerViewLabel4 bottomAnchor];
    welcomeFooterView7 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    bottomAnchor7 = [welcomeFooterView7 bottomAnchor];
    [v6 verticalSpacingForLipElements];
    v149 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-v148];
    [array addObject:v149];

    continueButton2 = [(HUBannerView *)self continueButton];
    topAnchor10 = [continueButton2 topAnchor];
    welcomeFooterView8 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    topAnchor11 = [welcomeFooterView8 topAnchor];
    [v6 verticalSpacingForLipElements];
    v154 = [topAnchor10 constraintEqualToAnchor:topAnchor11 constant:?];
    [array addObject:v154];

    continueButton3 = [(HUBannerView *)self continueButton];
    centerXAnchor = [continueButton3 centerXAnchor];
    dismissButton8 = [(HUBannerView *)self dismissButton];
    centerXAnchor2 = [dismissButton8 centerXAnchor];
    v159 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v159];

    continueButton4 = [(HUBannerView *)self continueButton];
    centerYAnchor = [continueButton4 centerYAnchor];
    welcomeFooterView9 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    centerYAnchor2 = [welcomeFooterView9 centerYAnchor];
    v164 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v164];

    backgroundImageView = [(HUWelcomeUIBannerView *)self backgroundImageView];
    topAnchor12 = [backgroundImageView topAnchor];
    topAnchor13 = [(HUWelcomeUIBannerView *)self topAnchor];
    v168 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
    [array addObject:v168];

    backgroundImageView2 = [(HUWelcomeUIBannerView *)self backgroundImageView];
    trailingAnchor13 = [backgroundImageView2 trailingAnchor];
    trailingAnchor14 = [(HUWelcomeUIBannerView *)self trailingAnchor];
    v172 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    [array addObject:v172];

    backgroundImageView3 = [(HUWelcomeUIBannerView *)self backgroundImageView];
    leadingAnchor15 = [backgroundImageView3 leadingAnchor];
    leadingAnchor16 = [(HUWelcomeUIBannerView *)self leadingAnchor];
    v176 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
    [array addObject:v176];

    backgroundImageView4 = [(HUWelcomeUIBannerView *)self backgroundImageView];
    bottomAnchor8 = [backgroundImageView4 bottomAnchor];
    welcomeFooterView10 = [(HUWelcomeUIBannerView *)self welcomeFooterView];
    topAnchor14 = [welcomeFooterView10 topAnchor];
    v181 = [bottomAnchor8 constraintEqualToAnchor:topAnchor14];
    [array addObject:v181];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUWelcomeUIBannerView *)self setLayoutConstraints:array];
  }
}

@end
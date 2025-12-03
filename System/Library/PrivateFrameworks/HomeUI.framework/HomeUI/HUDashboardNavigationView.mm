@interface HUDashboardNavigationView
- (HUDashboardNavigationView)initWithCoder:(id)coder;
- (HUDashboardNavigationView)initWithFrame:(CGRect)frame;
- (HUDashboardNavigationViewDelegate)delegate;
- (NSString)headerTitle;
- (NSString)title;
- (void)_didTapHomeAppButton:(id)button;
- (void)_didTapLargeTitleButton:(id)button;
- (void)_rotateChevronButtonToAngle:(double)angle;
- (void)_updateTitleButton;
- (void)layoutSubviews;
- (void)setHasTitleAction:(BOOL)action;
- (void)setHeaderTitle:(id)title;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation HUDashboardNavigationView

- (HUDashboardNavigationView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDashboardNavigationView.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HUDashboardNavigationView initWithCoder:]", v6}];

  return 0;
}

- (HUDashboardNavigationView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = HUDashboardNavigationView;
  v3 = [(HUDashboardNavigationView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUDashboardNavigationView *)v3 setTitle:&stru_2823E0EE8];
    [(HUDashboardNavigationView *)v4 setHeaderTitle:0];
    v4->_hasTitleAction = 1;
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:controlCenterSecondaryVibrancyEffect];
    headerTitleLabelEffectView = v4->_headerTitleLabelEffectView;
    v4->_headerTitleLabelEffectView = v6;

    [(UIVisualEffectView *)v4->_headerTitleLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_headerTitleLabelEffectView];
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    headerTitleLabel = v4->_headerTitleLabel;
    v4->_headerTitleLabel = v9;

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v4->_headerTitleLabel setFont:v11];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_headerTitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_headerTitleLabel setLineBreakMode:4];
    [(UILabel *)v4->_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)v4->_headerTitleLabelEffectView contentView];
    [contentView addSubview:v4->_headerTitleLabel];

    controlCenterPrimaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
    v15 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:controlCenterPrimaryVibrancyEffect];
    titleButtonEffectView = v4->_titleButtonEffectView;
    v4->_titleButtonEffectView = v15;

    [(UIVisualEffectView *)v4->_titleButtonEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_titleButtonEffectView];
    v17 = [MEMORY[0x277D75220] buttonWithType:1];
    titleButton = v4->_titleButton;
    v4->_titleButton = v17;

    [(UIButton *)v4->_titleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(UIButton *)v4->_titleButton titleLabel];
    [titleLabel setLineBreakMode:4];

    [(UIButton *)v4->_titleButton setContentEdgeInsets:0.0, 0.0, 0.0, 4.0];
    contentView2 = [(UIVisualEffectView *)v4->_titleButtonEffectView contentView];
    [contentView2 addSubview:v4->_titleButton];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v4->_titleButton setTintColor:whiteColor];

    if ([(HUDashboardNavigationView *)v4 effectiveUserInterfaceLayoutDirection]== 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [(UIButton *)v4->_titleButton setContentHorizontalAlignment:v22];
    if ([(HUDashboardNavigationView *)v4 effectiveUserInterfaceLayoutDirection]== 1)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    [(UIButton *)v4->_titleButton setSemanticContentAttribute:v23];
    [(HUDashboardNavigationView *)v4 _updateTitleButton];
    v24 = [MEMORY[0x277D75220] buttonWithType:0];
    homeAppButton = v4->_homeAppButton;
    v4->_homeAppButton = v24;

    [(UIButton *)v4->_homeAppButton setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v4->_homeAppButton setTintColor:whiteColor2];

    imageView = [(UIButton *)v4->_homeAppButton imageView];
    [imageView setContentMode:1];

    [(UIButton *)v4->_homeAppButton addTarget:v4 action:sel__didTapHomeAppButton_ forControlEvents:64];
    v28 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:48.0];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
    v30 = [v29 imageWithConfiguration:v28];
    v31 = [v30 imageWithRenderingMode:2];

    [(UIButton *)v4->_homeAppButton setImage:v31 forState:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_homeAppButton];
    controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    separatorView = v4->_separatorView;
    v4->_separatorView = controlCenterTertiaryMaterial;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUDashboardNavigationView;
  [(HUDashboardNavigationView *)&v18 layoutSubviews];
  titleButton = [(HUDashboardNavigationView *)self titleButton];
  titleLabel = [titleButton titleLabel];
  font = [titleLabel font];
  [font ascender];
  v7 = v6 + -22.0;
  titleButton2 = [(HUDashboardNavigationView *)self titleButton];
  [titleButton2 imageEdgeInsets];
  v10 = v9;
  titleButton3 = [(HUDashboardNavigationView *)self titleButton];
  [titleButton3 imageEdgeInsets];
  v13 = v12;
  titleButton4 = [(HUDashboardNavigationView *)self titleButton];
  [titleButton4 imageEdgeInsets];
  v16 = v15;
  titleButton5 = [(HUDashboardNavigationView *)self titleButton];
  [titleButton5 setImageEdgeInsets:{v7, v10, v13, v16}];
}

- (void)_rotateChevronButtonToAngle:(double)angle
{
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, angle);
  titleButton = [(HUDashboardNavigationView *)self titleButton];
  imageView = [titleButton imageView];
  v6 = imageView;
  if (imageView)
  {
    [imageView transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v12;
  v7 = CGAffineTransformEqualToTransform(&t1, &t2);

  if (!v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = v12;
    v8[2] = __57__HUDashboardNavigationView__rotateChevronButtonToAngle___block_invoke;
    v8[3] = &unk_277DB80E8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v8 usingSpringWithDamping:&__block_literal_global_54 initialSpringVelocity:1.0 options:0.0 animations:0.5 completion:0.0];
  }
}

void __57__HUDashboardNavigationView__rotateChevronButtonToAngle___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleButton];
  v2 = [v1 imageView];
  [v2 setTransform:&v3];
}

- (void)_didTapLargeTitleButton:(id)button
{
  v11 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ User tapped large title button", &v9, 0xCu);
  }

  delegate = [(HUDashboardNavigationView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUDashboardNavigationView *)self delegate];
    [delegate2 dashboardNavigationView:self didTapLargeTitleButton:buttonCopy];
  }
}

- (void)_didTapHomeAppButton:(id)button
{
  v13 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ User tapped Home app button", buf, 0xCu);
  }

  delegate = [(HUDashboardNavigationView *)self delegate];
  [delegate dashboardNavigationView:self didTapHomeAppButton:buttonCopy];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@-homeAppButton", v9];

  [MEMORY[0x277D143D8] sendGeneralButtonTapEventWithButtonTitle:v10 sourceViewController:0];
}

- (NSString)title
{
  titleButton = [(HUDashboardNavigationView *)self titleButton];
  currentAttributedTitle = [titleButton currentAttributedTitle];
  string = [currentAttributedTitle string];

  return string;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(HUDashboardNavigationView *)self title];
  v19 = titleCopy;
  v6 = title;
  if (v6 == v19)
  {
    v7 = 1;
  }

  else if (v19)
  {
    v7 = [v19 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = v19;
  if (v19 && (v7 & 1) == 0)
  {
    largeTitleTextAttributes = [(HUDashboardNavigationView *)self largeTitleTextAttributes];

    if (!largeTitleTextAttributes)
    {
      v10 = objc_alloc_init(MEMORY[0x277D75788]);
      largeTitleTextAttributes2 = [v10 largeTitleTextAttributes];
      [(HUDashboardNavigationView *)self setLargeTitleTextAttributes:largeTitleTextAttributes2];
    }

    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
    largeTitleTextAttributes3 = [(HUDashboardNavigationView *)self largeTitleTextAttributes];
    v14 = [v12 hf_attributedStringWithDefaultAttributes:largeTitleTextAttributes3];
    v15 = [v14 mutableCopy];

    effectiveUserInterfaceLayoutDirection = [(HUDashboardNavigationView *)self effectiveUserInterfaceLayoutDirection];
    v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      [v15 insertAttributedString:v17 atIndex:0];
    }

    else
    {
      [v15 appendAttributedString:v17];
    }

    titleButton = [(HUDashboardNavigationView *)self titleButton];
    [titleButton setAttributedTitle:v15 forState:0];

    v8 = v19;
  }
}

- (NSString)headerTitle
{
  headerTitleLabel = [(HUDashboardNavigationView *)self headerTitleLabel];
  text = [headerTitleLabel text];

  return text;
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  headerTitle = [(HUDashboardNavigationView *)self headerTitle];
  v10 = titleCopy;
  v6 = headerTitle;
  if (v6 == v10)
  {

    goto LABEL_8;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v7 = [v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    headerTitleLabel = [(HUDashboardNavigationView *)self headerTitleLabel];
    [headerTitleLabel setText:v10];

    headerTitleLabel2 = [(HUDashboardNavigationView *)self headerTitleLabel];
    [headerTitleLabel2 sizeToFit];

    [(HUDashboardNavigationView *)self setNeedsUpdateConstraints];
  }

LABEL_8:
}

- (void)setHasTitleAction:(BOOL)action
{
  if (self->_hasTitleAction != action)
  {
    self->_hasTitleAction = action;
    [(HUDashboardNavigationView *)self _updateTitleButton];
  }
}

- (void)updateConstraints
{
  v118[23] = *MEMORY[0x277D85DE8];
  v117.receiver = self;
  v117.super_class = HUDashboardNavigationView;
  [(HUDashboardNavigationView *)&v117 updateConstraints];
  allConstraints = [(HUDashboardNavigationView *)self allConstraints];

  if (allConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    allConstraints2 = [(HUDashboardNavigationView *)self allConstraints];
    [v4 deactivateConstraints:allConstraints2];
  }

  headerTitleLabelEffectView = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  topAnchor = [headerTitleLabelEffectView topAnchor];
  topAnchor2 = [(HUDashboardNavigationView *)self topAnchor];
  v113 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v118[0] = v113;
  headerTitleLabel = [(HUDashboardNavigationView *)self headerTitleLabel];
  topAnchor3 = [headerTitleLabel topAnchor];
  headerTitleLabelEffectView2 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  topAnchor4 = [headerTitleLabelEffectView2 topAnchor];
  v108 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v118[1] = v108;
  headerTitleLabel2 = [(HUDashboardNavigationView *)self headerTitleLabel];
  bottomAnchor = [headerTitleLabel2 bottomAnchor];
  headerTitleLabelEffectView3 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  bottomAnchor2 = [headerTitleLabelEffectView3 bottomAnchor];
  v103 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v118[2] = v103;
  headerTitleLabelEffectView4 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  bottomAnchor3 = [headerTitleLabelEffectView4 bottomAnchor];
  titleButtonEffectView = [(HUDashboardNavigationView *)self titleButtonEffectView];
  topAnchor5 = [titleButtonEffectView topAnchor];
  v98 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  v118[3] = v98;
  titleButton = [(HUDashboardNavigationView *)self titleButton];
  topAnchor6 = [titleButton topAnchor];
  titleButtonEffectView2 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  topAnchor7 = [titleButtonEffectView2 topAnchor];
  v93 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v118[4] = v93;
  titleButton2 = [(HUDashboardNavigationView *)self titleButton];
  bottomAnchor4 = [titleButton2 bottomAnchor];
  titleButtonEffectView3 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  bottomAnchor5 = [titleButtonEffectView3 bottomAnchor];
  v88 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v118[5] = v88;
  homeAppButton = [(HUDashboardNavigationView *)self homeAppButton];
  bottomAnchor6 = [homeAppButton bottomAnchor];
  titleButton3 = [(HUDashboardNavigationView *)self titleButton];
  bottomAnchor7 = [titleButton3 bottomAnchor];
  v83 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v118[6] = v83;
  separatorView = [(HUDashboardNavigationView *)self separatorView];
  topAnchor8 = [separatorView topAnchor];
  titleButtonEffectView4 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  bottomAnchor8 = [titleButtonEffectView4 bottomAnchor];
  v78 = [topAnchor8 constraintEqualToAnchor:bottomAnchor8 constant:18.0];
  v118[7] = v78;
  separatorView2 = [(HUDashboardNavigationView *)self separatorView];
  bottomAnchor9 = [separatorView2 bottomAnchor];
  safeAreaLayoutGuide = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide bottomAnchor];
  v73 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v118[8] = v73;
  separatorView3 = [(HUDashboardNavigationView *)self separatorView];
  heightAnchor = [separatorView3 heightAnchor];
  v70 = [heightAnchor constraintEqualToConstant:0.75];
  v118[9] = v70;
  headerTitleLabelEffectView5 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  leadingAnchor = [headerTitleLabelEffectView5 leadingAnchor];
  safeAreaLayoutGuide2 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v118[10] = v65;
  headerTitleLabelEffectView6 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  trailingAnchor = [headerTitleLabelEffectView6 trailingAnchor];
  safeAreaLayoutGuide3 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v118[11] = v60;
  headerTitleLabel3 = [(HUDashboardNavigationView *)self headerTitleLabel];
  leadingAnchor3 = [headerTitleLabel3 leadingAnchor];
  headerTitleLabelEffectView7 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  leadingAnchor4 = [headerTitleLabelEffectView7 leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v118[12] = v55;
  headerTitleLabel4 = [(HUDashboardNavigationView *)self headerTitleLabel];
  trailingAnchor3 = [headerTitleLabel4 trailingAnchor];
  headerTitleLabelEffectView8 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  trailingAnchor4 = [headerTitleLabelEffectView8 trailingAnchor];
  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v118[13] = v49;
  titleButtonEffectView5 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  leadingAnchor5 = [titleButtonEffectView5 leadingAnchor];
  safeAreaLayoutGuide4 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide4 leadingAnchor];
  v44 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v118[14] = v44;
  titleButton4 = [(HUDashboardNavigationView *)self titleButton];
  leadingAnchor7 = [titleButton4 leadingAnchor];
  titleButtonEffectView6 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  leadingAnchor8 = [titleButtonEffectView6 leadingAnchor];
  v39 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v118[15] = v39;
  titleButton5 = [(HUDashboardNavigationView *)self titleButton];
  trailingAnchor5 = [titleButton5 trailingAnchor];
  titleButtonEffectView7 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  trailingAnchor6 = [titleButtonEffectView7 trailingAnchor];
  v34 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v118[16] = v34;
  homeAppButton2 = [(HUDashboardNavigationView *)self homeAppButton];
  leadingAnchor9 = [homeAppButton2 leadingAnchor];
  titleButtonEffectView8 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  trailingAnchor7 = [titleButtonEffectView8 trailingAnchor];
  v29 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor7];
  v118[17] = v29;
  homeAppButton3 = [(HUDashboardNavigationView *)self homeAppButton];
  trailingAnchor8 = [homeAppButton3 trailingAnchor];
  safeAreaLayoutGuide5 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  trailingAnchor9 = [safeAreaLayoutGuide5 trailingAnchor];
  v24 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v118[18] = v24;
  separatorView4 = [(HUDashboardNavigationView *)self separatorView];
  leadingAnchor10 = [separatorView4 leadingAnchor];
  safeAreaLayoutGuide6 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  leadingAnchor11 = [safeAreaLayoutGuide6 leadingAnchor];
  v19 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v118[19] = v19;
  separatorView5 = [(HUDashboardNavigationView *)self separatorView];
  trailingAnchor10 = [separatorView5 trailingAnchor];
  safeAreaLayoutGuide7 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  trailingAnchor11 = [safeAreaLayoutGuide7 trailingAnchor];
  v8 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v118[20] = v8;
  homeAppButton4 = [(HUDashboardNavigationView *)self homeAppButton];
  heightAnchor2 = [homeAppButton4 heightAnchor];
  v11 = [heightAnchor2 constraintEqualToConstant:48.0];
  v118[21] = v11;
  homeAppButton5 = [(HUDashboardNavigationView *)self homeAppButton];
  widthAnchor = [homeAppButton5 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:48.0];
  v118[22] = v14;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:23];

  [(HUDashboardNavigationView *)self setAllConstraints:v53];
  v15 = MEMORY[0x277CCAAD0];
  allConstraints3 = [(HUDashboardNavigationView *)self allConstraints];
  [v15 activateConstraints:allConstraints3];
}

- (void)_updateTitleButton
{
  hasTitleAction = [(HUDashboardNavigationView *)self hasTitleAction];
  titleButton = [(HUDashboardNavigationView *)self titleButton];
  [titleButton setUserInteractionEnabled:hasTitleAction];

  if ([(HUDashboardNavigationView *)self hasTitleAction])
  {
    titleButton5 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
    v6 = [v5 imageWithConfiguration:titleButton5];
    v7 = [v6 imageWithRenderingMode:2];

    titleButton2 = [(HUDashboardNavigationView *)self titleButton];
    [titleButton2 setImage:v7 forState:0];

    titleButton3 = [(HUDashboardNavigationView *)self titleButton];
    [titleButton3 addTarget:self action:sel__didTapLargeTitleButton_ forControlEvents:64];
  }

  else
  {
    titleButton4 = [(HUDashboardNavigationView *)self titleButton];
    [titleButton4 setImage:0 forState:0];

    titleButton5 = [(HUDashboardNavigationView *)self titleButton];
    [titleButton5 removeTarget:self action:sel__didTapLargeTitleButton_ forControlEvents:64];
  }
}

- (HUDashboardNavigationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
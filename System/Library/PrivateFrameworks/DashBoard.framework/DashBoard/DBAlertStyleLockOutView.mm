@interface DBAlertStyleLockOutView
- (DBAlertStyleLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration;
- (id)_buttonFont;
- (id)_buttonOfType:(unint64_t)type;
- (id)_buttonTitleForType:(unint64_t)type;
- (id)_titleFont;
- (void)_buttonTapped:(id)tapped;
@end

@implementation DBAlertStyleLockOutView

- (DBAlertStyleLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration
{
  v150[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v138.receiver = self;
  v138.super_class = DBAlertStyleLockOutView;
  v7 = [(DBLockOutView *)&v138 initWithMode:mode environmentConfiguration:configurationCopy];
  if (!v7)
  {
    goto LABEL_27;
  }

  v132 = objc_opt_new();
  v8 = objc_opt_new();
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  [(DBAlertStyleLockOutView *)v7 setBackgroundColor:tableBackgroundColor];

  v10 = 0;
  p_isa = &v7->super.super.super.super.isa;
  if (mode > 3)
  {
    if ((mode - 5) >= 2)
    {
      if (mode == 4)
      {
        v130 = v8;
        v86 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
        v12 = [v86 localizedStringForKey:@"LOCKOUT_THERMAL_TITLE" value:&stru_285A57218 table:@"CarPlayApp"];

        v87 = MEMORY[0x277D755B8];
        v88 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
        traitCollection = [configurationCopy traitCollection];
        v11 = [v87 imageNamed:@"CarDisplayThermometer" inBundle:v88 compatibleWithTraitCollection:traitCollection];

        v7 = p_isa;
        v90 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
        v10 = [v90 localizedStringForKey:@"LOCKOUT_THERMAL_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];

        v8 = v130;
        v15 = [p_isa _buttonOfType:1000];
        v148 = v15;
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
        [v130 addObjectsFromArray:v91];

        goto LABEL_13;
      }

      v11 = 0;
      v12 = 0;
      if (mode == 7)
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
        v18 = v8;
        v12 = [v17 localizedStringForKey:@"LOCKOUT_DISCLOSURE_TITLE" value:&stru_285A57218 table:@"CarPlayApp"];

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
        v10 = [v19 localizedStringForKey:@"LOCKOUT_DISCLOSURE_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];

        v20 = [(DBAlertStyleLockOutView *)v7 _buttonOfType:1002];
        v147[0] = v20;
        v21 = [(DBAlertStyleLockOutView *)v7 _buttonOfType:1003];
        v147[1] = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];
        [v18 addObjectsFromArray:v22];

        if (![MEMORY[0x277CF89D0] showTrustedLockout])
        {
          v11 = 0;
          v8 = v18;
          goto LABEL_14;
        }

        v15 = [(DBAlertStyleLockOutView *)v7 _buttonOfType:1004];
        [v18 insertObject:v15 atIndex:1];
        v11 = 0;
        v8 = v18;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

LABEL_11:
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = [v23 localizedStringForKey:@"LOCKOUT_GENERIC_TITLE" value:&stru_285A57218 table:@"CarPlayApp"];

    v15 = [(DBAlertStyleLockOutView *)v7 _buttonOfType:1000];
    v150[0] = v15;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:1];
    [v8 addObjectsFromArray:v24];

    v10 = 0;
    goto LABEL_12;
  }

  if (mode < 3)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = 0;
  if (mode == 3)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = [v13 localizedStringForKey:@"LOCKOUT_SIRI_TITLE" value:&stru_285A57218 table:@"CarPlayApp"];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v10 = [v14 localizedStringForKey:@"LOCKOUT_SIRI_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];

    v15 = [(DBAlertStyleLockOutView *)v7 _buttonOfType:1000];
    v149 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
    [v8 addObjectsFromArray:v16];

LABEL_12:
    v11 = 0;
LABEL_13:
  }

LABEL_14:
  v131 = configurationCopy;
  v25 = objc_alloc(MEMORY[0x277D756B8]);
  v26 = *MEMORY[0x277CBF3A0];
  v27 = *(MEMORY[0x277CBF3A0] + 8);
  v28 = *(MEMORY[0x277CBF3A0] + 16);
  v29 = *(MEMORY[0x277CBF3A0] + 24);
  v30 = [v25 initWithFrame:{*MEMORY[0x277CBF3A0], v27, v28, v29}];
  titleLabel = v7->_titleLabel;
  v7->_titleLabel = v30;

  [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  _titleFont = [(DBAlertStyleLockOutView *)v7 _titleFont];
  [(UILabel *)v7->_titleLabel setFont:_titleFont];

  [(UILabel *)v7->_titleLabel setTextAlignment:1];
  [(UILabel *)v7->_titleLabel setNumberOfLines:0];
  [(UILabel *)v7->_titleLabel setText:v12];
  [(DBAlertStyleLockOutView *)v7 addSubview:v7->_titleLabel];
  if (v11)
  {
    v33 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    imageView = v7->_imageView;
    v7->_imageView = v33;

    [(UIImageView *)v7->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v7->_imageView setContentMode:1];
    [(DBAlertStyleLockOutView *)v7 addSubview:v7->_imageView];
  }

  v128 = v11;
  v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v26, v27, v28, v29}];
  messageLabel = v7->_messageLabel;
  v7->_messageLabel = v35;

  [(UILabel *)v7->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
  v145 = *MEMORY[0x277D74430];
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v146 = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];

  v143 = *MEMORY[0x277D74380];
  v144 = v39;
  v127 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
  v41 = [v37 fontDescriptorByAddingAttributes:v40];

  v126 = v41;
  v42 = [MEMORY[0x277D74300] fontWithDescriptor:v41 size:0.0];
  [(UILabel *)v7->_messageLabel setFont:v42];

  [(UILabel *)v7->_messageLabel setTextAlignment:1];
  [(UILabel *)v7->_messageLabel setNumberOfLines:0];
  v129 = v10;
  [(UILabel *)v7->_messageLabel setText:v10];
  [(DBAlertStyleLockOutView *)v7 addSubview:v7->_messageLabel];
  v43 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v26, v27, v28, v29}];
  buttonStackView = v7->_buttonStackView;
  v7->_buttonStackView = v43;

  [(UIStackView *)v7->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v7->_buttonStackView setAxis:0];
  [(UIStackView *)v7->_buttonStackView setDistribution:1];
  [(UIStackView *)v7->_buttonStackView setSpacing:20.0];
  [(DBAlertStyleLockOutView *)v7 addSubview:v7->_buttonStackView];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v45 = v8;
  v46 = [v45 countByEnumeratingWithState:&v134 objects:v142 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v135;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v135 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v134 + 1) + 8 * i);
        [(UIStackView *)v7->_buttonStackView addArrangedSubview:v50];
        widthAnchor = [v50 widthAnchor];
        v52 = [widthAnchor constraintLessThanOrEqualToConstant:241.0];
        v141[0] = v52;
        heightAnchor = [v50 heightAnchor];
        v54 = [heightAnchor constraintGreaterThanOrEqualToConstant:40.0];
        v141[1] = v54;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:2];
        [v132 addObjectsFromArray:v55];

        v7 = p_isa;
      }

      v47 = [v45 countByEnumeratingWithState:&v134 objects:v142 count:16];
    }

    while (v47);
  }

  v56 = v7->_imageView;
  if (v56)
  {
    firstBaselineAnchor = [(UIImageView *)v56 firstBaselineAnchor];
    safeAreaLayoutGuide = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
    topAnchor = [safeAreaLayoutGuide topAnchor];
    [v131 currentSafeViewAreaFrame];
    v58 = v57 * 0.25;
    screen = [v131 screen];
    [screen scale];
    v60 = v59 / 1.5;
    screen2 = [v131 screen];
    [screen2 scale];
    v118 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v62 * 0.5 * -60.0 + v58 * v60];
    v140[0] = v118;
    leadingAnchor = [(UIImageView *)v7->_imageView leadingAnchor];
    safeAreaLayoutGuide2 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v106 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v140[1] = v106;
    trailingAnchor = [(UIImageView *)v7->_imageView trailingAnchor];
    safeAreaLayoutGuide3 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v140[2] = v64;
    firstBaselineAnchor2 = [(UILabel *)v7->_titleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UIImageView *)v7->_imageView lastBaselineAnchor];
    v67 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:30.0];
    v140[3] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:4];
    [v132 addObjectsFromArray:v68];

    v7 = p_isa;
    safeAreaLayoutGuide4 = safeAreaLayoutGuide;

    firstBaselineAnchor3 = firstBaselineAnchor;
    v71 = screen2;
    screen3 = screen;

    topAnchor2 = topAnchor;
  }

  else
  {
    firstBaselineAnchor3 = [(UILabel *)v7->_titleLabel firstBaselineAnchor];
    safeAreaLayoutGuide4 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
    [v131 currentSafeViewAreaFrame];
    v75 = v74 * 0.25;
    screen3 = [v131 screen];
    [screen3 scale];
    v71 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor2 constant:v75 * (v76 / 1.5) + -24.0];
    [v132 addObject:v71];
  }

  leadingAnchor3 = [(UILabel *)v7->_titleLabel leadingAnchor];
  safeAreaLayoutGuide5 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide5 leadingAnchor];
  v119 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  v139[0] = v119;
  trailingAnchor3 = [(UILabel *)v7->_titleLabel trailingAnchor];
  safeAreaLayoutGuide6 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide6 trailingAnchor];
  v111 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-12.0];
  v139[1] = v111;
  firstBaselineAnchor4 = [(UILabel *)v7->_messageLabel firstBaselineAnchor];
  lastBaselineAnchor2 = [(UILabel *)v7->_titleLabel lastBaselineAnchor];
  v105 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:30.0];
  v139[2] = v105;
  leadingAnchor5 = [(UILabel *)v7->_messageLabel leadingAnchor];
  safeAreaLayoutGuide7 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide7 leadingAnchor];
  v99 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:12.0];
  v139[3] = v99;
  trailingAnchor5 = [(UILabel *)v7->_messageLabel trailingAnchor];
  safeAreaLayoutGuide8 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide8 trailingAnchor];
  v95 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-12.0];
  v139[4] = v95;
  widthAnchor2 = [(UIStackView *)v7->_buttonStackView widthAnchor];
  v96 = v45;
  v93 = [widthAnchor2 constraintEqualToConstant:{dbl_24839BC10[objc_msgSend(v45, "count") == 1]}];
  v139[5] = v93;
  centerXAnchor = [(UIStackView *)v7->_buttonStackView centerXAnchor];
  safeAreaLayoutGuide9 = [(DBAlertStyleLockOutView *)v7 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide9 centerXAnchor];
  v79 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v139[6] = v79;
  bottomAnchor = [p_isa[57] bottomAnchor];
  safeAreaLayoutGuide10 = [p_isa safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide10 bottomAnchor];
  v83 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
  v139[7] = v83;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:8];
  [v132 addObjectsFromArray:v84];

  v7 = p_isa;
  [MEMORY[0x277CCAAD0] activateConstraints:v132];

  configurationCopy = v131;
LABEL_27:

  return v7;
}

- (id)_titleFont
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D74310];
  v3 = *MEMORY[0x277D76A20];
  traitCollection = [(DBAlertStyleLockOutView *)self traitCollection];
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:traitCollection];

  v14 = *MEMORY[0x277D74430];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12 = *MEMORY[0x277D74380];
  v13 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];

  return v10;
}

- (id)_buttonFont
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920]];
  v11 = *MEMORY[0x277D74430];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x277D74380];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [v2 fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)_buttonOfType:(unint64_t)type
{
  v5 = [DBColorButton buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(DBAlertStyleLockOutView *)self _buttonTitleForType:type];
  [v5 setTitle:v6 forState:0];

  [v5 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  switch(type)
  {
    case 0x3ECuLL:
      systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
      goto LABEL_7;
    case 0x3EBuLL:
      systemYellowColor = [MEMORY[0x277D75348] systemGreenColor];
      goto LABEL_7;
    case 0x3EAuLL:
      systemYellowColor = [MEMORY[0x277D75348] systemRedColor];
LABEL_7:
      v8 = systemYellowColor;
      [v5 setCarButtonColor:systemYellowColor];

      _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      [v5 setTitleColor:_carSystemFocusLabelColor forState:0];
      goto LABEL_9;
  }

  _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  [v5 setCarButtonColor:_carSystemFocusLabelColor];
LABEL_9:

  layer = [v5 layer];
  [layer setCornerRadius:20.0];

  titleLabel = [v5 titleLabel];
  _buttonFont = [(DBAlertStyleLockOutView *)self _buttonFont];
  [titleLabel setFont:_buttonFont];

  _carSystemFocusLabelColor2 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  [v5 setTitleColor:_carSystemFocusLabelColor2 forState:8];

  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setNumberOfLines:2];

  titleLabel3 = [v5 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v5 setTag:type];

  return v5;
}

- (id)_buttonTitleForType:(unint64_t)type
{
  if (type - 1000 <= 4)
  {
    v4 = off_278F02B70[type - 1000];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v3 = [v5 localizedStringForKey:v4 value:&stru_285A57218 table:@"CarPlayApp"];
  }

  return v3;
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(DBLockOutView *)self delegate];
  v5 = [tappedCopy tag];

  [delegate lockOutView:self didTapButtonOfType:v5];
}

@end
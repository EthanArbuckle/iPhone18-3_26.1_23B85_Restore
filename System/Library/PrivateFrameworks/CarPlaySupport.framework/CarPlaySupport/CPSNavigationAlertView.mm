@interface CPSNavigationAlertView
- (CPSNavigationAlertView)initWithFrame:(CGRect)frame navigationAlert:(id)alert templateDelegate:(id)delegate buttonDelegate:(id)buttonDelegate;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)startAnimating;
- (void)traitCollectionDidChange:(id)change;
- (void)updateNavigationAlert:(id)alert;
@end

@implementation CPSNavigationAlertView

- (id)_linearFocusItems
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  closeButton = [(CPSNavigationAlertView *)selfCopy closeButton];
  v2 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
  if (closeButton)
  {
    closeButton2 = [(CPSNavigationAlertView *)selfCopy closeButton];
    [v13[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](closeButton2).n128_u64[0];
  }

  primaryButton = [(CPSNavigationAlertView *)selfCopy primaryButton];
  v3 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
  if (primaryButton)
  {
    primaryButton2 = [(CPSNavigationAlertView *)selfCopy primaryButton];
    [v13[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](primaryButton2).n128_u64[0];
  }

  secondaryButton = [(CPSNavigationAlertView *)selfCopy secondaryButton];
  v4 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
  if (secondaryButton)
  {
    secondaryButton2 = [(CPSNavigationAlertView *)selfCopy secondaryButton];
    [v13[0] addObject:?];
    v4 = MEMORY[0x277D82BD8](secondaryButton2).n128_u64[0];
  }

  v6 = [v13[0] copy];
  objc_storeStrong(v13, 0);

  return v6;
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  closeButton = [(CPSNavigationAlertView *)selfCopy closeButton];
  v2 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
  if (closeButton)
  {
    closeButton2 = [(CPSNavigationAlertView *)selfCopy closeButton];
    [v13[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](closeButton2).n128_u64[0];
  }

  primaryButton = [(CPSNavigationAlertView *)selfCopy primaryButton];
  v3 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
  if (primaryButton)
  {
    primaryButton2 = [(CPSNavigationAlertView *)selfCopy primaryButton];
    [v13[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](primaryButton2).n128_u64[0];
  }

  secondaryButton = [(CPSNavigationAlertView *)selfCopy secondaryButton];
  *&v4 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
  if (secondaryButton)
  {
    secondaryButton2 = [(CPSNavigationAlertView *)selfCopy secondaryButton];
    [v13[0] addObject:?];
    MEMORY[0x277D82BD8](secondaryButton2);
  }

  v6 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v6;
}

- (CPSNavigationAlertView)initWithFrame:(CGRect)frame navigationAlert:(id)alert templateDelegate:(id)delegate buttonDelegate:(id)buttonDelegate
{
  v247[4] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v235 = 0;
  objc_storeStrong(&v235, delegate);
  v234 = 0;
  objc_storeStrong(&v234, buttonDelegate);
  v6 = selfCopy;
  selfCopy = 0;
  v233.receiver = v6;
  v233.super_class = CPSNavigationAlertView;
  v216 = [(CPSNavigationAlertView *)&v233 initWithFrame:frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height];
  selfCopy = v216;
  objc_storeStrong(&selfCopy, v216);
  if (v216)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSNavigationAlertView *)selfCopy setBackgroundColor:?];
    v232 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    [v232 setTranslatesAutoresizingMaskIntoConstraints:0];
    v230 = 0;
    v213 = 0;
    if (CPSAlertUsesMinimalStyle(location[0]))
    {
      image = [location[0] image];
      v230 = 1;
      v213 = image == 0;
    }

    if (v230)
    {
      MEMORY[0x277D82BD8](image);
    }

    if (v213)
    {
      layer = [v232 layer];
      [layer setCornerRadius:14.0];
      MEMORY[0x277D82BD8](layer);
    }

    objc_storeStrong(&selfCopy->_contentView, v232);
    [(CPSNavigationAlertView *)selfCopy addSubview:selfCopy->_contentView];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v169 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;
    *&v7 = MEMORY[0x277D82BD8](mEMORY[0x277D75128]).n128_u64[0];
    v229 = v169;
    v8 = 2;
    if (!v169)
    {
      v8 = 0;
    }

    v228 = v8;
    subtitleVariants = [location[0] subtitleVariants];
    firstObject = [subtitleVariants firstObject];
    v170 = [(CPUIAbridgableNewlineLabel *)CPSAbridgableNewlineLabel sanitizedTextForText:?];
    v173 = [v170 length] != 0;
    MEMORY[0x277D82BD8](v170);
    MEMORY[0x277D82BD8](firstObject);
    *&v9 = MEMORY[0x277D82BD8](subtitleVariants).n128_u64[0];
    v227 = v173;
    titleVariants = [location[0] titleVariants];
    firstObject2 = [titleVariants firstObject];
    v174 = [(CPUIAbridgableNewlineLabel *)CPSAbridgableNewlineLabel sanitizedTextForText:?];
    v177 = [v174 length] != 0;
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](firstObject2);
    MEMORY[0x277D82BD8](titleVariants);
    v226 = v177;
    v225 = CPSAlertUsesMinimalStyle(location[0]);
    v178 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIView *)selfCopy->_contentView topAnchor];
    topAnchor2 = [(CPSNavigationAlertView *)selfCopy topAnchor];
    v189 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    v247[0] = v189;
    bottomAnchor = [(UIView *)selfCopy->_contentView bottomAnchor];
    bottomAnchor2 = [(CPSNavigationAlertView *)selfCopy bottomAnchor];
    v186 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v247[1] = v186;
    leadingAnchor = [(UIView *)selfCopy->_contentView leadingAnchor];
    leadingAnchor2 = [(CPSNavigationAlertView *)selfCopy leadingAnchor];
    v183 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
    v247[2] = v183;
    trailingAnchor = [(UIView *)selfCopy->_contentView trailingAnchor];
    trailingAnchor2 = [(CPSNavigationAlertView *)selfCopy trailingAnchor];
    v180 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
    v247[3] = v180;
    v179 = [MEMORY[0x277CBEA60] arrayWithObjects:v247 count:?];
    [v178 activateConstraints:?];
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v183);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](v186);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    objc_storeStrong(&selfCopy->_navigationAlert, location[0]);
    v10 = objc_alloc(MEMORY[0x277CF90F0]);
    v193 = MEMORY[0x277CBF3A0];
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    focusRingView = selfCopy->_focusRingView;
    selfCopy->_focusRingView = v11;
    *&v13 = MEMORY[0x277D82BD8](focusRingView).n128_u64[0];
    [(CPUIFocusRingView *)selfCopy->_focusRingView setTranslatesAutoresizingMaskIntoConstraints:0, v13];
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(CPUIFocusRingView *)selfCopy->_focusRingView setRingColor:?];
    MEMORY[0x277D82BD8](_carSystemFocusColor);
    [(CPUIFocusRingView *)selfCopy->_focusRingView setCornerRadius:15.0];
    [(CPUIFocusRingView *)selfCopy->_focusRingView setRingWidth:2.0];
    [(CPUIFocusRingView *)selfCopy->_focusRingView setRingGap:?];
    [(CPUIFocusRingView *)selfCopy->_focusRingView setHidden:1];
    [(UIView *)selfCopy->_contentView addSubview:selfCopy->_focusRingView];
    v14 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v193, v193[1], v193[2], v193[3]}];
    stackView = selfCopy->_stackView;
    selfCopy->_stackView = v14;
    *&v16 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    [(UIStackView *)selfCopy->_stackView setTranslatesAutoresizingMaskIntoConstraints:0, v16];
    [(UIStackView *)selfCopy->_stackView setAxis:1];
    [(UIStackView *)selfCopy->_stackView setDistribution:0];
    [(UIStackView *)selfCopy->_stackView setAlignment:0];
    [(UIStackView *)selfCopy->_stackView setSpacing:0.0];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)selfCopy->_stackView setBackgroundColor:?];
    *&v17 = MEMORY[0x277D82BD8](clearColor2).n128_u64[0];
    contentView = selfCopy->_contentView;
    stackView = [(CPSNavigationAlertView *)selfCopy stackView];
    [(UIView *)contentView addSubview:?];
    *&v18 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    v197 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(UIStackView *)selfCopy->_stackView topAnchor];
    topAnchor4 = [(CPSNavigationAlertView *)selfCopy topAnchor];
    v208 = [topAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v246[0] = v208;
    bottomAnchor3 = [(UIStackView *)selfCopy->_stackView bottomAnchor];
    bottomAnchor4 = [(CPSNavigationAlertView *)selfCopy bottomAnchor];
    v205 = [bottomAnchor3 constraintEqualToAnchor:-10.0 constant:?];
    v246[1] = v205;
    leadingAnchor3 = [(UIStackView *)selfCopy->_stackView leadingAnchor];
    leadingAnchor4 = [(CPSNavigationAlertView *)selfCopy leadingAnchor];
    v202 = [leadingAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v246[2] = v202;
    trailingAnchor3 = [(UIStackView *)selfCopy->_stackView trailingAnchor];
    trailingAnchor4 = [(CPSNavigationAlertView *)selfCopy trailingAnchor];
    v199 = [trailingAnchor3 constraintEqualToAnchor:-10.0 constant:?];
    v246[3] = v199;
    v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:4];
    [v197 activateConstraints:?];
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v199);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v202);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v208);
    MEMORY[0x277D82BD8](topAnchor4);
    *&v19 = MEMORY[0x277D82BD8](topAnchor3).n128_u64[0];
    [location[0] duration];
    if (v20 > 0.0)
    {
      v21 = [CPSNavigationAlertProgressView alloc];
      v22 = [(CPSNavigationAlertProgressView *)v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      progressView = selfCopy->_progressView;
      selfCopy->_progressView = v22;
      *&v24 = MEMORY[0x277D82BD8](progressView).n128_u64[0];
      [(CPSNavigationAlertProgressView *)selfCopy->_progressView setTranslatesAutoresizingMaskIntoConstraints:0, v24];
      if (CPSAlertUsesMinimalStyle(location[0]))
      {
        separatorColor = [MEMORY[0x277D75348] separatorColor];
        [(CPSNavigationAlertProgressView *)selfCopy->_progressView setBackgroundColor:?];
        MEMORY[0x277D82BD8](separatorColor);
      }
    }

    if (v226)
    {
      v25 = [CPSAbridgableNewlineLabel alloc];
      v26 = [(CPSAbridgableNewlineLabel *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      titleLabel = selfCopy->_titleLabel;
      selfCopy->_titleLabel = v26;
      labelColor = [MEMORY[0x277D75348] labelColor];
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setTextColor:?];
      MEMORY[0x277D82BD8](labelColor);
      v164 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setFont:?];
      *&v28 = MEMORY[0x277D82BD8](v164).n128_u64[0];
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setTextAlignment:v228, v28];
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setNumberOfLines:2];
      [CPSAbridgableNewlineLabel setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v29) = 1144750080;
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setContentCompressionResistancePriority:v29 forAxis:?];
      LODWORD(v30) = 1148846080;
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setContentHuggingPriority:1 forAxis:v30];
      LODWORD(v31) = 1144750080;
      [(CPSAbridgableNewlineLabel *)selfCopy->_titleLabel setContentHuggingPriority:0 forAxis:v31];
      v165 = selfCopy->_titleLabel;
      titleVariants2 = [location[0] titleVariants];
      [(CPUIAbridgableLabel *)v165 setTextVariants:?];
      MEMORY[0x277D82BD8](titleVariants2);
    }

    if (v227)
    {
      v32 = [CPSAbridgableNewlineLabel alloc];
      v33 = [(CPSAbridgableNewlineLabel *)v32 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      subtitleLabel = selfCopy->_subtitleLabel;
      selfCopy->_subtitleLabel = v33;
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setTextColor:?];
      MEMORY[0x277D82BD8](secondaryLabelColor);
      v160 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setFont:?];
      *&v35 = MEMORY[0x277D82BD8](v160).n128_u64[0];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0, v35];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setNumberOfLines:?];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setTextAlignment:v228];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setLineBreakMode:0];
      LODWORD(v36) = 1132068864;
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setContentCompressionResistancePriority:v36 forAxis:?];
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:?];
      LODWORD(v37) = 1148846080;
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setContentHuggingPriority:1 forAxis:v37];
      LODWORD(v38) = 1148846080;
      [(CPSAbridgableNewlineLabel *)selfCopy->_subtitleLabel setContentHuggingPriority:0 forAxis:v38];
      v161 = selfCopy->_subtitleLabel;
      subtitleVariants2 = [location[0] subtitleVariants];
      [(CPUIAbridgableLabel *)v161 setTextVariants:?];
      MEMORY[0x277D82BD8](subtitleVariants2);
    }

    image2 = [location[0] image];
    *&v39 = MEMORY[0x277D82BD8](image2).n128_u64[0];
    if (image2)
    {
      v40 = objc_alloc(MEMORY[0x277D755E8]);
      v41 = [v40 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      imageView = selfCopy->_imageView;
      selfCopy->_imageView = v41;
      *&v43 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
      [(UIImageView *)selfCopy->_imageView setContentMode:v43];
      v155 = selfCopy->_imageView;
      image3 = [location[0] image];
      v156 = CPImageByScalingImageToSize();
      [(UIImageView *)v155 setImage:?];
      MEMORY[0x277D82BD8](v156);
      *&v44 = MEMORY[0x277D82BD8](image3).n128_u64[0];
      [(UIImageView *)selfCopy->_imageView setTranslatesAutoresizingMaskIntoConstraints:0, v44];
      [(UIImageView *)selfCopy->_imageView setContentCompressionResistancePriority:1 forAxis:?];
      LODWORD(v45) = 1148846080;
      [(UIImageView *)selfCopy->_imageView setContentCompressionResistancePriority:v45 forAxis:?];
      LODWORD(v46) = 1148846080;
      [(UIImageView *)selfCopy->_imageView setContentHuggingPriority:1 forAxis:v46];
      LODWORD(v47) = 1148846080;
      [(UIImageView *)selfCopy->_imageView setContentHuggingPriority:0 forAxis:v47];
    }

    if (v225)
    {
      v48 = [(CPUIButton *)CPSButton buttonWithType:v39];
      closeButton = selfCopy->_closeButton;
      selfCopy->_closeButton = v48;
      *&v50 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
      [(CPSButton *)selfCopy->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0, v50];
      v144 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
      v224 = [v144 imageWithRenderingMode:?];
      *&v51 = MEMORY[0x277D82BD8](v144).n128_u64[0];
      [(CPSButton *)selfCopy->_closeButton setImage:v224 forState:0, v51];
      v145 = MEMORY[0x277D755D0];
      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      v245[0] = secondaryLabelColor2;
      tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
      v245[1] = tertiarySystemFillColor;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:2];
      v223 = [v145 configurationWithPaletteColors:?];
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](tertiarySystemFillColor);
      *&v52 = MEMORY[0x277D82BD8](secondaryLabelColor2).n128_u64[0];
      [(CPSButton *)selfCopy->_closeButton setPreferredSymbolConfiguration:v223 forImageInState:0, v52];
      [(CPSButton *)selfCopy->_closeButton setImage:v224 forState:?];
      v149 = MEMORY[0x277D755D0];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v244[0] = whiteColor;
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      v244[1] = systemBlueColor;
      v150 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:2];
      v222 = [v149 configurationWithPaletteColors:?];
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](systemBlueColor);
      *&v53 = MEMORY[0x277D82BD8](whiteColor).n128_u64[0];
      [(CPSButton *)selfCopy->_closeButton setPreferredSymbolConfiguration:v222 forImageInState:8, v53];
      [(CPSButton *)selfCopy->_closeButton setAdjustsImageWhenHighlighted:1];
      [CPSButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v54) = 1148846080;
      [(CPSButton *)selfCopy->_closeButton setContentCompressionResistancePriority:0 forAxis:v54];
      LODWORD(v55) = 1148846080;
      [(CPSButton *)selfCopy->_closeButton setContentHuggingPriority:1 forAxis:v55];
      LODWORD(v56) = 1148846080;
      [(CPSButton *)selfCopy->_closeButton setContentHuggingPriority:0 forAxis:v56];
      [(CPUITemplateButton *)selfCopy->_closeButton setDelegate:v234];
      v154 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA288]];
      layer2 = [(CPSButton *)selfCopy->_closeButton layer];
      [layer2 setCompositingFilter:v154];
      MEMORY[0x277D82BD8](layer2);
      MEMORY[0x277D82BD8](v154);
      objc_storeStrong(&v222, 0);
      objc_storeStrong(&v223, 0);
      objc_storeStrong(&v224, 0);
    }

    array = [MEMORY[0x277CBEB18] array];
    v220 = 0;
    image4 = [location[0] image];
    *&v57 = MEMORY[0x277D82BD8](image4).n128_u64[0];
    if (image4)
    {
      if (v225)
      {
        v243[0] = selfCopy->_imageView;
        v243[1] = selfCopy->_closeButton;
        v142 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:{2, v57}];
        [array addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v142);
      }

      else if (v226)
      {
        v242[0] = selfCopy->_titleLabel;
        v242[1] = selfCopy->_imageView;
        v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:{2, v57}];
        [array addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v141);
        v220 = 1;
      }

      else
      {
        [array addObject:{selfCopy->_imageView, v57}];
      }
    }

    else if (v226)
    {
      [array addObject:{selfCopy->_titleLabel, v57}];
      v220 = 1;
      if (v225)
      {
        [array addObject:selfCopy->_closeButton];
      }
    }

    else if (v225)
    {
      [array addObject:{selfCopy->_closeButton, v57}];
    }

    if ([array count] == 1)
    {
      v140 = objc_opt_new();
      [array addObject:?];
      MEMORY[0x277D82BD8](v140);
    }

    v219 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:array];
    [v219 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v219 setAxis:?];
    [v219 setAlignment:?];
    if (v220)
    {
      v58 = 4;
    }

    else
    {
      v58 = 3;
    }

    [v219 setDistribution:v58];
    v59 = 10.0;
    if ((v220 & 1) == 0)
    {
      v59 = 2.0;
    }

    [v219 setSpacing:v59];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [v219 setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor3);
    [v219 setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v60) = 1148846080;
    [v219 setContentCompressionResistancePriority:0 forAxis:v60];
    LODWORD(v61) = 1148846080;
    [v219 setContentHuggingPriority:1 forAxis:v61];
    LODWORD(v62) = 1148846080;
    [v219 setContentHuggingPriority:0 forAxis:v62];
    stackView2 = [(CPSNavigationAlertView *)selfCopy stackView];
    [(UIStackView *)stackView2 addArrangedSubview:v219];
    *&v63 = MEMORY[0x277D82BD8](stackView2).n128_u64[0];
    stackView3 = [(CPSNavigationAlertView *)selfCopy stackView];
    v129 = stackView3;
    v65 = 4.0;
    if ((v220 & 1) == 0)
    {
      v65 = 8.0;
    }

    [(UIStackView *)stackView3 setCustomSpacing:v219 afterView:v65];
    *&v66 = MEMORY[0x277D82BD8](v129).n128_u64[0];
    v130 = MEMORY[0x277CCAAD0];
    leadingAnchor5 = [v219 leadingAnchor];
    stackView4 = [(CPSNavigationAlertView *)selfCopy stackView];
    leadingAnchor6 = [(UIStackView *)stackView4 leadingAnchor];
    v136 = [leadingAnchor5 constraintEqualToAnchor:6.0 constant:?];
    v241[0] = v136;
    trailingAnchor5 = [v219 trailingAnchor];
    stackView5 = [(CPSNavigationAlertView *)selfCopy stackView];
    trailingAnchor6 = [(UIStackView *)stackView5 trailingAnchor];
    v132 = [trailingAnchor5 constraintEqualToAnchor:-6.0 constant:?];
    v241[1] = v132;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:2];
    [v130 activateConstraints:?];
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](stackView5);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](stackView4);
    v67 = MEMORY[0x277D82BD8](leadingAnchor5).n128_u64[0];
    if (v226 && (v220 & 1) == 0)
    {
      stackView6 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView6 addArrangedSubview:selfCopy->_titleLabel];
      MEMORY[0x277D82BD8](stackView6);
      if (v227)
      {
        v218 = 0.0;
      }

      else
      {
        v218 = 10.0;
      }

      stackView7 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView7 setCustomSpacing:selfCopy->_titleLabel afterView:v218];
      v67 = MEMORY[0x277D82BD8](stackView7).n128_u64[0];
    }

    if (v227)
    {
      stackView8 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView8 addArrangedSubview:selfCopy->_subtitleLabel];
      MEMORY[0x277D82BD8](stackView8);
      if (CPSAlertUsesMinimalStyle(location[0]))
      {
        [location[0] duration];
        if (v68 <= 0.0)
        {
          v217 = 0.0;
        }

        else
        {
          v217 = 10.0;
        }
      }

      else
      {
        v217 = 10.0;
      }

      stackView9 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView9 setCustomSpacing:selfCopy->_subtitleLabel afterView:v217];
      v67 = MEMORY[0x277D82BD8](stackView9).n128_u64[0];
    }

    primaryAction = [location[0] primaryAction];
    LOBYTE(v122) = 0;
    if (primaryAction)
    {
      v122 = !CPSAlertUsesMinimalStyle(location[0]);
    }

    v69 = MEMORY[0x277D82BD8](primaryAction).n128_u64[0];
    if (v122)
    {
      primaryAction2 = [location[0] primaryAction];
      v70 = [CPSNavigationAlertFocusButton buttonWithAction:"buttonWithAction:progressView:isPrimary:" progressView:? isPrimary:?];
      primaryButton = selfCopy->_primaryButton;
      selfCopy->_primaryButton = v70;
      MEMORY[0x277D82BD8](primaryButton);
      *&v72 = MEMORY[0x277D82BD8](primaryAction2).n128_u64[0];
      [(CPUITemplateButton *)selfCopy->_primaryButton setDelegate:v234, v72];
      [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [CPSNavigationAlertFocusButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v73) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton setContentCompressionResistancePriority:v73 forAxis:?];
      LODWORD(v74) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton setContentHuggingPriority:1 forAxis:v74];
      LODWORD(v75) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton setContentHuggingPriority:0 forAxis:v75];
      stackView10 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView10 addArrangedSubview:selfCopy->_primaryButton];
      *&v76 = MEMORY[0x277D82BD8](stackView10).n128_u64[0];
      stackView11 = [(CPSNavigationAlertView *)selfCopy stackView];
      secondaryAction = [location[0] secondaryAction];
      v77 = 4.0;
      if (!secondaryAction)
      {
        v77 = 0.0;
      }

      [(UIStackView *)stackView11 setCustomSpacing:selfCopy->_primaryButton afterView:v77];
      MEMORY[0x277D82BD8](secondaryAction);
      *&v78 = MEMORY[0x277D82BD8](stackView11).n128_u64[0];
      v111 = MEMORY[0x277CCAAD0];
      leadingAnchor7 = [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton leadingAnchor];
      stackView12 = [(CPSNavigationAlertView *)selfCopy stackView];
      leadingAnchor8 = [(UIStackView *)stackView12 leadingAnchor];
      v117 = [leadingAnchor7 constraintEqualToAnchor:?];
      v240[0] = v117;
      trailingAnchor7 = [(CPSNavigationAlertFocusButton *)selfCopy->_primaryButton trailingAnchor];
      stackView13 = [(CPSNavigationAlertView *)selfCopy stackView];
      trailingAnchor8 = [(UIStackView *)stackView13 trailingAnchor];
      v113 = [trailingAnchor7 constraintEqualToAnchor:?];
      v240[1] = v113;
      v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:2];
      [v111 activateConstraints:?];
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](trailingAnchor8);
      MEMORY[0x277D82BD8](stackView13);
      MEMORY[0x277D82BD8](trailingAnchor7);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](leadingAnchor8);
      MEMORY[0x277D82BD8](stackView12);
      v69 = MEMORY[0x277D82BD8](leadingAnchor7).n128_u64[0];
    }

    secondaryAction2 = [location[0] secondaryAction];
    *&v79 = MEMORY[0x277D82BD8](secondaryAction2).n128_u64[0];
    if (secondaryAction2)
    {
      secondaryAction3 = [location[0] secondaryAction];
      v80 = [CPSNavigationAlertFocusButton buttonWithAction:"buttonWithAction:progressView:isPrimary:" progressView:? isPrimary:?];
      secondaryButton = selfCopy->_secondaryButton;
      selfCopy->_secondaryButton = v80;
      MEMORY[0x277D82BD8](secondaryButton);
      *&v82 = MEMORY[0x277D82BD8](secondaryAction3).n128_u64[0];
      [(CPUITemplateButton *)selfCopy->_secondaryButton setDelegate:v234, v82];
      [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [CPSNavigationAlertFocusButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v83) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton setContentCompressionResistancePriority:v83 forAxis:?];
      LODWORD(v84) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton setContentHuggingPriority:1 forAxis:v84];
      LODWORD(v85) = 1148846080;
      [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton setContentHuggingPriority:0 forAxis:v85];
      stackView14 = [(CPSNavigationAlertView *)selfCopy stackView];
      [(UIStackView *)stackView14 addArrangedSubview:selfCopy->_secondaryButton];
      *&v86 = MEMORY[0x277D82BD8](stackView14).n128_u64[0];
      v96 = MEMORY[0x277CCAAD0];
      leadingAnchor9 = [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton leadingAnchor];
      stackView15 = [(CPSNavigationAlertView *)selfCopy stackView];
      leadingAnchor10 = [(UIStackView *)stackView15 leadingAnchor];
      v102 = [leadingAnchor9 constraintEqualToAnchor:?];
      v239[0] = v102;
      trailingAnchor9 = [(CPSNavigationAlertFocusButton *)selfCopy->_secondaryButton trailingAnchor];
      stackView16 = [(CPSNavigationAlertView *)selfCopy stackView];
      trailingAnchor10 = [(UIStackView *)stackView16 trailingAnchor];
      v98 = [trailingAnchor9 constraintEqualToAnchor:?];
      v239[1] = v98;
      v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v239 count:2];
      [v96 activateConstraints:?];
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](trailingAnchor10);
      MEMORY[0x277D82BD8](stackView16);
      MEMORY[0x277D82BD8](trailingAnchor9);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](leadingAnchor10);
      MEMORY[0x277D82BD8](stackView15);
      MEMORY[0x277D82BD8](leadingAnchor9);
    }

    if (CPSAlertUsesMinimalStyle(location[0]))
    {
      [location[0] duration];
      if (v87 > 0.0)
      {
        [CPSNavigationAlertProgressView setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
        LODWORD(v88) = 1148846080;
        [(CPSNavigationAlertProgressView *)selfCopy->_progressView setContentCompressionResistancePriority:v88 forAxis:?];
        LODWORD(v89) = 1148846080;
        [(CPSNavigationAlertProgressView *)selfCopy->_progressView setContentHuggingPriority:1 forAxis:v89];
        LODWORD(v90) = 1148846080;
        [(CPSNavigationAlertProgressView *)selfCopy->_progressView setContentHuggingPriority:0 forAxis:v90];
        stackView17 = [(CPSNavigationAlertView *)selfCopy stackView];
        [(UIStackView *)stackView17 addArrangedSubview:selfCopy->_progressView];
        MEMORY[0x277D82BD8](stackView17);
      }
    }

    objc_storeStrong(&v219, 0);
    objc_storeStrong(&array, 0);
    objc_storeStrong(&v232, 0);
  }

  v92 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v234, 0);
  objc_storeStrong(&v235, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v92;
}

- (void)startAnimating
{
  v73[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v71[1] = a2;
  if (!self->_hasStartedAnimating)
  {
    selfCopy->_hasStartedAnimating = 1;
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v71[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v71[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v71[0] layer];
    [layer setMasksToBounds:1];
    MEMORY[0x277D82BD8](layer);
    v70 = 0.0;
    navigationAlert = [(CPSNavigationAlertView *)selfCopy navigationAlert];
    v57 = CPSAlertUsesMinimalStyle(navigationAlert);
    *&v3 = MEMORY[0x277D82BD8](navigationAlert).n128_u64[0];
    if (v57)
    {
      layer2 = [v71[0] layer];
      [layer2 setCornerRadius:2.0];
      layer3 = [v71[0] layer];
      [layer3 setMaskedCorners:15];
      *&v4 = MEMORY[0x277D82BD8](layer3).n128_u64[0];
      v52 = *MEMORY[0x277CDA138];
      layer4 = [v71[0] layer];
      [layer4 setCornerCurve:v52];
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [v71[0] setBackgroundColor:?];
      MEMORY[0x277D82BD8](systemBlueColor);
      v70 = 4.0;
    }

    else
    {
      v69 = 0.0;
      location = 0;
      navigationAlert2 = [(CPSNavigationAlertView *)selfCopy navigationAlert];
      primaryAction = [(CPNavigationAlert *)navigationAlert2 primaryAction];
      v47 = CPSBackgroundColorForAlertAction(primaryAction, 1);
      v67 = CPContrastingColorForColor();
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](primaryAction);
      v5 = MEMORY[0x277D82BD8](navigationAlert2).n128_u64[0];
      if (!v67)
      {
        _carScreen = [MEMORY[0x277D759A0] _carScreen];
        traitCollection = [_carScreen traitCollection];
        v46 = [traitCollection userInterfaceStyle] == 2;
        MEMORY[0x277D82BD8](traitCollection);
        *&v6 = MEMORY[0x277D82BD8](_carScreen).n128_u64[0];
        v66 = v46;
        if (v46)
        {
          whiteColor = [MEMORY[0x277D75348] whiteColor];
        }

        else
        {
          whiteColor = [MEMORY[0x277D75348] blackColor];
        }

        v8 = v67;
        v67 = whiteColor;
        v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      }

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v43 = [v67 isEqual:?];
      MEMORY[0x277D82BD8](whiteColor2);
      if (v43)
      {
        v69 = 0.100000001;
        objc_storeStrong(&location, *MEMORY[0x277CDA5E8]);
      }

      else
      {
        v69 = 0.0599999987;
        objc_storeStrong(&location, *MEMORY[0x277CDA5D8]);
      }

      v37 = [v67 colorWithAlphaComponent:v69];
      [v71[0] setBackgroundColor:?];
      *&v9 = MEMORY[0x277D82BD8](v37).n128_u64[0];
      v65 = [MEMORY[0x277CD9EA0] filterWithType:{location, v9}];
      v39 = v65;
      v38 = v67;
      v10 = v67;
      cGColor = [v38 CGColor];
      [v39 setValue:cGColor forKey:*MEMORY[0x277CDA430]];
      v40 = v65;
      layer5 = [v71[0] layer];
      [layer5 setCompositingFilter:v40];
      MEMORY[0x277D82BD8](layer5);
      v70 = 36.0;
      objc_storeStrong(&v65, 0);
      objc_storeStrong(&v67, 0);
      objc_storeStrong(&location, 0);
    }

    superview = [(CPSNavigationAlertProgressView *)selfCopy->_progressView superview];
    [superview addSubview:v71[0]];
    *&v12 = MEMORY[0x277D82BD8](superview).n128_u64[0];
    navigationAlert3 = [(CPSNavigationAlertView *)selfCopy navigationAlert];
    v36 = CPSAlertUsesMinimalStyle(navigationAlert3);
    v13 = MEMORY[0x277D82BD8](navigationAlert3).n128_u64[0];
    if (!v36)
    {
      superview2 = [(CPSNavigationAlertProgressView *)selfCopy->_progressView superview];
      superview3 = [(CPSNavigationAlertProgressView *)selfCopy->_progressView superview];
      titleLabel = [superview3 titleLabel];
      [superview2 bringSubviewToFront:?];
      MEMORY[0x277D82BD8](titleLabel);
      MEMORY[0x277D82BD8](superview3);
      v13 = MEMORY[0x277D82BD8](superview2).n128_u64[0];
    }

    widthAnchor = [v71[0] widthAnchor];
    widthAnchor2 = [(CPSNavigationAlertProgressView *)selfCopy->_progressView widthAnchor];
    v64 = [widthAnchor constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](widthAnchor2);
    *&v14 = MEMORY[0x277D82BD8](widthAnchor).n128_u64[0];
    v19 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v71[0] leadingAnchor];
    leadingAnchor2 = [(CPSNavigationAlertProgressView *)selfCopy->_progressView leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:?];
    v73[0] = v26;
    topAnchor = [v71[0] topAnchor];
    topAnchor2 = [(CPSNavigationAlertProgressView *)selfCopy->_progressView topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:?];
    v73[1] = v23;
    heightAnchor = [v71[0] heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:v70];
    v73[2] = v21;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    [v19 activateConstraints:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](leadingAnchor2);
    *&v15 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [(CPSNavigationAlertView *)selfCopy layoutIfNeeded];
    [v64 setActive:1];
    v30 = MEMORY[0x277D75D18];
    [(CPNavigationAlert *)selfCopy->_navigationAlert duration];
    v29 = v16;
    v58 = MEMORY[0x277D85DD0];
    v59 = -1073741824;
    v60 = 0;
    v61 = __40__CPSNavigationAlertView_startAnimating__block_invoke;
    v62 = &unk_278D913E8;
    v63 = MEMORY[0x277D82BE0](selfCopy);
    [v30 animateWithDuration:196614 delay:&v58 options:v29 animations:0.0 completion:?];
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(v71, 0);
  }
}

- (void)updateNavigationAlert:(id)alert
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v9 = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v12, location[0]);
    _os_log_impl(&dword_242FE8000, v9, OS_LOG_TYPE_DEFAULT, "Received update for navigation alert %@", v12, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  titleLabel = [(CPSNavigationAlertView *)selfCopy titleLabel];
  titleVariants = [location[0] titleVariants];
  [(CPUIAbridgableLabel *)titleLabel setTextVariants:?];
  MEMORY[0x277D82BD8](titleVariants);
  *&v3 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  subtitleLabel = [(CPSNavigationAlertView *)selfCopy subtitleLabel];
  subtitleVariants = [location[0] subtitleVariants];
  [(CPUIAbridgableLabel *)subtitleLabel setTextVariants:?];
  MEMORY[0x277D82BD8](subtitleVariants);
  *&v4 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
  [(CPSNavigationAlertView *)selfCopy invalidateIntrinsicContentSize];
  [(CPSNavigationAlertView *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v18.receiver = selfCopy;
  v18.super_class = CPSNavigationAlertView;
  [(CPSNavigationAlertView *)&v18 traitCollectionDidChange:location[0]];
  v17 = 0;
  traitCollection = [(CPSNavigationAlertView *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  switch(userInterfaceStyle)
  {
    case 0:
      goto LABEL_4;
    case 1:
      v6 = [MEMORY[0x277CD9EA0] filterWithType:{*MEMORY[0x277CDA5D8], *&v3}];
      v7 = v17;
      v17 = v6;
      v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      break;
    case 2:
LABEL_4:
      v4 = [MEMORY[0x277CD9EA0] filterWithType:{*MEMORY[0x277CDA5E8], *&v3}];
      v5 = v17;
      v17 = v4;
      v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
      break;
  }

  v9 = v17;
  titleLabel = [(CPSNavigationAlertView *)selfCopy titleLabel];
  layer = [(CPSAbridgableNewlineLabel *)titleLabel layer];
  [layer setCompositingFilter:v9];
  MEMORY[0x277D82BD8](layer);
  *&v8 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  v12 = v17;
  subtitleLabel = [(CPSNavigationAlertView *)selfCopy subtitleLabel];
  layer2 = [(CPSAbridgableNewlineLabel *)subtitleLabel layer];
  [layer2 setCompositingFilter:v12];
  MEMORY[0x277D82BD8](layer2);
  MEMORY[0x277D82BD8](subtitleLabel);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v34[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v31 = 0;
  objc_storeStrong(&v31, coordinator);
  v30.receiver = selfCopy;
  v30.super_class = CPSNavigationAlertView;
  [(CPSNavigationAlertView *)&v30 didUpdateFocusInContext:location[0] withAnimationCoordinator:v31];
  nextFocusedView = [location[0] nextFocusedView];
  if (nextFocusedView)
  {
    primaryButton = [(CPSNavigationAlertView *)selfCopy primaryButton];
    v27 = 0;
    v25 = 1;
    if (nextFocusedView != primaryButton)
    {
      secondaryButton = [(CPSNavigationAlertView *)selfCopy secondaryButton];
      v27 = 1;
      v25 = nextFocusedView == secondaryButton;
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](secondaryButton);
    }

    *&v4 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    if (v25)
    {
      ringConstraints = [(CPSNavigationAlertView *)selfCopy ringConstraints];
      *&v5 = MEMORY[0x277D82BD8](ringConstraints).n128_u64[0];
      if (ringConstraints)
      {
        v21 = MEMORY[0x277CCAAD0];
        ringConstraints2 = [(CPSNavigationAlertView *)selfCopy ringConstraints];
        [v21 deactivateConstraints:?];
        MEMORY[0x277D82BD8](ringConstraints2);
        objc_storeStrong(&selfCopy->_ringConstraints, 0);
      }

      [(CPUIFocusRingView *)selfCopy->_focusRingView setHidden:0, v5];
      topAnchor = [(CPUIFocusRingView *)selfCopy->_focusRingView topAnchor];
      topAnchor2 = [nextFocusedView topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:-3.0 constant:?];
      v34[0] = v18;
      bottomAnchor = [(CPUIFocusRingView *)selfCopy->_focusRingView bottomAnchor];
      bottomAnchor2 = [nextFocusedView bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:3.0 constant:?];
      v34[1] = v15;
      leadingAnchor = [(CPUIFocusRingView *)selfCopy->_focusRingView leadingAnchor];
      leadingAnchor2 = [nextFocusedView leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:-2.0 constant:?];
      v34[2] = v12;
      trailingAnchor = [(CPUIFocusRingView *)selfCopy->_focusRingView trailingAnchor];
      trailingAnchor2 = [nextFocusedView trailingAnchor];
      v9 = [trailingAnchor constraintEqualToAnchor:2.0 constant:?];
      v34[3] = v9;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
      ringConstraints = selfCopy->_ringConstraints;
      selfCopy->_ringConstraints = v6;
      MEMORY[0x277D82BD8](ringConstraints);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](topAnchor2);
      *&v8 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
      [MEMORY[0x277CCAAD0] activateConstraints:{selfCopy->_ringConstraints, v8}];
      [(CPSNavigationAlertView *)selfCopy bringSubviewToFront:selfCopy->_focusRingView];
    }

    else
    {
      [(CPUIFocusRingView *)selfCopy->_focusRingView setHidden:1, v4];
    }
  }

  else
  {
    [(CPUIFocusRingView *)selfCopy->_focusRingView setHidden:1];
  }

  objc_storeStrong(&nextFocusedView, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

@end
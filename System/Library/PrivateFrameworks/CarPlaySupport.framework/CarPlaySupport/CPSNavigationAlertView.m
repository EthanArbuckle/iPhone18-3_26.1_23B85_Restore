@interface CPSNavigationAlertView
- (CPSNavigationAlertView)initWithFrame:(CGRect)a3 navigationAlert:(id)a4 templateDelegate:(id)a5 buttonDelegate:(id)a6;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)startAnimating;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateNavigationAlert:(id)a3;
@end

@implementation CPSNavigationAlertView

- (id)_linearFocusItems
{
  v14 = self;
  v13[1] = a2;
  v13[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(CPSNavigationAlertView *)v14 closeButton];
  v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v11 = [(CPSNavigationAlertView *)v14 closeButton];
    [v13[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  v10 = [(CPSNavigationAlertView *)v14 primaryButton];
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v9 = [(CPSNavigationAlertView *)v14 primaryButton];
    [v13[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v8 = [(CPSNavigationAlertView *)v14 secondaryButton];
  v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(CPSNavigationAlertView *)v14 secondaryButton];
    [v13[0] addObject:?];
    v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  v6 = [v13[0] copy];
  objc_storeStrong(v13, 0);

  return v6;
}

- (id)preferredFocusEnvironments
{
  v14 = self;
  v13[1] = a2;
  v13[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(CPSNavigationAlertView *)v14 closeButton];
  v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v11 = [(CPSNavigationAlertView *)v14 closeButton];
    [v13[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  v10 = [(CPSNavigationAlertView *)v14 primaryButton];
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v9 = [(CPSNavigationAlertView *)v14 primaryButton];
    [v13[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v8 = [(CPSNavigationAlertView *)v14 secondaryButton];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(CPSNavigationAlertView *)v14 secondaryButton];
    [v13[0] addObject:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v6;
}

- (CPSNavigationAlertView)initWithFrame:(CGRect)a3 navigationAlert:(id)a4 templateDelegate:(id)a5 buttonDelegate:(id)a6
{
  v247[4] = *MEMORY[0x277D85DE8];
  v238 = a3;
  v237 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v235 = 0;
  objc_storeStrong(&v235, a5);
  v234 = 0;
  objc_storeStrong(&v234, a6);
  v6 = v237;
  v237 = 0;
  v233.receiver = v6;
  v233.super_class = CPSNavigationAlertView;
  v216 = [(CPSNavigationAlertView *)&v233 initWithFrame:v238.origin.x, v238.origin.y, v238.size.width, v238.size.height];
  v237 = v216;
  objc_storeStrong(&v237, v216);
  if (v216)
  {
    v212 = [MEMORY[0x277D75348] clearColor];
    [(CPSNavigationAlertView *)v237 setBackgroundColor:?];
    v232 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    [v232 setTranslatesAutoresizingMaskIntoConstraints:0];
    v230 = 0;
    v213 = 0;
    if (CPSAlertUsesMinimalStyle(location[0]))
    {
      v231 = [location[0] image];
      v230 = 1;
      v213 = v231 == 0;
    }

    if (v230)
    {
      MEMORY[0x277D82BD8](v231);
    }

    if (v213)
    {
      v211 = [v232 layer];
      [v211 setCornerRadius:14.0];
      MEMORY[0x277D82BD8](v211);
    }

    objc_storeStrong(&v237->_contentView, v232);
    [(CPSNavigationAlertView *)v237 addSubview:v237->_contentView];
    v168 = [MEMORY[0x277D75128] sharedApplication];
    v169 = [v168 userInterfaceLayoutDirection] == 1;
    *&v7 = MEMORY[0x277D82BD8](v168).n128_u64[0];
    v229 = v169;
    v8 = 2;
    if (!v169)
    {
      v8 = 0;
    }

    v228 = v8;
    v172 = [location[0] subtitleVariants];
    v171 = [v172 firstObject];
    v170 = [(CPUIAbridgableNewlineLabel *)CPSAbridgableNewlineLabel sanitizedTextForText:?];
    v173 = [v170 length] != 0;
    MEMORY[0x277D82BD8](v170);
    MEMORY[0x277D82BD8](v171);
    *&v9 = MEMORY[0x277D82BD8](v172).n128_u64[0];
    v227 = v173;
    v176 = [location[0] titleVariants];
    v175 = [v176 firstObject];
    v174 = [(CPUIAbridgableNewlineLabel *)CPSAbridgableNewlineLabel sanitizedTextForText:?];
    v177 = [v174 length] != 0;
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](v176);
    v226 = v177;
    v225 = CPSAlertUsesMinimalStyle(location[0]);
    v178 = MEMORY[0x277CCAAD0];
    v191 = [(UIView *)v237->_contentView topAnchor];
    v190 = [(CPSNavigationAlertView *)v237 topAnchor];
    v189 = [(NSLayoutYAxisAnchor *)v191 constraintEqualToAnchor:?];
    v247[0] = v189;
    v188 = [(UIView *)v237->_contentView bottomAnchor];
    v187 = [(CPSNavigationAlertView *)v237 bottomAnchor];
    v186 = [(NSLayoutYAxisAnchor *)v188 constraintEqualToAnchor:?];
    v247[1] = v186;
    v185 = [(UIView *)v237->_contentView leadingAnchor];
    v184 = [(CPSNavigationAlertView *)v237 leadingAnchor];
    v183 = [(NSLayoutXAxisAnchor *)v185 constraintEqualToAnchor:?];
    v247[2] = v183;
    v182 = [(UIView *)v237->_contentView trailingAnchor];
    v181 = [(CPSNavigationAlertView *)v237 trailingAnchor];
    v180 = [(NSLayoutXAxisAnchor *)v182 constraintEqualToAnchor:?];
    v247[3] = v180;
    v179 = [MEMORY[0x277CBEA60] arrayWithObjects:v247 count:?];
    [v178 activateConstraints:?];
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v182);
    MEMORY[0x277D82BD8](v183);
    MEMORY[0x277D82BD8](v184);
    MEMORY[0x277D82BD8](v185);
    MEMORY[0x277D82BD8](v186);
    MEMORY[0x277D82BD8](v187);
    MEMORY[0x277D82BD8](v188);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](v190);
    MEMORY[0x277D82BD8](v191);
    objc_storeStrong(&v237->_navigationAlert, location[0]);
    v10 = objc_alloc(MEMORY[0x277CF90F0]);
    v193 = MEMORY[0x277CBF3A0];
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    focusRingView = v237->_focusRingView;
    v237->_focusRingView = v11;
    *&v13 = MEMORY[0x277D82BD8](focusRingView).n128_u64[0];
    [(CPUIFocusRingView *)v237->_focusRingView setTranslatesAutoresizingMaskIntoConstraints:0, v13];
    v192 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [(CPUIFocusRingView *)v237->_focusRingView setRingColor:?];
    MEMORY[0x277D82BD8](v192);
    [(CPUIFocusRingView *)v237->_focusRingView setCornerRadius:15.0];
    [(CPUIFocusRingView *)v237->_focusRingView setRingWidth:2.0];
    [(CPUIFocusRingView *)v237->_focusRingView setRingGap:?];
    [(CPUIFocusRingView *)v237->_focusRingView setHidden:1];
    [(UIView *)v237->_contentView addSubview:v237->_focusRingView];
    v14 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v193, v193[1], v193[2], v193[3]}];
    stackView = v237->_stackView;
    v237->_stackView = v14;
    *&v16 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    [(UIStackView *)v237->_stackView setTranslatesAutoresizingMaskIntoConstraints:0, v16];
    [(UIStackView *)v237->_stackView setAxis:1];
    [(UIStackView *)v237->_stackView setDistribution:0];
    [(UIStackView *)v237->_stackView setAlignment:0];
    [(UIStackView *)v237->_stackView setSpacing:0.0];
    v194 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)v237->_stackView setBackgroundColor:?];
    *&v17 = MEMORY[0x277D82BD8](v194).n128_u64[0];
    contentView = v237->_contentView;
    v196 = [(CPSNavigationAlertView *)v237 stackView];
    [(UIView *)contentView addSubview:?];
    *&v18 = MEMORY[0x277D82BD8](v196).n128_u64[0];
    v197 = MEMORY[0x277CCAAD0];
    v210 = [(UIStackView *)v237->_stackView topAnchor];
    v209 = [(CPSNavigationAlertView *)v237 topAnchor];
    v208 = [v210 constraintEqualToAnchor:10.0 constant:?];
    v246[0] = v208;
    v207 = [(UIStackView *)v237->_stackView bottomAnchor];
    v206 = [(CPSNavigationAlertView *)v237 bottomAnchor];
    v205 = [v207 constraintEqualToAnchor:-10.0 constant:?];
    v246[1] = v205;
    v204 = [(UIStackView *)v237->_stackView leadingAnchor];
    v203 = [(CPSNavigationAlertView *)v237 leadingAnchor];
    v202 = [v204 constraintEqualToAnchor:10.0 constant:?];
    v246[2] = v202;
    v201 = [(UIStackView *)v237->_stackView trailingAnchor];
    v200 = [(CPSNavigationAlertView *)v237 trailingAnchor];
    v199 = [v201 constraintEqualToAnchor:-10.0 constant:?];
    v246[3] = v199;
    v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:4];
    [v197 activateConstraints:?];
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v199);
    MEMORY[0x277D82BD8](v200);
    MEMORY[0x277D82BD8](v201);
    MEMORY[0x277D82BD8](v202);
    MEMORY[0x277D82BD8](v203);
    MEMORY[0x277D82BD8](v204);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](v206);
    MEMORY[0x277D82BD8](v207);
    MEMORY[0x277D82BD8](v208);
    MEMORY[0x277D82BD8](v209);
    *&v19 = MEMORY[0x277D82BD8](v210).n128_u64[0];
    [location[0] duration];
    if (v20 > 0.0)
    {
      v21 = [CPSNavigationAlertProgressView alloc];
      v22 = [(CPSNavigationAlertProgressView *)v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      progressView = v237->_progressView;
      v237->_progressView = v22;
      *&v24 = MEMORY[0x277D82BD8](progressView).n128_u64[0];
      [(CPSNavigationAlertProgressView *)v237->_progressView setTranslatesAutoresizingMaskIntoConstraints:0, v24];
      if (CPSAlertUsesMinimalStyle(location[0]))
      {
        v167 = [MEMORY[0x277D75348] separatorColor];
        [(CPSNavigationAlertProgressView *)v237->_progressView setBackgroundColor:?];
        MEMORY[0x277D82BD8](v167);
      }
    }

    if (v226)
    {
      v25 = [CPSAbridgableNewlineLabel alloc];
      v26 = [(CPSAbridgableNewlineLabel *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      titleLabel = v237->_titleLabel;
      v237->_titleLabel = v26;
      v163 = [MEMORY[0x277D75348] labelColor];
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setTextColor:?];
      MEMORY[0x277D82BD8](v163);
      v164 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74420]];
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setFont:?];
      *&v28 = MEMORY[0x277D82BD8](v164).n128_u64[0];
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setTextAlignment:v228, v28];
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setNumberOfLines:2];
      [CPSAbridgableNewlineLabel setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v29) = 1144750080;
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setContentCompressionResistancePriority:v29 forAxis:?];
      LODWORD(v30) = 1148846080;
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setContentHuggingPriority:1 forAxis:v30];
      LODWORD(v31) = 1144750080;
      [(CPSAbridgableNewlineLabel *)v237->_titleLabel setContentHuggingPriority:0 forAxis:v31];
      v165 = v237->_titleLabel;
      v166 = [location[0] titleVariants];
      [(CPUIAbridgableLabel *)v165 setTextVariants:?];
      MEMORY[0x277D82BD8](v166);
    }

    if (v227)
    {
      v32 = [CPSAbridgableNewlineLabel alloc];
      v33 = [(CPSAbridgableNewlineLabel *)v32 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      subtitleLabel = v237->_subtitleLabel;
      v237->_subtitleLabel = v33;
      v159 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setTextColor:?];
      MEMORY[0x277D82BD8](v159);
      v160 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setFont:?];
      *&v35 = MEMORY[0x277D82BD8](v160).n128_u64[0];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0, v35];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setNumberOfLines:?];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setTextAlignment:v228];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setLineBreakMode:0];
      LODWORD(v36) = 1132068864;
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setContentCompressionResistancePriority:v36 forAxis:?];
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:?];
      LODWORD(v37) = 1148846080;
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setContentHuggingPriority:1 forAxis:v37];
      LODWORD(v38) = 1148846080;
      [(CPSAbridgableNewlineLabel *)v237->_subtitleLabel setContentHuggingPriority:0 forAxis:v38];
      v161 = v237->_subtitleLabel;
      v162 = [location[0] subtitleVariants];
      [(CPUIAbridgableLabel *)v161 setTextVariants:?];
      MEMORY[0x277D82BD8](v162);
    }

    v158 = [location[0] image];
    *&v39 = MEMORY[0x277D82BD8](v158).n128_u64[0];
    if (v158)
    {
      v40 = objc_alloc(MEMORY[0x277D755E8]);
      v41 = [v40 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      imageView = v237->_imageView;
      v237->_imageView = v41;
      *&v43 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
      [(UIImageView *)v237->_imageView setContentMode:v43];
      v155 = v237->_imageView;
      v157 = [location[0] image];
      v156 = CPImageByScalingImageToSize();
      [(UIImageView *)v155 setImage:?];
      MEMORY[0x277D82BD8](v156);
      *&v44 = MEMORY[0x277D82BD8](v157).n128_u64[0];
      [(UIImageView *)v237->_imageView setTranslatesAutoresizingMaskIntoConstraints:0, v44];
      [(UIImageView *)v237->_imageView setContentCompressionResistancePriority:1 forAxis:?];
      LODWORD(v45) = 1148846080;
      [(UIImageView *)v237->_imageView setContentCompressionResistancePriority:v45 forAxis:?];
      LODWORD(v46) = 1148846080;
      [(UIImageView *)v237->_imageView setContentHuggingPriority:1 forAxis:v46];
      LODWORD(v47) = 1148846080;
      [(UIImageView *)v237->_imageView setContentHuggingPriority:0 forAxis:v47];
    }

    if (v225)
    {
      v48 = [(CPUIButton *)CPSButton buttonWithType:v39];
      closeButton = v237->_closeButton;
      v237->_closeButton = v48;
      *&v50 = MEMORY[0x277D82BD8](closeButton).n128_u64[0];
      [(CPSButton *)v237->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0, v50];
      v144 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
      v224 = [v144 imageWithRenderingMode:?];
      *&v51 = MEMORY[0x277D82BD8](v144).n128_u64[0];
      [(CPSButton *)v237->_closeButton setImage:v224 forState:0, v51];
      v145 = MEMORY[0x277D755D0];
      v148 = [MEMORY[0x277D75348] secondaryLabelColor];
      v245[0] = v148;
      v147 = [MEMORY[0x277D75348] tertiarySystemFillColor];
      v245[1] = v147;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:2];
      v223 = [v145 configurationWithPaletteColors:?];
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](v147);
      *&v52 = MEMORY[0x277D82BD8](v148).n128_u64[0];
      [(CPSButton *)v237->_closeButton setPreferredSymbolConfiguration:v223 forImageInState:0, v52];
      [(CPSButton *)v237->_closeButton setImage:v224 forState:?];
      v149 = MEMORY[0x277D755D0];
      v152 = [MEMORY[0x277D75348] whiteColor];
      v244[0] = v152;
      v151 = [MEMORY[0x277D75348] systemBlueColor];
      v244[1] = v151;
      v150 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:2];
      v222 = [v149 configurationWithPaletteColors:?];
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v151);
      *&v53 = MEMORY[0x277D82BD8](v152).n128_u64[0];
      [(CPSButton *)v237->_closeButton setPreferredSymbolConfiguration:v222 forImageInState:8, v53];
      [(CPSButton *)v237->_closeButton setAdjustsImageWhenHighlighted:1];
      [CPSButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v54) = 1148846080;
      [(CPSButton *)v237->_closeButton setContentCompressionResistancePriority:0 forAxis:v54];
      LODWORD(v55) = 1148846080;
      [(CPSButton *)v237->_closeButton setContentHuggingPriority:1 forAxis:v55];
      LODWORD(v56) = 1148846080;
      [(CPSButton *)v237->_closeButton setContentHuggingPriority:0 forAxis:v56];
      [(CPUITemplateButton *)v237->_closeButton setDelegate:v234];
      v154 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA288]];
      v153 = [(CPSButton *)v237->_closeButton layer];
      [v153 setCompositingFilter:v154];
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v154);
      objc_storeStrong(&v222, 0);
      objc_storeStrong(&v223, 0);
      objc_storeStrong(&v224, 0);
    }

    v221 = [MEMORY[0x277CBEB18] array];
    v220 = 0;
    v143 = [location[0] image];
    *&v57 = MEMORY[0x277D82BD8](v143).n128_u64[0];
    if (v143)
    {
      if (v225)
      {
        v243[0] = v237->_imageView;
        v243[1] = v237->_closeButton;
        v142 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:{2, v57}];
        [v221 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v142);
      }

      else if (v226)
      {
        v242[0] = v237->_titleLabel;
        v242[1] = v237->_imageView;
        v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:{2, v57}];
        [v221 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v141);
        v220 = 1;
      }

      else
      {
        [v221 addObject:{v237->_imageView, v57}];
      }
    }

    else if (v226)
    {
      [v221 addObject:{v237->_titleLabel, v57}];
      v220 = 1;
      if (v225)
      {
        [v221 addObject:v237->_closeButton];
      }
    }

    else if (v225)
    {
      [v221 addObject:{v237->_closeButton, v57}];
    }

    if ([v221 count] == 1)
    {
      v140 = objc_opt_new();
      [v221 addObject:?];
      MEMORY[0x277D82BD8](v140);
    }

    v219 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v221];
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
    v127 = [MEMORY[0x277D75348] clearColor];
    [v219 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v127);
    [v219 setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v60) = 1148846080;
    [v219 setContentCompressionResistancePriority:0 forAxis:v60];
    LODWORD(v61) = 1148846080;
    [v219 setContentHuggingPriority:1 forAxis:v61];
    LODWORD(v62) = 1148846080;
    [v219 setContentHuggingPriority:0 forAxis:v62];
    v128 = [(CPSNavigationAlertView *)v237 stackView];
    [(UIStackView *)v128 addArrangedSubview:v219];
    *&v63 = MEMORY[0x277D82BD8](v128).n128_u64[0];
    v64 = [(CPSNavigationAlertView *)v237 stackView];
    v129 = v64;
    v65 = 4.0;
    if ((v220 & 1) == 0)
    {
      v65 = 8.0;
    }

    [(UIStackView *)v64 setCustomSpacing:v219 afterView:v65];
    *&v66 = MEMORY[0x277D82BD8](v129).n128_u64[0];
    v130 = MEMORY[0x277CCAAD0];
    v139 = [v219 leadingAnchor];
    v138 = [(CPSNavigationAlertView *)v237 stackView];
    v137 = [(UIStackView *)v138 leadingAnchor];
    v136 = [v139 constraintEqualToAnchor:6.0 constant:?];
    v241[0] = v136;
    v135 = [v219 trailingAnchor];
    v134 = [(CPSNavigationAlertView *)v237 stackView];
    v133 = [(UIStackView *)v134 trailingAnchor];
    v132 = [v135 constraintEqualToAnchor:-6.0 constant:?];
    v241[1] = v132;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:2];
    [v130 activateConstraints:?];
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    v67 = MEMORY[0x277D82BD8](v139).n128_u64[0];
    if (v226 && (v220 & 1) == 0)
    {
      v126 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v126 addArrangedSubview:v237->_titleLabel];
      MEMORY[0x277D82BD8](v126);
      if (v227)
      {
        v218 = 0.0;
      }

      else
      {
        v218 = 10.0;
      }

      v125 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v125 setCustomSpacing:v237->_titleLabel afterView:v218];
      v67 = MEMORY[0x277D82BD8](v125).n128_u64[0];
    }

    if (v227)
    {
      v124 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v124 addArrangedSubview:v237->_subtitleLabel];
      MEMORY[0x277D82BD8](v124);
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

      v123 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v123 setCustomSpacing:v237->_subtitleLabel afterView:v217];
      v67 = MEMORY[0x277D82BD8](v123).n128_u64[0];
    }

    v121 = [location[0] primaryAction];
    LOBYTE(v122) = 0;
    if (v121)
    {
      v122 = !CPSAlertUsesMinimalStyle(location[0]);
    }

    v69 = MEMORY[0x277D82BD8](v121).n128_u64[0];
    if (v122)
    {
      v107 = [location[0] primaryAction];
      v70 = [CPSNavigationAlertFocusButton buttonWithAction:"buttonWithAction:progressView:isPrimary:" progressView:? isPrimary:?];
      primaryButton = v237->_primaryButton;
      v237->_primaryButton = v70;
      MEMORY[0x277D82BD8](primaryButton);
      *&v72 = MEMORY[0x277D82BD8](v107).n128_u64[0];
      [(CPUITemplateButton *)v237->_primaryButton setDelegate:v234, v72];
      [(CPSNavigationAlertFocusButton *)v237->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [CPSNavigationAlertFocusButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v73) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_primaryButton setContentCompressionResistancePriority:v73 forAxis:?];
      LODWORD(v74) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_primaryButton setContentHuggingPriority:1 forAxis:v74];
      LODWORD(v75) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_primaryButton setContentHuggingPriority:0 forAxis:v75];
      v108 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v108 addArrangedSubview:v237->_primaryButton];
      *&v76 = MEMORY[0x277D82BD8](v108).n128_u64[0];
      v110 = [(CPSNavigationAlertView *)v237 stackView];
      v109 = [location[0] secondaryAction];
      v77 = 4.0;
      if (!v109)
      {
        v77 = 0.0;
      }

      [(UIStackView *)v110 setCustomSpacing:v237->_primaryButton afterView:v77];
      MEMORY[0x277D82BD8](v109);
      *&v78 = MEMORY[0x277D82BD8](v110).n128_u64[0];
      v111 = MEMORY[0x277CCAAD0];
      v120 = [(CPSNavigationAlertFocusButton *)v237->_primaryButton leadingAnchor];
      v119 = [(CPSNavigationAlertView *)v237 stackView];
      v118 = [(UIStackView *)v119 leadingAnchor];
      v117 = [v120 constraintEqualToAnchor:?];
      v240[0] = v117;
      v116 = [(CPSNavigationAlertFocusButton *)v237->_primaryButton trailingAnchor];
      v115 = [(CPSNavigationAlertView *)v237 stackView];
      v114 = [(UIStackView *)v115 trailingAnchor];
      v113 = [v116 constraintEqualToAnchor:?];
      v240[1] = v113;
      v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:2];
      [v111 activateConstraints:?];
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v119);
      v69 = MEMORY[0x277D82BD8](v120).n128_u64[0];
    }

    v106 = [location[0] secondaryAction];
    *&v79 = MEMORY[0x277D82BD8](v106).n128_u64[0];
    if (v106)
    {
      v94 = [location[0] secondaryAction];
      v80 = [CPSNavigationAlertFocusButton buttonWithAction:"buttonWithAction:progressView:isPrimary:" progressView:? isPrimary:?];
      secondaryButton = v237->_secondaryButton;
      v237->_secondaryButton = v80;
      MEMORY[0x277D82BD8](secondaryButton);
      *&v82 = MEMORY[0x277D82BD8](v94).n128_u64[0];
      [(CPUITemplateButton *)v237->_secondaryButton setDelegate:v234, v82];
      [(CPSNavigationAlertFocusButton *)v237->_secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [CPSNavigationAlertFocusButton setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
      LODWORD(v83) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_secondaryButton setContentCompressionResistancePriority:v83 forAxis:?];
      LODWORD(v84) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_secondaryButton setContentHuggingPriority:1 forAxis:v84];
      LODWORD(v85) = 1148846080;
      [(CPSNavigationAlertFocusButton *)v237->_secondaryButton setContentHuggingPriority:0 forAxis:v85];
      v95 = [(CPSNavigationAlertView *)v237 stackView];
      [(UIStackView *)v95 addArrangedSubview:v237->_secondaryButton];
      *&v86 = MEMORY[0x277D82BD8](v95).n128_u64[0];
      v96 = MEMORY[0x277CCAAD0];
      v105 = [(CPSNavigationAlertFocusButton *)v237->_secondaryButton leadingAnchor];
      v104 = [(CPSNavigationAlertView *)v237 stackView];
      v103 = [(UIStackView *)v104 leadingAnchor];
      v102 = [v105 constraintEqualToAnchor:?];
      v239[0] = v102;
      v101 = [(CPSNavigationAlertFocusButton *)v237->_secondaryButton trailingAnchor];
      v100 = [(CPSNavigationAlertView *)v237 stackView];
      v99 = [(UIStackView *)v100 trailingAnchor];
      v98 = [v101 constraintEqualToAnchor:?];
      v239[1] = v98;
      v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v239 count:2];
      [v96 activateConstraints:?];
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v105);
    }

    if (CPSAlertUsesMinimalStyle(location[0]))
    {
      [location[0] duration];
      if (v87 > 0.0)
      {
        [CPSNavigationAlertProgressView setContentCompressionResistancePriority:"setContentCompressionResistancePriority:forAxis:" forAxis:?];
        LODWORD(v88) = 1148846080;
        [(CPSNavigationAlertProgressView *)v237->_progressView setContentCompressionResistancePriority:v88 forAxis:?];
        LODWORD(v89) = 1148846080;
        [(CPSNavigationAlertProgressView *)v237->_progressView setContentHuggingPriority:1 forAxis:v89];
        LODWORD(v90) = 1148846080;
        [(CPSNavigationAlertProgressView *)v237->_progressView setContentHuggingPriority:0 forAxis:v90];
        v93 = [(CPSNavigationAlertView *)v237 stackView];
        [(UIStackView *)v93 addArrangedSubview:v237->_progressView];
        MEMORY[0x277D82BD8](v93);
      }
    }

    objc_storeStrong(&v219, 0);
    objc_storeStrong(&v221, 0);
    objc_storeStrong(&v232, 0);
  }

  v92 = MEMORY[0x277D82BE0](v237);
  objc_storeStrong(&v234, 0);
  objc_storeStrong(&v235, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v237, 0);
  return v92;
}

- (void)startAnimating
{
  v73[3] = *MEMORY[0x277D85DE8];
  v72 = self;
  v71[1] = a2;
  if (!self->_hasStartedAnimating)
  {
    v72->_hasStartedAnimating = 1;
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v71[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v71[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [v71[0] layer];
    [v55 setMasksToBounds:1];
    MEMORY[0x277D82BD8](v55);
    v70 = 0.0;
    v56 = [(CPSNavigationAlertView *)v72 navigationAlert];
    v57 = CPSAlertUsesMinimalStyle(v56);
    *&v3 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    if (v57)
    {
      v50 = [v71[0] layer];
      [v50 setCornerRadius:2.0];
      v51 = [v71[0] layer];
      [v51 setMaskedCorners:15];
      *&v4 = MEMORY[0x277D82BD8](v51).n128_u64[0];
      v52 = *MEMORY[0x277CDA138];
      v53 = [v71[0] layer];
      [v53 setCornerCurve:v52];
      v54 = [MEMORY[0x277D75348] systemBlueColor];
      [v71[0] setBackgroundColor:?];
      MEMORY[0x277D82BD8](v54);
      v70 = 4.0;
    }

    else
    {
      v69 = 0.0;
      location = 0;
      v49 = [(CPSNavigationAlertView *)v72 navigationAlert];
      v48 = [(CPNavigationAlert *)v49 primaryAction];
      v47 = CPSBackgroundColorForAlertAction(v48, 1);
      v67 = CPContrastingColorForColor();
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      v5 = MEMORY[0x277D82BD8](v49).n128_u64[0];
      if (!v67)
      {
        v45 = [MEMORY[0x277D759A0] _carScreen];
        v44 = [v45 traitCollection];
        v46 = [v44 userInterfaceStyle] == 2;
        MEMORY[0x277D82BD8](v44);
        *&v6 = MEMORY[0x277D82BD8](v45).n128_u64[0];
        v66 = v46;
        if (v46)
        {
          v7 = [MEMORY[0x277D75348] whiteColor];
        }

        else
        {
          v7 = [MEMORY[0x277D75348] blackColor];
        }

        v8 = v67;
        v67 = v7;
        v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      }

      v42 = [MEMORY[0x277D75348] whiteColor];
      v43 = [v67 isEqual:?];
      MEMORY[0x277D82BD8](v42);
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
      v11 = [v38 CGColor];
      [v39 setValue:v11 forKey:*MEMORY[0x277CDA430]];
      v40 = v65;
      v41 = [v71[0] layer];
      [v41 setCompositingFilter:v40];
      MEMORY[0x277D82BD8](v41);
      v70 = 36.0;
      objc_storeStrong(&v65, 0);
      objc_storeStrong(&v67, 0);
      objc_storeStrong(&location, 0);
    }

    v34 = [(CPSNavigationAlertProgressView *)v72->_progressView superview];
    [v34 addSubview:v71[0]];
    *&v12 = MEMORY[0x277D82BD8](v34).n128_u64[0];
    v35 = [(CPSNavigationAlertView *)v72 navigationAlert];
    v36 = CPSAlertUsesMinimalStyle(v35);
    v13 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    if (!v36)
    {
      v33 = [(CPSNavigationAlertProgressView *)v72->_progressView superview];
      v32 = [(CPSNavigationAlertProgressView *)v72->_progressView superview];
      v31 = [v32 titleLabel];
      [v33 bringSubviewToFront:?];
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      v13 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    }

    v18 = [v71[0] widthAnchor];
    v17 = [(CPSNavigationAlertProgressView *)v72->_progressView widthAnchor];
    v64 = [v18 constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](v17);
    *&v14 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v19 = MEMORY[0x277CCAAD0];
    v28 = [v71[0] leadingAnchor];
    v27 = [(CPSNavigationAlertProgressView *)v72->_progressView leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:?];
    v73[0] = v26;
    v25 = [v71[0] topAnchor];
    v24 = [(CPSNavigationAlertProgressView *)v72->_progressView topAnchor];
    v23 = [v25 constraintEqualToAnchor:?];
    v73[1] = v23;
    v22 = [v71[0] heightAnchor];
    v21 = [v22 constraintEqualToConstant:v70];
    v73[2] = v21;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    [v19 activateConstraints:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    *&v15 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    [(CPSNavigationAlertView *)v72 layoutIfNeeded];
    [v64 setActive:1];
    v30 = MEMORY[0x277D75D18];
    [(CPNavigationAlert *)v72->_navigationAlert duration];
    v29 = v16;
    v58 = MEMORY[0x277D85DD0];
    v59 = -1073741824;
    v60 = 0;
    v61 = __40__CPSNavigationAlertView_startAnimating__block_invoke;
    v62 = &unk_278D913E8;
    v63 = MEMORY[0x277D82BE0](v72);
    [v30 animateWithDuration:196614 delay:&v58 options:v29 animations:0.0 completion:?];
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(v71, 0);
  }
}

- (void)updateNavigationAlert:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v12, location[0]);
    _os_log_impl(&dword_242FE8000, v9, OS_LOG_TYPE_DEFAULT, "Received update for navigation alert %@", v12, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v6 = [(CPSNavigationAlertView *)v11 titleLabel];
  v5 = [location[0] titleVariants];
  [(CPUIAbridgableLabel *)v6 setTextVariants:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v8 = [(CPSNavigationAlertView *)v11 subtitleLabel];
  v7 = [location[0] subtitleVariants];
  [(CPUIAbridgableLabel *)v8 setTextVariants:?];
  MEMORY[0x277D82BD8](v7);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(CPSNavigationAlertView *)v11 invalidateIntrinsicContentSize];
  [(CPSNavigationAlertView *)v11 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18.receiver = v20;
  v18.super_class = CPSNavigationAlertView;
  [(CPSNavigationAlertView *)&v18 traitCollectionDidChange:location[0]];
  v17 = 0;
  v15 = [(CPSNavigationAlertView *)v20 traitCollection];
  v16 = [v15 userInterfaceStyle];
  v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  switch(v16)
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
  v11 = [(CPSNavigationAlertView *)v20 titleLabel];
  v10 = [(CPSAbridgableNewlineLabel *)v11 layer];
  [v10 setCompositingFilter:v9];
  MEMORY[0x277D82BD8](v10);
  *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v17;
  v14 = [(CPSNavigationAlertView *)v20 subtitleLabel];
  v13 = [(CPSAbridgableNewlineLabel *)v14 layer];
  [v13 setCompositingFilter:v12];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30.receiver = v33;
  v30.super_class = CPSNavigationAlertView;
  [(CPSNavigationAlertView *)&v30 didUpdateFocusInContext:location[0] withAnimationCoordinator:v31];
  v29 = [location[0] nextFocusedView];
  if (v29)
  {
    v24 = [(CPSNavigationAlertView *)v33 primaryButton];
    v27 = 0;
    v25 = 1;
    if (v29 != v24)
    {
      v28 = [(CPSNavigationAlertView *)v33 secondaryButton];
      v27 = 1;
      v25 = v29 == v28;
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    *&v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    if (v25)
    {
      v23 = [(CPSNavigationAlertView *)v33 ringConstraints];
      *&v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      if (v23)
      {
        v21 = MEMORY[0x277CCAAD0];
        v22 = [(CPSNavigationAlertView *)v33 ringConstraints];
        [v21 deactivateConstraints:?];
        MEMORY[0x277D82BD8](v22);
        objc_storeStrong(&v33->_ringConstraints, 0);
      }

      [(CPUIFocusRingView *)v33->_focusRingView setHidden:0, v5];
      v20 = [(CPUIFocusRingView *)v33->_focusRingView topAnchor];
      v19 = [v29 topAnchor];
      v18 = [v20 constraintEqualToAnchor:-3.0 constant:?];
      v34[0] = v18;
      v17 = [(CPUIFocusRingView *)v33->_focusRingView bottomAnchor];
      v16 = [v29 bottomAnchor];
      v15 = [v17 constraintEqualToAnchor:3.0 constant:?];
      v34[1] = v15;
      v14 = [(CPUIFocusRingView *)v33->_focusRingView leadingAnchor];
      v13 = [v29 leadingAnchor];
      v12 = [v14 constraintEqualToAnchor:-2.0 constant:?];
      v34[2] = v12;
      v11 = [(CPUIFocusRingView *)v33->_focusRingView trailingAnchor];
      v10 = [v29 trailingAnchor];
      v9 = [v11 constraintEqualToAnchor:2.0 constant:?];
      v34[3] = v9;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
      ringConstraints = v33->_ringConstraints;
      v33->_ringConstraints = v6;
      MEMORY[0x277D82BD8](ringConstraints);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      *&v8 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      [MEMORY[0x277CCAAD0] activateConstraints:{v33->_ringConstraints, v8}];
      [(CPSNavigationAlertView *)v33 bringSubviewToFront:v33->_focusRingView];
    }

    else
    {
      [(CPUIFocusRingView *)v33->_focusRingView setHidden:1, v4];
    }
  }

  else
  {
    [(CPUIFocusRingView *)v33->_focusRingView setHidden:1];
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

@end
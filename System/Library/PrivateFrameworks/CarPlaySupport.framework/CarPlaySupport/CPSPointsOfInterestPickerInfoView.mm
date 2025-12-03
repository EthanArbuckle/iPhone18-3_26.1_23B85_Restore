@interface CPSPointsOfInterestPickerInfoView
- (CPSPointsOfInterestPickerInfoDelegate)delegate;
- (UIEdgeInsets)safeAreaInsets;
- (id)_linearFocusItems;
- (void)didSelectButton:(id)button;
- (void)setupViews;
- (void)updateWithModel:(id)model;
@end

@implementation CPSPointsOfInterestPickerInfoView

- (void)updateWithModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  model = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  v15 = location[0];
  MEMORY[0x277D82BD8](model);
  if (model != v15)
  {
    objc_storeStrong(&selfCopy->_model, location[0]);
    topStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
    *&v3 = MEMORY[0x277D82BD8](topStackView).n128_u64[0];
    if (topStackView)
    {
      topStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
      [(UIStackView *)topStackView2 removeFromSuperview];
      *&v4 = MEMORY[0x277D82BD8](topStackView2).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)selfCopy setTopStackView:0, v4];
    }

    middleStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
    *&v5 = MEMORY[0x277D82BD8](middleStackView).n128_u64[0];
    if (middleStackView)
    {
      middleStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
      [(UIStackView *)middleStackView2 removeFromSuperview];
      *&v6 = MEMORY[0x277D82BD8](middleStackView2).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)selfCopy setMiddleStackView:0, v6];
    }

    bottomStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    *&v7 = MEMORY[0x277D82BD8](bottomStackView).n128_u64[0];
    if (bottomStackView)
    {
      bottomStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
      [(UIStackView *)bottomStackView2 removeFromSuperview];
      *&v8 = MEMORY[0x277D82BD8](bottomStackView2).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)selfCopy setBottomStackView:0, v8];
    }

    [(CPSPointsOfInterestPickerInfoView *)selfCopy setupViews];
  }

  objc_storeStrong(location, 0);
}

- (void)setupViews
{
  v159[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v153[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D75A68]);
  v132 = MEMORY[0x277CBF3A0];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  topStackView = selfCopy->_topStackView;
  selfCopy->_topStackView = v3;
  [(UIStackView *)selfCopy->_topStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](topStackView).n128_f64[0]];
  [(UIStackView *)selfCopy->_topStackView setAxis:?];
  [(UIStackView *)selfCopy->_topStackView setAlignment:1];
  [(UIStackView *)selfCopy->_topStackView setDistribution:?];
  [(UIStackView *)selfCopy->_topStackView setSpacing:0.0];
  [(CPSPointsOfInterestPickerInfoView *)selfCopy addSubview:selfCopy->_topStackView];
  v5 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v132, v132[1], v132[2], v132[3]}];
  middleStackView = selfCopy->_middleStackView;
  selfCopy->_middleStackView = v5;
  [(UIStackView *)selfCopy->_middleStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](middleStackView).n128_f64[0]];
  [(UIStackView *)selfCopy->_middleStackView setAxis:1];
  [(UIStackView *)selfCopy->_middleStackView setAlignment:1];
  [(UIStackView *)selfCopy->_middleStackView setDistribution:2];
  [(UIStackView *)selfCopy->_middleStackView setSpacing:?];
  [(CPSPointsOfInterestPickerInfoView *)selfCopy addSubview:selfCopy->_middleStackView];
  v7 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v132, v132[1], v132[2], v132[3]}];
  bottomStackView = selfCopy->_bottomStackView;
  selfCopy->_bottomStackView = v7;
  [(UIStackView *)selfCopy->_bottomStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](bottomStackView).n128_f64[0]];
  [(UIStackView *)selfCopy->_bottomStackView setAxis:1];
  [(UIStackView *)selfCopy->_bottomStackView setAlignment:3];
  [(UIStackView *)selfCopy->_bottomStackView setSpacing:2.0];
  [(CPSPointsOfInterestPickerInfoView *)selfCopy addSubview:selfCopy->_bottomStackView];
  model = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  detailTitle = [(CPPointOfInterest *)model detailTitle];
  v151 = 0;
  v149 = 0;
  if (detailTitle)
  {
    v9 = MEMORY[0x277D82BE0](detailTitle);
  }

  else
  {
    model2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    v151 = 1;
    title = [(CPPointOfInterest *)model2 title];
    v149 = 1;
    v9 = MEMORY[0x277D82BE0](title);
  }

  v153[0] = v9;
  if (v149)
  {
    MEMORY[0x277D82BD8](title);
  }

  if (v151)
  {
    MEMORY[0x277D82BD8](model2);
  }

  MEMORY[0x277D82BD8](detailTitle);
  v10 = MEMORY[0x277D82BD8](model).n128_u64[0];
  if (v153[0])
  {
    v11 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsLabel");
    detailsTitle = selfCopy->_detailsTitle;
    selfCopy->_detailsTitle = v11;
    [(UILabel *)selfCopy->_detailsTitle setNumberOfLines:4, MEMORY[0x277D82BD8](detailsTitle).n128_f64[0]];
    [(UILabel *)selfCopy->_detailsTitle setText:v153[0]];
    v130 = +[CPSEntityStyles pickerInfoPrimaryFont];
    [(UILabel *)selfCopy->_detailsTitle setFont:?];
    topStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
    [(UIStackView *)topStackView addArrangedSubview:selfCopy->_detailsTitle];
    v10 = MEMORY[0x277D82BD8](topStackView).n128_u64[0];
  }

  model3 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  detailSubtitle = [(CPPointOfInterest *)model3 detailSubtitle];
  v146 = 0;
  v144 = 0;
  if (detailSubtitle)
  {
    v13 = MEMORY[0x277D82BE0](detailSubtitle);
  }

  else
  {
    model4 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    v146 = 1;
    subtitle = [(CPPointOfInterest *)model4 subtitle];
    v144 = 1;
    v13 = MEMORY[0x277D82BE0](subtitle);
  }

  v148 = v13;
  if (v144)
  {
    MEMORY[0x277D82BD8](subtitle);
  }

  if (v146)
  {
    MEMORY[0x277D82BD8](model4);
  }

  MEMORY[0x277D82BD8](detailSubtitle);
  v14 = MEMORY[0x277D82BD8](model3).n128_u64[0];
  if (v148)
  {
    v15 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsSubtitleLabel");
    detailsSubtitle = selfCopy->_detailsSubtitle;
    selfCopy->_detailsSubtitle = v15;
    [(UILabel *)selfCopy->_detailsSubtitle setText:v148, MEMORY[0x277D82BD8](detailsSubtitle).n128_f64[0]];
    [(UILabel *)selfCopy->_detailsSubtitle setNumberOfLines:0];
    v126 = +[CPSEntityStyles pickerInfoSecondaryFont];
    [(UILabel *)selfCopy->_detailsSubtitle setFont:?];
    topStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
    [(UIStackView *)topStackView2 addArrangedSubview:selfCopy->_detailsSubtitle];
    v14 = MEMORY[0x277D82BD8](topStackView2).n128_u64[0];
  }

  model5 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  detailSummary = [(CPPointOfInterest *)model5 detailSummary];
  v141 = 0;
  v139 = 0;
  if (detailSummary)
  {
    v17 = MEMORY[0x277D82BE0](detailSummary);
  }

  else
  {
    model6 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    v141 = 1;
    summary = [(CPPointOfInterest *)model6 summary];
    v139 = 1;
    v17 = MEMORY[0x277D82BE0](summary);
  }

  v143 = v17;
  if (v139)
  {
    MEMORY[0x277D82BD8](summary);
  }

  if (v141)
  {
    MEMORY[0x277D82BD8](model6);
  }

  MEMORY[0x277D82BD8](detailSummary);
  v18 = MEMORY[0x277D82BD8](model5).n128_u64[0];
  if (v143)
  {
    v19 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsInformativeLabel");
    detailsInformativeText = selfCopy->_detailsInformativeText;
    selfCopy->_detailsInformativeText = v19;
    [(UILabel *)selfCopy->_detailsInformativeText setText:v143, MEMORY[0x277D82BD8](detailsInformativeText).n128_f64[0]];
    [(UILabel *)selfCopy->_detailsInformativeText setNumberOfLines:0];
    v121 = +[CPSEntityStyles pickerInfoSecondaryFont];
    [(UILabel *)selfCopy->_detailsInformativeText setFont:?];
    middleStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
    [(UIStackView *)middleStackView addArrangedSubview:selfCopy->_detailsInformativeText];
    _carSystemSecondaryColor = [MEMORY[0x277D75348] _carSystemSecondaryColor];
    [(UILabel *)selfCopy->_detailsInformativeText setTextColor:?];
    v18 = MEMORY[0x277D82BD8](_carSystemSecondaryColor).n128_u64[0];
  }

  model7 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  primaryButton = [(CPPointOfInterest *)model7 primaryButton];
  MEMORY[0x277D82BD8](primaryButton);
  v21 = MEMORY[0x277D82BD8](model7).n128_u64[0];
  if (primaryButton)
  {
    model8 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    primaryButton2 = [(CPPointOfInterest *)model8 primaryButton];
    v22 = [CPSStyledTextButton buttonWithTextButton:?];
    primaryButton = selfCopy->_primaryButton;
    selfCopy->_primaryButton = v22;
    MEMORY[0x277D82BD8](primaryButton);
    MEMORY[0x277D82BD8](primaryButton2);
    [(CPSStyledTextButton *)selfCopy->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](model8).n128_f64[0]];
    v104 = selfCopy->_primaryButton;
    v105 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    [(CPSStyledTextButton *)v104 setFontOverride:?];
    [(CPUITemplateButton *)selfCopy->_primaryButton setDelegate:selfCopy, MEMORY[0x277D82BD8](v105).n128_f64[0]];
    bottomStackView = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    [(UIStackView *)bottomStackView addArrangedSubview:selfCopy->_primaryButton];
    *&v24 = MEMORY[0x277D82BD8](bottomStackView).n128_u64[0];
    v107 = MEMORY[0x277CCAAD0];
    heightAnchor = [(CPSStyledTextButton *)selfCopy->_primaryButton heightAnchor];
    v117 = [heightAnchor constraintEqualToConstant:36.0];
    v159[0] = v117;
    leftAnchor = [(CPSStyledTextButton *)selfCopy->_primaryButton leftAnchor];
    bottomStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    leftAnchor2 = [(UIStackView *)bottomStackView2 leftAnchor];
    v113 = [leftAnchor constraintEqualToAnchor:?];
    v159[1] = v113;
    rightAnchor = [(CPSStyledTextButton *)selfCopy->_primaryButton rightAnchor];
    bottomStackView3 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    rightAnchor2 = [(UIStackView *)bottomStackView3 rightAnchor];
    v109 = [rightAnchor constraintEqualToAnchor:?];
    v159[2] = v109;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:3];
    [v107 activateConstraints:?];
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](bottomStackView3);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](bottomStackView2);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](v117);
    v21 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
  }

  model9 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
  secondaryButton = [(CPPointOfInterest *)model9 secondaryButton];
  MEMORY[0x277D82BD8](secondaryButton);
  *&v25 = MEMORY[0x277D82BD8](model9).n128_u64[0];
  if (secondaryButton)
  {
    model10 = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    secondaryButton2 = [(CPPointOfInterest *)model10 secondaryButton];
    v26 = [CPSStyledTextButton buttonWithTextButton:?];
    secondaryButton = selfCopy->_secondaryButton;
    selfCopy->_secondaryButton = v26;
    MEMORY[0x277D82BD8](secondaryButton);
    MEMORY[0x277D82BD8](secondaryButton2);
    [(CPSStyledTextButton *)selfCopy->_secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](model10).n128_f64[0]];
    [(CPUITemplateButton *)selfCopy->_secondaryButton setDelegate:selfCopy];
    v85 = selfCopy->_secondaryButton;
    v86 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    [(CPSStyledTextButton *)v85 setFontOverride:?];
    bottomStackView4 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    [(UIStackView *)bottomStackView4 addArrangedSubview:selfCopy->_secondaryButton];
    *&v28 = MEMORY[0x277D82BD8](bottomStackView4).n128_u64[0];
    v88 = MEMORY[0x277CCAAD0];
    heightAnchor2 = [(CPSStyledTextButton *)selfCopy->_secondaryButton heightAnchor];
    v98 = [heightAnchor2 constraintEqualToConstant:36.0];
    v158[0] = v98;
    leftAnchor3 = [(CPSStyledTextButton *)selfCopy->_secondaryButton leftAnchor];
    bottomStackView5 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    leftAnchor4 = [(UIStackView *)bottomStackView5 leftAnchor];
    v94 = [leftAnchor3 constraintEqualToAnchor:?];
    v158[1] = v94;
    rightAnchor3 = [(CPSStyledTextButton *)selfCopy->_secondaryButton rightAnchor];
    bottomStackView6 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
    rightAnchor4 = [(UIStackView *)bottomStackView6 rightAnchor];
    v90 = [rightAnchor3 constraintEqualToAnchor:?];
    v158[2] = v90;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:3];
    [v88 activateConstraints:?];
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](rightAnchor4);
    MEMORY[0x277D82BD8](bottomStackView6);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](leftAnchor4);
    MEMORY[0x277D82BD8](bottomStackView5);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](heightAnchor2);
  }

  v138 = objc_opt_new();
  v137 = 0;
  v136 = 0;
  v135 = 0;
  topStackView3 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
  topAnchor = [(UIStackView *)topStackView3 topAnchor];
  topAnchor2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:13.5 constant:?];
  v157[0] = v47;
  topStackView4 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
  leadingAnchor = [(UIStackView *)topStackView4 leadingAnchor];
  leadingAnchor2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:16.0 constant:?];
  v157[1] = v43;
  topStackView5 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
  trailingAnchor = [(UIStackView *)topStackView5 trailingAnchor];
  trailingAnchor2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:-48.0 constant:?];
  v157[2] = v39;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:?];
  v30 = v137;
  v137 = v29;
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](topStackView5);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](topStackView4);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  *&v31 = MEMORY[0x277D82BD8](topStackView3).n128_u64[0];
  middleStackView2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
  topAnchor3 = [(UIStackView *)middleStackView2 topAnchor];
  topStackView6 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
  bottomAnchor = [(UIStackView *)topStackView6 bottomAnchor];
  v65 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:? constant:?];
  v156[0] = v65;
  middleStackView3 = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
  leadingAnchor3 = [(UIStackView *)middleStackView3 leadingAnchor];
  topStackView7 = [(CPSPointsOfInterestPickerInfoView *)selfCopy topStackView];
  leadingAnchor4 = [(UIStackView *)topStackView7 leadingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:?];
  v156[1] = v60;
  middleStackView4 = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
  trailingAnchor3 = [(UIStackView *)middleStackView4 trailingAnchor];
  trailingAnchor4 = [(CPSPointsOfInterestPickerInfoView *)selfCopy trailingAnchor];
  v56 = [trailingAnchor3 constraintEqualToAnchor:-16.0 constant:?];
  v156[2] = v56;
  middleStackView5 = [(CPSPointsOfInterestPickerInfoView *)selfCopy middleStackView];
  bottomAnchor2 = [(UIStackView *)middleStackView5 bottomAnchor];
  bottomStackView7 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
  topAnchor4 = [(UIStackView *)bottomStackView7 topAnchor];
  v51 = [bottomAnchor2 constraintEqualToAnchor:? constant:?];
  v156[3] = v51;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:4];
  v33 = v136;
  v136 = v32;
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](bottomStackView7);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](middleStackView5);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](middleStackView4);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](topStackView7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](middleStackView3);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](topStackView6);
  MEMORY[0x277D82BD8](topAnchor3);
  *&v34 = MEMORY[0x277D82BD8](middleStackView2).n128_u64[0];
  bottomStackView8 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
  leadingAnchor5 = [(UIStackView *)bottomStackView8 leadingAnchor];
  leadingAnchor6 = [(CPSPointsOfInterestPickerInfoView *)selfCopy leadingAnchor];
  v79 = [leadingAnchor5 constraintEqualToAnchor:10.0 constant:?];
  v155[0] = v79;
  bottomStackView9 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
  trailingAnchor5 = [(UIStackView *)bottomStackView9 trailingAnchor];
  trailingAnchor6 = [(CPSPointsOfInterestPickerInfoView *)selfCopy trailingAnchor];
  v75 = [trailingAnchor5 constraintEqualToAnchor:-10.0 constant:?];
  v155[1] = v75;
  bottomStackView10 = [(CPSPointsOfInterestPickerInfoView *)selfCopy bottomStackView];
  bottomAnchor3 = [(UIStackView *)bottomStackView10 bottomAnchor];
  safeAreaLayoutGuide = [(CPSPointsOfInterestPickerInfoView *)selfCopy safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v70 = [bottomAnchor3 constraintEqualToAnchor:?];
  v155[2] = v70;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
  v36 = v135;
  v135 = v35;
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](bottomStackView10);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](bottomStackView9);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](leadingAnchor5);
  *&v37 = MEMORY[0x277D82BD8](bottomStackView8).n128_u64[0];
  [v138 addObjectsFromArray:{v137, v37}];
  [v138 addObjectsFromArray:v135];
  [v138 addObjectsFromArray:v136];
  [MEMORY[0x277CCAAD0] activateConstraints:v138];
  LODWORD(v38) = 1148846080;
  [(UILabel *)selfCopy->_detailsTitle setContentCompressionResistancePriority:1 forAxis:v38];
  objc_storeStrong(&v135, 0);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v137, 0);
  objc_storeStrong(&v138, 0);
  objc_storeStrong(&v143, 0);
  objc_storeStrong(&v148, 0);
  objc_storeStrong(v153, 0);
}

- (UIEdgeInsets)safeAreaInsets
{
  UIEdgeInsetsMake_3();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  delegate = [(CPSPointsOfInterestPickerInfoView *)selfCopy delegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v8)
  {
    delegate2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy delegate];
    v4 = location[0];
    model = [(CPSPointsOfInterestPickerInfoView *)selfCopy model];
    [(CPSPointsOfInterestPickerInfoDelegate *)delegate2 actionButtonPressed:v4 forModel:?];
    MEMORY[0x277D82BD8](model);
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  primaryButton = [(CPSPointsOfInterestPickerInfoView *)selfCopy primaryButton];
  v2 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
  if (primaryButton)
  {
    primaryButton2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy primaryButton];
    [v10[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](primaryButton2).n128_u64[0];
  }

  secondaryButton = [(CPSPointsOfInterestPickerInfoView *)selfCopy secondaryButton];
  *&v3 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
  if (secondaryButton)
  {
    secondaryButton2 = [(CPSPointsOfInterestPickerInfoView *)selfCopy secondaryButton];
    [v10[0] addObject:?];
    MEMORY[0x277D82BD8](secondaryButton2);
  }

  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v5;
}

- (CPSPointsOfInterestPickerInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
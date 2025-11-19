@interface CPSPointsOfInterestPickerInfoView
- (CPSPointsOfInterestPickerInfoDelegate)delegate;
- (UIEdgeInsets)safeAreaInsets;
- (id)_linearFocusItems;
- (void)didSelectButton:(id)a3;
- (void)setupViews;
- (void)updateWithModel:(id)a3;
@end

@implementation CPSPointsOfInterestPickerInfoView

- (void)updateWithModel:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(CPSPointsOfInterestPickerInfoView *)v18 model];
  v15 = location[0];
  MEMORY[0x277D82BD8](v16);
  if (v16 != v15)
  {
    objc_storeStrong(&v18->_model, location[0]);
    v14 = [(CPSPointsOfInterestPickerInfoView *)v18 topStackView];
    *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if (v14)
    {
      v13 = [(CPSPointsOfInterestPickerInfoView *)v18 topStackView];
      [(UIStackView *)v13 removeFromSuperview];
      *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)v18 setTopStackView:0, v4];
    }

    v12 = [(CPSPointsOfInterestPickerInfoView *)v18 middleStackView];
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v12)
    {
      v11 = [(CPSPointsOfInterestPickerInfoView *)v18 middleStackView];
      [(UIStackView *)v11 removeFromSuperview];
      *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)v18 setMiddleStackView:0, v6];
    }

    v10 = [(CPSPointsOfInterestPickerInfoView *)v18 bottomStackView];
    *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      v9 = [(CPSPointsOfInterestPickerInfoView *)v18 bottomStackView];
      [(UIStackView *)v9 removeFromSuperview];
      *&v8 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      [(CPSPointsOfInterestPickerInfoView *)v18 setBottomStackView:0, v8];
    }

    [(CPSPointsOfInterestPickerInfoView *)v18 setupViews];
  }

  objc_storeStrong(location, 0);
}

- (void)setupViews
{
  v159[3] = *MEMORY[0x277D85DE8];
  v154 = self;
  v153[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D75A68]);
  v132 = MEMORY[0x277CBF3A0];
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  topStackView = v154->_topStackView;
  v154->_topStackView = v3;
  [(UIStackView *)v154->_topStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](topStackView).n128_f64[0]];
  [(UIStackView *)v154->_topStackView setAxis:?];
  [(UIStackView *)v154->_topStackView setAlignment:1];
  [(UIStackView *)v154->_topStackView setDistribution:?];
  [(UIStackView *)v154->_topStackView setSpacing:0.0];
  [(CPSPointsOfInterestPickerInfoView *)v154 addSubview:v154->_topStackView];
  v5 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v132, v132[1], v132[2], v132[3]}];
  middleStackView = v154->_middleStackView;
  v154->_middleStackView = v5;
  [(UIStackView *)v154->_middleStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](middleStackView).n128_f64[0]];
  [(UIStackView *)v154->_middleStackView setAxis:1];
  [(UIStackView *)v154->_middleStackView setAlignment:1];
  [(UIStackView *)v154->_middleStackView setDistribution:2];
  [(UIStackView *)v154->_middleStackView setSpacing:?];
  [(CPSPointsOfInterestPickerInfoView *)v154 addSubview:v154->_middleStackView];
  v7 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v132, v132[1], v132[2], v132[3]}];
  bottomStackView = v154->_bottomStackView;
  v154->_bottomStackView = v7;
  [(UIStackView *)v154->_bottomStackView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](bottomStackView).n128_f64[0]];
  [(UIStackView *)v154->_bottomStackView setAxis:1];
  [(UIStackView *)v154->_bottomStackView setAlignment:3];
  [(UIStackView *)v154->_bottomStackView setSpacing:2.0];
  [(CPSPointsOfInterestPickerInfoView *)v154 addSubview:v154->_bottomStackView];
  v133 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
  v134 = [(CPPointOfInterest *)v133 detailTitle];
  v151 = 0;
  v149 = 0;
  if (v134)
  {
    v9 = MEMORY[0x277D82BE0](v134);
  }

  else
  {
    v152 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
    v151 = 1;
    v150 = [(CPPointOfInterest *)v152 title];
    v149 = 1;
    v9 = MEMORY[0x277D82BE0](v150);
  }

  v153[0] = v9;
  if (v149)
  {
    MEMORY[0x277D82BD8](v150);
  }

  if (v151)
  {
    MEMORY[0x277D82BD8](v152);
  }

  MEMORY[0x277D82BD8](v134);
  v10 = MEMORY[0x277D82BD8](v133).n128_u64[0];
  if (v153[0])
  {
    v11 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsLabel");
    detailsTitle = v154->_detailsTitle;
    v154->_detailsTitle = v11;
    [(UILabel *)v154->_detailsTitle setNumberOfLines:4, MEMORY[0x277D82BD8](detailsTitle).n128_f64[0]];
    [(UILabel *)v154->_detailsTitle setText:v153[0]];
    v130 = +[CPSEntityStyles pickerInfoPrimaryFont];
    [(UILabel *)v154->_detailsTitle setFont:?];
    v131 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
    [(UIStackView *)v131 addArrangedSubview:v154->_detailsTitle];
    v10 = MEMORY[0x277D82BD8](v131).n128_u64[0];
  }

  v128 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
  v129 = [(CPPointOfInterest *)v128 detailSubtitle];
  v146 = 0;
  v144 = 0;
  if (v129)
  {
    v13 = MEMORY[0x277D82BE0](v129);
  }

  else
  {
    v147 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
    v146 = 1;
    v145 = [(CPPointOfInterest *)v147 subtitle];
    v144 = 1;
    v13 = MEMORY[0x277D82BE0](v145);
  }

  v148 = v13;
  if (v144)
  {
    MEMORY[0x277D82BD8](v145);
  }

  if (v146)
  {
    MEMORY[0x277D82BD8](v147);
  }

  MEMORY[0x277D82BD8](v129);
  v14 = MEMORY[0x277D82BD8](v128).n128_u64[0];
  if (v148)
  {
    v15 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsSubtitleLabel");
    detailsSubtitle = v154->_detailsSubtitle;
    v154->_detailsSubtitle = v15;
    [(UILabel *)v154->_detailsSubtitle setText:v148, MEMORY[0x277D82BD8](detailsSubtitle).n128_f64[0]];
    [(UILabel *)v154->_detailsSubtitle setNumberOfLines:0];
    v126 = +[CPSEntityStyles pickerInfoSecondaryFont];
    [(UILabel *)v154->_detailsSubtitle setFont:?];
    v127 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
    [(UIStackView *)v127 addArrangedSubview:v154->_detailsSubtitle];
    v14 = MEMORY[0x277D82BD8](v127).n128_u64[0];
  }

  v124 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
  v125 = [(CPPointOfInterest *)v124 detailSummary];
  v141 = 0;
  v139 = 0;
  if (v125)
  {
    v17 = MEMORY[0x277D82BE0](v125);
  }

  else
  {
    v142 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
    v141 = 1;
    v140 = [(CPPointOfInterest *)v142 summary];
    v139 = 1;
    v17 = MEMORY[0x277D82BE0](v140);
  }

  v143 = v17;
  if (v139)
  {
    MEMORY[0x277D82BD8](v140);
  }

  if (v141)
  {
    MEMORY[0x277D82BD8](v142);
  }

  MEMORY[0x277D82BD8](v125);
  v18 = MEMORY[0x277D82BD8](v124).n128_u64[0];
  if (v143)
  {
    v19 = CPSPointsOfInterestMakeLabel(@"CPSPointsOfInterestDetailsInformativeLabel");
    detailsInformativeText = v154->_detailsInformativeText;
    v154->_detailsInformativeText = v19;
    [(UILabel *)v154->_detailsInformativeText setText:v143, MEMORY[0x277D82BD8](detailsInformativeText).n128_f64[0]];
    [(UILabel *)v154->_detailsInformativeText setNumberOfLines:0];
    v121 = +[CPSEntityStyles pickerInfoSecondaryFont];
    [(UILabel *)v154->_detailsInformativeText setFont:?];
    v122 = [(CPSPointsOfInterestPickerInfoView *)v154 middleStackView];
    [(UIStackView *)v122 addArrangedSubview:v154->_detailsInformativeText];
    v123 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
    [(UILabel *)v154->_detailsInformativeText setTextColor:?];
    v18 = MEMORY[0x277D82BD8](v123).n128_u64[0];
  }

  v119 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
  v120 = [(CPPointOfInterest *)v119 primaryButton];
  MEMORY[0x277D82BD8](v120);
  v21 = MEMORY[0x277D82BD8](v119).n128_u64[0];
  if (v120)
  {
    v103 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
    v102 = [(CPPointOfInterest *)v103 primaryButton];
    v22 = [CPSStyledTextButton buttonWithTextButton:?];
    primaryButton = v154->_primaryButton;
    v154->_primaryButton = v22;
    MEMORY[0x277D82BD8](primaryButton);
    MEMORY[0x277D82BD8](v102);
    [(CPSStyledTextButton *)v154->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v103).n128_f64[0]];
    v104 = v154->_primaryButton;
    v105 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    [(CPSStyledTextButton *)v104 setFontOverride:?];
    [(CPUITemplateButton *)v154->_primaryButton setDelegate:v154, MEMORY[0x277D82BD8](v105).n128_f64[0]];
    v106 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    [(UIStackView *)v106 addArrangedSubview:v154->_primaryButton];
    *&v24 = MEMORY[0x277D82BD8](v106).n128_u64[0];
    v107 = MEMORY[0x277CCAAD0];
    v118 = [(CPSStyledTextButton *)v154->_primaryButton heightAnchor];
    v117 = [v118 constraintEqualToConstant:36.0];
    v159[0] = v117;
    v116 = [(CPSStyledTextButton *)v154->_primaryButton leftAnchor];
    v115 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    v114 = [(UIStackView *)v115 leftAnchor];
    v113 = [v116 constraintEqualToAnchor:?];
    v159[1] = v113;
    v112 = [(CPSStyledTextButton *)v154->_primaryButton rightAnchor];
    v111 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    v110 = [(UIStackView *)v111 rightAnchor];
    v109 = [v112 constraintEqualToAnchor:?];
    v159[2] = v109;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:3];
    [v107 activateConstraints:?];
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    v21 = MEMORY[0x277D82BD8](v118).n128_u64[0];
  }

  v100 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
  v101 = [(CPPointOfInterest *)v100 secondaryButton];
  MEMORY[0x277D82BD8](v101);
  *&v25 = MEMORY[0x277D82BD8](v100).n128_u64[0];
  if (v101)
  {
    v84 = [(CPSPointsOfInterestPickerInfoView *)v154 model];
    v83 = [(CPPointOfInterest *)v84 secondaryButton];
    v26 = [CPSStyledTextButton buttonWithTextButton:?];
    secondaryButton = v154->_secondaryButton;
    v154->_secondaryButton = v26;
    MEMORY[0x277D82BD8](secondaryButton);
    MEMORY[0x277D82BD8](v83);
    [(CPSStyledTextButton *)v154->_secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v84).n128_f64[0]];
    [(CPUITemplateButton *)v154->_secondaryButton setDelegate:v154];
    v85 = v154->_secondaryButton;
    v86 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    [(CPSStyledTextButton *)v85 setFontOverride:?];
    v87 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    [(UIStackView *)v87 addArrangedSubview:v154->_secondaryButton];
    *&v28 = MEMORY[0x277D82BD8](v87).n128_u64[0];
    v88 = MEMORY[0x277CCAAD0];
    v99 = [(CPSStyledTextButton *)v154->_secondaryButton heightAnchor];
    v98 = [v99 constraintEqualToConstant:36.0];
    v158[0] = v98;
    v97 = [(CPSStyledTextButton *)v154->_secondaryButton leftAnchor];
    v96 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    v95 = [(UIStackView *)v96 leftAnchor];
    v94 = [v97 constraintEqualToAnchor:?];
    v158[1] = v94;
    v93 = [(CPSStyledTextButton *)v154->_secondaryButton rightAnchor];
    v92 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
    v91 = [(UIStackView *)v92 rightAnchor];
    v90 = [v93 constraintEqualToAnchor:?];
    v158[2] = v90;
    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:3];
    [v88 activateConstraints:?];
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
  }

  v138 = objc_opt_new();
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v50 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
  v49 = [(UIStackView *)v50 topAnchor];
  v48 = [(CPSPointsOfInterestPickerInfoView *)v154 topAnchor];
  v47 = [v49 constraintEqualToAnchor:13.5 constant:?];
  v157[0] = v47;
  v46 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
  v45 = [(UIStackView *)v46 leadingAnchor];
  v44 = [(CPSPointsOfInterestPickerInfoView *)v154 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:16.0 constant:?];
  v157[1] = v43;
  v42 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
  v41 = [(UIStackView *)v42 trailingAnchor];
  v40 = [(CPSPointsOfInterestPickerInfoView *)v154 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:-48.0 constant:?];
  v157[2] = v39;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:?];
  v30 = v137;
  v137 = v29;
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  *&v31 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  v69 = [(CPSPointsOfInterestPickerInfoView *)v154 middleStackView];
  v68 = [(UIStackView *)v69 topAnchor];
  v67 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
  v66 = [(UIStackView *)v67 bottomAnchor];
  v65 = [v68 constraintGreaterThanOrEqualToAnchor:? constant:?];
  v156[0] = v65;
  v64 = [(CPSPointsOfInterestPickerInfoView *)v154 middleStackView];
  v63 = [(UIStackView *)v64 leadingAnchor];
  v62 = [(CPSPointsOfInterestPickerInfoView *)v154 topStackView];
  v61 = [(UIStackView *)v62 leadingAnchor];
  v60 = [v63 constraintEqualToAnchor:?];
  v156[1] = v60;
  v59 = [(CPSPointsOfInterestPickerInfoView *)v154 middleStackView];
  v58 = [(UIStackView *)v59 trailingAnchor];
  v57 = [(CPSPointsOfInterestPickerInfoView *)v154 trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:-16.0 constant:?];
  v156[2] = v56;
  v55 = [(CPSPointsOfInterestPickerInfoView *)v154 middleStackView];
  v54 = [(UIStackView *)v55 bottomAnchor];
  v53 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
  v52 = [(UIStackView *)v53 topAnchor];
  v51 = [v54 constraintEqualToAnchor:? constant:?];
  v156[3] = v51;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:4];
  v33 = v136;
  v136 = v32;
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  *&v34 = MEMORY[0x277D82BD8](v69).n128_u64[0];
  v82 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
  v81 = [(UIStackView *)v82 leadingAnchor];
  v80 = [(CPSPointsOfInterestPickerInfoView *)v154 leadingAnchor];
  v79 = [v81 constraintEqualToAnchor:10.0 constant:?];
  v155[0] = v79;
  v78 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
  v77 = [(UIStackView *)v78 trailingAnchor];
  v76 = [(CPSPointsOfInterestPickerInfoView *)v154 trailingAnchor];
  v75 = [v77 constraintEqualToAnchor:-10.0 constant:?];
  v155[1] = v75;
  v74 = [(CPSPointsOfInterestPickerInfoView *)v154 bottomStackView];
  v73 = [(UIStackView *)v74 bottomAnchor];
  v72 = [(CPSPointsOfInterestPickerInfoView *)v154 safeAreaLayoutGuide];
  v71 = [v72 bottomAnchor];
  v70 = [v73 constraintEqualToAnchor:?];
  v155[2] = v70;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
  v36 = v135;
  v135 = v35;
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  *&v37 = MEMORY[0x277D82BD8](v82).n128_u64[0];
  [v138 addObjectsFromArray:{v137, v37}];
  [v138 addObjectsFromArray:v135];
  [v138 addObjectsFromArray:v136];
  [MEMORY[0x277CCAAD0] activateConstraints:v138];
  LODWORD(v38) = 1148846080;
  [(UILabel *)v154->_detailsTitle setContentCompressionResistancePriority:1 forAxis:v38];
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

- (void)didSelectButton:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSPointsOfInterestPickerInfoView *)v10 delegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSPointsOfInterestPickerInfoView *)v10 delegate];
    v4 = location[0];
    v5 = [(CPSPointsOfInterestPickerInfoView *)v10 model];
    [(CPSPointsOfInterestPickerInfoDelegate *)v6 actionButtonPressed:v4 forModel:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

- (id)_linearFocusItems
{
  v11 = self;
  v10[1] = a2;
  v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(CPSPointsOfInterestPickerInfoView *)v11 primaryButton];
  v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v8 = [(CPSPointsOfInterestPickerInfoView *)v11 primaryButton];
    [v10[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  v7 = [(CPSPointsOfInterestPickerInfoView *)v11 secondaryButton];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(CPSPointsOfInterestPickerInfoView *)v11 secondaryButton];
    [v10[0] addObject:?];
    MEMORY[0x277D82BD8](v6);
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
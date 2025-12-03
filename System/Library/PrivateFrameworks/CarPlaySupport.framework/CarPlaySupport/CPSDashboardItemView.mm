@interface CPSDashboardItemView
- (CPSButtonDelegate)delegate;
- (CPSDashboardItemView)initWithDashboardButton:(id)button layoutAxis:(unint64_t)axis;
- (void)_buttonTriggered:(id)triggered;
- (void)_setup;
- (void)_touchDown:(id)down;
- (void)_touchEnded:(id)ended;
- (void)focusableItemFocused:(BOOL)focused;
- (void)focusableItemPressed:(BOOL)pressed;
- (void)focusableItemSelected;
- (void)hideSubtitle;
- (void)layoutSubviews;
- (void)setFocusHighlightColor:(id)color;
- (void)setPressed:(BOOL)pressed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSDashboardItemView

- (CPSDashboardItemView)initWithDashboardButton:(id)button layoutAxis:(unint64_t)axis
{
  v233[24] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  axisCopy = axis;
  v4 = selfCopy;
  selfCopy = 0;
  v226.receiver = v4;
  v226.super_class = CPSDashboardItemView;
  selfCopy = [(CPSDashboardItemView *)&v226 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    selfCopy->_layoutAxis = axisCopy;
    objc_storeStrong(&selfCopy->_dashboardButton, location[0]);
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    obj = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [obj layer];
    [layer setCornerRadius:4.0];
    layer2 = [obj layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v6 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
    [(CPSDashboardItemView *)selfCopy addSubview:obj, v6];
    [obj setHidden:1];
    objc_storeStrong(&selfCopy->_focusBackgroundView, obj);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      [MEMORY[0x277CF90E8] defaultStrokeWidth];
      v224 = v7 + 15.0;
      v8 = objc_alloc(MEMORY[0x277CF90E8]);
      v223 = [v8 initWithCornerRadius:*MEMORY[0x277CDA130] cornerCurve:v224];
      [v223 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v223 setHidden:1];
      objc_storeStrong(&selfCopy->_focusEffectView, v223);
      [(CPSDashboardItemView *)selfCopy addSubview:v223];
      objc_storeStrong(&v223, 0);
    }

    v222 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v222 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSDashboardItemView *)selfCopy addSubview:v222];
    objc_storeStrong(&selfCopy->_imageView, v222);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      v221 = objc_alloc_init(MEMORY[0x277CF90D8]);
      [v221 setTranslatesAutoresizingMaskIntoConstraints:0];
      layer3 = [v221 layer];
      [layer3 setCornerRadius:15.0];
      *&v9 = MEMORY[0x277D82BD8](layer3).n128_u64[0];
      layer4 = [v221 layer];
      [layer4 setCornerCurve:*MEMORY[0x277CDA138]];
      *&v10 = MEMORY[0x277D82BD8](layer4).n128_u64[0];
      [v221 setHidden:{1, v10}];
      objc_storeStrong(&selfCopy->_dimmingEffectView, v221);
      [(CPSDashboardItemView *)selfCopy addSubview:v221];
      objc_storeStrong(&v221, 0);
    }

    v220 = objc_alloc_init(CPSAbridgableLabel);
    [v220 setTranslatesAutoresizingMaskIntoConstraints:0];
    v209 = MEMORY[0x277D76938];
    v207 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:?];
    [v220 setFont:?];
    *&v11 = MEMORY[0x277D82BD8](v207).n128_u64[0];
    [(CPSDashboardItemView *)selfCopy addSubview:v220, v11];
    objc_storeStrong(&selfCopy->_titleLabel, v220);
    v219 = objc_alloc_init(CPSAbridgableLabel);
    [v219 setTranslatesAutoresizingMaskIntoConstraints:0];
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    [v219 setTextColor:?];
    v210 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*v209 variant:{256, MEMORY[0x277D82BD8](_carSystemPrimaryColor).n128_f64[0]}];
    [v219 setFont:?];
    *&v12 = MEMORY[0x277D82BD8](v210).n128_u64[0];
    [(CPSDashboardItemView *)selfCopy addSubview:v219, v12];
    objc_storeStrong(&selfCopy->_subtitleLabel, v219);
    v218 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSDashboardItemView *)selfCopy addLayoutGuide:v218];
    if (axisCopy == 1)
    {
      v135 = MEMORY[0x277CCAAD0];
      topAnchor = [(CPSDashboardItemView *)selfCopy topAnchor];
      topAnchor2 = [v222 topAnchor];
      v204 = [topAnchor constraintLessThanOrEqualToAnchor:? constant:?];
      v233[0] = v204;
      topAnchor3 = [(CPSDashboardItemView *)selfCopy topAnchor];
      topAnchor4 = [v218 topAnchor];
      v201 = [topAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[1] = v201;
      bottomAnchor = [(CPSDashboardItemView *)selfCopy bottomAnchor];
      bottomAnchor2 = [v222 bottomAnchor];
      v198 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[2] = v198;
      bottomAnchor3 = [(CPSDashboardItemView *)selfCopy bottomAnchor];
      bottomAnchor4 = [v218 bottomAnchor];
      v195 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[3] = v195;
      heightAnchor = [v222 heightAnchor];
      v193 = [heightAnchor constraintEqualToConstant:?];
      v233[4] = v193;
      widthAnchor = [v222 widthAnchor];
      v191 = [widthAnchor constraintEqualToConstant:40.0];
      v233[5] = v191;
      leadingAnchor = [v222 leadingAnchor];
      leadingAnchor2 = [(CPSDashboardItemView *)selfCopy leadingAnchor];
      v188 = [leadingAnchor constraintEqualToAnchor:? constant:?];
      v233[6] = v188;
      centerYAnchor = [v222 centerYAnchor];
      centerYAnchor2 = [(CPSDashboardItemView *)selfCopy centerYAnchor];
      v185 = [centerYAnchor constraintEqualToAnchor:?];
      v233[7] = v185;
      leadingAnchor3 = [v218 leadingAnchor];
      trailingAnchor = [v222 trailingAnchor];
      v182 = [leadingAnchor3 constraintEqualToAnchor:8.0 constant:?];
      v233[8] = v182;
      centerYAnchor3 = [v218 centerYAnchor];
      centerYAnchor4 = [v222 centerYAnchor];
      v179 = [centerYAnchor3 constraintEqualToAnchor:?];
      v233[9] = v179;
      trailingAnchor2 = [v218 trailingAnchor];
      trailingAnchor3 = [(CPSDashboardItemView *)selfCopy trailingAnchor];
      v176 = [trailingAnchor2 constraintEqualToAnchor:-8.0 constant:?];
      v233[10] = v176;
      topAnchor5 = [v220 topAnchor];
      topAnchor6 = [v218 topAnchor];
      v173 = [topAnchor5 constraintEqualToAnchor:0.0 constant:?];
      v233[11] = v173;
      lastBaselineAnchor = [v220 lastBaselineAnchor];
      firstBaselineAnchor = [v219 firstBaselineAnchor];
      v170 = [lastBaselineAnchor constraintEqualToAnchor:-17.0 constant:?];
      v233[12] = v170;
      bottomAnchor5 = [v219 bottomAnchor];
      bottomAnchor6 = [v218 bottomAnchor];
      v167 = [bottomAnchor5 constraintEqualToAnchor:0.0 constant:?];
      v233[13] = v167;
      leadingAnchor4 = [v220 leadingAnchor];
      leadingAnchor5 = [v218 leadingAnchor];
      v164 = [leadingAnchor4 constraintEqualToAnchor:0.0 constant:?];
      v233[14] = v164;
      trailingAnchor4 = [v220 trailingAnchor];
      trailingAnchor5 = [v218 trailingAnchor];
      v161 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[15] = v161;
      leadingAnchor6 = [v219 leadingAnchor];
      leadingAnchor7 = [v218 leadingAnchor];
      v158 = [leadingAnchor6 constraintEqualToAnchor:0.0 constant:?];
      v233[16] = v158;
      trailingAnchor6 = [v219 trailingAnchor];
      trailingAnchor7 = [v218 trailingAnchor];
      v155 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[17] = v155;
      trailingAnchor8 = [v218 trailingAnchor];
      trailingAnchor9 = [v219 trailingAnchor];
      v152 = [trailingAnchor8 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[18] = v152;
      trailingAnchor10 = [v218 trailingAnchor];
      trailingAnchor11 = [v220 trailingAnchor];
      v149 = [trailingAnchor10 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[19] = v149;
      leadingAnchor8 = [obj leadingAnchor];
      leadingAnchor9 = [v220 leadingAnchor];
      v146 = [leadingAnchor8 constraintEqualToAnchor:? constant:?];
      v233[20] = v146;
      trailingAnchor12 = [obj trailingAnchor];
      trailingAnchor13 = [v220 trailingAnchor];
      v143 = [trailingAnchor12 constraintEqualToAnchor:? constant:?];
      v233[21] = v143;
      topAnchor7 = [obj topAnchor];
      topAnchor8 = [v220 topAnchor];
      v140 = [topAnchor7 constraintEqualToAnchor:-2.0 constant:?];
      v233[22] = v140;
      bottomAnchor7 = [obj bottomAnchor];
      bottomAnchor8 = [v220 bottomAnchor];
      v137 = [bottomAnchor7 constraintEqualToAnchor:2.0 constant:?];
      v233[23] = v137;
      v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:24];
      [v135 activateConstraints:?];
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](bottomAnchor8);
      MEMORY[0x277D82BD8](bottomAnchor7);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](topAnchor8);
      MEMORY[0x277D82BD8](topAnchor7);
      MEMORY[0x277D82BD8](v143);
      MEMORY[0x277D82BD8](trailingAnchor13);
      MEMORY[0x277D82BD8](trailingAnchor12);
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](leadingAnchor9);
      MEMORY[0x277D82BD8](leadingAnchor8);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](trailingAnchor11);
      MEMORY[0x277D82BD8](trailingAnchor10);
      MEMORY[0x277D82BD8](v152);
      MEMORY[0x277D82BD8](trailingAnchor9);
      MEMORY[0x277D82BD8](trailingAnchor8);
      MEMORY[0x277D82BD8](v155);
      MEMORY[0x277D82BD8](trailingAnchor7);
      MEMORY[0x277D82BD8](trailingAnchor6);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](leadingAnchor7);
      MEMORY[0x277D82BD8](leadingAnchor6);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](trailingAnchor5);
      MEMORY[0x277D82BD8](trailingAnchor4);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](leadingAnchor5);
      MEMORY[0x277D82BD8](leadingAnchor4);
      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](bottomAnchor6);
      MEMORY[0x277D82BD8](bottomAnchor5);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](firstBaselineAnchor);
      MEMORY[0x277D82BD8](lastBaselineAnchor);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](topAnchor6);
      MEMORY[0x277D82BD8](topAnchor5);
      MEMORY[0x277D82BD8](v176);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](v179);
      MEMORY[0x277D82BD8](centerYAnchor4);
      MEMORY[0x277D82BD8](centerYAnchor3);
      MEMORY[0x277D82BD8](v182);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](v185);
      MEMORY[0x277D82BD8](centerYAnchor2);
      MEMORY[0x277D82BD8](centerYAnchor);
      MEMORY[0x277D82BD8](v188);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](v191);
      MEMORY[0x277D82BD8](widthAnchor);
      MEMORY[0x277D82BD8](v193);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](v198);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](v201);
      MEMORY[0x277D82BD8](topAnchor4);
      MEMORY[0x277D82BD8](topAnchor3);
      MEMORY[0x277D82BD8](v204);
      MEMORY[0x277D82BD8](topAnchor2);
      v13 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
    }

    else
    {
      trailingAnchor14 = [v220 trailingAnchor];
      leadingAnchor10 = [v219 leadingAnchor];
      v14 = [trailingAnchor14 constraintEqualToAnchor:-4.0 constant:?];
      titleLabelConnectingConstraint = selfCopy->_titleLabelConnectingConstraint;
      selfCopy->_titleLabelConnectingConstraint = v14;
      MEMORY[0x277D82BD8](titleLabelConnectingConstraint);
      MEMORY[0x277D82BD8](leadingAnchor10);
      *&v16 = MEMORY[0x277D82BD8](trailingAnchor14).n128_u64[0];
      v78 = MEMORY[0x277CCAAD0];
      heightAnchor2 = [v222 heightAnchor];
      v133 = [heightAnchor2 constraintEqualToConstant:?];
      v232[0] = v133;
      widthAnchor2 = [v222 widthAnchor];
      v131 = [widthAnchor2 constraintEqualToConstant:30.0];
      v232[1] = v131;
      centerXAnchor = [v222 centerXAnchor];
      centerXAnchor2 = [(CPSDashboardItemView *)selfCopy centerXAnchor];
      v128 = [centerXAnchor constraintEqualToAnchor:?];
      v232[2] = v128;
      topAnchor9 = [v222 topAnchor];
      topAnchor10 = [(CPSDashboardItemView *)selfCopy topAnchor];
      v125 = [topAnchor9 constraintEqualToAnchor:? constant:?];
      v232[3] = v125;
      topAnchor11 = [v218 topAnchor];
      bottomAnchor9 = [v222 bottomAnchor];
      v122 = [topAnchor11 constraintEqualToAnchor:4.0 constant:?];
      v232[4] = v122;
      bottomAnchor10 = [v218 bottomAnchor];
      bottomAnchor11 = [(CPSDashboardItemView *)selfCopy bottomAnchor];
      v119 = [bottomAnchor10 constraintEqualToAnchor:0.0 constant:?];
      v232[5] = v119;
      leadingAnchor11 = [v218 leadingAnchor];
      leadingAnchor12 = [(CPSDashboardItemView *)selfCopy leadingAnchor];
      v116 = [leadingAnchor11 constraintGreaterThanOrEqualToAnchor:?];
      v232[6] = v116;
      centerXAnchor3 = [v218 centerXAnchor];
      centerXAnchor4 = [v222 centerXAnchor];
      v113 = [centerXAnchor3 constraintEqualToAnchor:?];
      v232[7] = v113;
      trailingAnchor15 = [v218 trailingAnchor];
      trailingAnchor16 = [(CPSDashboardItemView *)selfCopy trailingAnchor];
      v110 = [trailingAnchor15 constraintLessThanOrEqualToAnchor:?];
      v232[8] = v110;
      topAnchor12 = [v220 topAnchor];
      topAnchor13 = [v218 topAnchor];
      v107 = [topAnchor12 constraintEqualToAnchor:0.0 constant:?];
      v232[9] = v107;
      bottomAnchor12 = [v220 bottomAnchor];
      bottomAnchor13 = [v218 bottomAnchor];
      v104 = [bottomAnchor12 constraintEqualToAnchor:0.0 constant:?];
      v232[10] = v104;
      leadingAnchor13 = [v220 leadingAnchor];
      leadingAnchor14 = [v218 leadingAnchor];
      v101 = [leadingAnchor13 constraintEqualToAnchor:0.0 constant:?];
      v232[11] = v101;
      v232[12] = selfCopy->_titleLabelConnectingConstraint;
      topAnchor14 = [v219 topAnchor];
      topAnchor15 = [v218 topAnchor];
      v98 = [topAnchor14 constraintEqualToAnchor:0.0 constant:?];
      v232[13] = v98;
      bottomAnchor14 = [v219 bottomAnchor];
      bottomAnchor15 = [v218 bottomAnchor];
      v95 = [bottomAnchor14 constraintEqualToAnchor:0.0 constant:?];
      v232[14] = v95;
      trailingAnchor17 = [v219 trailingAnchor];
      trailingAnchor18 = [v218 trailingAnchor];
      v92 = [trailingAnchor17 constraintEqualToAnchor:0.0 constant:?];
      v232[15] = v92;
      leadingAnchor15 = [obj leadingAnchor];
      leadingAnchor16 = [v218 leadingAnchor];
      v89 = [leadingAnchor15 constraintEqualToAnchor:? constant:?];
      v232[16] = v89;
      trailingAnchor19 = [obj trailingAnchor];
      trailingAnchor20 = [v218 trailingAnchor];
      v86 = [trailingAnchor19 constraintEqualToAnchor:? constant:?];
      v232[17] = v86;
      topAnchor16 = [obj topAnchor];
      topAnchor17 = [v218 topAnchor];
      v83 = [topAnchor16 constraintEqualToAnchor:-2.0 constant:?];
      v232[18] = v83;
      bottomAnchor16 = [obj bottomAnchor];
      bottomAnchor17 = [v218 bottomAnchor];
      v80 = [bottomAnchor16 constraintEqualToAnchor:2.0 constant:?];
      v232[19] = v80;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:20];
      [v78 activateConstraints:?];
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](bottomAnchor17);
      MEMORY[0x277D82BD8](bottomAnchor16);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](topAnchor17);
      MEMORY[0x277D82BD8](topAnchor16);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](trailingAnchor20);
      MEMORY[0x277D82BD8](trailingAnchor19);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](leadingAnchor16);
      MEMORY[0x277D82BD8](leadingAnchor15);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](trailingAnchor18);
      MEMORY[0x277D82BD8](trailingAnchor17);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](bottomAnchor15);
      MEMORY[0x277D82BD8](bottomAnchor14);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](topAnchor15);
      MEMORY[0x277D82BD8](topAnchor14);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](leadingAnchor14);
      MEMORY[0x277D82BD8](leadingAnchor13);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](bottomAnchor13);
      MEMORY[0x277D82BD8](bottomAnchor12);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](topAnchor13);
      MEMORY[0x277D82BD8](topAnchor12);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](trailingAnchor16);
      MEMORY[0x277D82BD8](trailingAnchor15);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](centerXAnchor4);
      MEMORY[0x277D82BD8](centerXAnchor3);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](leadingAnchor12);
      MEMORY[0x277D82BD8](leadingAnchor11);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](bottomAnchor11);
      MEMORY[0x277D82BD8](bottomAnchor10);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](bottomAnchor9);
      MEMORY[0x277D82BD8](topAnchor11);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](topAnchor10);
      MEMORY[0x277D82BD8](topAnchor9);
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](centerXAnchor2);
      MEMORY[0x277D82BD8](centerXAnchor);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](widthAnchor2);
      MEMORY[0x277D82BD8](v133);
      v13 = MEMORY[0x277D82BD8](heightAnchor2).n128_u64[0];
    }

    v217 = [MEMORY[0x277D75220] buttonWithType:{0, *&v13}];
    [v217 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v217 addTarget:selfCopy action:sel__buttonTriggered_ forControlEvents:0x2000];
    [v217 addTarget:selfCopy action:sel__touchDown_ forControlEvents:1];
    [v217 addTarget:selfCopy action:sel__touchEnded_ forControlEvents:456];
    [(CPSDashboardItemView *)selfCopy addSubview:v217];
    objc_storeStrong(&selfCopy->_button, v217);
    v62 = MEMORY[0x277CCAAD0];
    topAnchor18 = [(CPSDashboardItemView *)selfCopy topAnchor];
    topAnchor19 = [v217 topAnchor];
    v73 = [topAnchor18 constraintEqualToAnchor:?];
    v231[0] = v73;
    bottomAnchor18 = [(CPSDashboardItemView *)selfCopy bottomAnchor];
    bottomAnchor19 = [v217 bottomAnchor];
    v70 = [bottomAnchor18 constraintEqualToAnchor:?];
    v231[1] = v70;
    leftAnchor = [(CPSDashboardItemView *)selfCopy leftAnchor];
    leftAnchor2 = [v217 leftAnchor];
    v67 = [leftAnchor constraintEqualToAnchor:?];
    v231[2] = v67;
    rightAnchor = [(CPSDashboardItemView *)selfCopy rightAnchor];
    rightAnchor2 = [v217 rightAnchor];
    v64 = [rightAnchor constraintEqualToAnchor:?];
    v231[3] = v64;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:4];
    [v62 activateConstraints:?];
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](bottomAnchor19);
    MEMORY[0x277D82BD8](bottomAnchor18);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](topAnchor19);
    MEMORY[0x277D82BD8](topAnchor18);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      [MEMORY[0x277CF90E8] defaultStrokeWidth];
      v216 = 2.0 * v17;
      v20 = MEMORY[0x277CCAAD0];
      focusEffectView = [(CPSDashboardItemView *)selfCopy focusEffectView];
      centerXAnchor5 = [(CPUIFocusEffectView *)focusEffectView centerXAnchor];
      imageView = [(CPSDashboardItemView *)selfCopy imageView];
      centerXAnchor6 = [(UIImageView *)imageView centerXAnchor];
      v57 = [centerXAnchor5 constraintEqualToAnchor:?];
      v230[0] = v57;
      focusEffectView2 = [(CPSDashboardItemView *)selfCopy focusEffectView];
      centerYAnchor5 = [(CPUIFocusEffectView *)focusEffectView2 centerYAnchor];
      imageView2 = [(CPSDashboardItemView *)selfCopy imageView];
      centerYAnchor6 = [(UIImageView *)imageView2 centerYAnchor];
      v52 = [centerYAnchor5 constraintEqualToAnchor:?];
      v230[1] = v52;
      focusEffectView3 = [(CPSDashboardItemView *)selfCopy focusEffectView];
      widthAnchor3 = [(CPUIFocusEffectView *)focusEffectView3 widthAnchor];
      imageView3 = [(CPSDashboardItemView *)selfCopy imageView];
      widthAnchor4 = [(UIImageView *)imageView3 widthAnchor];
      v47 = [widthAnchor3 constraintEqualToAnchor:v216 constant:?];
      v230[2] = v47;
      focusEffectView4 = [(CPSDashboardItemView *)selfCopy focusEffectView];
      heightAnchor3 = [(CPUIFocusEffectView *)focusEffectView4 heightAnchor];
      imageView4 = [(CPSDashboardItemView *)selfCopy imageView];
      heightAnchor4 = [(UIImageView *)imageView4 heightAnchor];
      v42 = [heightAnchor3 constraintEqualToAnchor:v216 constant:?];
      v230[3] = v42;
      dimmingEffectView = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
      centerXAnchor7 = [(CPUIDimmingEffectView *)dimmingEffectView centerXAnchor];
      imageView5 = [(CPSDashboardItemView *)selfCopy imageView];
      centerXAnchor8 = [(UIImageView *)imageView5 centerXAnchor];
      v37 = [centerXAnchor7 constraintEqualToAnchor:?];
      v230[4] = v37;
      dimmingEffectView2 = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
      centerYAnchor7 = [(CPUIDimmingEffectView *)dimmingEffectView2 centerYAnchor];
      imageView6 = [(CPSDashboardItemView *)selfCopy imageView];
      centerYAnchor8 = [(UIImageView *)imageView6 centerYAnchor];
      v32 = [centerYAnchor7 constraintEqualToAnchor:?];
      v230[5] = v32;
      dimmingEffectView3 = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
      widthAnchor5 = [(CPUIDimmingEffectView *)dimmingEffectView3 widthAnchor];
      imageView7 = [(CPSDashboardItemView *)selfCopy imageView];
      widthAnchor6 = [(UIImageView *)imageView7 widthAnchor];
      v27 = [widthAnchor5 constraintEqualToAnchor:?];
      v230[6] = v27;
      dimmingEffectView4 = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
      heightAnchor5 = [(CPUIDimmingEffectView *)dimmingEffectView4 heightAnchor];
      imageView8 = [(CPSDashboardItemView *)selfCopy imageView];
      heightAnchor6 = [(UIImageView *)imageView8 heightAnchor];
      v22 = [heightAnchor5 constraintEqualToAnchor:?];
      v230[7] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:8];
      [v20 activateConstraints:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](heightAnchor6);
      MEMORY[0x277D82BD8](imageView8);
      MEMORY[0x277D82BD8](heightAnchor5);
      MEMORY[0x277D82BD8](dimmingEffectView4);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](widthAnchor6);
      MEMORY[0x277D82BD8](imageView7);
      MEMORY[0x277D82BD8](widthAnchor5);
      MEMORY[0x277D82BD8](dimmingEffectView3);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](centerYAnchor8);
      MEMORY[0x277D82BD8](imageView6);
      MEMORY[0x277D82BD8](centerYAnchor7);
      MEMORY[0x277D82BD8](dimmingEffectView2);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](centerXAnchor8);
      MEMORY[0x277D82BD8](imageView5);
      MEMORY[0x277D82BD8](centerXAnchor7);
      MEMORY[0x277D82BD8](dimmingEffectView);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](heightAnchor4);
      MEMORY[0x277D82BD8](imageView4);
      MEMORY[0x277D82BD8](heightAnchor3);
      MEMORY[0x277D82BD8](focusEffectView4);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](widthAnchor4);
      MEMORY[0x277D82BD8](imageView3);
      MEMORY[0x277D82BD8](widthAnchor3);
      MEMORY[0x277D82BD8](focusEffectView3);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](centerYAnchor6);
      MEMORY[0x277D82BD8](imageView2);
      MEMORY[0x277D82BD8](centerYAnchor5);
      MEMORY[0x277D82BD8](focusEffectView2);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](centerXAnchor6);
      MEMORY[0x277D82BD8](imageView);
      MEMORY[0x277D82BD8](centerXAnchor5);
      MEMORY[0x277D82BD8](focusEffectView);
    }

    [(CPSDashboardItemView *)selfCopy _setup];
    objc_storeStrong(&v217, 0);
    objc_storeStrong(&v218, 0);
    objc_storeStrong(&v219, 0);
    objc_storeStrong(&v220, 0);
    objc_storeStrong(&v222, 0);
    objc_storeStrong(&obj, 0);
  }

  v19 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)setFocusHighlightColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_focusHighlightColor, location[0]);
  v3 = location[0];
  focusBackgroundView = [(CPSDashboardItemView *)selfCopy focusBackgroundView];
  [(UIView *)focusBackgroundView setBackgroundColor:v3];
  MEMORY[0x277D82BD8](focusBackgroundView);
  objc_storeStrong(location, 0);
}

- (void)_setup
{
  imageView = [(CPSDashboardItemView *)self imageView];
  dashboardButton = [(CPSDashboardItemView *)self dashboardButton];
  image = [(CPDashboardButton *)dashboardButton image];
  [(UIImageView *)imageView setImage:?];
  MEMORY[0x277D82BD8](image);
  MEMORY[0x277D82BD8](dashboardButton);
  titleLabel = [(CPSDashboardItemView *)self titleLabel];
  dashboardButton2 = [(CPSDashboardItemView *)self dashboardButton];
  titleVariants = [(CPDashboardButton *)dashboardButton2 titleVariants];
  [(CPUIAbridgableLabel *)titleLabel setTextVariants:?];
  MEMORY[0x277D82BD8](titleVariants);
  MEMORY[0x277D82BD8](dashboardButton2);
  subtitleLabel = [(CPSDashboardItemView *)self subtitleLabel];
  dashboardButton3 = [(CPSDashboardItemView *)self dashboardButton];
  subtitleVariants = [(CPDashboardButton *)dashboardButton3 subtitleVariants];
  [(CPUIAbridgableLabel *)subtitleLabel setTextVariants:?];
  MEMORY[0x277D82BD8](subtitleVariants);
  MEMORY[0x277D82BD8](dashboardButton3);
  MEMORY[0x277D82BD8](subtitleLabel);
}

- (void)layoutSubviews
{
  v35[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = CPSDashboardItemView;
  [(CPSDashboardItemView *)&v32 layoutSubviews];
  titleLabelConnectingConstraint = [(CPSDashboardItemView *)selfCopy titleLabelConnectingConstraint];
  [(NSLayoutConstraint *)titleLabelConnectingConstraint setConstant:-4.0];
  *&v2 = MEMORY[0x277D82BD8](titleLabelConnectingConstraint).n128_u64[0];
  subtitleWidthConstraint = [(CPSDashboardItemView *)selfCopy subtitleWidthConstraint];
  v3 = MEMORY[0x277D82BD8](subtitleWidthConstraint).n128_u64[0];
  if (subtitleWidthConstraint)
  {
    v25 = MEMORY[0x277CCAAD0];
    subtitleWidthConstraint2 = [(CPSDashboardItemView *)selfCopy subtitleWidthConstraint];
    v35[0] = subtitleWidthConstraint2;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    [v25 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v26);
    v3 = MEMORY[0x277D82BD8](subtitleWidthConstraint2).n128_u64[0];
  }

  subtitleLabel = [(CPSDashboardItemView *)selfCopy subtitleLabel];
  textVariants = [(CPUIAbridgableLabel *)subtitleLabel textVariants];
  v24 = [(NSArray *)textVariants count]== 0;
  MEMORY[0x277D82BD8](textVariants);
  *&v4 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
  v31 = v24;
  if (v24)
  {
    goto LABEL_8;
  }

  subtitleLabel2 = [(CPSDashboardItemView *)selfCopy subtitleLabel];
  [(CPSAbridgableLabel *)subtitleLabel2 setHidden:0];
  *&v5 = MEMORY[0x277D82BD8](subtitleLabel2).n128_u64[0];
  titleLabel = [(CPSDashboardItemView *)selfCopy titleLabel];
  [(CPSAbridgableLabel *)titleLabel sizeToFit];
  *&v6 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  subtitleLabel3 = [(CPSDashboardItemView *)selfCopy subtitleLabel];
  [(CPSAbridgableLabel *)subtitleLabel3 sizeToFit];
  *&v7 = MEMORY[0x277D82BD8](subtitleLabel3).n128_u64[0];
  subtitleLabel4 = [(CPSDashboardItemView *)selfCopy subtitleLabel];
  [(CPSAbridgableLabel *)subtitleLabel4 layoutIfNeeded];
  *&v8 = MEMORY[0x277D82BD8](subtitleLabel4).n128_u64[0];
  titleLabel2 = [(CPSDashboardItemView *)selfCopy titleLabel];
  [(CPSAbridgableLabel *)titleLabel2 layoutIfNeeded];
  *&v9 = MEMORY[0x277D82BD8](titleLabel2).n128_u64[0];
  if ([(CPSDashboardItemView *)selfCopy layoutAxis]== 2)
  {
    [(CPSDashboardItemView *)selfCopy bounds];
    v30 = v10;
    titleLabel3 = [(CPSDashboardItemView *)selfCopy titleLabel];
    [(CPSAbridgableLabel *)titleLabel3 intrinsicContentSize];
    v14 = v11 + 4.0;
    subtitleLabel5 = [(CPSDashboardItemView *)selfCopy subtitleLabel];
    [(CPSAbridgableLabel *)subtitleLabel5 intrinsicContentSize];
    v16 = v14 + v12;
    MEMORY[0x277D82BD8](subtitleLabel5);
    MEMORY[0x277D82BD8](titleLabel3);
    v4 = v16;
    if (v16 > v30)
    {
      v31 = 1;
    }
  }

  if (v31)
  {
LABEL_8:
    [(CPSDashboardItemView *)selfCopy hideSubtitle];
  }
}

- (void)hideSubtitle
{
  v14[1] = *MEMORY[0x277D85DE8];
  titleLabelConnectingConstraint = [(CPSDashboardItemView *)self titleLabelConnectingConstraint];
  [(NSLayoutConstraint *)titleLabelConnectingConstraint setConstant:?];
  subtitleLabel = [(CPSDashboardItemView *)self subtitleLabel];
  widthAnchor = [(CPSAbridgableLabel *)subtitleLabel widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:0.0];
  [(CPSDashboardItemView *)self setSubtitleWidthConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](widthAnchor);
  subtitleWidthConstraint = [(CPSDashboardItemView *)self subtitleWidthConstraint];
  LODWORD(v2) = 1148846080;
  [(NSLayoutConstraint *)subtitleWidthConstraint setPriority:v2];
  *&v3 = MEMORY[0x277D82BD8](subtitleWidthConstraint).n128_u64[0];
  v9 = MEMORY[0x277CCAAD0];
  subtitleWidthConstraint2 = [(CPSDashboardItemView *)self subtitleWidthConstraint];
  v14[0] = subtitleWidthConstraint2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  subtitleLabel2 = [(CPSDashboardItemView *)self subtitleLabel];
  [(CPSAbridgableLabel *)subtitleLabel2 setHidden:1];
  MEMORY[0x277D82BD8](subtitleLabel2);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSDashboardItemView;
  [(CPSDashboardItemView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSDashboardItemView *)selfCopy _setup];
  objc_storeStrong(location, 0);
}

- (void)focusableItemPressed:(BOOL)pressed
{
  [(CPSDashboardItemView *)self setPressed:pressed];
  if ((CPUIIsUIRefreshFeatureEnabled() & 1) == 0)
  {
    if (pressed)
    {
      [(CPSDashboardItemView *)self setAlpha:0.2];
    }

    else
    {
      [(CPSDashboardItemView *)self setAlpha:1.0];
    }
  }
}

- (void)focusableItemSelected
{
  delegate = [(CPSDashboardItemView *)self delegate];
  dashboardButton = [(CPSDashboardItemView *)self dashboardButton];
  [(CPSButtonDelegate *)delegate didSelectButton:?];
  MEMORY[0x277D82BD8](dashboardButton);
  MEMORY[0x277D82BD8](delegate);
}

- (void)focusableItemFocused:(BOOL)focused
{
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    focusEffectView = [(CPSDashboardItemView *)self focusEffectView];
    [(CPUIFocusEffectView *)focusEffectView setHidden:!focused];
    MEMORY[0x277D82BD8](focusEffectView);
  }

  else if (focused)
  {
    focusBackgroundView = [(CPSDashboardItemView *)self focusBackgroundView];
    [(UIView *)focusBackgroundView setHidden:0];
    titleLabel = [(CPSDashboardItemView *)self titleLabel];
    _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)titleLabel setTextColor:?];
    MEMORY[0x277D82BD8](_carSystemFocusLabelColor);
    if ([(CPSDashboardItemView *)self layoutAxis]== 2)
    {
      subtitleLabel = [(CPSDashboardItemView *)self subtitleLabel];
      _carSystemFocusPrimaryColor = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
      [(CPSAbridgableLabel *)subtitleLabel setTextColor:?];
      MEMORY[0x277D82BD8](_carSystemFocusPrimaryColor);
      MEMORY[0x277D82BD8](subtitleLabel);
    }
  }

  else
  {
    focusBackgroundView2 = [(CPSDashboardItemView *)self focusBackgroundView];
    [(UIView *)focusBackgroundView2 setHidden:1];
    titleLabel2 = [(CPSDashboardItemView *)self titleLabel];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)titleLabel2 setTextColor:?];
    MEMORY[0x277D82BD8](labelColor);
    if ([(CPSDashboardItemView *)self layoutAxis]== 2)
    {
      subtitleLabel2 = [(CPSDashboardItemView *)self subtitleLabel];
      _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
      [(CPSAbridgableLabel *)subtitleLabel2 setTextColor:?];
      MEMORY[0x277D82BD8](_carSystemPrimaryColor);
      MEMORY[0x277D82BD8](subtitleLabel2);
    }
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(CPUIFocusEffectView *)self->_focusEffectView setPressed:pressed];
  }
}

- (void)_touchDown:(id)down
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, down);
  [(CPSDashboardItemView *)selfCopy setPressed:1];
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    dimmingEffectView = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
    [(CPUIDimmingEffectView *)dimmingEffectView setHidden:0];
    MEMORY[0x277D82BD8](dimmingEffectView);
  }

  else
  {
    [(CPSDashboardItemView *)selfCopy setAlpha:0.2];
  }

  objc_storeStrong(location, 0);
}

- (void)_touchEnded:(id)ended
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ended);
  [(CPSDashboardItemView *)selfCopy setPressed:0];
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    dimmingEffectView = [(CPSDashboardItemView *)selfCopy dimmingEffectView];
    [(CPUIDimmingEffectView *)dimmingEffectView setHidden:1];
    MEMORY[0x277D82BD8](dimmingEffectView);
  }

  else
  {
    [(CPSDashboardItemView *)selfCopy setAlpha:1.0];
  }

  objc_storeStrong(location, 0);
}

- (void)_buttonTriggered:(id)triggered
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, triggered);
  delegate = [(CPSDashboardItemView *)selfCopy delegate];
  dashboardButton = [(CPSDashboardItemView *)selfCopy dashboardButton];
  [(CPSButtonDelegate *)delegate didSelectButton:?];
  MEMORY[0x277D82BD8](dashboardButton);
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (CPSButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
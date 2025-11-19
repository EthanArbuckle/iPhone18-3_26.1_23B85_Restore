@interface CPSDashboardItemView
- (CPSButtonDelegate)delegate;
- (CPSDashboardItemView)initWithDashboardButton:(id)a3 layoutAxis:(unint64_t)a4;
- (void)_buttonTriggered:(id)a3;
- (void)_setup;
- (void)_touchDown:(id)a3;
- (void)_touchEnded:(id)a3;
- (void)focusableItemFocused:(BOOL)a3;
- (void)focusableItemPressed:(BOOL)a3;
- (void)focusableItemSelected;
- (void)hideSubtitle;
- (void)layoutSubviews;
- (void)setFocusHighlightColor:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSDashboardItemView

- (CPSDashboardItemView)initWithDashboardButton:(id)a3 layoutAxis:(unint64_t)a4
{
  v233[24] = *MEMORY[0x277D85DE8];
  v229 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v227 = a4;
  v4 = v229;
  v229 = 0;
  v226.receiver = v4;
  v226.super_class = CPSDashboardItemView;
  v229 = [(CPSDashboardItemView *)&v226 init];
  objc_storeStrong(&v229, v229);
  if (v229)
  {
    v229->_layoutAxis = v227;
    objc_storeStrong(&v229->_dashboardButton, location[0]);
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    obj = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    v213 = [obj layer];
    [v213 setCornerRadius:4.0];
    v214 = [obj layer];
    [v214 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v6 = MEMORY[0x277D82BD8](v214).n128_u64[0];
    [(CPSDashboardItemView *)v229 addSubview:obj, v6];
    [obj setHidden:1];
    objc_storeStrong(&v229->_focusBackgroundView, obj);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      [MEMORY[0x277CF90E8] defaultStrokeWidth];
      v224 = v7 + 15.0;
      v8 = objc_alloc(MEMORY[0x277CF90E8]);
      v223 = [v8 initWithCornerRadius:*MEMORY[0x277CDA130] cornerCurve:v224];
      [v223 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v223 setHidden:1];
      objc_storeStrong(&v229->_focusEffectView, v223);
      [(CPSDashboardItemView *)v229 addSubview:v223];
      objc_storeStrong(&v223, 0);
    }

    v222 = objc_alloc_init(MEMORY[0x277D755E8]);
    [v222 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSDashboardItemView *)v229 addSubview:v222];
    objc_storeStrong(&v229->_imageView, v222);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      v221 = objc_alloc_init(MEMORY[0x277CF90D8]);
      [v221 setTranslatesAutoresizingMaskIntoConstraints:0];
      v211 = [v221 layer];
      [v211 setCornerRadius:15.0];
      *&v9 = MEMORY[0x277D82BD8](v211).n128_u64[0];
      v212 = [v221 layer];
      [v212 setCornerCurve:*MEMORY[0x277CDA138]];
      *&v10 = MEMORY[0x277D82BD8](v212).n128_u64[0];
      [v221 setHidden:{1, v10}];
      objc_storeStrong(&v229->_dimmingEffectView, v221);
      [(CPSDashboardItemView *)v229 addSubview:v221];
      objc_storeStrong(&v221, 0);
    }

    v220 = objc_alloc_init(CPSAbridgableLabel);
    [v220 setTranslatesAutoresizingMaskIntoConstraints:0];
    v209 = MEMORY[0x277D76938];
    v207 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:?];
    [v220 setFont:?];
    *&v11 = MEMORY[0x277D82BD8](v207).n128_u64[0];
    [(CPSDashboardItemView *)v229 addSubview:v220, v11];
    objc_storeStrong(&v229->_titleLabel, v220);
    v219 = objc_alloc_init(CPSAbridgableLabel);
    [v219 setTranslatesAutoresizingMaskIntoConstraints:0];
    v208 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    [v219 setTextColor:?];
    v210 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*v209 variant:{256, MEMORY[0x277D82BD8](v208).n128_f64[0]}];
    [v219 setFont:?];
    *&v12 = MEMORY[0x277D82BD8](v210).n128_u64[0];
    [(CPSDashboardItemView *)v229 addSubview:v219, v12];
    objc_storeStrong(&v229->_subtitleLabel, v219);
    v218 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSDashboardItemView *)v229 addLayoutGuide:v218];
    if (v227 == 1)
    {
      v135 = MEMORY[0x277CCAAD0];
      v206 = [(CPSDashboardItemView *)v229 topAnchor];
      v205 = [v222 topAnchor];
      v204 = [v206 constraintLessThanOrEqualToAnchor:? constant:?];
      v233[0] = v204;
      v203 = [(CPSDashboardItemView *)v229 topAnchor];
      v202 = [v218 topAnchor];
      v201 = [v203 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[1] = v201;
      v200 = [(CPSDashboardItemView *)v229 bottomAnchor];
      v199 = [v222 bottomAnchor];
      v198 = [v200 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[2] = v198;
      v197 = [(CPSDashboardItemView *)v229 bottomAnchor];
      v196 = [v218 bottomAnchor];
      v195 = [v197 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[3] = v195;
      v194 = [v222 heightAnchor];
      v193 = [v194 constraintEqualToConstant:?];
      v233[4] = v193;
      v192 = [v222 widthAnchor];
      v191 = [v192 constraintEqualToConstant:40.0];
      v233[5] = v191;
      v190 = [v222 leadingAnchor];
      v189 = [(CPSDashboardItemView *)v229 leadingAnchor];
      v188 = [v190 constraintEqualToAnchor:? constant:?];
      v233[6] = v188;
      v187 = [v222 centerYAnchor];
      v186 = [(CPSDashboardItemView *)v229 centerYAnchor];
      v185 = [v187 constraintEqualToAnchor:?];
      v233[7] = v185;
      v184 = [v218 leadingAnchor];
      v183 = [v222 trailingAnchor];
      v182 = [v184 constraintEqualToAnchor:8.0 constant:?];
      v233[8] = v182;
      v181 = [v218 centerYAnchor];
      v180 = [v222 centerYAnchor];
      v179 = [v181 constraintEqualToAnchor:?];
      v233[9] = v179;
      v178 = [v218 trailingAnchor];
      v177 = [(CPSDashboardItemView *)v229 trailingAnchor];
      v176 = [v178 constraintEqualToAnchor:-8.0 constant:?];
      v233[10] = v176;
      v175 = [v220 topAnchor];
      v174 = [v218 topAnchor];
      v173 = [v175 constraintEqualToAnchor:0.0 constant:?];
      v233[11] = v173;
      v172 = [v220 lastBaselineAnchor];
      v171 = [v219 firstBaselineAnchor];
      v170 = [v172 constraintEqualToAnchor:-17.0 constant:?];
      v233[12] = v170;
      v169 = [v219 bottomAnchor];
      v168 = [v218 bottomAnchor];
      v167 = [v169 constraintEqualToAnchor:0.0 constant:?];
      v233[13] = v167;
      v166 = [v220 leadingAnchor];
      v165 = [v218 leadingAnchor];
      v164 = [v166 constraintEqualToAnchor:0.0 constant:?];
      v233[14] = v164;
      v163 = [v220 trailingAnchor];
      v162 = [v218 trailingAnchor];
      v161 = [v163 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[15] = v161;
      v160 = [v219 leadingAnchor];
      v159 = [v218 leadingAnchor];
      v158 = [v160 constraintEqualToAnchor:0.0 constant:?];
      v233[16] = v158;
      v157 = [v219 trailingAnchor];
      v156 = [v218 trailingAnchor];
      v155 = [v157 constraintLessThanOrEqualToAnchor:0.0 constant:?];
      v233[17] = v155;
      v154 = [v218 trailingAnchor];
      v153 = [v219 trailingAnchor];
      v152 = [v154 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[18] = v152;
      v151 = [v218 trailingAnchor];
      v150 = [v220 trailingAnchor];
      v149 = [v151 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
      v233[19] = v149;
      v148 = [obj leadingAnchor];
      v147 = [v220 leadingAnchor];
      v146 = [v148 constraintEqualToAnchor:? constant:?];
      v233[20] = v146;
      v145 = [obj trailingAnchor];
      v144 = [v220 trailingAnchor];
      v143 = [v145 constraintEqualToAnchor:? constant:?];
      v233[21] = v143;
      v142 = [obj topAnchor];
      v141 = [v220 topAnchor];
      v140 = [v142 constraintEqualToAnchor:-2.0 constant:?];
      v233[22] = v140;
      v139 = [obj bottomAnchor];
      v138 = [v220 bottomAnchor];
      v137 = [v139 constraintEqualToAnchor:2.0 constant:?];
      v233[23] = v137;
      v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:24];
      [v135 activateConstraints:?];
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v141);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v143);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v152);
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v155);
      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](v157);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v160);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v162);
      MEMORY[0x277D82BD8](v163);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v165);
      MEMORY[0x277D82BD8](v166);
      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](v168);
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v171);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v175);
      MEMORY[0x277D82BD8](v176);
      MEMORY[0x277D82BD8](v177);
      MEMORY[0x277D82BD8](v178);
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
      MEMORY[0x277D82BD8](v192);
      MEMORY[0x277D82BD8](v193);
      MEMORY[0x277D82BD8](v194);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](v196);
      MEMORY[0x277D82BD8](v197);
      MEMORY[0x277D82BD8](v198);
      MEMORY[0x277D82BD8](v199);
      MEMORY[0x277D82BD8](v200);
      MEMORY[0x277D82BD8](v201);
      MEMORY[0x277D82BD8](v202);
      MEMORY[0x277D82BD8](v203);
      MEMORY[0x277D82BD8](v204);
      MEMORY[0x277D82BD8](v205);
      v13 = MEMORY[0x277D82BD8](v206).n128_u64[0];
    }

    else
    {
      v77 = [v220 trailingAnchor];
      v76 = [v219 leadingAnchor];
      v14 = [v77 constraintEqualToAnchor:-4.0 constant:?];
      titleLabelConnectingConstraint = v229->_titleLabelConnectingConstraint;
      v229->_titleLabelConnectingConstraint = v14;
      MEMORY[0x277D82BD8](titleLabelConnectingConstraint);
      MEMORY[0x277D82BD8](v76);
      *&v16 = MEMORY[0x277D82BD8](v77).n128_u64[0];
      v78 = MEMORY[0x277CCAAD0];
      v134 = [v222 heightAnchor];
      v133 = [v134 constraintEqualToConstant:?];
      v232[0] = v133;
      v132 = [v222 widthAnchor];
      v131 = [v132 constraintEqualToConstant:30.0];
      v232[1] = v131;
      v130 = [v222 centerXAnchor];
      v129 = [(CPSDashboardItemView *)v229 centerXAnchor];
      v128 = [v130 constraintEqualToAnchor:?];
      v232[2] = v128;
      v127 = [v222 topAnchor];
      v126 = [(CPSDashboardItemView *)v229 topAnchor];
      v125 = [v127 constraintEqualToAnchor:? constant:?];
      v232[3] = v125;
      v124 = [v218 topAnchor];
      v123 = [v222 bottomAnchor];
      v122 = [v124 constraintEqualToAnchor:4.0 constant:?];
      v232[4] = v122;
      v121 = [v218 bottomAnchor];
      v120 = [(CPSDashboardItemView *)v229 bottomAnchor];
      v119 = [v121 constraintEqualToAnchor:0.0 constant:?];
      v232[5] = v119;
      v118 = [v218 leadingAnchor];
      v117 = [(CPSDashboardItemView *)v229 leadingAnchor];
      v116 = [v118 constraintGreaterThanOrEqualToAnchor:?];
      v232[6] = v116;
      v115 = [v218 centerXAnchor];
      v114 = [v222 centerXAnchor];
      v113 = [v115 constraintEqualToAnchor:?];
      v232[7] = v113;
      v112 = [v218 trailingAnchor];
      v111 = [(CPSDashboardItemView *)v229 trailingAnchor];
      v110 = [v112 constraintLessThanOrEqualToAnchor:?];
      v232[8] = v110;
      v109 = [v220 topAnchor];
      v108 = [v218 topAnchor];
      v107 = [v109 constraintEqualToAnchor:0.0 constant:?];
      v232[9] = v107;
      v106 = [v220 bottomAnchor];
      v105 = [v218 bottomAnchor];
      v104 = [v106 constraintEqualToAnchor:0.0 constant:?];
      v232[10] = v104;
      v103 = [v220 leadingAnchor];
      v102 = [v218 leadingAnchor];
      v101 = [v103 constraintEqualToAnchor:0.0 constant:?];
      v232[11] = v101;
      v232[12] = v229->_titleLabelConnectingConstraint;
      v100 = [v219 topAnchor];
      v99 = [v218 topAnchor];
      v98 = [v100 constraintEqualToAnchor:0.0 constant:?];
      v232[13] = v98;
      v97 = [v219 bottomAnchor];
      v96 = [v218 bottomAnchor];
      v95 = [v97 constraintEqualToAnchor:0.0 constant:?];
      v232[14] = v95;
      v94 = [v219 trailingAnchor];
      v93 = [v218 trailingAnchor];
      v92 = [v94 constraintEqualToAnchor:0.0 constant:?];
      v232[15] = v92;
      v91 = [obj leadingAnchor];
      v90 = [v218 leadingAnchor];
      v89 = [v91 constraintEqualToAnchor:? constant:?];
      v232[16] = v89;
      v88 = [obj trailingAnchor];
      v87 = [v218 trailingAnchor];
      v86 = [v88 constraintEqualToAnchor:? constant:?];
      v232[17] = v86;
      v85 = [obj topAnchor];
      v84 = [v218 topAnchor];
      v83 = [v85 constraintEqualToAnchor:-2.0 constant:?];
      v232[18] = v83;
      v82 = [obj bottomAnchor];
      v81 = [v218 bottomAnchor];
      v80 = [v82 constraintEqualToAnchor:2.0 constant:?];
      v232[19] = v80;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:20];
      [v78 activateConstraints:?];
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v88);
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
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v107);
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
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v126);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v128);
      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v133);
      v13 = MEMORY[0x277D82BD8](v134).n128_u64[0];
    }

    v217 = [MEMORY[0x277D75220] buttonWithType:{0, *&v13}];
    [v217 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v217 addTarget:v229 action:sel__buttonTriggered_ forControlEvents:0x2000];
    [v217 addTarget:v229 action:sel__touchDown_ forControlEvents:1];
    [v217 addTarget:v229 action:sel__touchEnded_ forControlEvents:456];
    [(CPSDashboardItemView *)v229 addSubview:v217];
    objc_storeStrong(&v229->_button, v217);
    v62 = MEMORY[0x277CCAAD0];
    v75 = [(CPSDashboardItemView *)v229 topAnchor];
    v74 = [v217 topAnchor];
    v73 = [v75 constraintEqualToAnchor:?];
    v231[0] = v73;
    v72 = [(CPSDashboardItemView *)v229 bottomAnchor];
    v71 = [v217 bottomAnchor];
    v70 = [v72 constraintEqualToAnchor:?];
    v231[1] = v70;
    v69 = [(CPSDashboardItemView *)v229 leftAnchor];
    v68 = [v217 leftAnchor];
    v67 = [v69 constraintEqualToAnchor:?];
    v231[2] = v67;
    v66 = [(CPSDashboardItemView *)v229 rightAnchor];
    v65 = [v217 rightAnchor];
    v64 = [v66 constraintEqualToAnchor:?];
    v231[3] = v64;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:4];
    [v62 activateConstraints:?];
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    if (CPUIIsUIRefreshFeatureEnabled())
    {
      [MEMORY[0x277CF90E8] defaultStrokeWidth];
      v216 = 2.0 * v17;
      v20 = MEMORY[0x277CCAAD0];
      v61 = [(CPSDashboardItemView *)v229 focusEffectView];
      v60 = [(CPUIFocusEffectView *)v61 centerXAnchor];
      v59 = [(CPSDashboardItemView *)v229 imageView];
      v58 = [(UIImageView *)v59 centerXAnchor];
      v57 = [v60 constraintEqualToAnchor:?];
      v230[0] = v57;
      v56 = [(CPSDashboardItemView *)v229 focusEffectView];
      v55 = [(CPUIFocusEffectView *)v56 centerYAnchor];
      v54 = [(CPSDashboardItemView *)v229 imageView];
      v53 = [(UIImageView *)v54 centerYAnchor];
      v52 = [v55 constraintEqualToAnchor:?];
      v230[1] = v52;
      v51 = [(CPSDashboardItemView *)v229 focusEffectView];
      v50 = [(CPUIFocusEffectView *)v51 widthAnchor];
      v49 = [(CPSDashboardItemView *)v229 imageView];
      v48 = [(UIImageView *)v49 widthAnchor];
      v47 = [v50 constraintEqualToAnchor:v216 constant:?];
      v230[2] = v47;
      v46 = [(CPSDashboardItemView *)v229 focusEffectView];
      v45 = [(CPUIFocusEffectView *)v46 heightAnchor];
      v44 = [(CPSDashboardItemView *)v229 imageView];
      v43 = [(UIImageView *)v44 heightAnchor];
      v42 = [v45 constraintEqualToAnchor:v216 constant:?];
      v230[3] = v42;
      v41 = [(CPSDashboardItemView *)v229 dimmingEffectView];
      v40 = [(CPUIDimmingEffectView *)v41 centerXAnchor];
      v39 = [(CPSDashboardItemView *)v229 imageView];
      v38 = [(UIImageView *)v39 centerXAnchor];
      v37 = [v40 constraintEqualToAnchor:?];
      v230[4] = v37;
      v36 = [(CPSDashboardItemView *)v229 dimmingEffectView];
      v35 = [(CPUIDimmingEffectView *)v36 centerYAnchor];
      v34 = [(CPSDashboardItemView *)v229 imageView];
      v33 = [(UIImageView *)v34 centerYAnchor];
      v32 = [v35 constraintEqualToAnchor:?];
      v230[5] = v32;
      v31 = [(CPSDashboardItemView *)v229 dimmingEffectView];
      v30 = [(CPUIDimmingEffectView *)v31 widthAnchor];
      v29 = [(CPSDashboardItemView *)v229 imageView];
      v28 = [(UIImageView *)v29 widthAnchor];
      v27 = [v30 constraintEqualToAnchor:?];
      v230[6] = v27;
      v26 = [(CPSDashboardItemView *)v229 dimmingEffectView];
      v25 = [(CPUIDimmingEffectView *)v26 heightAnchor];
      v24 = [(CPSDashboardItemView *)v229 imageView];
      v23 = [(UIImageView *)v24 heightAnchor];
      v22 = [v25 constraintEqualToAnchor:?];
      v230[7] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:8];
      [v20 activateConstraints:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
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
      MEMORY[0x277D82BD8](v50);
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
    }

    [(CPSDashboardItemView *)v229 _setup];
    objc_storeStrong(&v217, 0);
    objc_storeStrong(&v218, 0);
    objc_storeStrong(&v219, 0);
    objc_storeStrong(&v220, 0);
    objc_storeStrong(&v222, 0);
    objc_storeStrong(&obj, 0);
  }

  v19 = MEMORY[0x277D82BE0](v229);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v229, 0);
  return v19;
}

- (void)setFocusHighlightColor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_focusHighlightColor, location[0]);
  v3 = location[0];
  v4 = [(CPSDashboardItemView *)v6 focusBackgroundView];
  [(UIView *)v4 setBackgroundColor:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_setup
{
  v4 = [(CPSDashboardItemView *)self imageView];
  v3 = [(CPSDashboardItemView *)self dashboardButton];
  v2 = [(CPDashboardButton *)v3 image];
  [(UIImageView *)v4 setImage:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v7 = [(CPSDashboardItemView *)self titleLabel];
  v6 = [(CPSDashboardItemView *)self dashboardButton];
  v5 = [(CPDashboardButton *)v6 titleVariants];
  [(CPUIAbridgableLabel *)v7 setTextVariants:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v10 = [(CPSDashboardItemView *)self subtitleLabel];
  v9 = [(CPSDashboardItemView *)self dashboardButton];
  v8 = [(CPDashboardButton *)v9 subtitleVariants];
  [(CPUIAbridgableLabel *)v10 setTextVariants:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
}

- (void)layoutSubviews
{
  v35[1] = *MEMORY[0x277D85DE8];
  v34 = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = CPSDashboardItemView;
  [(CPSDashboardItemView *)&v32 layoutSubviews];
  v28 = [(CPSDashboardItemView *)v34 titleLabelConnectingConstraint];
  [(NSLayoutConstraint *)v28 setConstant:-4.0];
  *&v2 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  v29 = [(CPSDashboardItemView *)v34 subtitleWidthConstraint];
  v3 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  if (v29)
  {
    v25 = MEMORY[0x277CCAAD0];
    v27 = [(CPSDashboardItemView *)v34 subtitleWidthConstraint];
    v35[0] = v27;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    [v25 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v26);
    v3 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  }

  v23 = [(CPSDashboardItemView *)v34 subtitleLabel];
  v22 = [(CPUIAbridgableLabel *)v23 textVariants];
  v24 = [(NSArray *)v22 count]== 0;
  MEMORY[0x277D82BD8](v22);
  *&v4 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v31 = v24;
  if (v24)
  {
    goto LABEL_8;
  }

  v17 = [(CPSDashboardItemView *)v34 subtitleLabel];
  [(CPSAbridgableLabel *)v17 setHidden:0];
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = [(CPSDashboardItemView *)v34 titleLabel];
  [(CPSAbridgableLabel *)v18 sizeToFit];
  *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v19 = [(CPSDashboardItemView *)v34 subtitleLabel];
  [(CPSAbridgableLabel *)v19 sizeToFit];
  *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = [(CPSDashboardItemView *)v34 subtitleLabel];
  [(CPSAbridgableLabel *)v20 layoutIfNeeded];
  *&v8 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [(CPSDashboardItemView *)v34 titleLabel];
  [(CPSAbridgableLabel *)v21 layoutIfNeeded];
  *&v9 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  if ([(CPSDashboardItemView *)v34 layoutAxis]== 2)
  {
    [(CPSDashboardItemView *)v34 bounds];
    v30 = v10;
    v15 = [(CPSDashboardItemView *)v34 titleLabel];
    [(CPSAbridgableLabel *)v15 intrinsicContentSize];
    v14 = v11 + 4.0;
    v13 = [(CPSDashboardItemView *)v34 subtitleLabel];
    [(CPSAbridgableLabel *)v13 intrinsicContentSize];
    v16 = v14 + v12;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v15);
    v4 = v16;
    if (v16 > v30)
    {
      v31 = 1;
    }
  }

  if (v31)
  {
LABEL_8:
    [(CPSDashboardItemView *)v34 hideSubtitle];
  }
}

- (void)hideSubtitle
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(CPSDashboardItemView *)self titleLabelConnectingConstraint];
  [(NSLayoutConstraint *)v4 setConstant:?];
  v7 = [(CPSDashboardItemView *)self subtitleLabel];
  v6 = [(CPSAbridgableLabel *)v7 widthAnchor];
  v5 = [v6 constraintEqualToConstant:0.0];
  [(CPSDashboardItemView *)self setSubtitleWidthConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8 = [(CPSDashboardItemView *)self subtitleWidthConstraint];
  LODWORD(v2) = 1148846080;
  [(NSLayoutConstraint *)v8 setPriority:v2];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = MEMORY[0x277CCAAD0];
  v11 = [(CPSDashboardItemView *)self subtitleWidthConstraint];
  v14[0] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  v12 = [(CPSDashboardItemView *)self subtitleLabel];
  [(CPSAbridgableLabel *)v12 setHidden:1];
  MEMORY[0x277D82BD8](v12);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSDashboardItemView;
  [(CPSDashboardItemView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSDashboardItemView *)v5 _setup];
  objc_storeStrong(location, 0);
}

- (void)focusableItemPressed:(BOOL)a3
{
  [(CPSDashboardItemView *)self setPressed:a3];
  if ((CPUIIsUIRefreshFeatureEnabled() & 1) == 0)
  {
    if (a3)
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
  v3 = [(CPSDashboardItemView *)self delegate];
  v2 = [(CPSDashboardItemView *)self dashboardButton];
  [(CPSButtonDelegate *)v3 didSelectButton:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)focusableItemFocused:(BOOL)a3
{
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    v13 = [(CPSDashboardItemView *)self focusEffectView];
    [(CPUIFocusEffectView *)v13 setHidden:!a3];
    MEMORY[0x277D82BD8](v13);
  }

  else if (a3)
  {
    v10 = [(CPSDashboardItemView *)self focusBackgroundView];
    [(UIView *)v10 setHidden:0];
    v12 = [(CPSDashboardItemView *)self titleLabel];
    v11 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)v12 setTextColor:?];
    MEMORY[0x277D82BD8](v11);
    if ([(CPSDashboardItemView *)self layoutAxis]== 2)
    {
      v9 = [(CPSDashboardItemView *)self subtitleLabel];
      v8 = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
      [(CPSAbridgableLabel *)v9 setTextColor:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }
  }

  else
  {
    v5 = [(CPSDashboardItemView *)self focusBackgroundView];
    [(UIView *)v5 setHidden:1];
    v7 = [(CPSDashboardItemView *)self titleLabel];
    v6 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v7 setTextColor:?];
    MEMORY[0x277D82BD8](v6);
    if ([(CPSDashboardItemView *)self layoutAxis]== 2)
    {
      v4 = [(CPSDashboardItemView *)self subtitleLabel];
      v3 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
      [(CPSAbridgableLabel *)v4 setTextColor:?];
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
    }
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(CPUIFocusEffectView *)self->_focusEffectView setPressed:a3];
  }
}

- (void)_touchDown:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSDashboardItemView *)v5 setPressed:1];
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    v3 = [(CPSDashboardItemView *)v5 dimmingEffectView];
    [(CPUIDimmingEffectView *)v3 setHidden:0];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    [(CPSDashboardItemView *)v5 setAlpha:0.2];
  }

  objc_storeStrong(location, 0);
}

- (void)_touchEnded:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSDashboardItemView *)v5 setPressed:0];
  if (CPUIIsUIRefreshFeatureEnabled())
  {
    v3 = [(CPSDashboardItemView *)v5 dimmingEffectView];
    [(CPUIDimmingEffectView *)v3 setHidden:1];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    [(CPSDashboardItemView *)v5 setAlpha:1.0];
  }

  objc_storeStrong(location, 0);
}

- (void)_buttonTriggered:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSDashboardItemView *)v6 delegate];
  v3 = [(CPSDashboardItemView *)v6 dashboardButton];
  [(CPSButtonDelegate *)v4 didSelectButton:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (CPSButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
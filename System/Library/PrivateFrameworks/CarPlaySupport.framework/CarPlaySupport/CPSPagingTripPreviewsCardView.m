@interface CPSPagingTripPreviewsCardView
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CPSPagingTripPreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5;
- (id)_linearFocusItems;
- (id)_moreRoutesPressedAndFocusedBackground;
- (id)_moreRoutesPressedBackground;
- (id)_moreRoutesPressedLabel;
- (id)preferredFocusEnvironments;
- (void)_setOverviewCollapsed:(BOOL)a3;
- (void)_toggleMoreRoutesButtonPressed:(id)a3;
- (void)_updateButtonColors;
- (void)alternateRoutesView:(id)a3 didSelectRouteChoice:(id)a4;
- (void)pagingControlView:(id)a3 didSelectPageIndex:(unint64_t)a4;
- (void)setSelectedRouteChoice:(id)a3;
- (void)setSelectedTrip:(id)a3;
- (void)updateEstimates:(id)a3 forTripIdentifier:(id)a4;
@end

@implementation CPSPagingTripPreviewsCardView

- (CPSPagingTripPreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5
{
  v187[3] = *MEMORY[0x277D85DE8];
  v174 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v172 = 0;
  objc_storeStrong(&v172, a4);
  v171 = 0;
  objc_storeStrong(&v171, a5);
  v5 = v174;
  v174 = 0;
  v170.receiver = v5;
  v170.super_class = CPSPagingTripPreviewsCardView;
  v174 = [(CPSTripPreviewsCardView *)&v170 initWithTripDelegate:location[0] trips:v172 textConfiguration:v171];
  objc_storeStrong(&v174, v174);
  if (v174)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    estimatesForTripIdentifiers = v174->_estimatesForTripIdentifiers;
    v174->_estimatesForTripIdentifiers = v6;
    *&v8 = MEMORY[0x277D82BD8](estimatesForTripIdentifiers).n128_u64[0];
    if ([v172 count] > 1)
    {
      v169 = objc_alloc_init(CPSPagingControlView);
      [v169 setPageCount:{objc_msgSend(v172, "count")}];
      [v169 setPagingDelegate:v174];
      v132 = [(CPSTripPreviewsCardView *)v174 containerView];
      [(UIView *)v132 addSubview:v169];
      MEMORY[0x277D82BD8](v132);
      objc_storeStrong(&v174->_pageControl, v169);
      v135 = [v169 topAnchor];
      v134 = [(CPSTripPreviewsCardView *)v174 containerView];
      v133 = [(UIView *)v134 topAnchor];
      v168 = [v135 constraintEqualToAnchor:?];
      MEMORY[0x277D82BD8](v133);
      MEMORY[0x277D82BD8](v134);
      *&v9 = MEMORY[0x277D82BD8](v135).n128_u64[0];
      v136 = MEMORY[0x277CCAAD0];
      v187[0] = v168;
      v145 = [v169 leadingAnchor];
      v144 = [(CPSTripPreviewsCardView *)v174 containerView];
      v143 = [(UIView *)v144 leadingAnchor];
      v142 = [v145 constraintEqualToAnchor:?];
      v187[1] = v142;
      v141 = [v169 trailingAnchor];
      v140 = [(CPSTripPreviewsCardView *)v174 containerView];
      v139 = [(UIView *)v140 trailingAnchor];
      v138 = [v141 constraintEqualToAnchor:?];
      v187[2] = v138;
      v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
      [v136 activateConstraints:?];
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v139);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v141);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v143);
      MEMORY[0x277D82BD8](v144);
      *&v10 = MEMORY[0x277D82BD8](v145).n128_u64[0];
      [(CPSPagingTripPreviewsCardView *)v174 setContentTopConstraint:v168, v10];
      objc_storeStrong(&v168, 0);
      objc_storeStrong(&v169, 0);
    }

    v167 = objc_alloc_init(CPSRouteOverviewView);
    objc_storeStrong(&v174->_overviewView, v167);
    v131 = [(CPSTripPreviewsCardView *)v174 containerView];
    [(UIView *)v131 addSubview:v167];
    *&v11 = MEMORY[0x277D82BD8](v131).n128_u64[0];
    pageControl = v174->_pageControl;
    v164 = 0;
    v162 = 0;
    v160 = 0;
    if (pageControl)
    {
      v165 = [(CPSPagingControlView *)v174->_pageControl bottomAnchor];
      v164 = 1;
      v13 = MEMORY[0x277D82BE0](v165);
    }

    else
    {
      v163 = [(CPSTripPreviewsCardView *)v174 containerView];
      v162 = 1;
      v161 = [(UIView *)v163 topAnchor];
      v160 = 1;
      v13 = MEMORY[0x277D82BE0](v161);
    }

    v166 = v13;
    if (v160)
    {
      MEMORY[0x277D82BD8](v161);
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](v163);
    }

    if (v164)
    {
      MEMORY[0x277D82BD8](v165);
    }

    v129 = [v167 topAnchor];
    v159 = [v129 constraintEqualToAnchor:v166];
    *&v14 = MEMORY[0x277D82BD8](v129).n128_u64[0];
    v130 = [(CPSPagingTripPreviewsCardView *)v174 contentTopConstraint];
    *&v15 = MEMORY[0x277D82BD8](v130).n128_u64[0];
    if (!v130)
    {
      [(CPSPagingTripPreviewsCardView *)v174 setContentTopConstraint:v159, v15];
    }

    v100 = MEMORY[0x277CCAAD0];
    v109 = [v167 leadingAnchor];
    v108 = [(CPSTripPreviewsCardView *)v174 containerView];
    v107 = [(UIView *)v108 leadingAnchor];
    v106 = [v109 constraintEqualToAnchor:?];
    v186[0] = v106;
    v105 = [v167 trailingAnchor];
    v104 = [(CPSTripPreviewsCardView *)v174 containerView];
    v103 = [(UIView *)v104 trailingAnchor];
    v102 = [v105 constraintEqualToAnchor:?];
    v186[1] = v102;
    v186[2] = v159;
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:?];
    [v100 activateConstraints:?];
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    v158 = objc_alloc_init(CPSAlternateRoutesView);
    [v158 setSelectionDelegate:v174];
    objc_storeStrong(&v174->_alternateRoutesView, v158);
    [v158 setClipsToBounds:1];
    v110 = [(CPSTripPreviewsCardView *)v174 containerView];
    [(UIView *)v110 addSubview:v158];
    *&v16 = MEMORY[0x277D82BD8](v110).n128_u64[0];
    v111 = v174;
    v113 = [v158 heightAnchor];
    v112 = [v113 constraintEqualToConstant:0.0];
    [(CPSPagingTripPreviewsCardView *)v111 setAlternateRoutesHeightConstraint:?];
    MEMORY[0x277D82BD8](v112);
    *&v17 = MEMORY[0x277D82BD8](v113).n128_u64[0];
    v114 = MEMORY[0x277CCAAD0];
    v124 = [v158 leadingAnchor];
    v123 = [(CPSTripPreviewsCardView *)v174 containerView];
    v122 = [(UIView *)v123 leadingAnchor];
    v121 = [v124 constraintEqualToAnchor:?];
    v185[0] = v121;
    v120 = [v158 trailingAnchor];
    v119 = [(CPSTripPreviewsCardView *)v174 containerView];
    v118 = [(UIView *)v119 trailingAnchor];
    v117 = [v120 constraintEqualToAnchor:?];
    v185[1] = v117;
    v116 = [(CPSPagingTripPreviewsCardView *)v174 alternateRoutesHeightConstraint];
    v185[2] = v116;
    v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:3];
    [v114 activateConstraints:?];
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    v126 = [v167 bottomAnchor];
    v125 = [v158 topAnchor];
    v157 = [v126 constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](v125);
    *&v18 = MEMORY[0x277D82BD8](v126).n128_u64[0];
    [(CPSPagingTripPreviewsCardView *)v174 setContentBottomConstraint:v157, v18];
    [(CPSPagingTripPreviewsCardView *)v174 addConstraint:v157];
    v156 = [MEMORY[0x277D75220] buttonWithType:0];
    [v156 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [v156 setContentHuggingPriority:1 forAxis:v19];
    v127 = [(CPSTripPreviewsCardView *)v174 textConfiguration];
    v128 = [(CPTripPreviewTextConfiguration *)v127 additionalRoutesButtonTitle];
    v153 = 0;
    if (v128)
    {
      v20 = MEMORY[0x277D82BE0](v128);
    }

    else
    {
      v154 = CPSLocalizedStringForKey(@"MORE_ROUTES");
      v153 = 1;
      v20 = MEMORY[0x277D82BE0](v154);
    }

    v155 = v20;
    if (v153)
    {
      MEMORY[0x277D82BD8](v154);
    }

    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v127);
    v152 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    v35 = objc_alloc(MEMORY[0x277CCA898]);
    v34 = v155;
    v46 = MEMORY[0x277D740A8];
    v183[0] = *MEMORY[0x277D740A8];
    v184[0] = v152;
    v47 = MEMORY[0x277D740C0];
    v183[1] = *MEMORY[0x277D740C0];
    v37 = [(CPSPagingTripPreviewsCardView *)v174 _moreRoutesNormalLabel];
    v184[1] = v37;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:?];
    v151 = [v35 initWithString:v34 attributes:?];
    MEMORY[0x277D82BD8](v36);
    *&v21 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    [v156 setAttributedTitle:v151 forState:v21];
    v39 = objc_alloc(MEMORY[0x277CCA898]);
    v38 = v155;
    v181[0] = *v46;
    v182[0] = v152;
    v181[1] = *v47;
    v41 = [(CPSPagingTripPreviewsCardView *)v174 _moreRoutesFocusedLabel];
    v182[1] = v41;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
    v150 = [v39 initWithString:v38 attributes:?];
    MEMORY[0x277D82BD8](v40);
    *&v22 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [v156 setAttributedTitle:v150 forState:{8, v22}];
    v43 = objc_alloc(MEMORY[0x277CCA898]);
    v42 = v155;
    v179[0] = *v46;
    v180[0] = v152;
    v179[1] = *v47;
    v45 = [(CPSPagingTripPreviewsCardView *)v174 _moreRoutesPressedLabel];
    v180[1] = v45;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
    v149 = [v43 initWithString:v42 attributes:?];
    MEMORY[0x277D82BD8](v44);
    *&v23 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    [v156 setAttributedTitle:v149 forState:{1, v23}];
    v49 = objc_alloc(MEMORY[0x277CCA898]);
    v48 = v155;
    v177[0] = *v46;
    v178[0] = v152;
    v177[1] = *v47;
    v51 = [(CPSPagingTripPreviewsCardView *)v174 _moreRoutesPressedAndFocusedLabel];
    v178[1] = v51;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
    v148 = [v49 initWithString:v48 attributes:?];
    MEMORY[0x277D82BD8](v50);
    *&v24 = MEMORY[0x277D82BD8](v51).n128_u64[0];
    [v156 setAttributedTitle:v148 forState:{9, v24}];
    [v156 setContentHorizontalAlignment:0];
    [v156 setOpaque:1];
    [v156 addTarget:v174 action:sel__toggleMoreRoutesButtonPressed_ forControlEvents:0x2000];
    objc_storeStrong(&v174->_moreRoutesButton, v156);
    v52 = [(CPSTripPreviewsCardView *)v174 containerView];
    [(UIView *)v52 addSubview:v174->_moreRoutesButton];
    *&v25 = MEMORY[0x277D82BD8](v52).n128_u64[0];
    [(UIButton *)v174->_moreRoutesButton setClipsToBounds:1, v25];
    v53 = v174;
    v55 = [(UIButton *)v174->_moreRoutesButton heightAnchor];
    v54 = [v55 constraintEqualToConstant:?];
    [(CPSPagingTripPreviewsCardView *)v53 setToggleRoutesButtonHeightConstraint:?];
    MEMORY[0x277D82BD8](v54);
    *&v26 = MEMORY[0x277D82BD8](v55).n128_u64[0];
    v56 = MEMORY[0x277CCAAD0];
    v69 = [(UIButton *)v174->_moreRoutesButton leadingAnchor];
    v68 = [(CPSTripPreviewsCardView *)v174 containerView];
    v67 = [(UIView *)v68 leadingAnchor];
    v66 = [v69 constraintEqualToAnchor:?];
    v176[0] = v66;
    v65 = [(UIButton *)v174->_moreRoutesButton trailingAnchor];
    v64 = [(CPSTripPreviewsCardView *)v174 containerView];
    v63 = [(UIView *)v64 trailingAnchor];
    v62 = [v65 constraintEqualToAnchor:?];
    v176[1] = v62;
    v61 = [(UIButton *)v174->_moreRoutesButton topAnchor];
    v60 = [v158 bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:6.0 constant:?];
    v176[2] = v59;
    v58 = [(CPSPagingTripPreviewsCardView *)v174 toggleRoutesButtonHeightConstraint];
    v176[3] = v58;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:4];
    [v56 activateConstraints:?];
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
    *&v27 = MEMORY[0x277D82BD8](v69).n128_u64[0];
    v70 = [(UIButton *)v174->_moreRoutesButton layer];
    [v70 setCornerRadius:18.0];
    *&v28 = MEMORY[0x277D82BD8](v70).n128_u64[0];
    v71 = [(UIButton *)v174->_moreRoutesButton layer];
    [v71 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v29 = MEMORY[0x277D82BD8](v71).n128_u64[0];
    [(UIButton *)v174->_moreRoutesButton setClipsToBounds:1, v29];
    [(CPSTripPreviewsCardView *)v174 setupGoButton];
    v73 = [(CPSTripPreviewsCardView *)v174 containerView];
    v72 = [(CPSTripPreviewsCardView *)v174 goButton];
    [(UIView *)v73 addSubview:?];
    MEMORY[0x277D82BD8](v72);
    *&v30 = MEMORY[0x277D82BD8](v73).n128_u64[0];
    v74 = MEMORY[0x277CCAAD0];
    v97 = [(CPSTripPreviewsCardView *)v174 goButton];
    v96 = [(UIButton *)v97 leadingAnchor];
    v95 = [(CPSTripPreviewsCardView *)v174 containerView];
    v94 = [(UIView *)v95 leadingAnchor];
    v93 = [v96 constraintEqualToAnchor:?];
    v175[0] = v93;
    v92 = [(CPSTripPreviewsCardView *)v174 goButton];
    v91 = [(UIButton *)v92 trailingAnchor];
    v90 = [(CPSTripPreviewsCardView *)v174 containerView];
    v89 = [(UIView *)v90 trailingAnchor];
    v88 = [v91 constraintEqualToAnchor:?];
    v175[1] = v88;
    v87 = [(CPSTripPreviewsCardView *)v174 goButton];
    v86 = [(UIButton *)v87 topAnchor];
    v85 = [(UIButton *)v174->_moreRoutesButton bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:4.0 constant:?];
    v175[2] = v84;
    v83 = [(CPSTripPreviewsCardView *)v174 goButton];
    v82 = [(UIButton *)v83 heightAnchor];
    v81 = [v82 constraintEqualToConstant:36.0];
    v175[3] = v81;
    v80 = [(CPSTripPreviewsCardView *)v174 goButton];
    v79 = [(UIButton *)v80 bottomAnchor];
    v78 = [(CPSTripPreviewsCardView *)v174 containerView];
    v77 = [(UIView *)v78 bottomAnchor];
    v76 = [v79 constraintEqualToAnchor:?];
    v175[4] = v76;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:5];
    [v74 activateConstraints:?];
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
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
    *&v31 = MEMORY[0x277D82BD8](v97).n128_u64[0];
    [(CPSPagingTripPreviewsCardView *)v174 _updateButtonColors];
    v98 = v174;
    v99 = [v172 firstObject];
    [(CPSPagingTripPreviewsCardView *)v98 setSelectedTrip:?];
    MEMORY[0x277D82BD8](v99);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v152, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v158, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v166, 0);
    objc_storeStrong(&v167, 0);
  }

  v33 = MEMORY[0x277D82BE0](v174);
  objc_storeStrong(&v171, 0);
  objc_storeStrong(&v172, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v174, 0);
  return v33;
}

- (void)_updateButtonColors
{
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v13 _updateButtonColors];
  v6 = [(CPSPagingTripPreviewsCardView *)v15 moreRoutesButton];
  v5 = [(CPSPagingTripPreviewsCardView *)v15 _moreRoutesNormalBackground];
  [UIButton cps_setBackgroundColor:v6 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v8 = [(CPSPagingTripPreviewsCardView *)v15 moreRoutesButton];
  v7 = [(CPSPagingTripPreviewsCardView *)v15 _moreRoutesFocusedBackground];
  [UIButton cps_setBackgroundColor:v8 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v10 = [(CPSPagingTripPreviewsCardView *)v15 moreRoutesButton];
  v9 = [(CPSPagingTripPreviewsCardView *)v15 _moreRoutesPressedBackground];
  [UIButton cps_setBackgroundColor:v10 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [(CPSPagingTripPreviewsCardView *)v15 moreRoutesButton];
  v11 = [(CPSPagingTripPreviewsCardView *)v15 _moreRoutesPressedAndFocusedBackground];
  [UIButton cps_setBackgroundColor:v12 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

- (void)setSelectedTrip:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36.receiver = v38;
  v36.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v36 setSelectedTrip:location[0]];
  v30 = [(CPSPagingTripPreviewsCardView *)v38 pageControl];
  v29 = [(CPSTripPreviewsCardView *)v38 trips];
  [(CPSPagingControlView *)v30 setPageIndex:[(NSArray *)v29 indexOfObject:location[0]]];
  MEMORY[0x277D82BD8](v29);
  *&v3 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v31 = [(CPSPagingTripPreviewsCardView *)v38 overviewView];
  [(CPSRouteOverviewView *)v31 setRepresentedTrip:location[0]];
  *&v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  v35 = [location[0] routeChoices];
  v34 = 0;
  v33 = [(CPSPagingTripPreviewsCardView *)v38 alternateRoutesView];
  if ([v35 count] <= 1)
  {
    v19 = [(CPSPagingTripPreviewsCardView *)v38 moreRoutesButton];
    [(UIButton *)v19 setHidden:1];
    [v33 setHidden:{1, MEMORY[0x277D82BD8](v19).n128_f64[0]}];
    v23 = [(CPSPagingTripPreviewsCardView *)v38 overviewView];
    v22 = [(CPSRouteOverviewView *)v23 bottomAnchor];
    v21 = [(CPSTripPreviewsCardView *)v38 goButton];
    v20 = [(UIButton *)v21 topAnchor];
    v9 = [v22 constraintEqualToAnchor:-6.0 constant:?];
    v10 = v34;
    v34 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    v8 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  else
  {
    v24 = [(CPSPagingTripPreviewsCardView *)v38 moreRoutesButton];
    [(UIButton *)v24 setHidden:0];
    [v33 setHidden:{0, MEMORY[0x277D82BD8](v24).n128_f64[0]}];
    [v33 setIndexForSelectedRoute:0];
    v25 = [location[0] routeChoices];
    [v33 setAvailableRouteChoices:?];
    *&v5 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    v28 = [(CPSPagingTripPreviewsCardView *)v38 overviewView];
    v27 = [(CPSRouteOverviewView *)v28 bottomAnchor];
    v26 = [v33 topAnchor];
    v6 = [v27 constraintEqualToAnchor:?];
    v7 = v34;
    v34 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    v8 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  }

  v15 = [(CPSPagingTripPreviewsCardView *)v38 contentBottomConstraint];
  [(NSLayoutConstraint *)v15 setActive:0];
  *&v11 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [(CPSPagingTripPreviewsCardView *)v38 setContentBottomConstraint:v34, v11];
  v16 = [(CPSPagingTripPreviewsCardView *)v38 contentBottomConstraint];
  [(NSLayoutConstraint *)v16 setActive:1];
  *&v12 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v18 = [(CPSPagingTripPreviewsCardView *)v38 estimatesForTripIdentifiers];
  v17 = [location[0] identifier];
  v32 = [(NSMutableDictionary *)v18 objectForKey:?];
  MEMORY[0x277D82BD8](v17);
  *&v13 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v32)
  {
    v14 = [(CPSPagingTripPreviewsCardView *)v38 overviewView];
    [(CPSRouteOverviewView *)v14 setCurrentTravelEstimates:v32];
    MEMORY[0x277D82BD8](v14);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_setOverviewCollapsed:(BOOL)a3
{
  v61 = self;
  v60 = a2;
  v59 = a3;
  v58 = 0.0;
  v57 = 0.0;
  v56 = 0.0;
  v55 = 0;
  v54 = 0;
  v53 = [(CPSPagingTripPreviewsCardView *)self alternateRoutesView];
  if (v59)
  {
    v23 = [(CPSPagingTripPreviewsCardView *)v61 overviewView];
    [(CPSRouteOverviewView *)v23 frame];
    v52[9] = v3;
    v52[10] = v4;
    v52[11] = v5;
    v52[12] = v6;
    MaxY = UIRectGetMaxY(*&v3, *&v4, *&v5, *&v6);
    [(CPSPagingTripPreviewsCardView *)v61 bounds];
    v52[5] = v7;
    v52[6] = v8;
    v52[7] = v9;
    v52[8] = v10;
    v25 = MaxY - UIRectGetMinY(*&v7, *&v8);
    MEMORY[0x277D82BD8](v23);
    v52[13] = *&v25;
    v26 = [(CPSPagingTripPreviewsCardView *)v61 contentTopConstraint];
    [(NSLayoutConstraint *)v26 constant];
    v58 = v11 - v25;
    MEMORY[0x277D82BD8](v26);
    v57 = v25 + 1.0;
    v27 = [(CPSPagingTripPreviewsCardView *)v61 toggleRoutesButtonHeightConstraint];
    [(NSLayoutConstraint *)v27 constant];
    v54 = v12;
    MEMORY[0x277D82BD8](v27);
    v56 = v25 + 1.0;
    v55 = 0;
    v29 = [(CPSPagingTripPreviewsCardView *)v61 pageControl];
    v28 = [(CPSPagingControlView *)v29 previousButton];
    [(UIButton *)v28 setEnabled:0];
    MEMORY[0x277D82BD8](v28);
    v31 = [(CPSPagingTripPreviewsCardView *)v61 pageControl];
    v30 = [(CPSPagingControlView *)v31 nextButton];
    [(UIButton *)v30 setEnabled:0];
    MEMORY[0x277D82BD8](v30);
    *&v13 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  }

  else
  {
    v58 = 0.0;
    v57 = 0.0;
    v56 = 0.0;
    [(CPSAlternateRoutesView *)v53 bounds];
    v52[1] = v14;
    v52[2] = v15;
    v52[3] = v16;
    v52[4] = v17;
    v55 = v17;
    v22 = [(CPSPagingTripPreviewsCardView *)v61 pageControl];
    [(CPSPagingControlView *)v22 enablePageControlsIfNecessary];
    v52[0] = [(CPSPagingTripPreviewsCardView *)v61 moreRoutesButton];
    [v52[0] setEnabled:1];
    v54 = 0x4042000000000000;
    objc_storeStrong(v52, 0);
  }

  v19 = [(CPSAlternateRoutesView *)v53 bottomConstraint];
  [(NSLayoutConstraint *)v19 setConstant:v56];
  *&v18 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  [(CPSPagingTripPreviewsCardView *)v61 layoutIfNeeded];
  v20 = MEMORY[0x277D75D18];
  v45 = MEMORY[0x277D85DD0];
  v46 = -1073741824;
  v47 = 0;
  v48 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke;
  v49 = &unk_278D93DD8;
  v50 = MEMORY[0x277D82BE0](v61);
  v51[1] = *&v58;
  v51[2] = *&v57;
  v51[0] = MEMORY[0x277D82BE0](v53);
  v51[3] = v55;
  v51[4] = v54;
  v39 = MEMORY[0x277D85DD0];
  v40 = -1073741824;
  v41 = 0;
  v42 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_2;
  v43 = &unk_278D91398;
  v44 = MEMORY[0x277D82BE0](v61);
  [v20 animateWithDuration:&v45 animations:&v39 completion:0.3];
  v21 = MEMORY[0x277D75D18];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_3;
  v36 = &unk_278D91CA8;
  v38 = v59;
  v37 = MEMORY[0x277D82BE0](v61);
  [v21 performWithoutAnimation:&v32];
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(v51, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v53, 0);
}

uint64_t __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentTopConstraint];
  [v2 setConstant:*(a1 + 48)];
  v3 = [*(a1 + 32) alternateRoutesHeightConstraint];
  [v3 setConstant:*(a1 + 56)];
  v4 = [*(a1 + 40) bottomConstraint];
  [v4 setConstant:*(a1 + 64)];
  v5 = [*(a1 + 32) toggleRoutesButtonHeightConstraint];
  [v5 setConstant:*(a1 + 72)];
  return [*(a1 + 32) layoutIfNeeded];
}

void __55__CPSPagingTripPreviewsCardView__setOverviewCollapsed___block_invoke_3(uint64_t a1)
{
  v47[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  if (*(a1 + 40))
  {
    v26 = [*(a1 + 32) textConfiguration];
    v27 = [v26 overviewButtonTitle];
    v37 = 0;
    if (v27)
    {
      objc_storeStrong(location, v27);
    }

    else
    {
      v38 = CPSLocalizedStringForKey(@"OVERVIEW");
      v37 = 1;
      objc_storeStrong(location, v38);
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    MEMORY[0x277D82BD8](v27);
    v1 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  }

  else
  {
    v24 = [*(a1 + 32) textConfiguration];
    v25 = [v24 additionalRoutesButtonTitle];
    v35 = 0;
    if (v25)
    {
      objc_storeStrong(location, v25);
    }

    else
    {
      v36 = CPSLocalizedStringForKey(@"MORE_ROUTES");
      v35 = 1;
      objc_storeStrong(location, v36);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](v25);
    v1 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  }

  v34 = [*(a1 + 32) moreRoutesButton];
  v33 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v6 = location[0];
  v18 = MEMORY[0x277D740A8];
  v46[0] = *MEMORY[0x277D740A8];
  v47[0] = v33;
  v19 = MEMORY[0x277D740C0];
  v46[1] = *MEMORY[0x277D740C0];
  v9 = [*(a1 + 32) _moreRoutesNormalLabel];
  v47[1] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:?];
  v32 = [v7 initWithString:v6 attributes:?];
  MEMORY[0x277D82BD8](v8);
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [v34 setAttributedTitle:v32 forState:{0, v2}];
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = location[0];
  v44[0] = *v18;
  v45[0] = v33;
  v44[1] = *v19;
  v13 = [*(a1 + 32) _moreRoutesFocusedLabel];
  v45[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v31 = [v11 initWithString:v10 attributes:?];
  MEMORY[0x277D82BD8](v12);
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v34 setAttributedTitle:v31 forState:{8, v3}];
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = location[0];
  v42[0] = *v18;
  v43[0] = v33;
  v42[1] = *v19;
  v17 = [*(a1 + 32) _moreRoutesPressedLabel];
  v43[1] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v30 = [v15 initWithString:v14 attributes:?];
  MEMORY[0x277D82BD8](v16);
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v34 setAttributedTitle:v30 forState:{1, v4}];
  v21 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = location[0];
  v40[0] = *v18;
  v41[0] = v33;
  v40[1] = *v19;
  v23 = [*(a1 + 32) _moreRoutesPressedAndFocusedLabel];
  v41[1] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v29 = [v21 initWithString:v20 attributes:?];
  MEMORY[0x277D82BD8](v22);
  *&v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v34 setAttributedTitle:v29 forState:{9, v5}];
  [v34 layoutIfNeeded];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (void)_toggleMoreRoutesButtonPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSPagingTripPreviewsCardView *)v4 setShowMoreRoutes:[(CPSPagingTripPreviewsCardView *)v4 showMoreRoutes]^ 1];
  [(CPSPagingTripPreviewsCardView *)v4 _setOverviewCollapsed:[(CPSPagingTripPreviewsCardView *)v4 showMoreRoutes]];
  objc_storeStrong(location, 0);
}

- (void)setSelectedRouteChoice:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v6 setSelectedRouteChoice:location[0]];
  v5 = [(CPSPagingTripPreviewsCardView *)v8 overviewView];
  v4 = [location[0] additionalInformationVariants];
  v3 = [v4 firstObject];
  [(CPSRouteOverviewView *)v5 setRouteNote:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forTripIdentifier:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12.receiver = v15;
  v12.super_class = CPSPagingTripPreviewsCardView;
  [(CPSTripPreviewsCardView *)&v12 updateEstimates:location[0] forTripIdentifier:v13];
  v8 = [(CPSPagingTripPreviewsCardView *)v15 estimatesForTripIdentifiers];
  [(NSMutableDictionary *)v8 setObject:location[0] forKey:v13];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v10 = [(CPSTripPreviewsCardView *)v15 selectedTrip];
  v9 = [(CPTrip *)v10 identifier];
  v11 = [v9 isEqual:v13];
  MEMORY[0x277D82BD8](v9);
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v6 = [(CPSPagingTripPreviewsCardView *)v15 overviewView];
    [(CPSRouteOverviewView *)v6 setCurrentTravelEstimates:location[0]];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)_moreRoutesPressedBackground
{
  v3 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
  v4 = [v3 colorWithAlphaComponent:0.06];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_moreRoutesPressedAndFocusedBackground
{
  v3 = [MEMORY[0x277D75348] _carSystemFocusColor];
  v4 = [v3 colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_moreRoutesPressedLabel
{
  v3 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  v4 = [v3 colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

id __66__CPSPagingTripPreviewsCardView__moreRoutesPressedAndFocusedLabel__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x277D75348] systemBlackColor];
    v7 = [v5 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [v4 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (void)alternateRoutesView:(id)a3 didSelectRouteChoice:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSPagingTripPreviewsCardView *)v7 setSelectedRouteChoice:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)pagingControlView:(id)a3 didSelectPageIndex:(unint64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v7 = [(CPSTripPreviewsCardView *)v9 trips];
  v6 = [(NSArray *)v7 objectAtIndex:a4];
  [(CPSPagingTripPreviewsCardView *)v5 setSelectedTrip:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = [(CPSTripPreviewsCardView *)self goButton];
  if ([(CPSPagingTripPreviewsCardView *)v6 showMoreRoutes])
  {
    v4 = [(CPSPagingTripPreviewsCardView *)v6 alternateRoutesView];
    v9[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    MEMORY[0x277D82BD8](v4);
  }

  else if (location[0])
  {
    v8 = location[0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)_linearFocusItems
{
  v18 = self;
  v17[1] = a2;
  v17[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(CPSPagingTripPreviewsCardView *)v18 pageControl];
  v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v11 = [(CPSPagingTripPreviewsCardView *)v18 pageControl];
    v10 = [(CPSPagingControlView *)v11 _linearFocusItems];
    [v17[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v10);
    v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  v16 = [(CPSPagingTripPreviewsCardView *)v18 alternateRoutesView];
  if (v16 && [(CPSPagingTripPreviewsCardView *)v18 showMoreRoutes])
  {
    v9 = [v16 _linearFocusItems];
    [v17[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
  }

  v7 = [(CPSPagingTripPreviewsCardView *)v18 moreRoutesButton];
  v14 = 0;
  LOBYTE(v8) = 0;
  if (([(UIButton *)v7 isEnabled]& 1) != 0)
  {
    v15 = [(CPSPagingTripPreviewsCardView *)v18 moreRoutesButton];
    v14 = 1;
    v8 = [(UIButton *)v15 isHidden]^ 1;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSPagingTripPreviewsCardView *)v18 moreRoutesButton];
    [v17[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  location = [(CPSTripPreviewsCardView *)v18 goButton];
  if (location && ([location isHidden] & 1) == 0)
  {
    [v17[0] addObject:location];
  }

  v5 = MEMORY[0x277D82BE0](v17[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);

  return v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] nextFocusedView];
  v5 = [(CPSPagingTripPreviewsCardView *)v9 alternateRoutesView];
  v7 = [v6 isDescendantOfView:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v10 = [(CPSPagingTripPreviewsCardView *)v9 showMoreRoutes];
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end
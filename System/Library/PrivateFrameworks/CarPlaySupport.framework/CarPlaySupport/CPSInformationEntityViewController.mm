@interface CPSInformationEntityViewController
- (id)informationTemplate;
- (void)_scrollViewAccessoryInsetsDidChange:(id)a3;
- (void)_setHairlineHidden:(BOOL)a3;
- (void)_updateCenteringGuideConstraints;
- (void)_updateHairline;
- (void)_updateItemStackView;
- (void)_updateScrollViewInsets;
- (void)_viewDidLoad;
- (void)didSelectButton:(id)a3;
- (void)scrollViewContentSizeChanged:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setControl:(id)a3 enabled:(BOOL)a4;
- (void)updateWithInformationTemplate:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation CPSInformationEntityViewController

- (id)informationTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_19(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)updateWithInformationTemplate:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__CPSInformationEntityViewController_updateWithInformationTemplate___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __68__CPSInformationEntityViewController_updateWithInformationTemplate___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) informationTemplate];
  [v7 updateTemplatePropertiesFromTemplate:*(a1 + 40)];
  v10 = [*(a1 + 32) buttonsViewController];
  v9 = [*(a1 + 32) informationTemplate];
  v8 = [v9 actions];
  [v10 setButtons:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [*(a1 + 32) _updateItemStackView];
  v12 = [*(a1 + 32) tabBarController];
  *&v1 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v6 = [*(a1 + 40) title];
    v5 = [*(a1 + 32) titleLabel];
    [v5 setText:v6];
    MEMORY[0x277D82BD8](v5);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  else
  {
    v4 = [*(a1 + 40) title];
    v3 = [*(a1 + 32) navigationItem];
    [v3 setTitle:v4];
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

- (void)viewDidLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSInformationEntityViewController;
  [(CPSInformationEntityViewController *)&v2 viewDidLayoutSubviews];
  [(CPSInformationEntityViewController *)v4 _updateScrollViewInsets];
  [(CPSInformationEntityViewController *)v4 _updateHairline];
}

- (void)_viewDidLoad
{
  v158[3] = *MEMORY[0x277D85DE8];
  v153 = self;
  v152 = a2;
  v151.receiver = self;
  v151.super_class = CPSInformationEntityViewController;
  [(CPSBaseTemplateViewController *)&v151 _viewDidLoad];
  v150 = [(CPSInformationEntityViewController *)v153 view];
  if (_UISolariumEnabled())
  {
    v135 = [MEMORY[0x277D75348] clearColor];
    [v150 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v135);
  }

  else
  {
    v134 = [MEMORY[0x277D75348] tableBackgroundColor];
    [v150 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v134);
  }

  v149 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [CPSInformationScrollView alloc];
  v129 = MEMORY[0x277CBF3A0];
  v148 = [(CPSInformationScrollView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v148 setDelegate:v153];
  [v148 setScrollviewDelegate:v153];
  [v150 addSubview:v148];
  [(CPSInformationEntityViewController *)v153 setScrollView:v148];
  v147 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v129, v129[1], v129[2], v129[3]}];
  [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v147 setAlignment:?];
  [v147 setDistribution:0];
  [v147 setAxis:1];
  [v147 setBaselineRelativeArrangement:1];
  v130 = [(CPSInformationEntityViewController *)v153 informationTemplate];
  v3 = [v130 layout];
  v4 = 18.0;
  if (v3)
  {
    v4 = 6.0;
  }

  [v147 setSpacing:v4];
  [v148 addSubview:{v147, MEMORY[0x277D82BD8](v130).n128_f64[0]}];
  [(CPSInformationEntityViewController *)v153 setItemStackView:v147];
  [(CPSInformationEntityViewController *)v153 _updateItemStackView];
  v131 = [v150 safeAreaLayoutGuide];
  v146 = [v131 topAnchor];
  *&v5 = MEMORY[0x277D82BD8](v131).n128_u64[0];
  v132 = [(CPSInformationEntityViewController *)v153 informationTemplate];
  v145 = [v132 title];
  *&v6 = MEMORY[0x277D82BD8](v132).n128_u64[0];
  v133 = [(CPSInformationEntityViewController *)v153 tabBarController];
  *&v7 = MEMORY[0x277D82BD8](v133).n128_u64[0];
  if (v133)
  {
    v144 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v144 setTranslatesAutoresizingMaskIntoConstraints:0];
    v113 = v144;
    v114 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    [v113 setFont:?];
    *&v8 = MEMORY[0x277D82BD8](v114).n128_u64[0];
    v115 = v144;
    v116 = [MEMORY[0x277D75348] labelColor];
    [v115 setTextColor:?];
    *&v9 = MEMORY[0x277D82BD8](v116).n128_u64[0];
    [v144 setText:{v145, v9}];
    [v150 addSubview:v144];
    [(CPSInformationEntityViewController *)v153 setTitleLabel:v144];
    v10 = [v144 bottomAnchor];
    v11 = v146;
    v146 = v10;
    *&v12 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v117 = v149;
    v128 = [v144 leadingAnchor];
    v127 = [v147 leadingAnchor];
    v126 = [v128 constraintEqualToAnchor:?];
    v158[0] = v126;
    v125 = [v144 trailingAnchor];
    v124 = [v147 trailingAnchor];
    v123 = [v125 constraintLessThanOrEqualToAnchor:?];
    v158[1] = v123;
    v122 = [v144 topAnchor];
    v121 = [v150 safeAreaLayoutGuide];
    v120 = [v121 topAnchor];
    v119 = [v122 constraintEqualToAnchor:?];
    v158[2] = v119;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:3];
    [v117 addObjectsFromArray:?];
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
    objc_storeStrong(&v144, 0);
  }

  else
  {
    v112 = [(CPSInformationEntityViewController *)v153 navigationItem];
    [v112 setTitle:v145];
    MEMORY[0x277D82BD8](v112);
  }

  v143 = objc_alloc_init(MEMORY[0x277D756D0]);
  v68 = [(CPSInformationEntityViewController *)v153 view];
  [v68 addLayoutGuide:v143];
  *&v13 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  [(CPSInformationEntityViewController *)v153 setCenteringGuide:v143, v13];
  [(CPSInformationEntityViewController *)v153 _updateCenteringGuideConstraints];
  v69 = [v147 widthAnchor];
  v142 = [v69 constraintLessThanOrEqualToConstant:376.0];
  v14 = MEMORY[0x277D82BD8](v69);
  v14.n128_u32[0] = 1148846080;
  [v142 setPriority:v14.n128_f64[0]];
  v72 = [v147 widthAnchor];
  v71 = [v150 safeAreaLayoutGuide];
  v70 = [v71 widthAnchor];
  v141 = [v72 constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  v15 = MEMORY[0x277D82BD8](v72);
  v15.n128_u32[0] = 1144750080;
  [v141 setPriority:v15.n128_f64[0]];
  v73 = v149;
  v107 = [v148 topAnchor];
  v106 = [v107 constraintEqualToAnchor:v146 constant:5.0];
  v157[0] = v106;
  v105 = [v148 leadingAnchor];
  v104 = [v150 safeAreaLayoutGuide];
  v103 = [v104 leadingAnchor];
  v102 = [v105 constraintEqualToAnchor:?];
  v157[1] = v102;
  v101 = [v148 trailingAnchor];
  v100 = [v150 safeAreaLayoutGuide];
  v99 = [v100 trailingAnchor];
  v98 = [v101 constraintEqualToAnchor:?];
  v157[2] = v98;
  v97 = [v148 bottomAnchor];
  v96 = [v150 bottomAnchor];
  v95 = [v97 constraintEqualToAnchor:?];
  v157[3] = v95;
  v94 = [v147 topAnchor];
  v93 = [v148 contentLayoutGuide];
  v92 = [v93 topAnchor];
  v91 = [v94 constraintEqualToAnchor:?];
  v157[4] = v91;
  v90 = [v147 bottomAnchor];
  v89 = [v148 contentLayoutGuide];
  v88 = [v89 bottomAnchor];
  v87 = [v90 constraintEqualToAnchor:?];
  v157[5] = v87;
  v86 = [v147 centerXAnchor];
  v85 = [(CPSInformationEntityViewController *)v153 centeringGuide];
  v84 = [(UILayoutGuide *)v85 centerXAnchor];
  v83 = [v86 constraintEqualToAnchor:?];
  v157[6] = v83;
  v82 = [v147 leadingAnchor];
  v81 = [(CPSInformationEntityViewController *)v153 centeringGuide];
  v80 = [(UILayoutGuide *)v81 leadingAnchor];
  v79 = [v82 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
  v157[7] = v79;
  v78 = [v147 trailingAnchor];
  v77 = [(CPSInformationEntityViewController *)v153 centeringGuide];
  v76 = [(UILayoutGuide *)v77 trailingAnchor];
  v75 = [v78 constraintLessThanOrEqualToAnchor:-12.0 constant:?];
  v157[8] = v75;
  v157[9] = v141;
  v157[10] = v142;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:11];
  [v73 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v74);
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
  v108 = [CPSInformationTemplateButtonsViewController alloc];
  v110 = [(CPSInformationEntityViewController *)v153 informationTemplate];
  v109 = [v110 actions];
  v140 = [CPSInformationTemplateButtonsViewController initWithButtons:v108 buttonDelegate:"initWithButtons:buttonDelegate:"];
  MEMORY[0x277D82BD8](v109);
  v111 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v111);
  if (_UISolariumEnabled())
  {
    [(CPSInformationTemplateButtonsViewController *)v140 willMoveToParentViewController:v153];
    [(CPSInformationEntityViewController *)v153 addChildViewController:v140];
    v36 = v150;
    v37 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    [v36 addSubview:?];
    *&v19 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    [(CPSInformationTemplateButtonsViewController *)v140 didMoveToParentViewController:v153, v19];
    [(CPSInformationEntityViewController *)v153 setButtonsViewController:v140];
  }

  else
  {
    v139 = objc_alloc_init(MEMORY[0x277D75D68]);
    [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [MEMORY[0x277D75348] tableBackgroundColor];
    v38 = [v39 colorWithAlphaComponent:0.8];
    [v139 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    v138 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
    v137 = [MEMORY[0x277D75210] effectWithBlurRadius:10.0];
    v40 = v139;
    v156[0] = v138;
    v156[1] = v137;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:2];
    [v40 setBackgroundEffects:?];
    *&v16 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [v150 addSubview:{v139, v16}];
    [(CPSInformationEntityViewController *)v153 setVisualEffectView:v139];
    v136 = [CPSHairlineView grayHairlineViewAlongAxis:0];
    [v136 setHidden:1];
    [v150 addSubview:v136];
    [(CPSInformationEntityViewController *)v153 setHairlineView:v136];
    [(CPSInformationTemplateButtonsViewController *)v140 willMoveToParentViewController:v153];
    [(CPSInformationEntityViewController *)v153 addChildViewController:v140];
    v42 = v150;
    v43 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    [v42 addSubview:?];
    *&v17 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    [(CPSInformationTemplateButtonsViewController *)v140 didMoveToParentViewController:v153, v17];
    [(CPSInformationEntityViewController *)v153 setButtonsViewController:v140];
    v44 = v149;
    v67 = [v139 topAnchor];
    v66 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    v65 = [v66 topAnchor];
    v64 = [v67 constraintEqualToAnchor:-12.0 constant:?];
    v155[0] = v64;
    v63 = [v139 bottomAnchor];
    v62 = [v150 bottomAnchor];
    v61 = [v63 constraintEqualToAnchor:?];
    v155[1] = v61;
    v60 = [v139 leftAnchor];
    v59 = [v150 leftAnchor];
    v58 = [v60 constraintEqualToAnchor:?];
    v155[2] = v58;
    v57 = [v139 rightAnchor];
    v56 = [v150 rightAnchor];
    v55 = [v57 constraintEqualToAnchor:?];
    v155[3] = v55;
    v54 = [v136 bottomAnchor];
    v53 = [v139 topAnchor];
    v52 = [v54 constraintEqualToAnchor:?];
    v155[4] = v52;
    v51 = [v136 leftAnchor];
    v50 = [v139 leftAnchor];
    v49 = [v51 constraintEqualToAnchor:?];
    v155[5] = v49;
    v48 = [v136 rightAnchor];
    v47 = [v139 rightAnchor];
    v46 = [v48 constraintEqualToAnchor:?];
    v155[6] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:7];
    [v44 addObjectsFromArray:?];
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
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    *&v18 = MEMORY[0x277D82BD8](v67).n128_u64[0];
    [(CPSInformationEntityViewController *)v153 _updateHairline];
    objc_storeStrong(&v136, 0);
    objc_storeStrong(&v137, 0);
    objc_storeStrong(&v138, 0);
    objc_storeStrong(&v139, 0);
  }

  v21 = v149;
  v35 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  v34 = [v35 leadingAnchor];
  v33 = [v147 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:?];
  v154[0] = v32;
  v31 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  v30 = [v31 trailingAnchor];
  v29 = [v147 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:?];
  v154[1] = v28;
  v27 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  v26 = [v27 bottomAnchor];
  v25 = [v150 safeAreaLayoutGuide];
  v24 = [v25 bottomAnchor];
  v23 = [v26 constraintEqualToAnchor:-12.0 constant:?];
  v154[2] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
  [v21 addObjectsFromArray:?];
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
  *&v20 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v149, v20}];
  objc_storeStrong(&v140, 0);
  objc_storeStrong(&v141, 0);
  objc_storeStrong(&v142, 0);
  objc_storeStrong(&v143, 0);
  objc_storeStrong(&v145, 0);
  objc_storeStrong(&v146, 0);
  objc_storeStrong(&v147, 0);
  objc_storeStrong(&v148, 0);
  objc_storeStrong(&v149, 0);
  objc_storeStrong(&v150, 0);
}

- (void)didSelectButton:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  v14 = CPSSafeProtocolCast_3(&unk_285632CA8, location[0]);
  if (v14)
  {
    v3 = [v14 identifier];
    v4 = v15;
    v15 = v3;
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v5 = objc_opt_class();
    v13 = CPSSafeCast_19(v5, location[0]);
    v6 = [v13 identifier];
    v7 = v15;
    v15 = v6;
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v13, 0);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v18, v17, v15);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v18, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v10 = [(CPSBaseTemplateViewController *)v17 templateDelegate];
  v11 = [(CPTemplateDelegate *)v10 conformsToProtocol:&unk_28562C040];
  *&v8 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSBaseTemplateViewController *)v17 templateDelegate];
    [(CPTemplateDelegate *)v9 handleActionForControlIdentifier:v15];
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setControl:(id)a3 enabled:(BOOL)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16.receiver = v19;
  v16.super_class = CPSInformationEntityViewController;
  [(CPSBaseTemplateViewController *)&v16 setControl:location[0] enabled:a4];
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__CPSInformationEntityViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](v19);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = v17;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

double __57__CPSInformationEntityViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) buttonsViewController];
  [v3 setButtonIdentifier:*(a1 + 40) enabled:*(a1 + 48) & 1];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateCenteringGuideConstraints
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39 = self;
  v38[1] = a2;
  v33 = [(CPSInformationEntityViewController *)self centeringGuideConstraints];
  v2 = MEMORY[0x277D82BD8](v33).n128_u64[0];
  if (v33)
  {
    v31 = MEMORY[0x277CCAAD0];
    v32 = [(CPSInformationEntityViewController *)v39 centeringGuideConstraints];
    [v31 deactivateConstraints:?];
    v2 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  }

  v27 = [(CPSInformationEntityViewController *)v39 view];
  v26 = [v27 safeAreaLayoutGuide];
  v38[0] = [v26 leadingAnchor];
  MEMORY[0x277D82BD8](v26);
  v29 = [(CPSInformationEntityViewController *)v39 view];
  v28 = [v29 safeAreaLayoutGuide];
  v37 = [v28 trailingAnchor];
  MEMORY[0x277D82BD8](v28);
  v30 = [(CPSInformationEntityViewController *)v39 scrollView];
  v36 = [(CPSInformationScrollView *)v30 accessoryViewAtEdge:0];
  v3 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  if (v36)
  {
    v4 = [v36 trailingAnchor];
    v5 = v38[0];
    v38[0] = v4;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v25 = [(CPSInformationEntityViewController *)v39 scrollView];
  v35 = [(CPSInformationScrollView *)v25 accessoryViewAtEdge:1];
  v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  if (v35)
  {
    v7 = [v35 leadingAnchor];
    v8 = v37;
    v37 = v7;
    v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  v24 = [(CPSInformationEntityViewController *)v39 centeringGuide];
  v23 = [(UILayoutGuide *)v24 leadingAnchor];
  v22 = [(NSLayoutXAxisAnchor *)v23 constraintEqualToAnchor:v38[0] constant:?];
  v40[0] = v22;
  v21 = [(CPSInformationEntityViewController *)v39 centeringGuide];
  v20 = [(UILayoutGuide *)v21 trailingAnchor];
  v19 = [(NSLayoutXAxisAnchor *)v20 constraintEqualToAnchor:v37 constant:0.0];
  v40[1] = v19;
  v18 = [(CPSInformationEntityViewController *)v39 centeringGuide];
  v17 = [(UILayoutGuide *)v18 topAnchor];
  v16 = [(CPSInformationEntityViewController *)v39 view];
  v15 = [v16 safeAreaLayoutGuide];
  v14 = [v15 topAnchor];
  v13 = [(NSLayoutYAxisAnchor *)v17 constraintEqualToAnchor:?];
  v40[2] = v13;
  v12 = [(CPSInformationEntityViewController *)v39 centeringGuide];
  v11 = [(UILayoutGuide *)v12 heightAnchor];
  v10 = [(NSLayoutDimension *)v11 constraintEqualToConstant:1.0];
  v40[3] = v10;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
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
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *&v9 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(CPSInformationEntityViewController *)v39 setCenteringGuideConstraints:v34, v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v34];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
}

- (void)_updateItemStackView
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = self;
  v35 = a2;
  memset(__b, 0, sizeof(__b));
  v17 = [(CPSInformationEntityViewController *)v36 itemStackView];
  obj = [(UIStackView *)v17 arrangedSubviews];
  v15 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v37 count:16, MEMORY[0x277D82BD8](v17).n128_f64[0]];
  if (v15)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v15;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(__b[1] + 8 * v13);
      v10 = [(CPSInformationEntityViewController *)v36 itemStackView];
      [(UIStackView *)v10 removeArrangedSubview:v34];
      *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      [v34 removeFromSuperview];
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v9 = [(CPSInformationEntityViewController *)v36 informationTemplate];
  v7 = [v9 items];
  v8 = [v7 count];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  v32 = v8;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25[0] = 0;
  v25[1] = v25;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v6 = [(CPSInformationEntityViewController *)v36 informationTemplate];
  v5 = [v6 items];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __58__CPSInformationEntityViewController__updateItemStackView__block_invoke;
  v22 = &unk_278D93B58;
  v23 = MEMORY[0x277D82BE0](v36);
  v24[1] = v25;
  v24[2] = v32;
  v24[0] = MEMORY[0x277D82BE0](v31);
  [v5 enumerateObjectsUsingBlock:&v18];
  MEMORY[0x277D82BD8](v5);
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v31, v4}];
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v25, 8);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
}

void __58__CPSInformationEntityViewController__updateItemStackView__block_invoke(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v134[4] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v128 = a3;
  v127[2] = a4;
  v127[1] = a1;
  v127[0] = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v104 = [*(a1 + 32) informationTemplate];
    v105 = [v104 layout] == 1;
    MEMORY[0x277D82BD8](v104);
    v126 = v105;
    v4 = [CPSRatingView alloc];
    v5 = [(CPSRatingView *)v4 initWithInformationItem:location[0] layout:v105];
    v6 = v127[0];
    v127[0] = v5;
    [(CPSRatingView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v6).n128_f64[0]];
  }

  v102 = [*(a1 + 32) informationTemplate];
  v103 = [v102 layout];
  *&v7 = MEMORY[0x277D82BD8](v102).n128_u64[0];
  if (v103)
  {
    v84 = [location[0] title];
    v117 = 0;
    v85 = 1;
    if (![v84 length])
    {
      v118 = [location[0] detail];
      v117 = 1;
      v85 = 1;
      if (![v118 length])
      {
        v85 = v127[0] != 0;
      }
    }

    if (v117)
    {
      MEMORY[0x277D82BD8](v118);
    }

    MEMORY[0x277D82BD8](v84);
    if (v85)
    {
      v116 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v116 setTranslatesAutoresizingMaskIntoConstraints:0];
      v115 = 0;
      v114 = 0;
      v83 = [location[0] title];
      *&v11 = MEMORY[0x277D82BD8](v83).n128_u64[0];
      if (v83)
      {
        v113 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v113 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v113 setNumberOfLines:2];
        [v113 setAdjustsFontForContentSizeCategory:1];
        [v113 setIsAccessibilityElement:0];
        v66 = [location[0] title];
        [v113 setText:?];
        v112 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76968], MEMORY[0x277D82BD8](v66).n128_f64[0]}];
        [v113 setFont:v112];
        v67 = v113;
        v68 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
        [v67 setTextColor:?];
        MEMORY[0x277D82BD8](v68);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v113);
        objc_storeStrong(&v115, v113);
        [v116 addSubview:v113];
        v69 = *(a1 + 40);
        v82 = [v113 leadingAnchor];
        v81 = [v116 leadingAnchor];
        v80 = [v82 constraintEqualToAnchor:?];
        v134[0] = v80;
        v79 = [v113 topAnchor];
        v78 = [v116 topAnchor];
        v77 = [v79 constraintEqualToAnchor:?];
        v134[1] = v77;
        v76 = [v113 lastBaselineAnchor];
        v75 = [v116 bottomAnchor];
        v74 = [v76 constraintLessThanOrEqualToAnchor:?];
        v134[2] = v74;
        v73 = [v113 trailingAnchor];
        v72 = [v116 centerXAnchor];
        v71 = [v73 constraintEqualToAnchor:?];
        v134[3] = v71;
        v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:4];
        [v69 addObjectsFromArray:?];
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
        MEMORY[0x277D82BD8](v82);
        objc_storeStrong(&v112, 0);
        objc_storeStrong(&v113, 0);
      }

      v65 = [location[0] detail];
      *&v12 = MEMORY[0x277D82BD8](v65).n128_u64[0];
      if (v65)
      {
        v111 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v111 setNumberOfLines:?];
        [v111 setAdjustsFontForContentSizeCategory:1];
        [v111 setIsAccessibilityElement:0];
        v47 = [*(a1 + 32) traitCollection];
        if ([v47 layoutDirection])
        {
          v13 = 0;
        }

        else
        {
          v13 = 2;
        }

        [v111 setTextAlignment:v13];
        *&v14 = MEMORY[0x277D82BD8](v47).n128_u64[0];
        v48 = [location[0] detail];
        [v111 setText:?];
        v110 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76968], MEMORY[0x277D82BD8](v48).n128_f64[0]}];
        [v111 setFont:v110];
        v49 = v111;
        v50 = [MEMORY[0x277D75348] labelColor];
        [v49 setTextColor:?];
        MEMORY[0x277D82BD8](v50);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v111);
        objc_storeStrong(&v114, v111);
        [v116 addSubview:v111];
        v51 = *(a1 + 40);
        v64 = [v111 leadingAnchor];
        v63 = [v116 centerXAnchor];
        v62 = [v64 constraintEqualToAnchor:?];
        v133[0] = v62;
        v61 = [v111 topAnchor];
        v60 = [v116 topAnchor];
        v59 = [v61 constraintEqualToAnchor:?];
        v133[1] = v59;
        v58 = [v111 lastBaselineAnchor];
        v57 = [v116 bottomAnchor];
        v56 = [v58 constraintLessThanOrEqualToAnchor:?];
        v133[2] = v56;
        v55 = [v111 trailingAnchor];
        v54 = [v116 trailingAnchor];
        v53 = [v55 constraintEqualToAnchor:?];
        v133[3] = v53;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:4];
        [v51 addObjectsFromArray:?];
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
        objc_storeStrong(&v110, 0);
        objc_storeStrong(&v111, 0);
      }

      if (v127[0])
      {
        if (!v115 || v114)
        {
          if (v115 && v114)
          {
            v28 = *(a1 + 40);
            v38 = [v127[0] topAnchor];
            v37 = [v115 bottomAnchor];
            v36 = [v38 constraintEqualToAnchor:?];
            v131[0] = v36;
            v35 = [v127[0] leadingAnchor];
            v34 = [v116 leadingAnchor];
            v33 = [v35 constraintEqualToAnchor:?];
            v131[1] = v33;
            v32 = [v127[0] bottomAnchor];
            v31 = [v116 bottomAnchor];
            v30 = [v32 constraintEqualToAnchor:?];
            v131[2] = v30;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:3];
            [v28 addObjectsFromArray:?];
            MEMORY[0x277D82BD8](v29);
            MEMORY[0x277D82BD8](v30);
            MEMORY[0x277D82BD8](v31);
            MEMORY[0x277D82BD8](v32);
            MEMORY[0x277D82BD8](v33);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](v35);
            MEMORY[0x277D82BD8](v36);
            MEMORY[0x277D82BD8](v37);
            v15 = MEMORY[0x277D82BD8](v38).n128_u64[0];
          }

          else
          {
            v20 = *(a1 + 40);
            v27 = [v127[0] centerYAnchor];
            v26 = [*(*(*(a1 + 48) + 8) + 40) centerYAnchor];
            v25 = [v27 constraintEqualToAnchor:?];
            v130[0] = v25;
            v24 = [v127[0] leadingAnchor];
            v23 = [v116 leadingAnchor];
            v22 = [v24 constraintEqualToAnchor:?];
            v130[1] = v22;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
            [v20 addObjectsFromArray:?];
            MEMORY[0x277D82BD8](v21);
            MEMORY[0x277D82BD8](v22);
            MEMORY[0x277D82BD8](v23);
            MEMORY[0x277D82BD8](v24);
            MEMORY[0x277D82BD8](v25);
            MEMORY[0x277D82BD8](v26);
            v15 = MEMORY[0x277D82BD8](v27).n128_u64[0];
          }
        }

        else
        {
          v39 = *(a1 + 40);
          v46 = [v127[0] centerYAnchor];
          v45 = [*(*(*(a1 + 48) + 8) + 40) centerYAnchor];
          v44 = [v46 constraintEqualToAnchor:?];
          v132[0] = v44;
          v43 = [v127[0] trailingAnchor];
          v42 = [v116 trailingAnchor];
          v41 = [v43 constraintEqualToAnchor:?];
          v132[1] = v41;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
          [v39 addObjectsFromArray:?];
          MEMORY[0x277D82BD8](v40);
          MEMORY[0x277D82BD8](v41);
          MEMORY[0x277D82BD8](v42);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v44);
          MEMORY[0x277D82BD8](v45);
          v15 = MEMORY[0x277D82BD8](v46).n128_u64[0];
        }

        [v116 addSubview:{v127[0], *&v15}];
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v116);
      v19 = [*(a1 + 32) itemStackView];
      [v19 addArrangedSubview:v116];
      *&v16 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      if (v128 < *(a1 + 56) - 1)
      {
        v17 = [*(a1 + 32) itemStackView];
        [v17 setCustomSpacing:v116 afterView:10.0];
        v109 = [CPSHairlineView grayHairlineViewAlongAxis:0, MEMORY[0x277D82BD8](v17).n128_f64[0]];
        v18 = [*(a1 + 32) itemStackView];
        [v18 addArrangedSubview:v109];
        MEMORY[0x277D82BD8](v18);
        objc_storeStrong(&v109, 0);
      }

      objc_storeStrong(&v114, 0);
      objc_storeStrong(&v115, 0);
      objc_storeStrong(&v116, 0);
    }
  }

  else
  {
    v100 = [location[0] title];
    v124 = 0;
    v101 = 1;
    if (![v100 length])
    {
      v125 = [location[0] detail];
      v124 = 1;
      v101 = 1;
      if (![v125 length])
      {
        v101 = v127[0] != 0;
      }
    }

    if (v124)
    {
      MEMORY[0x277D82BD8](v125);
    }

    *&v8 = MEMORY[0x277D82BD8](v100).n128_u64[0];
    if (v101)
    {
      v99 = [location[0] title];
      *&v9 = MEMORY[0x277D82BD8](v99).n128_u64[0];
      if (v99)
      {
        v123 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v123 setNumberOfLines:2];
        [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v123 setAdjustsFontForContentSizeCategory:1];
        [v123 setIsAccessibilityElement:0];
        v95 = [location[0] title];
        [v123 setText:?];
        v122 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76968], MEMORY[0x277D82BD8](v95).n128_f64[0]}];
        [v123 setFont:v122];
        v96 = v123;
        v97 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
        [v96 setTextColor:?];
        MEMORY[0x277D82BD8](v97);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v123);
        v98 = [*(a1 + 32) itemStackView];
        [v98 addArrangedSubview:v123];
        MEMORY[0x277D82BD8](v98);
        objc_storeStrong(&v122, 0);
        objc_storeStrong(&v123, 0);
      }

      v94 = [location[0] detail];
      *&v10 = MEMORY[0x277D82BD8](v94).n128_u64[0];
      if (v94)
      {
        v121 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v121 setNumberOfLines:2];
        [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v121 setAdjustsFontForContentSizeCategory:1];
        [v121 setIsAccessibilityElement:0];
        v90 = [location[0] detail];
        [v121 setText:?];
        v120 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76968], MEMORY[0x277D82BD8](v90).n128_f64[0]}];
        [v121 setFont:v120];
        v91 = v121;
        v92 = [MEMORY[0x277D75348] labelColor];
        [v91 setTextColor:?];
        MEMORY[0x277D82BD8](v92);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v121);
        v93 = [*(a1 + 32) itemStackView];
        [v93 addArrangedSubview:v121];
        MEMORY[0x277D82BD8](v93);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&v121, 0);
      }

      if (v127[0])
      {
        v88 = [*(a1 + 32) itemStackView];
        [v88 setCustomSpacing:*(*(*(a1 + 48) + 8) + 40) afterView:8.0];
        v89 = [*(a1 + 32) itemStackView];
        [v89 addArrangedSubview:v127[0]];
        MEMORY[0x277D82BD8](v89);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v127[0]);
      }

      if (v128 < *(a1 + 56) - 1)
      {
        v86 = [*(a1 + 32) itemStackView];
        [v86 setCustomSpacing:*(*(*(a1 + 48) + 8) + 40) afterView:10.0];
        v119 = [CPSHairlineView grayHairlineViewAlongAxis:0, MEMORY[0x277D82BD8](v86).n128_f64[0]];
        v87 = [*(a1 + 32) itemStackView];
        [v87 addArrangedSubview:v119];
        MEMORY[0x277D82BD8](v87);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v119);
        objc_storeStrong(&v119, 0);
      }
    }
  }

  objc_storeStrong(v127, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHairline
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v20 = [(CPSInformationEntityViewController *)self view];
    v19 = [(CPSInformationEntityViewController *)self itemStackView];
    [(UIStackView *)v19 bounds];
    v29 = v2;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v18 = [(CPSInformationEntityViewController *)self itemStackView];
    [v20 convertRect:v29 fromView:{v30, v31, v32}];
    v33.origin.x = v6;
    v33.origin.y = v7;
    v33.size.width = v8;
    v33.size.height = v9;
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v23 = [(CPSInformationEntityViewController *)self view];
    v22 = [(CPSInformationEntityViewController *)self visualEffectView];
    [(UIVisualEffectView *)v22 bounds];
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v21 = [(CPSInformationEntityViewController *)self visualEffectView];
    [v23 convertRect:v24 fromView:{v25, v26, v27}];
    rect2.origin.x = v14;
    rect2.origin.y = v15;
    rect2.size.width = v16;
    rect2.size.height = v17;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    [(CPSInformationEntityViewController *)self _setHairlineHidden:!CGRectIntersectsRect(v33, rect2)];
  }
}

- (void)_setHairlineHidden:(BOOL)a3
{
  v34 = self;
  v33 = a2;
  v32 = a3;
  v31 = [(CPSInformationEntityViewController *)self hairlineView];
  if (!v32 || ([v31 isHidden] & 1) != 0)
  {
    if (!v32 && ([v31 isHidden] & 1) != 0)
    {
      [v31 setHidden:v32];
      [v31 setAlpha:0.0];
      v8 = MEMORY[0x277D75D18];
      v12 = MEMORY[0x277D85DD0];
      v13 = -1073741824;
      v14 = 0;
      v15 = __57__CPSInformationEntityViewController__setHairlineHidden___block_invoke_3;
      v16 = &unk_278D913E8;
      v17 = MEMORY[0x277D82BE0](v31);
      [v8 animateWithDuration:&v12 animations:&__block_literal_global_13 completion:0.25];
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    [v31 setHidden:v32];
    v30 = [CPSHairlineView grayHairlineViewAlongAxis:0];
    v9 = [(CPSInformationEntityViewController *)v34 view];
    [v9 addSubview:v30];
    *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = v30;
    [v31 frame];
    v29[1] = v4;
    v29[2] = v5;
    v29[3] = v6;
    v29[4] = v7;
    [v10 setFrame:{*&v4, *&v5, *&v6, *&v7}];
    [v30 setAlpha:1.0];
    v11 = MEMORY[0x277D75D18];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __57__CPSInformationEntityViewController__setHairlineHidden___block_invoke;
    v28 = &unk_278D913E8;
    v29[0] = MEMORY[0x277D82BE0](v30);
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __57__CPSInformationEntityViewController__setHairlineHidden___block_invoke_2;
    v22 = &unk_278D91398;
    v23 = MEMORY[0x277D82BE0](v30);
    [v11 animateWithDuration:&v24 animations:&v18 completion:0.25];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
}

- (void)scrollViewContentSizeChanged:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v62 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v59 = 0;
  v33 = [(CPSInformationEntityViewController *)v62 scrollView];
  [(CPSInformationScrollView *)v33 bounds];
  v57 = v65;
  Height = CGRectGetHeight(v65);
  [location[0] contentInset];
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v34 = Height - v5;
  [location[0] contentInset];
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v52 = v10;
  v35 = v34 - v7;
  MEMORY[0x277D82BD8](v33);
  v58 = v35;
  if (0 >= v35)
  {
    v31 = v59;
  }

  else
  {
    v31 = v58;
  }

  v48 = v31;
  v60 = v31;
  if (v31 >= 1.0)
  {
    v26 = [(CPSInformationEntityViewController *)v62 scrollView];
    [(CPSInformationScrollView *)v26 contentSize];
    v44 = v11;
    v45 = v12;
    v27 = v12;
    MEMORY[0x277D82BD8](v26);
    v46 = v27;
    v43 = v27 > v60;
    memset(__b, 0, sizeof(__b));
    v28 = [(CPSInformationEntityViewController *)v62 scrollView];
    obj = [(CPSInformationScrollView *)v28 focusWaypoints];
    v30 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v63 count:16, MEMORY[0x277D82BD8](v28).n128_f64[0]];
    if (v30)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v30;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(__b[1] + 8 * v24);
        [v42 removeFromSuperview];
        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v63 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v21 = objc_opt_new();
    v20 = [(CPSInformationEntityViewController *)v62 scrollView];
    [(CPSInformationScrollView *)v20 setFocusWaypoints:v21];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    if (v43)
    {
      v40 = v60;
      v39 = [(CPSInformationEntityViewController *)v62 itemStackView];
      v38 = 0.0;
      do
      {
        if (v38 > v46)
        {
          break;
        }

        v13 = [CPSInformationTemplateFocusableView alloc];
        v37 = [(CPSInformationTemplateFocusableView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        CGRectMake_3();
        [v37 setFrame:{v14, v15, v16, v17}];
        [v39 addSubview:v37];
        v19 = [(CPSInformationEntityViewController *)v62 scrollView];
        v18 = [(CPSInformationScrollView *)v19 focusWaypoints];
        [(NSMutableArray *)v18 addObject:v37];
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
        v36 = vabdd_f64(v38, v46) < 0.00000011920929;
        v38 = CGFloatMin(v38 + v40, v46);
        v47 = v36 ? 5 : 0;
        objc_storeStrong(&v37, 0);
      }

      while (!v47);
      objc_storeStrong(&v39, 0);
    }

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSInformationEntityViewController *)v4 _updateHairline];
  objc_storeStrong(location, 0);
}

- (void)_scrollViewAccessoryInsetsDidChange:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSInformationEntityViewController *)v4 _updateCenteringGuideConstraints];
  [(CPSInformationEntityViewController *)v4 _updateScrollViewInsets];
  objc_storeStrong(location, 0);
}

- (void)_updateScrollViewInsets
{
  v7 = [(CPSInformationEntityViewController *)self view];
  v6 = [v7 safeAreaLayoutGuide];
  [v6 layoutFrame];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v10 = [(CPSInformationEntityViewController *)self visualEffectView];
  [(UIVisualEffectView *)v10 frame];
  v9 = [(CPSInformationEntityViewController *)self view];
  v8 = [v9 safeAreaLayoutGuide];
  [v8 layoutFrame];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v11 descender];
  UIEdgeInsetsMake_2();
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v12 = [(CPSInformationEntityViewController *)self scrollView];
  [(CPSInformationScrollView *)v12 setContentInset:v13, v14, v15, v16];
  MEMORY[0x277D82BD8](v12);
}

@end
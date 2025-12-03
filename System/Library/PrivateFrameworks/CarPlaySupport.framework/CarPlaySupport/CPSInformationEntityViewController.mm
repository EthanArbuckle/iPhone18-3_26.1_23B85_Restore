@interface CPSInformationEntityViewController
- (id)informationTemplate;
- (void)_scrollViewAccessoryInsetsDidChange:(id)change;
- (void)_setHairlineHidden:(BOOL)hidden;
- (void)_updateCenteringGuideConstraints;
- (void)_updateHairline;
- (void)_updateItemStackView;
- (void)_updateScrollViewInsets;
- (void)_viewDidLoad;
- (void)didSelectButton:(id)button;
- (void)scrollViewContentSizeChanged:(id)changed;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setControl:(id)control enabled:(BOOL)enabled;
- (void)updateWithInformationTemplate:(id)template;
- (void)viewDidLayoutSubviews;
@end

@implementation CPSInformationEntityViewController

- (id)informationTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_19(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)updateWithInformationTemplate:(id)template
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__CPSInformationEntityViewController_updateWithInformationTemplate___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSInformationEntityViewController;
  [(CPSInformationEntityViewController *)&v2 viewDidLayoutSubviews];
  [(CPSInformationEntityViewController *)selfCopy _updateScrollViewInsets];
  [(CPSInformationEntityViewController *)selfCopy _updateHairline];
}

- (void)_viewDidLoad
{
  v158[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v152 = a2;
  v151.receiver = self;
  v151.super_class = CPSInformationEntityViewController;
  [(CPSBaseTemplateViewController *)&v151 _viewDidLoad];
  view = [(CPSInformationEntityViewController *)selfCopy view];
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
  }

  else
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [view setBackgroundColor:?];
    MEMORY[0x277D82BD8](tableBackgroundColor);
  }

  v149 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [CPSInformationScrollView alloc];
  v129 = MEMORY[0x277CBF3A0];
  v148 = [(CPSInformationScrollView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v148 setDelegate:selfCopy];
  [v148 setScrollviewDelegate:selfCopy];
  [view addSubview:v148];
  [(CPSInformationEntityViewController *)selfCopy setScrollView:v148];
  v147 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v129, v129[1], v129[2], v129[3]}];
  [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v147 setAlignment:?];
  [v147 setDistribution:0];
  [v147 setAxis:1];
  [v147 setBaselineRelativeArrangement:1];
  informationTemplate = [(CPSInformationEntityViewController *)selfCopy informationTemplate];
  layout = [informationTemplate layout];
  v4 = 18.0;
  if (layout)
  {
    v4 = 6.0;
  }

  [v147 setSpacing:v4];
  [v148 addSubview:{v147, MEMORY[0x277D82BD8](informationTemplate).n128_f64[0]}];
  [(CPSInformationEntityViewController *)selfCopy setItemStackView:v147];
  [(CPSInformationEntityViewController *)selfCopy _updateItemStackView];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  *&v5 = MEMORY[0x277D82BD8](safeAreaLayoutGuide).n128_u64[0];
  informationTemplate2 = [(CPSInformationEntityViewController *)selfCopy informationTemplate];
  title = [informationTemplate2 title];
  *&v6 = MEMORY[0x277D82BD8](informationTemplate2).n128_u64[0];
  tabBarController = [(CPSInformationEntityViewController *)selfCopy tabBarController];
  *&v7 = MEMORY[0x277D82BD8](tabBarController).n128_u64[0];
  if (tabBarController)
  {
    v144 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v144 setTranslatesAutoresizingMaskIntoConstraints:0];
    v113 = v144;
    v114 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    [v113 setFont:?];
    *&v8 = MEMORY[0x277D82BD8](v114).n128_u64[0];
    v115 = v144;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v115 setTextColor:?];
    *&v9 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    [v144 setText:{title, v9}];
    [view addSubview:v144];
    [(CPSInformationEntityViewController *)selfCopy setTitleLabel:v144];
    bottomAnchor = [v144 bottomAnchor];
    v11 = topAnchor;
    topAnchor = bottomAnchor;
    *&v12 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v117 = v149;
    leadingAnchor = [v144 leadingAnchor];
    leadingAnchor2 = [v147 leadingAnchor];
    v126 = [leadingAnchor constraintEqualToAnchor:?];
    v158[0] = v126;
    trailingAnchor = [v144 trailingAnchor];
    trailingAnchor2 = [v147 trailingAnchor];
    v123 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
    v158[1] = v123;
    topAnchor2 = [v144 topAnchor];
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    topAnchor3 = [safeAreaLayoutGuide2 topAnchor];
    v119 = [topAnchor2 constraintEqualToAnchor:?];
    v158[2] = v119;
    v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:3];
    [v117 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    objc_storeStrong(&v144, 0);
  }

  else
  {
    navigationItem = [(CPSInformationEntityViewController *)selfCopy navigationItem];
    [navigationItem setTitle:title];
    MEMORY[0x277D82BD8](navigationItem);
  }

  v143 = objc_alloc_init(MEMORY[0x277D756D0]);
  view2 = [(CPSInformationEntityViewController *)selfCopy view];
  [view2 addLayoutGuide:v143];
  *&v13 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSInformationEntityViewController *)selfCopy setCenteringGuide:v143, v13];
  [(CPSInformationEntityViewController *)selfCopy _updateCenteringGuideConstraints];
  widthAnchor = [v147 widthAnchor];
  v142 = [widthAnchor constraintLessThanOrEqualToConstant:376.0];
  v14 = MEMORY[0x277D82BD8](widthAnchor);
  v14.n128_u32[0] = 1148846080;
  [v142 setPriority:v14.n128_f64[0]];
  widthAnchor2 = [v147 widthAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  widthAnchor3 = [safeAreaLayoutGuide3 widthAnchor];
  v141 = [widthAnchor2 constraintEqualToAnchor:?];
  MEMORY[0x277D82BD8](widthAnchor3);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  v15 = MEMORY[0x277D82BD8](widthAnchor2);
  v15.n128_u32[0] = 1144750080;
  [v141 setPriority:v15.n128_f64[0]];
  v73 = v149;
  topAnchor4 = [v148 topAnchor];
  v106 = [topAnchor4 constraintEqualToAnchor:topAnchor constant:5.0];
  v157[0] = v106;
  leadingAnchor3 = [v148 leadingAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
  v102 = [leadingAnchor3 constraintEqualToAnchor:?];
  v157[1] = v102;
  trailingAnchor3 = [v148 trailingAnchor];
  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
  v98 = [trailingAnchor3 constraintEqualToAnchor:?];
  v157[2] = v98;
  bottomAnchor2 = [v148 bottomAnchor];
  bottomAnchor3 = [view bottomAnchor];
  v95 = [bottomAnchor2 constraintEqualToAnchor:?];
  v157[3] = v95;
  topAnchor5 = [v147 topAnchor];
  contentLayoutGuide = [v148 contentLayoutGuide];
  topAnchor6 = [contentLayoutGuide topAnchor];
  v91 = [topAnchor5 constraintEqualToAnchor:?];
  v157[4] = v91;
  bottomAnchor4 = [v147 bottomAnchor];
  contentLayoutGuide2 = [v148 contentLayoutGuide];
  bottomAnchor5 = [contentLayoutGuide2 bottomAnchor];
  v87 = [bottomAnchor4 constraintEqualToAnchor:?];
  v157[5] = v87;
  centerXAnchor = [v147 centerXAnchor];
  centeringGuide = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  centerXAnchor2 = [(UILayoutGuide *)centeringGuide centerXAnchor];
  v83 = [centerXAnchor constraintEqualToAnchor:?];
  v157[6] = v83;
  leadingAnchor5 = [v147 leadingAnchor];
  centeringGuide2 = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  leadingAnchor6 = [(UILayoutGuide *)centeringGuide2 leadingAnchor];
  v79 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
  v157[7] = v79;
  trailingAnchor5 = [v147 trailingAnchor];
  centeringGuide3 = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  trailingAnchor6 = [(UILayoutGuide *)centeringGuide3 trailingAnchor];
  v75 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:-12.0 constant:?];
  v157[8] = v75;
  v157[9] = v141;
  v157[10] = v142;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:11];
  [v73 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](centeringGuide3);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](centeringGuide2);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centeringGuide);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](contentLayoutGuide2);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](contentLayoutGuide);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](topAnchor4);
  v108 = [CPSInformationTemplateButtonsViewController alloc];
  informationTemplate3 = [(CPSInformationEntityViewController *)selfCopy informationTemplate];
  actions = [informationTemplate3 actions];
  v140 = [CPSInformationTemplateButtonsViewController initWithButtons:v108 buttonDelegate:"initWithButtons:buttonDelegate:"];
  MEMORY[0x277D82BD8](actions);
  view3 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](view3);
  if (_UISolariumEnabled())
  {
    [(CPSInformationTemplateButtonsViewController *)v140 willMoveToParentViewController:selfCopy];
    [(CPSInformationEntityViewController *)selfCopy addChildViewController:v140];
    v36 = view;
    view4 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    [v36 addSubview:?];
    *&v19 = MEMORY[0x277D82BD8](view4).n128_u64[0];
    [(CPSInformationTemplateButtonsViewController *)v140 didMoveToParentViewController:selfCopy, v19];
    [(CPSInformationEntityViewController *)selfCopy setButtonsViewController:v140];
  }

  else
  {
    v139 = objc_alloc_init(MEMORY[0x277D75D68]);
    [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
    tableBackgroundColor2 = [MEMORY[0x277D75348] tableBackgroundColor];
    v38 = [tableBackgroundColor2 colorWithAlphaComponent:0.8];
    [v139 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](tableBackgroundColor2);
    v138 = [MEMORY[0x277D75358] colorEffectSaturate:1.5];
    v137 = [MEMORY[0x277D75210] effectWithBlurRadius:10.0];
    v40 = v139;
    v156[0] = v138;
    v156[1] = v137;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:2];
    [v40 setBackgroundEffects:?];
    *&v16 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [view addSubview:{v139, v16}];
    [(CPSInformationEntityViewController *)selfCopy setVisualEffectView:v139];
    v136 = [CPSHairlineView grayHairlineViewAlongAxis:0];
    [v136 setHidden:1];
    [view addSubview:v136];
    [(CPSInformationEntityViewController *)selfCopy setHairlineView:v136];
    [(CPSInformationTemplateButtonsViewController *)v140 willMoveToParentViewController:selfCopy];
    [(CPSInformationEntityViewController *)selfCopy addChildViewController:v140];
    v42 = view;
    view5 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    [v42 addSubview:?];
    *&v17 = MEMORY[0x277D82BD8](view5).n128_u64[0];
    [(CPSInformationTemplateButtonsViewController *)v140 didMoveToParentViewController:selfCopy, v17];
    [(CPSInformationEntityViewController *)selfCopy setButtonsViewController:v140];
    v44 = v149;
    topAnchor7 = [v139 topAnchor];
    view6 = [(CPSInformationTemplateButtonsViewController *)v140 view];
    topAnchor8 = [view6 topAnchor];
    v64 = [topAnchor7 constraintEqualToAnchor:-12.0 constant:?];
    v155[0] = v64;
    bottomAnchor6 = [v139 bottomAnchor];
    bottomAnchor7 = [view bottomAnchor];
    v61 = [bottomAnchor6 constraintEqualToAnchor:?];
    v155[1] = v61;
    leftAnchor = [v139 leftAnchor];
    leftAnchor2 = [view leftAnchor];
    v58 = [leftAnchor constraintEqualToAnchor:?];
    v155[2] = v58;
    rightAnchor = [v139 rightAnchor];
    rightAnchor2 = [view rightAnchor];
    v55 = [rightAnchor constraintEqualToAnchor:?];
    v155[3] = v55;
    bottomAnchor8 = [v136 bottomAnchor];
    topAnchor9 = [v139 topAnchor];
    v52 = [bottomAnchor8 constraintEqualToAnchor:?];
    v155[4] = v52;
    leftAnchor3 = [v136 leftAnchor];
    leftAnchor4 = [v139 leftAnchor];
    v49 = [leftAnchor3 constraintEqualToAnchor:?];
    v155[5] = v49;
    rightAnchor3 = [v136 rightAnchor];
    rightAnchor4 = [v139 rightAnchor];
    v46 = [rightAnchor3 constraintEqualToAnchor:?];
    v155[6] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:7];
    [v44 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](rightAnchor4);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](leftAnchor4);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](view6);
    *&v18 = MEMORY[0x277D82BD8](topAnchor7).n128_u64[0];
    [(CPSInformationEntityViewController *)selfCopy _updateHairline];
    objc_storeStrong(&v136, 0);
    objc_storeStrong(&v137, 0);
    objc_storeStrong(&v138, 0);
    objc_storeStrong(&v139, 0);
  }

  v21 = v149;
  view7 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  leadingAnchor7 = [view7 leadingAnchor];
  leadingAnchor8 = [v147 leadingAnchor];
  v32 = [leadingAnchor7 constraintEqualToAnchor:?];
  v154[0] = v32;
  view8 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  trailingAnchor7 = [view8 trailingAnchor];
  trailingAnchor8 = [v147 trailingAnchor];
  v28 = [trailingAnchor7 constraintEqualToAnchor:?];
  v154[1] = v28;
  view9 = [(CPSInformationTemplateButtonsViewController *)v140 view];
  bottomAnchor9 = [view9 bottomAnchor];
  safeAreaLayoutGuide6 = [view safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide6 bottomAnchor];
  v23 = [bottomAnchor9 constraintEqualToAnchor:-12.0 constant:?];
  v154[2] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
  [v21 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](bottomAnchor10);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](bottomAnchor9);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](leadingAnchor7);
  *&v20 = MEMORY[0x277D82BD8](view7).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v149, v20}];
  objc_storeStrong(&v140, 0);
  objc_storeStrong(&v141, 0);
  objc_storeStrong(&v142, 0);
  objc_storeStrong(&v143, 0);
  objc_storeStrong(&title, 0);
  objc_storeStrong(&topAnchor, 0);
  objc_storeStrong(&v147, 0);
  objc_storeStrong(&v148, 0);
  objc_storeStrong(&v149, 0);
  objc_storeStrong(&view, 0);
}

- (void)didSelectButton:(id)button
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v15 = 0;
  v14 = CPSSafeProtocolCast_3(&unk_285632CA8, location[0]);
  if (v14)
  {
    identifier = [v14 identifier];
    v4 = v15;
    v15 = identifier;
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v5 = objc_opt_class();
    v13 = CPSSafeCast_19(v5, location[0]);
    identifier2 = [v13 identifier];
    v7 = v15;
    v15 = identifier2;
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v13, 0);
  }

  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v18, selfCopy, v15);
    _os_log_debug_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEBUG, "%@: button selected with UUID: %@", v18, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v11 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v8 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v11)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:v15];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setControl:(id)control enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  enabledCopy = enabled;
  v16.receiver = selfCopy;
  v16.super_class = CPSInformationEntityViewController;
  [(CPSBaseTemplateViewController *)&v16 setControl:location[0] enabled:enabled];
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__CPSInformationEntityViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = enabledCopy;
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
  selfCopy = self;
  v38[1] = a2;
  centeringGuideConstraints = [(CPSInformationEntityViewController *)self centeringGuideConstraints];
  v2 = MEMORY[0x277D82BD8](centeringGuideConstraints).n128_u64[0];
  if (centeringGuideConstraints)
  {
    v31 = MEMORY[0x277CCAAD0];
    centeringGuideConstraints2 = [(CPSInformationEntityViewController *)selfCopy centeringGuideConstraints];
    [v31 deactivateConstraints:?];
    v2 = MEMORY[0x277D82BD8](centeringGuideConstraints2).n128_u64[0];
  }

  view = [(CPSInformationEntityViewController *)selfCopy view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v38[0] = [safeAreaLayoutGuide leadingAnchor];
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  view2 = [(CPSInformationEntityViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  scrollView = [(CPSInformationEntityViewController *)selfCopy scrollView];
  v36 = [(CPSInformationScrollView *)scrollView accessoryViewAtEdge:0];
  v3 = MEMORY[0x277D82BD8](scrollView).n128_u64[0];
  if (v36)
  {
    trailingAnchor2 = [v36 trailingAnchor];
    v5 = v38[0];
    v38[0] = trailingAnchor2;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  scrollView2 = [(CPSInformationEntityViewController *)selfCopy scrollView];
  v35 = [(CPSInformationScrollView *)scrollView2 accessoryViewAtEdge:1];
  v6 = MEMORY[0x277D82BD8](scrollView2).n128_u64[0];
  if (v35)
  {
    leadingAnchor = [v35 leadingAnchor];
    v8 = trailingAnchor;
    trailingAnchor = leadingAnchor;
    v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  centeringGuide = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  leadingAnchor2 = [(UILayoutGuide *)centeringGuide leadingAnchor];
  v22 = [(NSLayoutXAxisAnchor *)leadingAnchor2 constraintEqualToAnchor:v38[0] constant:?];
  v40[0] = v22;
  centeringGuide2 = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  trailingAnchor3 = [(UILayoutGuide *)centeringGuide2 trailingAnchor];
  v19 = [(NSLayoutXAxisAnchor *)trailingAnchor3 constraintEqualToAnchor:trailingAnchor constant:0.0];
  v40[1] = v19;
  centeringGuide3 = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  topAnchor = [(UILayoutGuide *)centeringGuide3 topAnchor];
  view3 = [(CPSInformationEntityViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v13 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
  v40[2] = v13;
  centeringGuide4 = [(CPSInformationEntityViewController *)selfCopy centeringGuide];
  heightAnchor = [(UILayoutGuide *)centeringGuide4 heightAnchor];
  v10 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:1.0];
  v40[3] = v10;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](centeringGuide4);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](centeringGuide3);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](centeringGuide2);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](leadingAnchor2);
  *&v9 = MEMORY[0x277D82BD8](centeringGuide).n128_u64[0];
  [(CPSInformationEntityViewController *)selfCopy setCenteringGuideConstraints:v34, v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v34];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&trailingAnchor, 0);
  objc_storeStrong(v38, 0);
}

- (void)_updateItemStackView
{
  v38 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  memset(__b, 0, sizeof(__b));
  itemStackView = [(CPSInformationEntityViewController *)selfCopy itemStackView];
  obj = [(UIStackView *)itemStackView arrangedSubviews];
  v15 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v37 count:16, MEMORY[0x277D82BD8](itemStackView).n128_f64[0]];
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
      itemStackView2 = [(CPSInformationEntityViewController *)selfCopy itemStackView];
      [(UIStackView *)itemStackView2 removeArrangedSubview:v34];
      *&v2 = MEMORY[0x277D82BD8](itemStackView2).n128_u64[0];
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
  informationTemplate = [(CPSInformationEntityViewController *)selfCopy informationTemplate];
  items = [informationTemplate items];
  v8 = [items count];
  MEMORY[0x277D82BD8](items);
  MEMORY[0x277D82BD8](informationTemplate);
  v32 = v8;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25[0] = 0;
  v25[1] = v25;
  v26 = 838860800;
  v27 = 48;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  informationTemplate2 = [(CPSInformationEntityViewController *)selfCopy informationTemplate];
  items2 = [informationTemplate2 items];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __58__CPSInformationEntityViewController__updateItemStackView__block_invoke;
  v22 = &unk_278D93B58;
  v23 = MEMORY[0x277D82BE0](selfCopy);
  v24[1] = v25;
  v24[2] = v32;
  v24[0] = MEMORY[0x277D82BE0](v31);
  [items2 enumerateObjectsUsingBlock:&v18];
  MEMORY[0x277D82BD8](items2);
  *&v4 = MEMORY[0x277D82BD8](informationTemplate2).n128_u64[0];
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
    view = [(CPSInformationEntityViewController *)self view];
    itemStackView = [(CPSInformationEntityViewController *)self itemStackView];
    [(UIStackView *)itemStackView bounds];
    v29 = v2;
    v30 = v3;
    v31 = v4;
    v32 = v5;
    itemStackView2 = [(CPSInformationEntityViewController *)self itemStackView];
    [view convertRect:v29 fromView:{v30, v31, v32}];
    v33.origin.x = v6;
    v33.origin.y = v7;
    v33.size.width = v8;
    v33.size.height = v9;
    MEMORY[0x277D82BD8](itemStackView2);
    MEMORY[0x277D82BD8](itemStackView);
    MEMORY[0x277D82BD8](view);
    view2 = [(CPSInformationEntityViewController *)self view];
    visualEffectView = [(CPSInformationEntityViewController *)self visualEffectView];
    [(UIVisualEffectView *)visualEffectView bounds];
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v13;
    visualEffectView2 = [(CPSInformationEntityViewController *)self visualEffectView];
    [view2 convertRect:v24 fromView:{v25, v26, v27}];
    rect2.origin.x = v14;
    rect2.origin.y = v15;
    rect2.size.width = v16;
    rect2.size.height = v17;
    MEMORY[0x277D82BD8](visualEffectView2);
    MEMORY[0x277D82BD8](visualEffectView);
    MEMORY[0x277D82BD8](view2);
    [(CPSInformationEntityViewController *)self _setHairlineHidden:!CGRectIntersectsRect(v33, rect2)];
  }
}

- (void)_setHairlineHidden:(BOOL)hidden
{
  selfCopy = self;
  v33 = a2;
  hiddenCopy = hidden;
  hairlineView = [(CPSInformationEntityViewController *)self hairlineView];
  if (!hiddenCopy || ([hairlineView isHidden] & 1) != 0)
  {
    if (!hiddenCopy && ([hairlineView isHidden] & 1) != 0)
    {
      [hairlineView setHidden:hiddenCopy];
      [hairlineView setAlpha:0.0];
      v8 = MEMORY[0x277D75D18];
      v12 = MEMORY[0x277D85DD0];
      v13 = -1073741824;
      v14 = 0;
      v15 = __57__CPSInformationEntityViewController__setHairlineHidden___block_invoke_3;
      v16 = &unk_278D913E8;
      v17 = MEMORY[0x277D82BE0](hairlineView);
      [v8 animateWithDuration:&v12 animations:&__block_literal_global_13 completion:0.25];
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    [hairlineView setHidden:hiddenCopy];
    v30 = [CPSHairlineView grayHairlineViewAlongAxis:0];
    view = [(CPSInformationEntityViewController *)selfCopy view];
    [view addSubview:v30];
    *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
    v10 = v30;
    [hairlineView frame];
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

  objc_storeStrong(&hairlineView, 0);
}

- (void)scrollViewContentSizeChanged:(id)changed
{
  v64 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v59 = 0;
  scrollView = [(CPSInformationEntityViewController *)selfCopy scrollView];
  [(CPSInformationScrollView *)scrollView bounds];
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
  MEMORY[0x277D82BD8](scrollView);
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
    scrollView2 = [(CPSInformationEntityViewController *)selfCopy scrollView];
    [(CPSInformationScrollView *)scrollView2 contentSize];
    v44 = v11;
    v45 = v12;
    v27 = v12;
    MEMORY[0x277D82BD8](scrollView2);
    v46 = v27;
    v43 = v27 > v60;
    memset(__b, 0, sizeof(__b));
    scrollView3 = [(CPSInformationEntityViewController *)selfCopy scrollView];
    obj = [(CPSInformationScrollView *)scrollView3 focusWaypoints];
    v30 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v63 count:16, MEMORY[0x277D82BD8](scrollView3).n128_f64[0]];
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
    scrollView4 = [(CPSInformationEntityViewController *)selfCopy scrollView];
    [(CPSInformationScrollView *)scrollView4 setFocusWaypoints:v21];
    MEMORY[0x277D82BD8](scrollView4);
    MEMORY[0x277D82BD8](v21);
    if (v43)
    {
      v40 = v60;
      itemStackView = [(CPSInformationEntityViewController *)selfCopy itemStackView];
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
        [itemStackView addSubview:v37];
        scrollView5 = [(CPSInformationEntityViewController *)selfCopy scrollView];
        focusWaypoints = [(CPSInformationScrollView *)scrollView5 focusWaypoints];
        [(NSMutableArray *)focusWaypoints addObject:v37];
        MEMORY[0x277D82BD8](focusWaypoints);
        MEMORY[0x277D82BD8](scrollView5);
        v36 = vabdd_f64(v38, v46) < 0.00000011920929;
        v38 = CGFloatMin(v38 + v40, v46);
        v47 = v36 ? 5 : 0;
        objc_storeStrong(&v37, 0);
      }

      while (!v47);
      objc_storeStrong(&itemStackView, 0);
    }

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  [(CPSInformationEntityViewController *)selfCopy _updateHairline];
  objc_storeStrong(location, 0);
}

- (void)_scrollViewAccessoryInsetsDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(CPSInformationEntityViewController *)selfCopy _updateCenteringGuideConstraints];
  [(CPSInformationEntityViewController *)selfCopy _updateScrollViewInsets];
  objc_storeStrong(location, 0);
}

- (void)_updateScrollViewInsets
{
  view = [(CPSInformationEntityViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view);
  visualEffectView = [(CPSInformationEntityViewController *)self visualEffectView];
  [(UIVisualEffectView *)visualEffectView frame];
  view2 = [(CPSInformationEntityViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide2 layoutFrame];
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](visualEffectView);
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v11 descender];
  UIEdgeInsetsMake_2();
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  scrollView = [(CPSInformationEntityViewController *)self scrollView];
  [(CPSInformationScrollView *)scrollView setContentInset:v13, v14, v15, v16];
  MEMORY[0x277D82BD8](scrollView);
}

@end
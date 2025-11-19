@interface CPSPointsOfInterestMapControlsViewController
- (CPSPointsOfInterestMapControlsViewController)initWithMapDelegate:(id)a3;
- (CPSPointsOfInterestMapDelegate)mapDelegate;
- (id)_linearFocusItems;
- (void)centerPressed:(id)a3;
- (void)didSelectButton:(id)a3;
- (void)panPressed:(id)a3;
- (void)setupViews;
- (void)viewDidLoad;
- (void)zoomInPressed:(id)a3;
- (void)zoomOutPressed:(id)a3;
@end

@implementation CPSPointsOfInterestMapControlsViewController

- (CPSPointsOfInterestMapControlsViewController)initWithMapDelegate:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = CPSPointsOfInterestMapControlsViewController;
  v8 = [(CPSPointsOfInterestMapControlsViewController *)&v6 initWithNibName:0 bundle:?];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeWeak(&v8->_mapDelegate, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestMapControlsViewController;
  [(CPSPointsOfInterestMapControlsViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestMapControlsViewController *)v4 setupViews];
}

- (void)setupViews
{
  v140[1] = *MEMORY[0x277D85DE8];
  v132 = self;
  v131[1] = a2;
  v9 = [CPSEntityMapButton buttonWithEntityMapButtonType:3];
  [(CPSPointsOfInterestMapControlsViewController *)v132 setPanButton:?];
  v10 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  [(CPSEntityMapButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  [(CPUITemplateButton *)v11 setDelegate:v132];
  MEMORY[0x277D82BD8](v11);
  v14 = CPUILocalizedStringForKey();
  v140[0] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:?];
  v12 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  [(CPSEntityMapButton *)v12 setAccessibilityUserInputLabels:v13];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v16 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v15 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  [v16 addSubview:?];
  MEMORY[0x277D82BD8](v15);
  v17 = [CPSEntityMapButton buttonWithEntityMapButtonType:1, MEMORY[0x277D82BD8](v16).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)v132 setZoomInButton:?];
  v18 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  [(CPSEntityMapButton *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  [(CPUITemplateButton *)v19 setDelegate:v132];
  MEMORY[0x277D82BD8](v19);
  v22 = CPUILocalizedStringForKey();
  v139 = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  v20 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  [(CPSEntityMapButton *)v20 setAccessibilityUserInputLabels:v21];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v24 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v23 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  [v24 addSubview:?];
  MEMORY[0x277D82BD8](v23);
  v25 = [CPSEntityMapButton buttonWithEntityMapButtonType:2, MEMORY[0x277D82BD8](v24).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)v132 setZoomOutButton:?];
  v26 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  [(CPSEntityMapButton *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  [(CPUITemplateButton *)v27 setDelegate:v132];
  MEMORY[0x277D82BD8](v27);
  v30 = CPUILocalizedStringForKey();
  v138 = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v28 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  [(CPSEntityMapButton *)v28 setAccessibilityUserInputLabels:v29];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v32 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v31 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  [v32 addSubview:?];
  MEMORY[0x277D82BD8](v31);
  v33 = [CPSEntityMapButton buttonWithEntityMapButtonType:MEMORY[0x277D82BD8](v32).n128_f64[0]];
  [(CPSPointsOfInterestMapControlsViewController *)v132 setCenterButton:?];
  v34 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  [(CPSEntityMapButton *)v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v34);
  v37 = CPUILocalizedStringForKey();
  v137 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  v35 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  [(CPSEntityMapButton *)v35 setAccessibilityUserInputLabels:v36];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v38 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  [(CPUITemplateButton *)v38 setDelegate:v132];
  v40 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v39 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  [v40 addSubview:?];
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  v131[0] = objc_opt_new();
  v61 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  v60 = [(CPSEntityMapButton *)v61 bottomAnchor];
  v59 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v58 = [v59 safeAreaLayoutGuide];
  v57 = [v58 bottomAnchor];
  v56 = [v60 constraintEqualToAnchor:?];
  v136[0] = v56;
  v55 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  v54 = [(CPSEntityMapButton *)v55 leadingAnchor];
  v53 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v52 = [v53 safeAreaLayoutGuide];
  v51 = [v52 leadingAnchor];
  v50 = [v54 constraintEqualToAnchor:?];
  v136[1] = v50;
  v49 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  v48 = [(CPSEntityMapButton *)v49 trailingAnchor];
  v47 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v46 = [v47 safeAreaLayoutGuide];
  v45 = [v46 trailingAnchor];
  v44 = [v48 constraintEqualToAnchor:?];
  v136[2] = v44;
  v43 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  v42 = [(CPSEntityMapButton *)v43 heightAnchor];
  v2 = _UISolariumEnabled();
  v3 = 36.0;
  if ((v2 & 1) == 0)
  {
    v3 = 34.5;
  }

  v41 = [v42 constraintEqualToConstant:v3];
  v136[3] = v41;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:4];
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
  v81 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  v80 = [(CPSEntityMapButton *)v81 bottomAnchor];
  v79 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomOutButton];
  v78 = [(CPSEntityMapButton *)v79 topAnchor];
  v77 = [v80 constraintEqualToAnchor:? constant:?];
  v135[0] = v77;
  v76 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  v75 = [(CPSEntityMapButton *)v76 leadingAnchor];
  v74 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v73 = [v74 safeAreaLayoutGuide];
  v72 = [v73 leadingAnchor];
  v71 = [v75 constraintEqualToAnchor:?];
  v135[1] = v71;
  v70 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  v69 = [(CPSEntityMapButton *)v70 trailingAnchor];
  v68 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v67 = [v68 safeAreaLayoutGuide];
  v66 = [v67 trailingAnchor];
  v65 = [v69 constraintEqualToAnchor:?];
  v135[2] = v65;
  v64 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  v63 = [(CPSEntityMapButton *)v64 heightAnchor];
  v4 = _UISolariumEnabled();
  v5 = 36.0;
  if ((v4 & 1) == 0)
  {
    v5 = 34.5;
  }

  v62 = [v63 constraintEqualToConstant:v5];
  v135[3] = v62;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:4];
  MEMORY[0x277D82BD8](v62);
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
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  *&v6 = MEMORY[0x277D82BD8](v81).n128_u64[0];
  v103 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  v102 = [(CPSEntityMapButton *)v103 bottomAnchor];
  v101 = [(CPSPointsOfInterestMapControlsViewController *)v132 zoomInButton];
  v100 = [(CPSEntityMapButton *)v101 topAnchor];
  v99 = [v102 constraintEqualToAnchor:-8.0 constant:?];
  v134[0] = v99;
  v98 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  v97 = [(CPSEntityMapButton *)v98 leadingAnchor];
  v96 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v95 = [v96 safeAreaLayoutGuide];
  v94 = [v95 leadingAnchor];
  v93 = [v97 constraintEqualToAnchor:?];
  v134[1] = v93;
  v92 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  v91 = [(CPSEntityMapButton *)v92 trailingAnchor];
  v90 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v89 = [v90 safeAreaLayoutGuide];
  v88 = [v89 trailingAnchor];
  v87 = [v91 constraintEqualToAnchor:?];
  v134[2] = v87;
  v86 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  v85 = [(CPSEntityMapButton *)v86 heightAnchor];
  v84 = [(CPSPointsOfInterestMapControlsViewController *)v132 panButton];
  v83 = [(CPSEntityMapButton *)v84 widthAnchor];
  v82 = [v85 constraintEqualToAnchor:?];
  v134[3] = v82;
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:4];
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
  *&v7 = MEMORY[0x277D82BD8](v103).n128_u64[0];
  v126 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  v125 = [(CPSEntityMapButton *)v126 topAnchor];
  v124 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v123 = [v124 safeAreaLayoutGuide];
  v122 = [v123 topAnchor];
  v121 = [v125 constraintEqualToAnchor:?];
  v133[0] = v121;
  v120 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  v119 = [(CPSEntityMapButton *)v120 trailingAnchor];
  v118 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v117 = [v118 safeAreaLayoutGuide];
  v116 = [v117 trailingAnchor];
  v115 = [v119 constraintEqualToAnchor:?];
  v133[1] = v115;
  v114 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  v113 = [(CPSEntityMapButton *)v114 leadingAnchor];
  v112 = [(CPSPointsOfInterestMapControlsViewController *)v132 view];
  v111 = [v112 safeAreaLayoutGuide];
  v110 = [v111 leadingAnchor];
  v109 = [v113 constraintEqualToAnchor:?];
  v133[2] = v109;
  v108 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  v107 = [(CPSEntityMapButton *)v108 heightAnchor];
  v106 = [(CPSPointsOfInterestMapControlsViewController *)v132 centerButton];
  v105 = [(CPSEntityMapButton *)v106 widthAnchor];
  v104 = [v107 constraintEqualToAnchor:1.0 multiplier:?];
  v133[3] = v104;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:4];
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
  *&v8 = MEMORY[0x277D82BD8](v126).n128_u64[0];
  [v131[0] addObjectsFromArray:{v130, v8}];
  [v131[0] addObjectsFromArray:v129];
  [v131[0] addObjectsFromArray:v128];
  [v131[0] addObjectsFromArray:v127];
  [MEMORY[0x277CCAAD0] activateConstraints:v131[0]];
  objc_storeStrong(&v127, 0);
  objc_storeStrong(&v128, 0);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(v131, 0);
}

- (void)zoomInPressed:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)v4 zoomIn];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)zoomOutPressed:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)v4 zoomOut];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)panPressed:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSPointsOfInterestMapControlsViewController *)v16 mapDelegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v5 = [(CPSPointsOfInterestMapControlsViewController *)v16 mapDelegate];
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __59__CPSPointsOfInterestMapControlsViewController_panPressed___block_invoke;
    v13 = &unk_278D913E8;
    v14 = MEMORY[0x277D82BE0](v16);
    [(CPSPointsOfInterestMapDelegate *)v5 beginPanningWithCompletion:&v9];
    *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    v6 = [(CPSPointsOfInterestMapControlsViewController *)v16 panButton];
    [(CPSEntityMapButton *)v6 setAlpha:0.0];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

double __59__CPSPointsOfInterestMapControlsViewController_panPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) panButton];
  [v2 setAlpha:1.0];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)centerPressed:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSPointsOfInterestMapControlsViewController *)v8 mapDelegate];
    [(CPSPointsOfInterestMapDelegate *)v4 centerMap];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = location[0];
  v13 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomInButton];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14 == v13)
  {
    [(CPSPointsOfInterestMapControlsViewController *)v16 zoomInPressed:location[0], v3];
  }

  else
  {
    v12 = location[0];
    v11 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomOutButton];
    *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v12 == v11)
    {
      [(CPSPointsOfInterestMapControlsViewController *)v16 zoomOutPressed:location[0], v4];
    }

    else
    {
      v10 = location[0];
      v9 = [(CPSPointsOfInterestMapControlsViewController *)v16 panButton];
      *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      if (v10 == v9)
      {
        [(CPSPointsOfInterestMapControlsViewController *)v16 panPressed:location[0], v5];
      }

      else
      {
        v8 = location[0];
        v7 = [(CPSPointsOfInterestMapControlsViewController *)v16 centerButton];
        *&v6 = MEMORY[0x277D82BD8](v7).n128_u64[0];
        if (v8 == v7)
        {
          [(CPSPointsOfInterestMapControlsViewController *)v16 centerPressed:location[0], v6];
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)_linearFocusItems
{
  v16 = self;
  v15[1] = a2;
  v15[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(CPSPointsOfInterestMapControlsViewController *)v16 panButton];
  [(CPSEntityMapButton *)v13 alpha];
  v14 = v2;
  MEMORY[0x277D82BD8](v13);
  v3 = v14;
  if (v14 == 1.0)
  {
    v12 = [(CPSPointsOfInterestMapControlsViewController *)v16 panButton];
    [v15[0] addObject:?];
    *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  v11 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomInButton];
  v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v10 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomInButton];
    [v15[0] addObject:?];
    v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  v9 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomOutButton];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v8 = [(CPSPointsOfInterestMapControlsViewController *)v16 zoomOutButton];
    [v15[0] addObject:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v7;
}

- (CPSPointsOfInterestMapDelegate)mapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapDelegate);

  return WeakRetained;
}

@end
@interface CPSContactEntityViewController
- (CPSContactEntityViewController)initWithEntity:(id)a3 resourceProvider:(id)a4;
- (id)createActionButtons:(id)a3;
- (void)didUpdateEntity:(id)a3;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupLayoutGuides;
- (void)setupViewControllers;
- (void)tappedButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CPSContactEntityViewController

- (CPSContactEntityViewController)initWithEntity:(id)a3 resourceProvider:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v4 = v26;
  v26 = 0;
  v23.receiver = v4;
  v23.super_class = CPSContactEntityViewController;
  v22 = [(CPSBaseEntityContentViewController *)&v23 initWithEntity:location[0] resourceProvider:v24];
  v26 = v22;
  objc_storeStrong(&v26, v22);
  if (v22)
  {
    v5 = [CPSAvatarViewController alloc];
    v6 = [(CPSAvatarViewController *)v5 initWithEntity:location[0]];
    avatarViewController = v26->_avatarViewController;
    v26->_avatarViewController = v6;
    MEMORY[0x277D82BD8](avatarViewController);
    v8 = [CPSNameViewController alloc];
    v9 = [(CPSNameViewController *)v8 initWithEntity:location[0]];
    nameViewController = v26->_nameViewController;
    v26->_nameViewController = v9;
    *&v11 = MEMORY[0x277D82BD8](nameViewController).n128_u64[0];
    v18 = MEMORY[0x277D75D28];
    v17 = v26;
    v16 = v26;
    v20 = [location[0] actionButtons];
    v19 = [(CPSContactEntityViewController *)v16 createActionButtons:?];
    v12 = [v18 contactActionHostingControllerWithDelegate:v17 contactButtons:?];
    actionsHostingController = v26->_actionsHostingController;
    v26->_actionsHostingController = v12;
    MEMORY[0x277D82BD8](actionsHostingController);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
  }

  v15 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v15;
}

- (id)createActionButtons:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v14);
      if (([v19 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(v19, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
      {
        [v19 isMemberOfClass:objc_opt_class()];
      }

      v7 = v20;
      v6 = [CPSContactButtonRepresentation alloc];
      v11 = [v19 identifier];
      v10 = [v19 title];
      v9 = [v19 image];
      v8 = [CPSContactButtonRepresentation initWithIdentifier:v6 title:"initWithIdentifier:title:image:type:" image:v11 type:v10];
      [v7 addObject:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, v3}];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)didUpdateEntity:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15.receiver = v17;
  v15.super_class = CPSContactEntityViewController;
  [(CPSBaseEntityContentViewController *)&v15 didUpdateEntity:location[0]];
  avatarViewController = v17->_avatarViewController;
  v6 = [(CPSBaseEntityContentViewController *)v17 entity];
  [(CPSAvatarViewController *)avatarViewController updateWithEntity:?];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  nameViewController = v17->_nameViewController;
  v8 = [(CPSBaseEntityContentViewController *)v17 entity];
  [(CPSNameViewController *)nameViewController updateWithEntity:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  actionsHostingController = v17->_actionsHostingController;
  v10 = v17;
  v9 = v17;
  v14 = [(CPSBaseEntityContentViewController *)v17 entity];
  v13 = [(CPEntity *)v14 actionButtons];
  v12 = [(CPSContactEntityViewController *)v9 createActionButtons:?];
  [(UIViewController *)actionsHostingController updateHostingControllerWithDelegate:v10 contactButtons:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v3 viewDidLoad];
  [(CPSContactEntityViewController *)v5 setupViewControllers];
  v2 = [(CPSContactEntityViewController *)v5 view];
  [v2 setAccessibilityIdentifier:@"CPContactTemplate"];
  MEMORY[0x277D82BD8](v2);
}

- (void)setupViewControllers
{
  v38[3] = *MEMORY[0x277D85DE8];
  v35 = self;
  location[1] = a2;
  if (_UISolariumEnabled())
  {
    v31 = [MEMORY[0x277D75348] clearColor];
    v30 = [(CPSContactEntityViewController *)v35 view];
    [v30 setBackgroundColor:v31];
    MEMORY[0x277D82BD8](v30);
    v2 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  }

  else
  {
    v29 = [MEMORY[0x277D75348] tableBackgroundColor];
    v28 = [(CPSContactEntityViewController *)v35 view];
    [v28 setBackgroundColor:v29];
    MEMORY[0x277D82BD8](v28);
    v2 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  }

  v25 = [(CPSContactEntityViewController *)v35 avatarViewController];
  v38[0] = v25;
  v24 = [(CPSContactEntityViewController *)v35 nameViewController];
  v38[1] = v24;
  v23 = [(CPSContactEntityViewController *)v35 actionsHostingController];
  v38[2] = v23;
  location[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v27 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v27)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v27;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v21);
      v16 = [v33 view];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
      [v33 willMoveToParentViewController:{v35, v3}];
      [(CPSContactEntityViewController *)v35 addChildViewController:v33];
      v18 = [(CPSContactEntityViewController *)v35 view];
      v17 = [v33 view];
      [v18 addSubview:?];
      MEMORY[0x277D82BD8](v17);
      *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      [v33 didMoveToParentViewController:{v35, v4}];
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v8 = objc_alloc_init(MEMORY[0x277D75500]);
  [(CPSContactEntityViewController *)v35 setFocusGuide:?];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v12 = [(CPSContactEntityViewController *)v35 actionsHostingController];
  v11 = [(UIViewController *)v12 view];
  v36 = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v9 = [(CPSContactEntityViewController *)v35 focusGuide];
  [(UIFocusGuide *)v9 setPreferredFocusEnvironments:v10];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(CPSContactEntityViewController *)v35 focusGuide];
  [(UIFocusGuide *)v13 setEnabled:1];
  *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v15 = [(CPSContactEntityViewController *)v35 view];
  v14 = [(CPSContactEntityViewController *)v35 focusGuide];
  [v15 addLayoutGuide:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSContactEntityViewController *)v5 resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  v6 = [(CPSContactEntityViewController *)self layoutConstraints];
  v7 = [(NSArray *)v6 count];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    v4 = [(CPSContactEntityViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSContactEntityViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](v4).n128_f64[0]];
    v5 = [(CPSContactEntityViewController *)self view];
    [v5 setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](v5);
  }
}

- (void)updateViewConstraints
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSContactEntityViewController;
  [(CPSContactEntityViewController *)&v5 updateViewConstraints];
  v3 = [(CPSContactEntityViewController *)v7 layoutConstraints];
  v4 = [(NSArray *)v3 count];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (!v4)
  {
    [(CPSContactEntityViewController *)v7 setupLayoutGuides];
    [(CPSContactEntityViewController *)v7 setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v140[4] = *MEMORY[0x277D85DE8];
  v135 = self;
  v134[1] = a2;
  v134[0] = objc_opt_new();
  v31 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v30 = [(UILayoutGuide *)v31 topAnchor];
  v29 = [(CPSContactEntityViewController *)v135 view];
  v28 = [v29 safeAreaLayoutGuide];
  v27 = [v28 topAnchor];
  v26 = [(NSLayoutYAxisAnchor *)v30 constraintEqualToAnchor:?];
  v140[0] = v26;
  v25 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v24 = [(UILayoutGuide *)v25 bottomAnchor];
  v23 = [(CPSContactEntityViewController *)v135 actionsHostingController];
  v22 = [(UIViewController *)v23 view];
  v21 = [(UIView *)v22 topAnchor];
  v20 = [(NSLayoutYAxisAnchor *)v24 constraintEqualToAnchor:?];
  v140[1] = v20;
  v19 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v18 = [(UILayoutGuide *)v19 leadingAnchor];
  v17 = [(CPSContactEntityViewController *)v135 view];
  v16 = [v17 safeAreaLayoutGuide];
  v15 = [v16 leadingAnchor];
  v14 = [(NSLayoutXAxisAnchor *)v18 constraintEqualToAnchor:?];
  v140[2] = v14;
  v13 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v12 = [(UILayoutGuide *)v13 trailingAnchor];
  v11 = [(CPSContactEntityViewController *)v135 view];
  v10 = [v11 safeAreaLayoutGuide];
  v9 = [v10 trailingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)v12 constraintEqualToAnchor:?];
  v140[3] = v8;
  v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:?];
  MEMORY[0x277D82BD8](v8);
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
  MEMORY[0x277D82BD8](v20);
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
  *&v2 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  v61 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v60 = [(UILayoutGuide *)v61 centerYAnchor];
  v59 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v58 = [(UILayoutGuide *)v59 centerYAnchor];
  v57 = [(NSLayoutYAxisAnchor *)v60 constraintEqualToAnchor:?];
  v139[0] = v57;
  v56 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v55 = [(UILayoutGuide *)v56 centerXAnchor];
  v54 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v53 = [(UILayoutGuide *)v54 centerXAnchor];
  v52 = [(NSLayoutXAxisAnchor *)v55 constraintEqualToAnchor:?];
  v139[1] = v52;
  v51 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v50 = [(UILayoutGuide *)v51 leadingAnchor];
  v49 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v48 = [(UILayoutGuide *)v49 leadingAnchor];
  v47 = [(NSLayoutXAxisAnchor *)v50 constraintGreaterThanOrEqualToAnchor:?];
  v139[2] = v47;
  v46 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v45 = [(UILayoutGuide *)v46 trailingAnchor];
  v44 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v43 = [(UILayoutGuide *)v44 trailingAnchor];
  v42 = [(NSLayoutXAxisAnchor *)v45 constraintLessThanOrEqualToAnchor:?];
  v139[3] = v42;
  v41 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v40 = [(UILayoutGuide *)v41 topAnchor];
  v39 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v38 = [(UILayoutGuide *)v39 topAnchor];
  v37 = [(NSLayoutYAxisAnchor *)v40 constraintGreaterThanOrEqualToAnchor:?];
  v139[4] = v37;
  v36 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v35 = [(UILayoutGuide *)v36 bottomAnchor];
  v34 = [(CPSContactEntityViewController *)v135 centeringLayoutGuide];
  v33 = [(UILayoutGuide *)v34 bottomAnchor];
  v32 = [(NSLayoutYAxisAnchor *)v35 constraintLessThanOrEqualToAnchor:?];
  v139[5] = v32;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:6];
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
  *&v3 = MEMORY[0x277D82BD8](v61).n128_u64[0];
  v86 = [(CPSContactEntityViewController *)v135 actionsHostingController];
  v85 = [(UIViewController *)v86 view];
  v84 = [(UIView *)v85 leadingAnchor];
  v83 = [(CPSContactEntityViewController *)v135 view];
  v82 = [v83 safeAreaLayoutGuide];
  v81 = [v82 leadingAnchor];
  v80 = [(NSLayoutXAxisAnchor *)v84 constraintEqualToAnchor:?];
  v138[0] = v80;
  v79 = [(CPSContactEntityViewController *)v135 actionsHostingController];
  v78 = [(UIViewController *)v79 view];
  v77 = [(UIView *)v78 trailingAnchor];
  v76 = [(CPSContactEntityViewController *)v135 view];
  v75 = [v76 safeAreaLayoutGuide];
  v74 = [v75 trailingAnchor];
  v73 = [(NSLayoutXAxisAnchor *)v77 constraintEqualToAnchor:?];
  v138[1] = v73;
  v72 = [(CPSContactEntityViewController *)v135 actionsHostingController];
  v71 = [(UIViewController *)v72 view];
  v70 = [(UIView *)v71 bottomAnchor];
  v69 = [(CPSContactEntityViewController *)v135 view];
  v68 = [v69 safeAreaLayoutGuide];
  v67 = [v68 bottomAnchor];
  v66 = [(NSLayoutYAxisAnchor *)v70 constraintEqualToAnchor:-12.0 constant:?];
  v138[2] = v66;
  v65 = [(CPSContactEntityViewController *)v135 actionsHostingController];
  v64 = [(UIViewController *)v65 view];
  v63 = [(UIView *)v64 heightAnchor];
  v62 = [(NSLayoutDimension *)v63 constraintEqualToConstant:69.0];
  v138[3] = v62;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:4];
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
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  *&v4 = MEMORY[0x277D82BD8](v86).n128_u64[0];
  v105 = [(CPSContactEntityViewController *)v135 nameViewController];
  v104 = [(CPSNameViewController *)v105 view];
  v103 = [v104 centerYAnchor];
  v102 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v101 = [(UILayoutGuide *)v102 centerYAnchor];
  v100 = [v103 constraintEqualToAnchor:?];
  v137[0] = v100;
  v99 = [(CPSContactEntityViewController *)v135 nameViewController];
  v98 = [(CPSNameViewController *)v99 view];
  v97 = [v98 leadingAnchor];
  v96 = [(CPSContactEntityViewController *)v135 avatarViewController];
  v95 = [(CPSAvatarViewController *)v96 view];
  v94 = [v95 trailingAnchor];
  v93 = [v97 constraintEqualToAnchor:12.0 constant:?];
  v137[1] = v93;
  v92 = [(CPSContactEntityViewController *)v135 nameViewController];
  v91 = [(CPSNameViewController *)v92 view];
  v90 = [v91 trailingAnchor];
  v89 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v88 = [(UILayoutGuide *)v89 trailingAnchor];
  v87 = [v90 constraintEqualToAnchor:?];
  v137[2] = v87;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:3];
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
  *&v5 = MEMORY[0x277D82BD8](v105).n128_u64[0];
  v125 = [(CPSContactEntityViewController *)v135 avatarViewController];
  v124 = [(CPSAvatarViewController *)v125 view];
  v123 = [v124 centerYAnchor];
  v122 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v121 = [(UILayoutGuide *)v122 centerYAnchor];
  v120 = [v123 constraintEqualToAnchor:?];
  v136[0] = v120;
  v119 = [(CPSContactEntityViewController *)v135 avatarViewController];
  v118 = [(CPSAvatarViewController *)v119 view];
  v117 = [v118 leadingAnchor];
  v116 = [(CPSContactEntityViewController *)v135 avatarAndDetailsLayoutGuide];
  v115 = [(UILayoutGuide *)v116 leadingAnchor];
  v114 = [v117 constraintEqualToAnchor:?];
  v136[1] = v114;
  v113 = [(CPSContactEntityViewController *)v135 avatarViewController];
  v112 = [(CPSAvatarViewController *)v113 view];
  v111 = [v112 widthAnchor];
  v110 = [v111 constraintEqualToConstant:*&CPSAvatarSize];
  v136[2] = v110;
  v109 = [(CPSContactEntityViewController *)v135 avatarViewController];
  v108 = [(CPSAvatarViewController *)v109 view];
  v107 = [v108 heightAnchor];
  v106 = [v107 constraintEqualToConstant:*&CPSAvatarSize];
  v136[3] = v106;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:4];
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
  *&v6 = MEMORY[0x277D82BD8](v125).n128_u64[0];
  [v134[0] addObjectsFromArray:{v133, v6}];
  [v134[0] addObjectsFromArray:v132];
  [v134[0] addObjectsFromArray:v129];
  [v134[0] addObjectsFromArray:v130];
  [v134[0] addObjectsFromArray:v131];
  v126 = [v134[0] copy];
  [(CPSContactEntityViewController *)v135 setLayoutConstraints:?];
  *&v7 = MEMORY[0x277D82BD8](v126).n128_u64[0];
  v127 = MEMORY[0x277CCAAD0];
  v128 = [(CPSContactEntityViewController *)v135 layoutConstraints];
  [v127 activateConstraints:?];
  MEMORY[0x277D82BD8](v128);
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(&v131, 0);
  objc_storeStrong(&v132, 0);
  objc_storeStrong(&v133, 0);
  objc_storeStrong(v134, 0);
}

- (void)setupLayoutGuides
{
  v8 = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x277D756D0]);
  v4 = [(CPSContactEntityViewController *)v8 view];
  [v4 addLayoutGuide:v7[0]];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(CPSContactEntityViewController *)v8 setCenteringLayoutGuide:v7[0], v2];
  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  v5 = [(CPSContactEntityViewController *)v8 view];
  [v5 addLayoutGuide:v6];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [(CPSContactEntityViewController *)v8 setAvatarAndDetailsLayoutGuide:v6, v3];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

- (void)tappedButton:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSBaseEntityContentViewController *)v13 entity];
  v11 = [(CPEntity *)v7 actionButtons];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", v3, location[0]];
  v8 = [v11 filteredArrayUsingPredicate:?];
  v10 = [v8 firstObject];
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v5 = v13;
    v6 = [(CPSContactEntityViewController *)v13 actionsHostingController];
    [CPSBaseEntityContentViewController viewController:v5 didPressButton:"viewController:didPressButton:"];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end
@interface CPSPointsOfInterestPickerViewController
- (CGSize)buttonGlyphSize;
- (CGSize)buttonSize;
- (CPSPointsOfInterestPickerDelegate)delegate;
- (CPSPointsOfInterestPickerViewController)initWithEntity:(id)a3 resourceProvider:(id)a4;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (id)selectedItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)template;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateFocusedItem:(id)a3;
- (void)actionButtonPressed:(id)a3 forModel:(id)a4;
- (void)cancelButtonPressed:(id)a3;
- (void)completeTransition:(BOOL)a3;
- (void)deselectItem:(id)a3;
- (void)didSelectButton:(id)a3;
- (void)didUpdateEntity:(id)a3;
- (void)loadView;
- (void)modelDidDeselect:(id)a3;
- (void)modelDidSelect:(id)a3;
- (void)resetLayoutConstraints;
- (void)restoreFocusedItem;
- (void)selectItem:(id)a3;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToPrimaryCard;
- (void)transitionToSecondaryCard;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CPSPointsOfInterestPickerViewController

- (CPSPointsOfInterestPickerViewController)initWithEntity:(id)a3 resourceProvider:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = CPSPointsOfInterestPickerViewController;
  v8 = [(CPSBaseEntityContentViewController *)&v9 initWithEntity:location[0] resourceProvider:v10];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    v12->_pickerState = 0;
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)template
{
  v3 = objc_opt_class();
  v5 = [(CPSBaseEntityContentViewController *)self resourceProvider];
  v4 = [(CPSEntityResourceProvider *)v5 entityTemplate];
  v6 = CPSSafeCast_3(v3, v4);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (void)didUpdateEntity:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8.receiver = v10;
  v8.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSBaseEntityContentViewController *)&v8 didUpdateEntity:location[0]];
  [(CPSPointsOfInterestPickerViewController *)v10 transitionToPrimaryCard];
  v6 = [(CPSPointsOfInterestPickerViewController *)v10 pointsOfInterest];
  v5 = [v6 title];
  v4 = [(CPSPointsOfInterestPickerViewController *)v10 titleLabel];
  [(UILabel *)v4 setText:v5];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(CPSPointsOfInterestPickerViewController *)v10 tableView];
  [(CPSPointsOfInterestTableView *)v7 reloadData];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)loadView
{
  v3 = self;
  v2[1] = a2;
  v2[0] = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
  [(CPSPointsOfInterestPickerViewController *)v3 setView:v2[0]];
  objc_storeStrong(v2, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestPickerViewController *)v4 setupViews];
}

- (void)setupViews
{
  v48[3] = *MEMORY[0x277D85DE8];
  v47 = self;
  v46[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v19 = MEMORY[0x277CBF3A0];
  v46[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v46[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[CPSEntityStyles pickerTitleFont];
  [v46[0] setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [v46[0] setTextAlignment:{4, v3}];
  v13 = [(CPSPointsOfInterestPickerViewController *)v47 pointsOfInterest];
  v12 = [v13 title];
  [v46[0] setText:?];
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)v47 setTitleLabel:v46[0], v4];
  v14 = [(CPSPointsOfInterestPickerViewController *)v47 view];
  [v14 addSubview:v46[0]];
  MEMORY[0x277D82BD8](v14);
  v45 = [[CPSPointsOfInterestTableView alloc] initWithFrame:*v19 style:v19[1], v19[2], v19[3]];
  [(CPSPointsOfInterestTableView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = v45;
  v15 = objc_opt_class();
  v17 = +[_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell identifier];
  [(CPSPointsOfInterestTableView *)v16 registerClass:v15 forCellReuseIdentifier:?];
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [(CPSPointsOfInterestTableView *)v45 setDataSource:v47, v5];
  [(CPSPointsOfInterestTableView *)v45 setDelegate:v47];
  [(CPSPointsOfInterestPickerViewController *)v47 setTableView:v45];
  v18 = [(CPSPointsOfInterestPickerViewController *)v47 view];
  [v18 addSubview:v45];
  MEMORY[0x277D82BD8](v18);
  v44 = [[CPSPointsOfInterestPickerInfoView alloc] initWithFrame:*v19, v19[1], v19[2], v19[3]];
  [(CPSPointsOfInterestPickerInfoView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSPointsOfInterestPickerInfoView *)v44 setAlpha:?];
  [(CPSPointsOfInterestPickerInfoView *)v44 setDelegate:v47];
  [(CPSPointsOfInterestPickerViewController *)v47 setInfoView:v44];
  v20 = [(CPSPointsOfInterestPickerViewController *)v47 view];
  [v20 addSubview:v44];
  MEMORY[0x277D82BD8](v20);
  v43 = objc_alloc_init(CPSActionButton);
  [(CPSActionButton *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUITemplateButton *)v43 setDelegate:v47];
  [(CPSActionButton *)v43 setLayoutDelegate:v47];
  [(CPSActionButton *)v43 setAlpha:0.0];
  v24 = CPUILocalizedStringForKey();
  v48[0] = v24;
  v23 = CPUILocalizedStringForKey();
  v48[1] = v23;
  v22 = CPUILocalizedStringForKey();
  v48[2] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  [(CPSActionButton *)v43 setAccessibilityUserInputLabels:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *&v6 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)v47 setCancelButton:v43, v6];
  v25 = [(CPSPointsOfInterestPickerViewController *)v47 view];
  [v25 addSubview:v43];
  *&v7 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v27 = [(CPSPointsOfInterestPickerViewController *)v47 traitCollection];
  v26 = CPUIImageCancelGlyph();
  [(CPSActionButton *)v43 setButtonImage:?];
  MEMORY[0x277D82BD8](v26);
  v29 = [MEMORY[0x277D75348] clearColor];
  v28 = [(CPSPointsOfInterestPickerViewController *)v47 titleLabel];
  [(UILabel *)v28 setBackgroundColor:v29];
  MEMORY[0x277D82BD8](v28);
  v31 = [MEMORY[0x277D75348] clearColor];
  v30 = [(CPSPointsOfInterestPickerViewController *)v47 tableView];
  [(CPSPointsOfInterestTableView *)v30 setBackgroundColor:v31];
  MEMORY[0x277D82BD8](v30);
  v33 = [MEMORY[0x277D75348] clearColor];
  v32 = [(CPSPointsOfInterestPickerViewController *)v47 infoView];
  [(CPSPointsOfInterestPickerInfoView *)v32 setBackgroundColor:v33];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v34 = objc_alloc(MEMORY[0x277D76220]);
  v35 = [(CPSPointsOfInterestPickerViewController *)v47 tableView];
  v42 = [v34 initWithScrollView:? edge:? style:?];
  *&v8 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v36 = [(CPSPointsOfInterestPickerViewController *)v47 titleLabel];
  [(UILabel *)v36 addInteraction:v42];
  *&v9 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  v39 = [(CPSPointsOfInterestPickerViewController *)v47 tableView];
  v38 = [(CPSPointsOfInterestTableView *)v39 topEdgeEffect];
  v37 = [MEMORY[0x277D759B8] hardStyle];
  [v38 setStyle:?];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  *&v10 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  v41 = [(CPSPointsOfInterestPickerViewController *)v47 view];
  v40 = [(CPSPointsOfInterestPickerViewController *)v47 titleLabel];
  [v41 bringSubviewToFront:?];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(v46, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointsOfInterestPickerViewController *)v5 resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  v6 = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
  v7 = [(NSArray *)v6 count];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    v4 = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSPointsOfInterestPickerViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](v4).n128_f64[0]];
    v5 = [(CPSPointsOfInterestPickerViewController *)self view];
    [v5 setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](v5);
  }
}

- (void)updateViewConstraints
{
  v7 = self;
  v6 = a2;
  v3 = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
  v4 = [(NSArray *)v3 count];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (!v4)
  {
    [(CPSPointsOfInterestPickerViewController *)v7 setupLayoutConstraints];
  }

  v5.receiver = v7;
  v5.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v5 updateViewConstraints];
}

- (void)setupLayoutConstraints
{
  v116[4] = *MEMORY[0x277D85DE8];
  v112 = self;
  v111[1] = a2;
  v111[0] = objc_opt_new();
  v110 = objc_opt_new();
  v22 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  [v22 addLayoutGuide:v110];
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v41 = [(CPSPointsOfInterestPickerViewController *)v112 titleLabel];
  v40 = [(UILabel *)v41 topAnchor];
  v39 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v38 = [v39 safeAreaLayoutGuide];
  v37 = [v38 topAnchor];
  v36 = [v40 constraintEqualToAnchor:? constant:?];
  v116[0] = v36;
  v35 = [(CPSPointsOfInterestPickerViewController *)v112 titleLabel];
  v34 = [(UILabel *)v35 leadingAnchor];
  v33 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v32 = [v33 leadingAnchor];
  v31 = [v34 constraintEqualToAnchor:? constant:?];
  v116[1] = v31;
  v30 = [(CPSPointsOfInterestPickerViewController *)v112 titleLabel];
  v29 = [(UILabel *)v30 trailingAnchor];
  v28 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v27 = [v28 trailingAnchor];
  v26 = [v29 constraintEqualToAnchor:16.0 constant:?];
  v116[2] = v26;
  v25 = [(CPSPointsOfInterestPickerViewController *)v112 titleLabel];
  v24 = [(UILabel *)v25 heightAnchor];
  v23 = [v24 constraintEqualToConstant:36.0];
  v116[3] = v23;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:?];
  v4 = v109;
  v109 = v3;
  MEMORY[0x277D82BD8](v4);
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
  *&v5 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v64 = [(CPSPointsOfInterestPickerViewController *)v112 tableView];
  v63 = [(CPSPointsOfInterestTableView *)v64 topAnchor];
  v62 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v61 = [v62 safeAreaLayoutGuide];
  v60 = [v61 topAnchor];
  v59 = [v63 constraintEqualToAnchor:?];
  v115[0] = v59;
  v58 = [(CPSPointsOfInterestPickerViewController *)v112 tableView];
  v57 = [(CPSPointsOfInterestTableView *)v58 leadingAnchor];
  v56 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v55 = [v56 safeAreaLayoutGuide];
  v54 = [v55 leadingAnchor];
  v53 = [v57 constraintEqualToAnchor:-4.0 constant:?];
  v115[1] = v53;
  v52 = [(CPSPointsOfInterestPickerViewController *)v112 tableView];
  v51 = [(CPSPointsOfInterestTableView *)v52 trailingAnchor];
  v50 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v49 = [v50 safeAreaLayoutGuide];
  v48 = [v49 trailingAnchor];
  v47 = [v51 constraintEqualToAnchor:4.0 constant:?];
  v115[2] = v47;
  v46 = [(CPSPointsOfInterestPickerViewController *)v112 tableView];
  v45 = [(CPSPointsOfInterestTableView *)v46 bottomAnchor];
  v44 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v43 = [v44 bottomAnchor];
  v42 = [v45 constraintEqualToAnchor:?];
  v115[3] = v42;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
  v7 = v108;
  v108 = v6;
  MEMORY[0x277D82BD8](v7);
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
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  UIEdgeInsetsMake();
  *&v105 = v8;
  *(&v105 + 1) = v9;
  *&v106 = v10;
  *(&v106 + 1) = v11;
  v65 = [(CPSPointsOfInterestPickerViewController *)v112 tableView];
  v103 = v105;
  v104 = v106;
  [(CPSPointsOfInterestTableView *)v65 setContentInset:v105, v106];
  *&v12 = MEMORY[0x277D82BD8](v65).n128_u64[0];
  v75 = [(CPSPointsOfInterestPickerViewController *)v112 cancelButton];
  v74 = [(CPSActionButton *)v75 centerYAnchor];
  v73 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v72 = [v73 topAnchor];
  [(CPSPointsOfInterestPickerViewController *)v112 buttonSize];
  v102[3] = v13;
  v102[4] = v14;
  v71 = [v74 constraintEqualToAnchor:v72 constant:*&v14 / 2.0 + 10.0];
  v114[0] = v71;
  v70 = [(CPSPointsOfInterestPickerViewController *)v112 cancelButton];
  v69 = [(CPSActionButton *)v70 centerXAnchor];
  v68 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v67 = [v68 trailingAnchor];
  [(CPSPointsOfInterestPickerViewController *)v112 buttonSize];
  v102[1] = v15;
  v102[2] = v16;
  v66 = [v69 constraintEqualToAnchor:v67 constant:-10.0 - *&v15 / 2.0];
  v114[1] = v66;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
  v18 = v107;
  v107 = v17;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  *&v19 = MEMORY[0x277D82BD8](v75).n128_u64[0];
  v98 = [(CPSPointsOfInterestPickerViewController *)v112 infoView];
  v97 = [(CPSPointsOfInterestPickerInfoView *)v98 topAnchor];
  v96 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v95 = [v96 topAnchor];
  v94 = [v97 constraintEqualToAnchor:?];
  v113[0] = v94;
  v93 = [(CPSPointsOfInterestPickerViewController *)v112 infoView];
  v92 = [(CPSPointsOfInterestPickerInfoView *)v93 leadingAnchor];
  v91 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v90 = [v91 safeAreaLayoutGuide];
  v89 = [v90 leadingAnchor];
  v88 = [v92 constraintEqualToAnchor:?];
  v113[1] = v88;
  v87 = [(CPSPointsOfInterestPickerViewController *)v112 infoView];
  v86 = [(CPSPointsOfInterestPickerInfoView *)v87 trailingAnchor];
  v85 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v84 = [v85 safeAreaLayoutGuide];
  v83 = [v84 trailingAnchor];
  v82 = [v86 constraintEqualToAnchor:?];
  v113[2] = v82;
  v81 = [(CPSPointsOfInterestPickerViewController *)v112 infoView];
  v80 = [(CPSPointsOfInterestPickerInfoView *)v81 bottomAnchor];
  v79 = [(CPSPointsOfInterestPickerViewController *)v112 view];
  v78 = [v79 safeAreaLayoutGuide];
  v77 = [v78 bottomAnchor];
  v76 = [v80 constraintEqualToAnchor:-8.0 constant:?];
  v113[3] = v76;
  v102[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
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
  *&v20 = MEMORY[0x277D82BD8](v98).n128_u64[0];
  [v111[0] addObjectsFromArray:{v109, v20}];
  [v111[0] addObjectsFromArray:v107];
  [v111[0] addObjectsFromArray:v108];
  [v111[0] addObjectsFromArray:v102[0]];
  v99 = [v111[0] copy];
  [(CPSPointsOfInterestPickerViewController *)v112 setLayoutConstraints:?];
  *&v21 = MEMORY[0x277D82BD8](v99).n128_u64[0];
  v100 = MEMORY[0x277CCAAD0];
  v101 = [(CPSPointsOfInterestPickerViewController *)v112 layoutConstraints];
  [v100 activateConstraints:?];
  MEMORY[0x277D82BD8](v101);
  objc_storeStrong(v102, 0);
  objc_storeStrong(&v107, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(v111, 0);
}

- (void)actionButtonPressed:(id)a3 forModel:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = [(CPSBaseEntityContentViewController *)v10 resourceProvider];
  v7 = [(CPSEntityResourceProvider *)v6 actionDelegate];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [v7 entityContentViewController:v7 didPressButton:location[0] forPOI:{v8, v4}];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = location[0];
  v4 = [(CPSPointsOfInterestPickerViewController *)v7 cancelButton];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5 == v4)
  {
    [(CPSPointsOfInterestPickerViewController *)v7 cancelButtonPressed:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)cancelButtonPressed:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSPointsOfInterestPickerViewController *)v10 delegate];
  v4 = v10;
  v5 = [(CPSPointsOfInterestPickerViewController *)v10 selectedItem];
  [(CPSPointsOfInterestPickerDelegate *)v6 picker:v4 didUnhighlightModel:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)v10 transitionToPrimaryCard];
  v7 = v10;
  v8 = [(CPSPointsOfInterestPickerViewController *)v10 selectedItem];
  [(CPSPointsOfInterestPickerViewController *)v7 deselectItem:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(location, 0);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSPointsOfInterestPickerViewController *)v9 pointsOfInterest];
  v5 = [v6 pointsOfInterest];
  v7 = [v5 count];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v19 = [(CPSPointsOfInterestPickerViewController *)v33 pointsOfInterest];
  v18 = [v19 pointsOfInterest];
  v30 = [v18 objectAtIndex:{objc_msgSend(v31, "row")}];
  MEMORY[0x277D82BD8](v18);
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = location[0];
  v21 = +[_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell identifier];
  v29 = [v20 dequeueReusableCellWithIdentifier:? forIndexPath:?];
  v22 = [v30 title];
  [v29 setTitle:?];
  v23 = [v30 subtitle];
  [v29 setSubtitle:?];
  v24 = [v30 summary];
  [v29 setTertiaryTitle:?];
  *&v5 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v26 = [(CPSPointsOfInterestPickerViewController *)v33 template];
  v25 = [v26 selectedIndex];
  [v29 setChosen:{v25 == objc_msgSend(v31, "row")}];
  MEMORY[0x277D82BD8](v26);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = [v30 title];
  v6 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  if (v27)
  {
    v16 = [v30 title];
    [v28 addObject:?];
    v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  v15 = [v30 subtitle];
  v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v15)
  {
    v14 = [v30 subtitle];
    [v28 addObject:?];
    v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  }

  v13 = [v30 summary];
  v8 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v13)
  {
    v12 = [v30 summary];
    [v28 addObject:?];
    v8 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  v10 = [v28 copy];
  [v29 setAccessibilityUserInputLabels:?];
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = [(CPSPointsOfInterestPickerViewController *)v11 pointsOfInterest];
  v6 = [v7 pointsOfInterest];
  v8 = [v6 objectAtIndex:{objc_msgSend(v9, "row")}];
  MEMORY[0x277D82BD8](v6);
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [location[0] scrollToNearestSelectedRowAtScrollPosition:2 animated:{1, v4}];
  [(CPSPointsOfInterestPickerViewController *)v11 modelDidSelect:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = [(CPSPointsOfInterestPickerViewController *)v11 pointsOfInterest];
  v6 = [v7 pointsOfInterest];
  v8 = [v6 objectAtIndex:{objc_msgSend(v9, "row")}];
  MEMORY[0x277D82BD8](v6);
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [location[0] scrollToNearestSelectedRowAtScrollPosition:2 animated:{1, v4}];
  [(CPSPointsOfInterestPickerViewController *)v11 modelDidDeselect:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v19 = location[0];
  v20 = [v30 nextFocusedIndexPath];
  v28 = [v19 cellForRowAtIndexPath:?];
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v23 = [v30 previouslyFocusedIndexPath];
  v25 = [v23 row];
  v22 = [(CPSPointsOfInterestPickerViewController *)v32 pointsOfInterest];
  v21 = [v22 pointsOfInterest];
  v24 = [v21 count];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v6 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (v25 < v24)
  {
    v15 = [(CPSPointsOfInterestPickerViewController *)v32 pointsOfInterest];
    v14 = [v15 pointsOfInterest];
    v13 = [v30 previouslyFocusedIndexPath];
    v27 = [v14 objectAtIndex:{objc_msgSend(v13, "row")}];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = [(CPSPointsOfInterestPickerViewController *)v32 delegate];
    [(CPSPointsOfInterestPickerDelegate *)v16 picker:v32 didUnhighlightModel:v27];
    MEMORY[0x277D82BD8](v16);
    objc_storeStrong(&v27, 0);
  }

  if ([v28 isHighlighted])
  {
    v11 = [(CPSPointsOfInterestPickerViewController *)v32 pointsOfInterest];
    v10 = [v11 pointsOfInterest];
    v9 = [v30 nextFocusedIndexPath];
    v26 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v12 = [(CPSPointsOfInterestPickerViewController *)v32 delegate];
    [(CPSPointsOfInterestPickerDelegate *)v12 picker:v32 didHighlightModel:v26];
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (id)selectedItem
{
  v12 = self;
  v11[1] = a2;
  v11[0] = 0;
  v9 = [(CPSPointsOfInterestPickerViewController *)self tableView];
  location = [(CPSPointsOfInterestTableView *)v9 indexPathForSelectedRow];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (location)
  {
    v8 = [(CPSPointsOfInterestPickerViewController *)v12 pointsOfInterest];
    v7 = [v8 pointsOfInterest];
    v3 = [v7 objectAtIndex:{objc_msgSend(location, "row")}];
    v4 = v11[0];
    v11[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  v6 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v11, 0);

  return v6;
}

- (void)selectItem:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSPointsOfInterestPickerViewController *)v11 pointsOfInterest];
  v5 = [v6 pointsOfInterest];
  v7 = [v5 indexOfObject:location[0]];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v9 = v7;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:{0, v3}];
    v4 = [(CPSPointsOfInterestPickerViewController *)v11 tableView];
    [(CPSPointsOfInterestTableView *)v4 selectRowAtIndexPath:v8 animated:1 scrollPosition:2];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)deselectItem:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(CPSPointsOfInterestPickerViewController *)v11 pointsOfInterest];
  v5 = [v6 pointsOfInterest];
  v7 = [v5 indexOfObject:location[0]];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v9 = v7;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:{0, v3}];
    v4 = [(CPSPointsOfInterestPickerViewController *)v11 tableView];
    [(CPSPointsOfInterestTableView *)v4 deselectRowAtIndexPath:v8 animated:0];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)modelDidSelect:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSPointsOfInterestPickerViewController *)v7 infoView];
  [(CPSPointsOfInterestPickerInfoView *)v4 updateWithModel:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)v7 transitionToSecondaryCard];
  v5 = [(CPSPointsOfInterestPickerViewController *)v7 delegate];
  [(CPSPointsOfInterestPickerDelegate *)v5 picker:v7 didSelectModel:location[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)modelDidDeselect:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSPointsOfInterestPickerViewController *)v5 delegate];
  [(CPSPointsOfInterestPickerDelegate *)v3 picker:v5 didDeselectModel:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)transitionToPrimaryCard
{
  v48 = self;
  location[1] = a2;
  if ([(CPSPointsOfInterestPickerViewController *)self pickerState])
  {
    [(CPSPointsOfInterestPickerViewController *)v48 setPickerState:0];
    objc_initWeak(location, v48);
    v46 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
    v15 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:0.25];
    [(CPSPointsOfInterestPickerViewController *)v48 setAnimator:v15];
    *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v14 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v40 = MEMORY[0x277D85DD0];
    v41 = -1073741824;
    v42 = 0;
    v43 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke;
    v44 = &unk_278D918D8;
    objc_copyWeak(&v45, location);
    [(UIViewPropertyAnimator *)v14 addAnimations:&v40];
    *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    v13 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_2;
    v38 = &unk_278D918D8;
    objc_copyWeak(&v39, location);
    [(UIViewPropertyAnimator *)v13 addAnimations:&v34];
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v12 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_3;
    v32 = &unk_278D918D8;
    objc_copyWeak(&v33, location);
    [(UIViewPropertyAnimator *)v12 addAnimations:&v28];
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v11 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_4;
    v26 = &unk_278D918D8;
    objc_copyWeak(&v27, location);
    [(UIViewPropertyAnimator *)v11 addAnimations:&v22];
    *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v10 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_5;
    v20 = &unk_278D91900;
    objc_copyWeak(&v21, location);
    [(UIViewPropertyAnimator *)v10 addCompletion:&v16];
    *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v9 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    [(UIViewPropertyAnimator *)v9 startAnimation];
    *&v8 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [(CPSPointsOfInterestPickerViewController *)v48 restoreFocusedItem];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v45);
    objc_storeStrong(&v46, 0);
    objc_destroyWeak(location);
  }
}

double __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleLabel];
  [v2 setAlpha:1.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tableView];
  [v2 setAlpha:1.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cancelButton];
  [v2 setAlpha:0.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained infoView];
  [v2 setAlpha:0.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeTransition:a2 == 0];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)transitionToSecondaryCard
{
  v48 = self;
  location[1] = a2;
  if ([(CPSPointsOfInterestPickerViewController *)self pickerState]!= 1)
  {
    [(CPSPointsOfInterestPickerViewController *)v48 setPickerState:1];
    objc_initWeak(location, v48);
    v46 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
    v12 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:0.15];
    [(CPSPointsOfInterestPickerViewController *)v48 setAnimator:v12];
    v11 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v40 = MEMORY[0x277D85DD0];
    v41 = -1073741824;
    v42 = 0;
    v43 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke;
    v44 = &unk_278D918D8;
    objc_copyWeak(v45, location);
    [(UIViewPropertyAnimator *)v11 addAnimations:&v40];
    v10 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_2;
    v38 = &unk_278D918D8;
    objc_copyWeak(&v39, location);
    [(UIViewPropertyAnimator *)v10 addAnimations:&v34];
    v9 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_3;
    v32 = &unk_278D918D8;
    objc_copyWeak(&v33, location);
    [(UIViewPropertyAnimator *)v9 addAnimations:&v28];
    v8 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_4;
    v26 = &unk_278D918D8;
    objc_copyWeak(&v27, location);
    [(UIViewPropertyAnimator *)v8 addAnimations:&v22];
    v7 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_5;
    v20 = &unk_278D91900;
    objc_copyWeak(&v21, location);
    [(UIViewPropertyAnimator *)v7 addCompletion:&v16];
    v6 = [(CPSPointsOfInterestPickerViewController *)v48 animator];
    [(UIViewPropertyAnimator *)v6 startAnimation];
    v5 = [(CPSPointsOfInterestPickerViewController *)v48 infoView];
    v4 = [(CPSPointsOfInterestPickerInfoView *)v5 _linearFocusItems];
    v3 = [v4 firstObject];
    v13 = 0;
    if (v3)
    {
      v2 = MEMORY[0x277D82BE0](v3);
    }

    else
    {
      v14 = [(CPSPointsOfInterestPickerViewController *)v48 cancelButton];
      v13 = 1;
      v2 = MEMORY[0x277D82BE0](v14);
    }

    v15 = v2;
    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [(CPSPointsOfInterestPickerViewController *)v48 _updateFocusedItem:v15, MEMORY[0x277D82BD8](v5).n128_f64[0]];
    objc_storeStrong(&v15, 0);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v39);
    objc_destroyWeak(v45);
    objc_storeStrong(&v46, 0);
    objc_destroyWeak(location);
  }
}

double __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleLabel];
  [v2 setAlpha:0.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tableView];
  [v2 setAlpha:0.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cancelButton];
  [v2 setAlpha:1.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained infoView];
  [v2 setAlpha:1.0];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeTransition:a2 == 0];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)completeTransition:(BOOL)a3
{
  if (a3)
  {
    [(CPSPointsOfInterestPickerViewController *)self setAnimator:0];
  }
}

- (void)restoreFocusedItem
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [(CPSPointsOfInterestPickerViewController *)self selectedItem];
  if (v11[0])
  {
    if (![(CPSPointsOfInterestPickerViewController *)v12 pickerState])
    {
      v6 = [(CPSPointsOfInterestPickerViewController *)v12 pointsOfInterest];
      v5 = [v6 pointsOfInterest];
      v7 = [v5 indexOfObject:v11[0]];
      MEMORY[0x277D82BD8](v5);
      *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      v10 = v7;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:{0, v2}];
        v4 = [(CPSPointsOfInterestPickerViewController *)v12 tableView];
        location = [(CPSPointsOfInterestTableView *)v4 cellForRowAtIndexPath:v9];
        *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
        if (location)
        {
          [(CPSPointsOfInterestPickerViewController *)v12 _updateFocusedItem:location, v3];
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v9, 0);
      }
    }
  }

  objc_storeStrong(v11, 0);
}

- (CGSize)buttonSize
{
  CGSizeMake_0();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)buttonGlyphSize
{
  CGSizeMake_0();
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_linearFocusItems
{
  v13 = self;
  v12[1] = a2;
  v12[0] = objc_opt_new();
  if ([(CPSPointsOfInterestPickerViewController *)v13 pickerState])
  {
    v8 = [(CPSPointsOfInterestPickerViewController *)v13 cancelButton];
    v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v8)
    {
      v7 = [(CPSPointsOfInterestPickerViewController *)v13 cancelButton];
      [v12[0] addObject:?];
      v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    }

    v6 = [(CPSPointsOfInterestPickerViewController *)v13 infoView];
    location = [(CPSPointsOfInterestPickerInfoView *)v6 _linearFocusItems];
    *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (location)
    {
      [v12[0] addObjectsFromArray:{location, v3}];
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v10 = [(CPSPointsOfInterestPickerViewController *)v13 tableView];
    v9 = [(CPSPointsOfInterestTableView *)v10 visibleCells];
    [v12[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  v5 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7 = self;
  v6[1] = a2;
  v5 = [(CPSPointsOfInterestPickerViewController *)self requestedFocusItem];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v5)
  {
    v6[0] = [(CPSPointsOfInterestPickerViewController *)v7 requestedFocusItem];
    [(CPSPointsOfInterestPickerViewController *)v7 setRequestedFocusItem:?];
    v9[0] = v6[0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    objc_storeStrong(v6, 0);
  }

  else
  {
    v8 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  }

  v3 = v8;

  return v3;
}

- (void)_updateFocusedItem:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSPointsOfInterestPickerViewController *)v7 setRequestedFocusItem:location[0]];
  v3 = objc_alloc(MEMORY[0x277D75F98]);
  v5 = [v3 initWithEnvironment:v7];
  [v5 setAllowsDeferral:0];
  v4 = [MEMORY[0x277D75518] focusSystemForEnvironment:v7];
  [v4 _requestFocusUpdate:v5];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (CPSPointsOfInterestPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
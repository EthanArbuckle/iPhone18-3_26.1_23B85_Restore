@interface CPSPointsOfInterestPickerViewController
- (CGSize)buttonGlyphSize;
- (CGSize)buttonSize;
- (CPSPointsOfInterestPickerDelegate)delegate;
- (CPSPointsOfInterestPickerViewController)initWithEntity:(id)entity resourceProvider:(id)provider;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (id)selectedItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)template;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateFocusedItem:(id)item;
- (void)actionButtonPressed:(id)pressed forModel:(id)model;
- (void)cancelButtonPressed:(id)pressed;
- (void)completeTransition:(BOOL)transition;
- (void)deselectItem:(id)item;
- (void)didSelectButton:(id)button;
- (void)didUpdateEntity:(id)entity;
- (void)loadView;
- (void)modelDidDeselect:(id)deselect;
- (void)modelDidSelect:(id)select;
- (void)resetLayoutConstraints;
- (void)restoreFocusedItem;
- (void)selectItem:(id)item;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToPrimaryCard;
- (void)transitionToSecondaryCard;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CPSPointsOfInterestPickerViewController

- (CPSPointsOfInterestPickerViewController)initWithEntity:(id)entity resourceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v10 = 0;
  objc_storeStrong(&v10, provider);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = CPSPointsOfInterestPickerViewController;
  v8 = [(CPSBaseEntityContentViewController *)&v9 initWithEntity:location[0] resourceProvider:v10];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_pickerState = 0;
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)template
{
  v3 = objc_opt_class();
  resourceProvider = [(CPSBaseEntityContentViewController *)self resourceProvider];
  entityTemplate = [(CPSEntityResourceProvider *)resourceProvider entityTemplate];
  v6 = CPSSafeCast_3(v3, entityTemplate);
  MEMORY[0x277D82BD8](entityTemplate);
  MEMORY[0x277D82BD8](resourceProvider);

  return v6;
}

- (void)didUpdateEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v8.receiver = selfCopy;
  v8.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSBaseEntityContentViewController *)&v8 didUpdateEntity:location[0]];
  [(CPSPointsOfInterestPickerViewController *)selfCopy transitionToPrimaryCard];
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  title = [pointsOfInterest title];
  titleLabel = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel setText:title];
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](title);
  *&v3 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  [(CPSPointsOfInterestTableView *)tableView reloadData];
  MEMORY[0x277D82BD8](tableView);
  objc_storeStrong(location, 0);
}

- (void)loadView
{
  selfCopy = self;
  v2[1] = a2;
  v2[0] = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setView:v2[0]];
  objc_storeStrong(v2, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setupViews];
}

- (void)setupViews
{
  v48[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v46[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v19 = MEMORY[0x277CBF3A0];
  v46[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v46[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[CPSEntityStyles pickerTitleFont];
  [v46[0] setFont:?];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [v46[0] setTextAlignment:{4, v3}];
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  title = [pointsOfInterest title];
  [v46[0] setText:?];
  MEMORY[0x277D82BD8](title);
  *&v4 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setTitleLabel:v46[0], v4];
  view = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  [view addSubview:v46[0]];
  MEMORY[0x277D82BD8](view);
  v45 = [[CPSPointsOfInterestTableView alloc] initWithFrame:*v19 style:v19[1], v19[2], v19[3]];
  [(CPSPointsOfInterestTableView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = v45;
  v15 = objc_opt_class();
  v17 = +[_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell identifier];
  [(CPSPointsOfInterestTableView *)v16 registerClass:v15 forCellReuseIdentifier:?];
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [(CPSPointsOfInterestTableView *)v45 setDataSource:selfCopy, v5];
  [(CPSPointsOfInterestTableView *)v45 setDelegate:selfCopy];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setTableView:v45];
  view2 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  [view2 addSubview:v45];
  MEMORY[0x277D82BD8](view2);
  v44 = [[CPSPointsOfInterestPickerInfoView alloc] initWithFrame:*v19, v19[1], v19[2], v19[3]];
  [(CPSPointsOfInterestPickerInfoView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSPointsOfInterestPickerInfoView *)v44 setAlpha:?];
  [(CPSPointsOfInterestPickerInfoView *)v44 setDelegate:selfCopy];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setInfoView:v44];
  view3 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  [view3 addSubview:v44];
  MEMORY[0x277D82BD8](view3);
  v43 = objc_alloc_init(CPSActionButton);
  [(CPSActionButton *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUITemplateButton *)v43 setDelegate:selfCopy];
  [(CPSActionButton *)v43 setLayoutDelegate:selfCopy];
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
  [(CPSPointsOfInterestPickerViewController *)selfCopy setCancelButton:v43, v6];
  view4 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  [view4 addSubview:v43];
  *&v7 = MEMORY[0x277D82BD8](view4).n128_u64[0];
  traitCollection = [(CPSPointsOfInterestPickerViewController *)selfCopy traitCollection];
  v26 = CPUIImageCancelGlyph();
  [(CPSActionButton *)v43 setButtonImage:?];
  MEMORY[0x277D82BD8](v26);
  clearColor = [MEMORY[0x277D75348] clearColor];
  titleLabel = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](titleLabel);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  [(CPSPointsOfInterestTableView *)tableView setBackgroundColor:clearColor2];
  MEMORY[0x277D82BD8](tableView);
  clearColor3 = [MEMORY[0x277D75348] clearColor];
  infoView = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  [(CPSPointsOfInterestPickerInfoView *)infoView setBackgroundColor:clearColor3];
  MEMORY[0x277D82BD8](infoView);
  MEMORY[0x277D82BD8](clearColor3);
  v34 = objc_alloc(MEMORY[0x277D76220]);
  tableView2 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  v42 = [v34 initWithScrollView:? edge:? style:?];
  *&v8 = MEMORY[0x277D82BD8](tableView2).n128_u64[0];
  titleLabel2 = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel2 addInteraction:v42];
  *&v9 = MEMORY[0x277D82BD8](titleLabel2).n128_u64[0];
  tableView3 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  topEdgeEffect = [(CPSPointsOfInterestTableView *)tableView3 topEdgeEffect];
  hardStyle = [MEMORY[0x277D759B8] hardStyle];
  [topEdgeEffect setStyle:?];
  MEMORY[0x277D82BD8](hardStyle);
  MEMORY[0x277D82BD8](topEdgeEffect);
  *&v10 = MEMORY[0x277D82BD8](tableView3).n128_u64[0];
  view5 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  titleLabel3 = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  [view5 bringSubviewToFront:?];
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](view5);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(v46, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointsOfInterestPickerViewController *)selfCopy resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  layoutConstraints = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
  v7 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSPointsOfInterestPickerViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](layoutConstraints2).n128_f64[0]];
    view = [(CPSPointsOfInterestPickerViewController *)self view];
    [view setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](view);
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v6 = a2;
  layoutConstraints = [(CPSPointsOfInterestPickerViewController *)self layoutConstraints];
  v4 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (!v4)
  {
    [(CPSPointsOfInterestPickerViewController *)selfCopy setupLayoutConstraints];
  }

  v5.receiver = selfCopy;
  v5.super_class = CPSPointsOfInterestPickerViewController;
  [(CPSPointsOfInterestPickerViewController *)&v5 updateViewConstraints];
}

- (void)setupLayoutConstraints
{
  v116[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v111[1] = a2;
  v111[0] = objc_opt_new();
  v110 = objc_opt_new();
  view = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  [view addLayoutGuide:v110];
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  v109 = 0;
  v108 = 0;
  v107 = 0;
  titleLabel = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  topAnchor = [(UILabel *)titleLabel topAnchor];
  view2 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:? constant:?];
  v116[0] = v36;
  titleLabel2 = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  leadingAnchor = [(UILabel *)titleLabel2 leadingAnchor];
  view3 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  leadingAnchor2 = [view3 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:? constant:?];
  v116[1] = v31;
  titleLabel3 = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  trailingAnchor = [(UILabel *)titleLabel3 trailingAnchor];
  view4 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  trailingAnchor2 = [view4 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:16.0 constant:?];
  v116[2] = v26;
  titleLabel4 = [(CPSPointsOfInterestPickerViewController *)selfCopy titleLabel];
  heightAnchor = [(UILabel *)titleLabel4 heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:36.0];
  v116[3] = v23;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:?];
  v4 = v109;
  v109 = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](titleLabel4);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](topAnchor);
  *&v5 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  topAnchor3 = [(CPSPointsOfInterestTableView *)tableView topAnchor];
  view5 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide2 topAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:?];
  v115[0] = v59;
  tableView2 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  leadingAnchor3 = [(CPSPointsOfInterestTableView *)tableView2 leadingAnchor];
  view6 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
  v53 = [leadingAnchor3 constraintEqualToAnchor:-4.0 constant:?];
  v115[1] = v53;
  tableView3 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  trailingAnchor3 = [(CPSPointsOfInterestTableView *)tableView3 trailingAnchor];
  view7 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:4.0 constant:?];
  v115[2] = v47;
  tableView4 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  bottomAnchor = [(CPSPointsOfInterestTableView *)tableView4 bottomAnchor];
  view8 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  bottomAnchor2 = [view8 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:?];
  v115[3] = v42;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
  v7 = v108;
  v108 = v6;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](tableView4);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](tableView3);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](tableView2);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](tableView);
  UIEdgeInsetsMake();
  *&v105 = v8;
  *(&v105 + 1) = v9;
  *&v106 = v10;
  *(&v106 + 1) = v11;
  tableView5 = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
  v103 = v105;
  v104 = v106;
  [(CPSPointsOfInterestTableView *)tableView5 setContentInset:v105, v106];
  *&v12 = MEMORY[0x277D82BD8](tableView5).n128_u64[0];
  cancelButton = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
  centerYAnchor = [(CPSActionButton *)cancelButton centerYAnchor];
  view9 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  topAnchor5 = [view9 topAnchor];
  [(CPSPointsOfInterestPickerViewController *)selfCopy buttonSize];
  v102[3] = v13;
  v102[4] = v14;
  v71 = [centerYAnchor constraintEqualToAnchor:topAnchor5 constant:*&v14 / 2.0 + 10.0];
  v114[0] = v71;
  cancelButton2 = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
  centerXAnchor = [(CPSActionButton *)cancelButton2 centerXAnchor];
  view10 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  trailingAnchor5 = [view10 trailingAnchor];
  [(CPSPointsOfInterestPickerViewController *)selfCopy buttonSize];
  v102[1] = v15;
  v102[2] = v16;
  v66 = [centerXAnchor constraintEqualToAnchor:trailingAnchor5 constant:-10.0 - *&v15 / 2.0];
  v114[1] = v66;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
  v18 = v107;
  v107 = v17;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](cancelButton2);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](centerYAnchor);
  *&v19 = MEMORY[0x277D82BD8](cancelButton).n128_u64[0];
  infoView = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  topAnchor6 = [(CPSPointsOfInterestPickerInfoView *)infoView topAnchor];
  view11 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  topAnchor7 = [view11 topAnchor];
  v94 = [topAnchor6 constraintEqualToAnchor:?];
  v113[0] = v94;
  infoView2 = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  leadingAnchor5 = [(CPSPointsOfInterestPickerInfoView *)infoView2 leadingAnchor];
  view12 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide5 = [view12 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide5 leadingAnchor];
  v88 = [leadingAnchor5 constraintEqualToAnchor:?];
  v113[1] = v88;
  infoView3 = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  trailingAnchor6 = [(CPSPointsOfInterestPickerInfoView *)infoView3 trailingAnchor];
  view13 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide6 = [view13 safeAreaLayoutGuide];
  trailingAnchor7 = [safeAreaLayoutGuide6 trailingAnchor];
  v82 = [trailingAnchor6 constraintEqualToAnchor:?];
  v113[2] = v82;
  infoView4 = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  bottomAnchor3 = [(CPSPointsOfInterestPickerInfoView *)infoView4 bottomAnchor];
  view14 = [(CPSPointsOfInterestPickerViewController *)selfCopy view];
  safeAreaLayoutGuide7 = [view14 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide7 bottomAnchor];
  v76 = [bottomAnchor3 constraintEqualToAnchor:-8.0 constant:?];
  v113[3] = v76;
  v102[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](view14);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](infoView4);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](view13);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](infoView3);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](view12);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](infoView2);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](topAnchor6);
  *&v20 = MEMORY[0x277D82BD8](infoView).n128_u64[0];
  [v111[0] addObjectsFromArray:{v109, v20}];
  [v111[0] addObjectsFromArray:v107];
  [v111[0] addObjectsFromArray:v108];
  [v111[0] addObjectsFromArray:v102[0]];
  v99 = [v111[0] copy];
  [(CPSPointsOfInterestPickerViewController *)selfCopy setLayoutConstraints:?];
  *&v21 = MEMORY[0x277D82BD8](v99).n128_u64[0];
  v100 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(CPSPointsOfInterestPickerViewController *)selfCopy layoutConstraints];
  [v100 activateConstraints:?];
  MEMORY[0x277D82BD8](layoutConstraints);
  objc_storeStrong(v102, 0);
  objc_storeStrong(&v107, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(v111, 0);
}

- (void)actionButtonPressed:(id)pressed forModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v8 = 0;
  objc_storeStrong(&v8, model);
  resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  actionDelegate = [(CPSEntityResourceProvider *)resourceProvider actionDelegate];
  *&v4 = MEMORY[0x277D82BD8](resourceProvider).n128_u64[0];
  if (actionDelegate)
  {
    [actionDelegate entityContentViewController:actionDelegate didPressButton:location[0] forPOI:{v8, v4}];
  }

  objc_storeStrong(&actionDelegate, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v5 = location[0];
  cancelButton = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
  *&v3 = MEMORY[0x277D82BD8](cancelButton).n128_u64[0];
  if (v5 == cancelButton)
  {
    [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButtonPressed:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)cancelButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  delegate = [(CPSPointsOfInterestPickerViewController *)selfCopy delegate];
  v4 = selfCopy;
  selectedItem = [(CPSPointsOfInterestPickerViewController *)selfCopy selectedItem];
  [(CPSPointsOfInterestPickerDelegate *)delegate picker:v4 didUnhighlightModel:?];
  MEMORY[0x277D82BD8](selectedItem);
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)selfCopy transitionToPrimaryCard];
  v7 = selfCopy;
  selectedItem2 = [(CPSPointsOfInterestPickerViewController *)selfCopy selectedItem];
  [(CPSPointsOfInterestPickerViewController *)v7 deselectItem:?];
  MEMORY[0x277D82BD8](selectedItem2);
  objc_storeStrong(location, 0);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v6PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v7 = [v6PointsOfInterest count];
  MEMORY[0x277D82BD8](v6PointsOfInterest);
  MEMORY[0x277D82BD8](pointsOfInterest);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v31 = 0;
  objc_storeStrong(&v31, path);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v19PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v30 = [v19PointsOfInterest objectAtIndex:{objc_msgSend(v31, "row")}];
  MEMORY[0x277D82BD8](v19PointsOfInterest);
  *&v4 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  v20 = location[0];
  v21 = +[_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell identifier];
  v29 = [v20 dequeueReusableCellWithIdentifier:? forIndexPath:?];
  title = [v30 title];
  [v29 setTitle:?];
  subtitle = [v30 subtitle];
  [v29 setSubtitle:?];
  summary = [v30 summary];
  [v29 setTertiaryTitle:?];
  *&v5 = MEMORY[0x277D82BD8](summary).n128_u64[0];
  template = [(CPSPointsOfInterestPickerViewController *)selfCopy template];
  selectedIndex = [template selectedIndex];
  [v29 setChosen:{selectedIndex == objc_msgSend(v31, "row")}];
  MEMORY[0x277D82BD8](template);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  title2 = [v30 title];
  v6 = MEMORY[0x277D82BD8](title2).n128_u64[0];
  if (title2)
  {
    title3 = [v30 title];
    [v28 addObject:?];
    v6 = MEMORY[0x277D82BD8](title3).n128_u64[0];
  }

  subtitle2 = [v30 subtitle];
  v7 = MEMORY[0x277D82BD8](subtitle2).n128_u64[0];
  if (subtitle2)
  {
    subtitle3 = [v30 subtitle];
    [v28 addObject:?];
    v7 = MEMORY[0x277D82BD8](subtitle3).n128_u64[0];
  }

  summary2 = [v30 summary];
  v8 = MEMORY[0x277D82BD8](summary2).n128_u64[0];
  if (summary2)
  {
    summary3 = [v30 summary];
    [v28 addObject:?];
    v8 = MEMORY[0x277D82BD8](summary3).n128_u64[0];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = 0;
  objc_storeStrong(&v9, path);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v7PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v8 = [v7PointsOfInterest objectAtIndex:{objc_msgSend(v9, "row")}];
  MEMORY[0x277D82BD8](v7PointsOfInterest);
  *&v4 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  [location[0] scrollToNearestSelectedRowAtScrollPosition:2 animated:{1, v4}];
  [(CPSPointsOfInterestPickerViewController *)selfCopy modelDidSelect:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = 0;
  objc_storeStrong(&v9, path);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v7PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v8 = [v7PointsOfInterest objectAtIndex:{objc_msgSend(v9, "row")}];
  MEMORY[0x277D82BD8](v7PointsOfInterest);
  *&v4 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  [location[0] scrollToNearestSelectedRowAtScrollPosition:2 animated:{1, v4}];
  [(CPSPointsOfInterestPickerViewController *)selfCopy modelDidDeselect:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v30 = 0;
  objc_storeStrong(&v30, context);
  v29 = 0;
  objc_storeStrong(&v29, coordinator);
  v19 = location[0];
  nextFocusedIndexPath = [v30 nextFocusedIndexPath];
  v28 = [v19 cellForRowAtIndexPath:?];
  *&v5 = MEMORY[0x277D82BD8](nextFocusedIndexPath).n128_u64[0];
  previouslyFocusedIndexPath = [v30 previouslyFocusedIndexPath];
  v25 = [previouslyFocusedIndexPath row];
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v22PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v24 = [v22PointsOfInterest count];
  MEMORY[0x277D82BD8](v22PointsOfInterest);
  MEMORY[0x277D82BD8](pointsOfInterest);
  *&v6 = MEMORY[0x277D82BD8](previouslyFocusedIndexPath).n128_u64[0];
  if (v25 < v24)
  {
    pointsOfInterest2 = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
    v15PointsOfInterest = [pointsOfInterest2 pointsOfInterest];
    previouslyFocusedIndexPath2 = [v30 previouslyFocusedIndexPath];
    v27 = [v15PointsOfInterest objectAtIndex:{objc_msgSend(previouslyFocusedIndexPath2, "row")}];
    MEMORY[0x277D82BD8](previouslyFocusedIndexPath2);
    MEMORY[0x277D82BD8](v15PointsOfInterest);
    *&v7 = MEMORY[0x277D82BD8](pointsOfInterest2).n128_u64[0];
    delegate = [(CPSPointsOfInterestPickerViewController *)selfCopy delegate];
    [(CPSPointsOfInterestPickerDelegate *)delegate picker:selfCopy didUnhighlightModel:v27];
    MEMORY[0x277D82BD8](delegate);
    objc_storeStrong(&v27, 0);
  }

  if ([v28 isHighlighted])
  {
    pointsOfInterest3 = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
    v11PointsOfInterest = [pointsOfInterest3 pointsOfInterest];
    nextFocusedIndexPath2 = [v30 nextFocusedIndexPath];
    v26 = [v11PointsOfInterest objectAtIndex:{objc_msgSend(nextFocusedIndexPath2, "row")}];
    MEMORY[0x277D82BD8](nextFocusedIndexPath2);
    MEMORY[0x277D82BD8](v11PointsOfInterest);
    *&v8 = MEMORY[0x277D82BD8](pointsOfInterest3).n128_u64[0];
    delegate2 = [(CPSPointsOfInterestPickerViewController *)selfCopy delegate];
    [(CPSPointsOfInterestPickerDelegate *)delegate2 picker:selfCopy didHighlightModel:v26];
    MEMORY[0x277D82BD8](delegate2);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (id)selectedItem
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = 0;
  tableView = [(CPSPointsOfInterestPickerViewController *)self tableView];
  location = [(CPSPointsOfInterestTableView *)tableView indexPathForSelectedRow];
  *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
  if (location)
  {
    pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
    v8PointsOfInterest = [pointsOfInterest pointsOfInterest];
    v3 = [v8PointsOfInterest objectAtIndex:{objc_msgSend(location, "row")}];
    v4 = v11[0];
    v11[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v8PointsOfInterest);
    MEMORY[0x277D82BD8](pointsOfInterest);
  }

  v6 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v11, 0);

  return v6;
}

- (void)selectItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v6PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v7 = [v6PointsOfInterest indexOfObject:location[0]];
  MEMORY[0x277D82BD8](v6PointsOfInterest);
  *&v3 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  v9 = v7;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:{0, v3}];
    tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
    [(CPSPointsOfInterestTableView *)tableView selectRowAtIndexPath:v8 animated:1 scrollPosition:2];
    MEMORY[0x277D82BD8](tableView);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)deselectItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
  v6PointsOfInterest = [pointsOfInterest pointsOfInterest];
  v7 = [v6PointsOfInterest indexOfObject:location[0]];
  MEMORY[0x277D82BD8](v6PointsOfInterest);
  *&v3 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
  v9 = v7;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:{0, v3}];
    tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
    [(CPSPointsOfInterestTableView *)tableView deselectRowAtIndexPath:v8 animated:0];
    MEMORY[0x277D82BD8](tableView);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)modelDidSelect:(id)select
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, select);
  infoView = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
  [(CPSPointsOfInterestPickerInfoView *)infoView updateWithModel:location[0]];
  *&v3 = MEMORY[0x277D82BD8](infoView).n128_u64[0];
  [(CPSPointsOfInterestPickerViewController *)selfCopy transitionToSecondaryCard];
  delegate = [(CPSPointsOfInterestPickerViewController *)selfCopy delegate];
  [(CPSPointsOfInterestPickerDelegate *)delegate picker:selfCopy didSelectModel:location[0]];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)modelDidDeselect:(id)deselect
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deselect);
  delegate = [(CPSPointsOfInterestPickerViewController *)selfCopy delegate];
  [(CPSPointsOfInterestPickerDelegate *)delegate picker:selfCopy didDeselectModel:location[0]];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (void)transitionToPrimaryCard
{
  selfCopy = self;
  location[1] = a2;
  if ([(CPSPointsOfInterestPickerViewController *)self pickerState])
  {
    [(CPSPointsOfInterestPickerViewController *)selfCopy setPickerState:0];
    objc_initWeak(location, selfCopy);
    v46 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
    v15 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:0.25];
    [(CPSPointsOfInterestPickerViewController *)selfCopy setAnimator:v15];
    *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    animator = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v40 = MEMORY[0x277D85DD0];
    v41 = -1073741824;
    v42 = 0;
    v43 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke;
    v44 = &unk_278D918D8;
    objc_copyWeak(&v45, location);
    [(UIViewPropertyAnimator *)animator addAnimations:&v40];
    *&v3 = MEMORY[0x277D82BD8](animator).n128_u64[0];
    animator2 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_2;
    v38 = &unk_278D918D8;
    objc_copyWeak(&v39, location);
    [(UIViewPropertyAnimator *)animator2 addAnimations:&v34];
    *&v4 = MEMORY[0x277D82BD8](animator2).n128_u64[0];
    animator3 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_3;
    v32 = &unk_278D918D8;
    objc_copyWeak(&v33, location);
    [(UIViewPropertyAnimator *)animator3 addAnimations:&v28];
    *&v5 = MEMORY[0x277D82BD8](animator3).n128_u64[0];
    animator4 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_4;
    v26 = &unk_278D918D8;
    objc_copyWeak(&v27, location);
    [(UIViewPropertyAnimator *)animator4 addAnimations:&v22];
    *&v6 = MEMORY[0x277D82BD8](animator4).n128_u64[0];
    animator5 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __66__CPSPointsOfInterestPickerViewController_transitionToPrimaryCard__block_invoke_5;
    v20 = &unk_278D91900;
    objc_copyWeak(&v21, location);
    [(UIViewPropertyAnimator *)animator5 addCompletion:&v16];
    *&v7 = MEMORY[0x277D82BD8](animator5).n128_u64[0];
    animator6 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    [(UIViewPropertyAnimator *)animator6 startAnimation];
    *&v8 = MEMORY[0x277D82BD8](animator6).n128_u64[0];
    [(CPSPointsOfInterestPickerViewController *)selfCopy restoreFocusedItem];
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
  selfCopy = self;
  location[1] = a2;
  if ([(CPSPointsOfInterestPickerViewController *)self pickerState]!= 1)
  {
    [(CPSPointsOfInterestPickerViewController *)selfCopy setPickerState:1];
    objc_initWeak(location, selfCopy);
    v46 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
    v12 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:0.15];
    [(CPSPointsOfInterestPickerViewController *)selfCopy setAnimator:v12];
    animator = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v40 = MEMORY[0x277D85DD0];
    v41 = -1073741824;
    v42 = 0;
    v43 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke;
    v44 = &unk_278D918D8;
    objc_copyWeak(v45, location);
    [(UIViewPropertyAnimator *)animator addAnimations:&v40];
    animator2 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_2;
    v38 = &unk_278D918D8;
    objc_copyWeak(&v39, location);
    [(UIViewPropertyAnimator *)animator2 addAnimations:&v34];
    animator3 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v28 = MEMORY[0x277D85DD0];
    v29 = -1073741824;
    v30 = 0;
    v31 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_3;
    v32 = &unk_278D918D8;
    objc_copyWeak(&v33, location);
    [(UIViewPropertyAnimator *)animator3 addAnimations:&v28];
    animator4 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_4;
    v26 = &unk_278D918D8;
    objc_copyWeak(&v27, location);
    [(UIViewPropertyAnimator *)animator4 addAnimations:&v22];
    animator5 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __68__CPSPointsOfInterestPickerViewController_transitionToSecondaryCard__block_invoke_5;
    v20 = &unk_278D91900;
    objc_copyWeak(&v21, location);
    [(UIViewPropertyAnimator *)animator5 addCompletion:&v16];
    animator6 = [(CPSPointsOfInterestPickerViewController *)selfCopy animator];
    [(UIViewPropertyAnimator *)animator6 startAnimation];
    infoView = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
    _linearFocusItems = [(CPSPointsOfInterestPickerInfoView *)infoView _linearFocusItems];
    firstObject = [_linearFocusItems firstObject];
    v13 = 0;
    if (firstObject)
    {
      v2 = MEMORY[0x277D82BE0](firstObject);
    }

    else
    {
      cancelButton = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
      v13 = 1;
      v2 = MEMORY[0x277D82BE0](cancelButton);
    }

    v15 = v2;
    if (v13)
    {
      MEMORY[0x277D82BD8](cancelButton);
    }

    MEMORY[0x277D82BD8](firstObject);
    MEMORY[0x277D82BD8](_linearFocusItems);
    [(CPSPointsOfInterestPickerViewController *)selfCopy _updateFocusedItem:v15, MEMORY[0x277D82BD8](infoView).n128_f64[0]];
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

- (void)completeTransition:(BOOL)transition
{
  if (transition)
  {
    [(CPSPointsOfInterestPickerViewController *)self setAnimator:0];
  }
}

- (void)restoreFocusedItem
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [(CPSPointsOfInterestPickerViewController *)self selectedItem];
  if (v11[0])
  {
    if (![(CPSPointsOfInterestPickerViewController *)selfCopy pickerState])
    {
      pointsOfInterest = [(CPSPointsOfInterestPickerViewController *)selfCopy pointsOfInterest];
      v6PointsOfInterest = [pointsOfInterest pointsOfInterest];
      v7 = [v6PointsOfInterest indexOfObject:v11[0]];
      MEMORY[0x277D82BD8](v6PointsOfInterest);
      *&v2 = MEMORY[0x277D82BD8](pointsOfInterest).n128_u64[0];
      v10 = v7;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:{0, v2}];
        tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
        location = [(CPSPointsOfInterestTableView *)tableView cellForRowAtIndexPath:v9];
        *&v3 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
        if (location)
        {
          [(CPSPointsOfInterestPickerViewController *)selfCopy _updateFocusedItem:location, v3];
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
  selfCopy = self;
  v12[1] = a2;
  v12[0] = objc_opt_new();
  if ([(CPSPointsOfInterestPickerViewController *)selfCopy pickerState])
  {
    cancelButton = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
    v2 = MEMORY[0x277D82BD8](cancelButton).n128_u64[0];
    if (cancelButton)
    {
      cancelButton2 = [(CPSPointsOfInterestPickerViewController *)selfCopy cancelButton];
      [v12[0] addObject:?];
      v2 = MEMORY[0x277D82BD8](cancelButton2).n128_u64[0];
    }

    infoView = [(CPSPointsOfInterestPickerViewController *)selfCopy infoView];
    location = [(CPSPointsOfInterestPickerInfoView *)infoView _linearFocusItems];
    *&v3 = MEMORY[0x277D82BD8](infoView).n128_u64[0];
    if (location)
    {
      [v12[0] addObjectsFromArray:{location, v3}];
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    tableView = [(CPSPointsOfInterestPickerViewController *)selfCopy tableView];
    visibleCells = [(CPSPointsOfInterestTableView *)tableView visibleCells];
    [v12[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](visibleCells);
    MEMORY[0x277D82BD8](tableView);
  }

  v5 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[1] = a2;
  requestedFocusItem = [(CPSPointsOfInterestPickerViewController *)self requestedFocusItem];
  *&v2 = MEMORY[0x277D82BD8](requestedFocusItem).n128_u64[0];
  if (requestedFocusItem)
  {
    v6[0] = [(CPSPointsOfInterestPickerViewController *)selfCopy requestedFocusItem];
    [(CPSPointsOfInterestPickerViewController *)selfCopy setRequestedFocusItem:?];
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

- (void)_updateFocusedItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  [(CPSPointsOfInterestPickerViewController *)selfCopy setRequestedFocusItem:location[0]];
  v3 = objc_alloc(MEMORY[0x277D75F98]);
  v5 = [v3 initWithEnvironment:selfCopy];
  [v5 setAllowsDeferral:0];
  v4 = [MEMORY[0x277D75518] focusSystemForEnvironment:selfCopy];
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
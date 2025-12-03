@interface CPSFullScreenAlertViewController
- (CPAlertTemplate)alert;
- (CPSFullScreenAlertViewController)initWithAlert:(id)alert alertDelegate:(id)delegate templateEnvironment:(id)environment;
- (id)_titleFont;
- (void)_viewDidLoad;
- (void)didSelectButton:(id)button;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSFullScreenAlertViewController

- (CPSFullScreenAlertViewController)initWithAlert:(id)alert alertDelegate:(id)delegate templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v13 = 0;
  objc_storeStrong(&v13, delegate);
  v12 = 0;
  objc_storeStrong(&v12, environment);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = CPSFullScreenAlertViewController;
  v10 = [(CPSBaseTemplateViewController *)&v11 initWithTemplate:location[0] templateDelegate:v13 templateEnvironment:v12];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_alertButtons, MEMORY[0x277CBEBF8]);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CPAlertTemplate)alert
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_21(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_viewDidLoad
{
  v73[9] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v71 = a2;
  v70.receiver = self;
  v70.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v70 _viewDidLoad];
  view = [(CPSFullScreenAlertViewController *)selfCopy view];
  v8 = view;
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  [v8 setBackgroundColor:?];
  MEMORY[0x277D82BD8](tableBackgroundColor);
  v68[1] = 1;
  v2 = [CPSAbridgableLabel alloc];
  v68[0] = [(CPSAbridgableLabel *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v68[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = v68[0];
  _titleFont = [(CPSFullScreenAlertViewController *)selfCopy _titleFont];
  [v10 setFont:?];
  *&v3 = MEMORY[0x277D82BD8](_titleFont).n128_u64[0];
  [v68[0] setTextAlignment:{1, v3}];
  v12 = v68[0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:?];
  *&v4 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
  [v68[0] setNumberOfLines:{4, v4}];
  v14 = v68[0];
  alert = [(CPSFullScreenAlertViewController *)selfCopy alert];
  titleVariants = [(CPAlertTemplate *)alert titleVariants];
  [v14 setTextVariants:?];
  MEMORY[0x277D82BD8](titleVariants);
  *&v5 = MEMORY[0x277D82BD8](alert).n128_u64[0];
  [view addSubview:{v68[0], v5}];
  v67 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v67 setDistribution:1];
  [v67 setAxis:0];
  [v67 setSpacing:20.0];
  [view addSubview:v67];
  alert2 = [(CPSFullScreenAlertViewController *)selfCopy alert];
  actions = [(CPAlertTemplate *)alert2 actions];
  v64[1] = MEMORY[0x277D85DD0];
  v64[2] = 3221225472;
  v64[3] = __48__CPSFullScreenAlertViewController__viewDidLoad__block_invoke;
  v64[4] = &unk_278D92050;
  v65 = MEMORY[0x277D82BE0](selfCopy);
  v66 = MEMORY[0x277D82BE0](v67);
  [(NSArray *)actions enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](actions);
  MEMORY[0x277D82BD8](alert2);
  v64[0] = objc_alloc_init(MEMORY[0x277D756D0]);
  view2 = [(CPSFullScreenAlertViewController *)selfCopy view];
  [view2 addLayoutGuide:v64[0]];
  *&v6 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  heightAnchor = [v64[0] heightAnchor];
  view3 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  heightAnchor2 = [safeAreaLayoutGuide heightAnchor];
  v58 = [heightAnchor constraintEqualToAnchor:0.15 multiplier:?];
  v73[0] = v58;
  topAnchor = [v64[0] topAnchor];
  view4 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:?];
  v73[1] = v53;
  topAnchor3 = [v68[0] topAnchor];
  bottomAnchor = [v64[0] bottomAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:?];
  v73[2] = v50;
  leftAnchor = [v68[0] leftAnchor];
  view5 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v45 = [leftAnchor constraintEqualToAnchor:12.0 constant:?];
  v73[3] = v45;
  rightAnchor = [v68[0] rightAnchor];
  view6 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v40 = [rightAnchor constraintEqualToAnchor:-12.0 constant:?];
  v73[4] = v40;
  bottomAnchor2 = [v67 bottomAnchor];
  view7 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide5 bottomAnchor];
  v35 = [bottomAnchor2 constraintEqualToAnchor:-24.0 constant:?];
  v73[5] = v35;
  centerXAnchor = [v67 centerXAnchor];
  view8 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide6 centerXAnchor];
  v30 = [centerXAnchor constraintEqualToAnchor:?];
  v73[6] = v30;
  leftAnchor3 = [v67 leftAnchor];
  view9 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide7 = [view9 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide7 leftAnchor];
  v25 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:12.0 constant:?];
  v73[7] = v25;
  rightAnchor3 = [v67 rightAnchor];
  view10 = [(CPSFullScreenAlertViewController *)selfCopy view];
  safeAreaLayoutGuide8 = [view10 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide8 rightAnchor];
  v20 = [rightAnchor3 constraintLessThanOrEqualToAnchor:-12.0 constant:?];
  v73[8] = v20;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:9];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](rightAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](rightAnchor3);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](leftAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](leftAnchor3);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view3);
  *&v7 = MEMORY[0x277D82BD8](heightAnchor).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v63, v7}];
  objc_storeStrong(&v63, 0);
  objc_storeStrong(v64, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(v68, 0);
  objc_storeStrong(&view, 0);
}

void __48__CPSFullScreenAlertViewController__viewDidLoad__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18[3] = a3;
  v18[2] = a4;
  v18[1] = a1;
  v18[0] = [CPSAlertButton buttonWithCPAlertAction:location[0]];
  [v18[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18[0] setDelegate:a1[4]];
  v10 = v18[0];
  v15 = [v18[0] widthAnchor];
  v14 = [v15 constraintEqualToConstant:241.0];
  v20[0] = v14;
  v13 = [v18[0] heightAnchor];
  v12 = [v13 constraintEqualToConstant:40.0];
  v20[1] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v10 addConstraints:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [a1[5] addArrangedSubview:{v18[0], v4}];
  v17 = [a1[4] alertButtons];
  v5 = [v17 arrayByAddingObject:v18[0]];
  v6 = (a1[4] + 1048);
  v7 = *v6;
  *v6 = v5;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(v18, 0);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v4 viewWillAppear:appear];
  navigationController = [(CPSFullScreenAlertViewController *)selfCopy navigationController];
  [navigationController setNavigationBarHidden:1];
  MEMORY[0x277D82BD8](navigationController);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = CPSFullScreenAlertViewController;
  [(CPSBaseTemplateViewController *)&v4 viewWillDisappear:disappear];
  navigationController = [(CPSFullScreenAlertViewController *)selfCopy navigationController];
  [navigationController setNavigationBarHidden:0];
  MEMORY[0x277D82BD8](navigationController);
}

- (id)_titleFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76A20];
  traitCollection = [(CPSFullScreenAlertViewController *)self traitCollection];
  v14[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v17 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v18[0] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v14[0];
  v15 = *MEMORY[0x277D74380];
  v16 = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v14[0];
  v14[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v14[0] size:0.0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v12;
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3 = objc_opt_class();
  v9 = CPSSafeCast_21(v3, location[0]);
  identifier = [v9 identifier];
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v7 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v4 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v7)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleAlertActionForIdentifier:identifier];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
@interface HUQuickControlTimerDetailsViewController
+ (id)controlItemPredicate;
- (BOOL)isAccessoryControllable;
- (HUQuickControlTimerDetailsViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)controlItem;
- (id)createDetailsViewController;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)mediaProfileContainer;
- (void)_addTimerControlView;
- (void)_updateConstraints;
- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation HUQuickControlTimerDetailsViewController

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (HUQuickControlTimerDetailsViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  v16.receiver = self;
  v16.super_class = HUQuickControlTimerDetailsViewController;
  v7 = [(HUQuickControlViewController *)&v16 initWithControlItems:items home:home itemUpdater:updater controlOrientation:orientation preferredControl:control];
  v8 = v7;
  if (v7)
  {
    controlItem = [(HUQuickControlTimerDetailsViewController *)v7 controlItem];
    latestResults = [controlItem latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v11)
    {
      [(HUQuickControlTimerDetailsViewController *)v8 setTitle:v11];
    }

    else
    {
      v12 = HFLocalizedString();
      [(HUQuickControlTimerDetailsViewController *)v8 setTitle:v12];
    }

    objc_opt_class();
    createDetailsViewController = [(HUQuickControlTimerDetailsViewController *)v8 createDetailsViewController];
    if (objc_opt_isKindOfClass())
    {
      v14 = createDetailsViewController;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v8->_timerTableViewController, v14);
  }

  return v8;
}

- (id)controlItem
{
  controlItems = [(HUQuickControlViewController *)self controlItems];
  v4 = [controlItems count];

  if (v4 != 1)
  {
    controlItems2 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_MoreThanOneCon_0.isa, controlItems2);
  }

  objc_opt_class();
  controlItems3 = [(HUQuickControlViewController *)self controlItems];
  anyObject = [controlItems3 anyObject];
  if (objc_opt_isKindOfClass())
  {
    v8 = anyObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)createDetailsViewController
{
  mediaProfileContainer = [(HUQuickControlTimerDetailsViewController *)self mediaProfileContainer];
  if (mediaProfileContainer)
  {
    v4 = [[HUTimerTableViewController alloc] initWithMediaProfileContainer:mediaProfileContainer];
    [(HUQuickControlViewController *)self setChildVCThatRequiresHelper:v4];
  }

  else
  {
    NSLog(&cfstr_ShouldBeImposs_0.isa);
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAccessoryControllable
{
  timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  wasControllableAtLastCheck = [timerTableViewController wasControllableAtLastCheck];

  return wasControllableAtLastCheck;
}

- (id)mediaProfileContainer
{
  controlItem = [(HUQuickControlTimerDetailsViewController *)self controlItem];
  mediaProfileContainer = [controlItem mediaProfileContainer];

  return mediaProfileContainer;
}

- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HUQuickControlTimerDetailsViewController itemSection:accessoryButtonPressedInHeader:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new timer", &v7, 0x16u);
  }

  timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  [timerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUQuickControlTimerDetailsViewController;
  [(HUQuickControlTimerDetailsViewController *)&v3 viewDidLoad];
  [(HUQuickControlTimerDetailsViewController *)self _addTimerControlView];
}

- (void)_addTimerControlView
{
  v22 = *MEMORY[0x277D85DE8];
  timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];

  if (timerTableViewController)
  {
    timerTableViewController2 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    view = [timerTableViewController2 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    timerTableViewController3 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    [(HUQuickControlTimerDetailsViewController *)self addChildViewController:timerTableViewController3];

    view2 = [(HUQuickControlTimerDetailsViewController *)self view];
    timerTableViewController4 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    view3 = [timerTableViewController4 view];
    [view2 addSubview:view3];

    timerTableViewController5 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    tableView = [timerTableViewController5 tableView];
    [tableView setScrollEnabled:0];

    timerTableViewController6 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    tableView2 = [timerTableViewController6 tableView];
    [tableView2 setAlwaysBounceVertical:0];

    timerTableViewController7 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    tableView3 = [timerTableViewController7 tableView];
    [tableView3 setShowsHorizontalScrollIndicator:0];

    timerTableViewController8 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    tableView4 = [timerTableViewController8 tableView];
    [tableView4 setShowsVerticalScrollIndicator:0];

    [(HUQuickControlTimerDetailsViewController *)self _updateConstraints];
    timerTableViewController9 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    [timerTableViewController9 didMoveToParentViewController:self];
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[HUQuickControlTimerDetailsViewController _addTimerControlView]";
      _os_log_debug_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEBUG, "(%s) [self createDetailsViewController] didn't return HUTimerTableViewController.", buf, 0xCu);
    }
  }
}

- (void)_updateConstraints
{
  v43[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  timerTableViewConstraints = [(HUQuickControlTimerDetailsViewController *)self timerTableViewConstraints];
  [v3 deactivateConstraints:timerTableViewConstraints];

  timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  view = [timerTableViewController view];
  heightAnchor = [view heightAnchor];
  timerTableViewController2 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  [timerTableViewController2 preferredContentSize];
  v10 = [heightAnchor constraintEqualToConstant:v9];
  [(HUQuickControlTimerDetailsViewController *)self setHeightConstraint:v10];

  timerTableViewController3 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  view2 = [timerTableViewController3 view];
  leadingAnchor = [view2 leadingAnchor];
  view3 = [(HUQuickControlTimerDetailsViewController *)self view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[0] = v36;
  timerTableViewController4 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  view4 = [timerTableViewController4 view];
  trailingAnchor = [view4 trailingAnchor];
  view5 = [(HUQuickControlTimerDetailsViewController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[1] = v29;
  timerTableViewController5 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  view6 = [timerTableViewController5 view];
  topAnchor = [view6 topAnchor];
  view7 = [(HUQuickControlTimerDetailsViewController *)self view];
  layoutMarginsGuide3 = [view7 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[2] = v22;
  timerTableViewController6 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  view8 = [timerTableViewController6 view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(HUQuickControlTimerDetailsViewController *)self view];
  layoutMarginsGuide4 = [view9 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v17;
  heightConstraint = [(HUQuickControlTimerDetailsViewController *)self heightConstraint];
  v43[4] = heightConstraint;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:5];
  [(HUQuickControlTimerDetailsViewController *)self setTimerTableViewConstraints:v19];

  v20 = MEMORY[0x277CCAAD0];
  timerTableViewConstraints2 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewConstraints];
  [v20 activateConstraints:timerTableViewConstraints2];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  parentViewController = [(HUQuickControlTimerDetailsViewController *)self parentViewController];
  do
  {
    v5 = parentViewController;
    parentViewController = [parentViewController parentViewController];

    parentViewController2 = [(HUQuickControlTimerDetailsViewController *)self parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      if (parentViewController)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    v4ParentViewController = [parentViewController parentViewController];
  }

  while (v4ParentViewController);
  if (parentViewController)
  {
LABEL_5:
    view = [parentViewController view];
    [view frame];
    v10 = v9 + -80.0;
    goto LABEL_8;
  }

LABEL_7:
  view = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  v8View = [view view];
  [v8View frame];
  v10 = v12;

LABEL_8:
  timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
  [timerTableViewController preferredContentSize];
  v15 = v14;

  v16 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v10, v15];

  return v16;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v21.receiver = self;
  v21.super_class = HUQuickControlTimerDetailsViewController;
  containerCopy = container;
  [(HUQuickControlTimerDetailsViewController *)&v21 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController:v21.receiver];
  v6 = [containerCopy isEqual:v5];

  if (v6)
  {
    timerTableViewController = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    [timerTableViewController preferredContentSize];
    v9 = v8;
    heightConstraint = [(HUQuickControlTimerDetailsViewController *)self heightConstraint];
    [heightConstraint setConstant:v9];

    [(HUQuickControlTimerDetailsViewController *)self preferredContentSize];
    v12 = v11;
    v14 = v13;
    timerTableViewController2 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
    [timerTableViewController2 preferredContentSize];
    v17 = v16;
    v19 = v18;

    if (v12 != v17 || v14 != v19)
    {
      timerTableViewController3 = [(HUQuickControlTimerDetailsViewController *)self timerTableViewController];
      [timerTableViewController3 preferredContentSize];
      [(HUQuickControlTimerDetailsViewController *)self setPreferredContentSize:?];
    }
  }
}

@end
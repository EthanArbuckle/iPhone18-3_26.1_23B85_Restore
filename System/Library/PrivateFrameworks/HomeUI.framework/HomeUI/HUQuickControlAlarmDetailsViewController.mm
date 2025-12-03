@interface HUQuickControlAlarmDetailsViewController
+ (id)controlItemPredicate;
- (BOOL)isAccessoryControllable;
- (HUQuickControlAlarmDetailsViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control;
- (id)controlItem;
- (id)createDetailsViewController;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)mediaProfileContainer;
- (void)_addAlarmControlView;
- (void)_updateConstraints;
- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation HUQuickControlAlarmDetailsViewController

- (HUQuickControlAlarmDetailsViewController)initWithControlItems:(id)items home:(id)home itemUpdater:(id)updater controlOrientation:(unint64_t)orientation preferredControl:(unint64_t)control
{
  v16.receiver = self;
  v16.super_class = HUQuickControlAlarmDetailsViewController;
  v7 = [(HUQuickControlViewController *)&v16 initWithControlItems:items home:home itemUpdater:updater controlOrientation:orientation preferredControl:control];
  v8 = v7;
  if (v7)
  {
    controlItem = [(HUQuickControlAlarmDetailsViewController *)v7 controlItem];
    latestResults = [controlItem latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v11)
    {
      [(HUQuickControlAlarmDetailsViewController *)v8 setTitle:v11];
    }

    else
    {
      v12 = HFLocalizedString();
      [(HUQuickControlAlarmDetailsViewController *)v8 setTitle:v12];
    }

    objc_opt_class();
    createDetailsViewController = [(HUQuickControlAlarmDetailsViewController *)v8 createDetailsViewController];
    if (objc_opt_isKindOfClass())
    {
      v14 = createDetailsViewController;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v8->_alarmTableViewController, v14);
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
    NSLog(&cfstr_MoreThanOneCon.isa, controlItems2);
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
  mediaProfileContainer = [(HUQuickControlAlarmDetailsViewController *)self mediaProfileContainer];
  if (mediaProfileContainer)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [[HUAlarmTableViewController alloc] initWithMediaProfileContainer:mediaProfileContainer];
      [(HUQuickControlViewController *)self setChildVCThatRequiresHelper:v4];
    }

    else
    {
      v4 = [[HUOLDAlarmTableViewController alloc] initWithMediaProfileContainer:mediaProfileContainer];
    }
  }

  else
  {
    NSLog(&cfstr_ShouldBeImposs.isa);
    v4 = 0;
  }

  return v4;
}

+ (id)controlItemPredicate
{
  v2 = objc_opt_class();

  return [HUQuickControlSingleItemPredicate predicateWithControlItemClass:v2];
}

- (BOOL)isAccessoryControllable
{
  if (_os_feature_enabled_impl())
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
    wasControllableAtLastCheck = [alarmTableViewController wasControllableAtLastCheck];
  }

  else
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self mediaProfileContainer];
    settings = [alarmTableViewController settings];
    wasControllableAtLastCheck = [settings isControllable];
  }

  return wasControllableAtLastCheck;
}

- (id)mediaProfileContainer
{
  controlItem = [(HUQuickControlAlarmDetailsViewController *)self controlItem];
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
    v8 = "[HUQuickControlAlarmDetailsViewController itemSection:accessoryButtonPressedInHeader:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new alarm", &v7, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
    [alarmTableViewController presentAddMobileTimerObjectViewControllerOnMainThread];
  }

  else
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
    [alarmTableViewController presentAddNewAlarmViewController];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUQuickControlAlarmDetailsViewController;
  [(HUQuickControlAlarmDetailsViewController *)&v3 viewDidLoad];
  [(HUQuickControlAlarmDetailsViewController *)self _addAlarmControlView];
}

- (void)_addAlarmControlView
{
  v42 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    objc_opt_class();
    createDetailsViewController = [(HUQuickControlAlarmDetailsViewController *)self createDetailsViewController];
    if (objc_opt_isKindOfClass())
    {
      v20 = createDetailsViewController;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    [(HUQuickControlAlarmDetailsViewController *)self setOldAlarmTableViewController:v21];

    oldAlarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];

    if (oldAlarmTableViewController)
    {
      oldAlarmTableViewController2 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      view = [oldAlarmTableViewController2 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      oldAlarmTableViewController3 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      [(HUQuickControlAlarmDetailsViewController *)self addChildViewController:oldAlarmTableViewController3];

      view2 = [(HUQuickControlAlarmDetailsViewController *)self view];
      oldAlarmTableViewController4 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      view3 = [oldAlarmTableViewController4 view];
      [view2 addSubview:view3];

      oldAlarmTableViewController5 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      tableView = [oldAlarmTableViewController5 tableView];
      [tableView setScrollEnabled:0];

      oldAlarmTableViewController6 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      tableView2 = [oldAlarmTableViewController6 tableView];
      [tableView2 setAlwaysBounceVertical:0];

      oldAlarmTableViewController7 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      tableView3 = [oldAlarmTableViewController7 tableView];
      [tableView3 setShowsHorizontalScrollIndicator:0];

      oldAlarmTableViewController8 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      tableView4 = [oldAlarmTableViewController8 tableView];
      [tableView4 setShowsVerticalScrollIndicator:0];

      [(HUQuickControlAlarmDetailsViewController *)self _updateConstraints];
      oldAlarmTableViewController9 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      goto LABEL_9;
    }

    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v41 = "[HUQuickControlAlarmDetailsViewController _addAlarmControlView]";
      v38 = "(%s) [self createDetailsViewController] didn't return HUOLDAlarmTableViewController.";
      goto LABEL_17;
    }

LABEL_15:

    return;
  }

  alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];

  if (!alarmTableViewController)
  {
    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v41 = "[HUQuickControlAlarmDetailsViewController _addAlarmControlView]";
      v38 = "(%s) [self createDetailsViewController] didn't return HUAlarmTableViewController.";
LABEL_17:
      _os_log_debug_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_DEBUG, v38, buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  alarmTableViewController2 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  view4 = [alarmTableViewController2 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  alarmTableViewController3 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  [(HUQuickControlAlarmDetailsViewController *)self addChildViewController:alarmTableViewController3];

  view5 = [(HUQuickControlAlarmDetailsViewController *)self view];
  alarmTableViewController4 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  view6 = [alarmTableViewController4 view];
  [view5 addSubview:view6];

  alarmTableViewController5 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  tableView5 = [alarmTableViewController5 tableView];
  [tableView5 setScrollEnabled:0];

  alarmTableViewController6 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  tableView6 = [alarmTableViewController6 tableView];
  [tableView6 setAlwaysBounceVertical:0];

  alarmTableViewController7 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  tableView7 = [alarmTableViewController7 tableView];
  [tableView7 setShowsHorizontalScrollIndicator:0];

  alarmTableViewController8 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  tableView8 = [alarmTableViewController8 tableView];
  [tableView8 setShowsVerticalScrollIndicator:0];

  [(HUQuickControlAlarmDetailsViewController *)self _updateConstraints];
  oldAlarmTableViewController9 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_9:
  v39 = oldAlarmTableViewController9;
  [oldAlarmTableViewController9 didMoveToParentViewController:self];
}

- (void)_updateConstraints
{
  v38[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  alarmTableViewConstraints = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewConstraints];
  [v3 deactivateConstraints:alarmTableViewConstraints];

  if (_os_feature_enabled_impl())
  {
    [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  }

  else
  {
    [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
  }
  v5 = ;
  view = [v5 view];
  heightAnchor = [view heightAnchor];
  [v5 preferredContentSize];
  v9 = [heightAnchor constraintEqualToConstant:v8];
  [(HUQuickControlAlarmDetailsViewController *)self setHeightConstraint:v9];

  view2 = [v5 view];
  leadingAnchor = [view2 leadingAnchor];
  view3 = [(HUQuickControlAlarmDetailsViewController *)self view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v32;
  view4 = [v5 view];
  trailingAnchor = [view4 trailingAnchor];
  view5 = [(HUQuickControlAlarmDetailsViewController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v25;
  v30 = v5;
  view6 = [v5 view];
  topAnchor = [view6 topAnchor];
  view7 = [(HUQuickControlAlarmDetailsViewController *)self view];
  layoutMarginsGuide3 = [view7 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v11;
  view8 = [v5 view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(HUQuickControlAlarmDetailsViewController *)self view];
  layoutMarginsGuide4 = [view9 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  [(HUQuickControlAlarmDetailsViewController *)self setAlarmTableViewConstraints:v18];

  v19 = MEMORY[0x277CCAAD0];
  alarmTableViewConstraints2 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewConstraints];
  [v19 activateConstraints:alarmTableViewConstraints2];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  parentViewController = [(HUQuickControlAlarmDetailsViewController *)self parentViewController];
  do
  {
    v5 = parentViewController;
    parentViewController = [parentViewController parentViewController];

    parentViewController2 = [(HUQuickControlAlarmDetailsViewController *)self parentViewController];
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
    goto LABEL_11;
  }

LABEL_7:
  if (_os_feature_enabled_impl())
  {
    [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  }

  else
  {
    [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
  }
  view = ;
  v8View = [view view];
  [v8View frame];
  v10 = v12;

LABEL_11:
  if (_os_feature_enabled_impl())
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_16:
    v19 = alarmTableViewController;
    [alarmTableViewController preferredContentSize];
    v21 = v20;

    goto LABEL_20;
  }

  oldAlarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
  itemManager = [oldAlarmTableViewController itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  v17 = [allDisplayedItems count];

  isAccessoryControllable = [(HUQuickControlAlarmDetailsViewController *)self isAccessoryControllable];
  if (v17 && isAccessoryControllable)
  {
    alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
    goto LABEL_16;
  }

  if (isAccessoryControllable)
  {
    v21 = 88.0;
  }

  else
  {
    v21 = 196.0;
  }

LABEL_20:
  v22 = [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:0 flexType:v10, v21];

  return v22;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v42.receiver = self;
  v42.super_class = HUQuickControlAlarmDetailsViewController;
  containerCopy = container;
  [(HUQuickControlAlarmDetailsViewController *)&v42 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  if (_os_feature_enabled_impl())
  {
    v5 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController:v42.receiver];
    v6 = [containerCopy isEqual:v5];

    if (v6)
    {
      alarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
      [alarmTableViewController preferredContentSize];
      v9 = v8;
      heightConstraint = [(HUQuickControlAlarmDetailsViewController *)self heightConstraint];
      [heightConstraint setConstant:v9];

      [(HUQuickControlAlarmDetailsViewController *)self preferredContentSize];
      v12 = v11;
      v14 = v13;
      alarmTableViewController2 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
      [alarmTableViewController2 preferredContentSize];
      v17 = v16;
      v19 = v18;

      if (v12 != v17 || v14 != v19)
      {
        alarmTableViewController3 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_16:
        v41 = alarmTableViewController3;
        [alarmTableViewController3 preferredContentSize];
        [(HUQuickControlAlarmDetailsViewController *)self setPreferredContentSize:?];
      }
    }
  }

  else
  {
    v21 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController:v42.receiver];
    v22 = [containerCopy isEqual:v21];

    if (v22)
    {
      oldAlarmTableViewController = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      itemManager = [oldAlarmTableViewController itemManager];
      allDisplayedItems = [itemManager allDisplayedItems];
      v26 = [allDisplayedItems count];

      isAccessoryControllable = [(HUQuickControlAlarmDetailsViewController *)self isAccessoryControllable];
      if (v26 && isAccessoryControllable)
      {
        oldAlarmTableViewController2 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
        [oldAlarmTableViewController2 preferredContentSize];
        v30 = v29;
      }

      else
      {
        v30 = isAccessoryControllable ? 88.0 : 196.0;
      }

      heightConstraint2 = [(HUQuickControlAlarmDetailsViewController *)self heightConstraint];
      [heightConstraint2 setConstant:v30];

      [(HUQuickControlAlarmDetailsViewController *)self preferredContentSize];
      v33 = v32;
      v35 = v34;
      oldAlarmTableViewController3 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      [oldAlarmTableViewController3 preferredContentSize];
      v38 = v37;
      v40 = v39;

      if (v33 != v38 || v35 != v40)
      {
        alarmTableViewController3 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
        goto LABEL_16;
      }
    }
  }
}

@end
@interface HUQuickControlAlarmDetailsViewController
+ (id)controlItemPredicate;
- (BOOL)isAccessoryControllable;
- (HUQuickControlAlarmDetailsViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7;
- (id)controlItem;
- (id)createDetailsViewController;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)mediaProfileContainer;
- (void)_addAlarmControlView;
- (void)_updateConstraints;
- (void)itemSection:(id)a3 accessoryButtonPressedInHeader:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUQuickControlAlarmDetailsViewController

- (HUQuickControlAlarmDetailsViewController)initWithControlItems:(id)a3 home:(id)a4 itemUpdater:(id)a5 controlOrientation:(unint64_t)a6 preferredControl:(unint64_t)a7
{
  v16.receiver = self;
  v16.super_class = HUQuickControlAlarmDetailsViewController;
  v7 = [(HUQuickControlViewController *)&v16 initWithControlItems:a3 home:a4 itemUpdater:a5 controlOrientation:a6 preferredControl:a7];
  v8 = v7;
  if (v7)
  {
    v9 = [(HUQuickControlAlarmDetailsViewController *)v7 controlItem];
    v10 = [v9 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
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
    v13 = [(HUQuickControlAlarmDetailsViewController *)v8 createDetailsViewController];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
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
  v3 = [(HUQuickControlViewController *)self controlItems];
  v4 = [v3 count];

  if (v4 != 1)
  {
    v5 = [(HUQuickControlViewController *)self controlItems];
    NSLog(&cfstr_MoreThanOneCon.isa, v5);
  }

  objc_opt_class();
  v6 = [(HUQuickControlViewController *)self controlItems];
  v7 = [v6 anyObject];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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
  v3 = [(HUQuickControlAlarmDetailsViewController *)self mediaProfileContainer];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [[HUAlarmTableViewController alloc] initWithMediaProfileContainer:v3];
      [(HUQuickControlViewController *)self setChildVCThatRequiresHelper:v4];
    }

    else
    {
      v4 = [[HUOLDAlarmTableViewController alloc] initWithMediaProfileContainer:v3];
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
    v3 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
    v4 = [v3 wasControllableAtLastCheck];
  }

  else
  {
    v3 = [(HUQuickControlAlarmDetailsViewController *)self mediaProfileContainer];
    v5 = [v3 settings];
    v4 = [v5 isControllable];
  }

  return v4;
}

- (id)mediaProfileContainer
{
  v2 = [(HUQuickControlAlarmDetailsViewController *)self controlItem];
  v3 = [v2 mediaProfileContainer];

  return v3;
}

- (void)itemSection:(id)a3 accessoryButtonPressedInHeader:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HUQuickControlAlarmDetailsViewController itemSection:accessoryButtonPressedInHeader:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new alarm", &v7, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
    [v6 presentAddMobileTimerObjectViewControllerOnMainThread];
  }

  else
  {
    v6 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
    [v6 presentAddNewAlarmViewController];
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
    v19 = [(HUQuickControlAlarmDetailsViewController *)self createDetailsViewController];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    [(HUQuickControlAlarmDetailsViewController *)self setOldAlarmTableViewController:v21];

    v22 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];

    if (v22)
    {
      v23 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v24 = [v23 view];
      [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

      v25 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      [(HUQuickControlAlarmDetailsViewController *)self addChildViewController:v25];

      v26 = [(HUQuickControlAlarmDetailsViewController *)self view];
      v27 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v28 = [v27 view];
      [v26 addSubview:v28];

      v29 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v30 = [v29 tableView];
      [v30 setScrollEnabled:0];

      v31 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v32 = [v31 tableView];
      [v32 setAlwaysBounceVertical:0];

      v33 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v34 = [v33 tableView];
      [v34 setShowsHorizontalScrollIndicator:0];

      v35 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v36 = [v35 tableView];
      [v36 setShowsVerticalScrollIndicator:0];

      [(HUQuickControlAlarmDetailsViewController *)self _updateConstraints];
      v18 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
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

  v3 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];

  if (!v3)
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

  v4 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  [(HUQuickControlAlarmDetailsViewController *)self addChildViewController:v6];

  v7 = [(HUQuickControlAlarmDetailsViewController *)self view];
  v8 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v11 = [v10 tableView];
  [v11 setScrollEnabled:0];

  v12 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v13 = [v12 tableView];
  [v13 setAlwaysBounceVertical:0];

  v14 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v15 = [v14 tableView];
  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  v17 = [v16 tableView];
  [v17 setShowsVerticalScrollIndicator:0];

  [(HUQuickControlAlarmDetailsViewController *)self _updateConstraints];
  v18 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_9:
  v39 = v18;
  [v18 didMoveToParentViewController:self];
}

- (void)_updateConstraints
{
  v38[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewConstraints];
  [v3 deactivateConstraints:v4];

  if (_os_feature_enabled_impl())
  {
    [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
  }

  else
  {
    [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
  }
  v5 = ;
  v6 = [v5 view];
  v7 = [v6 heightAnchor];
  [v5 preferredContentSize];
  v9 = [v7 constraintEqualToConstant:v8];
  [(HUQuickControlAlarmDetailsViewController *)self setHeightConstraint:v9];

  v37 = [v5 view];
  v35 = [v37 leadingAnchor];
  v36 = [(HUQuickControlAlarmDetailsViewController *)self view];
  v34 = [v36 layoutMarginsGuide];
  v33 = [v34 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33];
  v38[0] = v32;
  v31 = [v5 view];
  v28 = [v31 trailingAnchor];
  v29 = [(HUQuickControlAlarmDetailsViewController *)self view];
  v27 = [v29 layoutMarginsGuide];
  v26 = [v27 trailingAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v38[1] = v25;
  v30 = v5;
  v24 = [v5 view];
  v22 = [v24 topAnchor];
  v23 = [(HUQuickControlAlarmDetailsViewController *)self view];
  v21 = [v23 layoutMarginsGuide];
  v10 = [v21 topAnchor];
  v11 = [v22 constraintEqualToAnchor:v10];
  v38[2] = v11;
  v12 = [v5 view];
  v13 = [v12 bottomAnchor];
  v14 = [(HUQuickControlAlarmDetailsViewController *)self view];
  v15 = [v14 layoutMarginsGuide];
  v16 = [v15 bottomAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  v38[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  [(HUQuickControlAlarmDetailsViewController *)self setAlarmTableViewConstraints:v18];

  v19 = MEMORY[0x277CCAAD0];
  v20 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewConstraints];
  [v19 activateConstraints:v20];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v4 = [(HUQuickControlAlarmDetailsViewController *)self parentViewController];
  do
  {
    v5 = v4;
    v4 = [v4 parentViewController];

    v6 = [(HUQuickControlAlarmDetailsViewController *)self parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    v7 = [v4 parentViewController];
  }

  while (v7);
  if (v4)
  {
LABEL_5:
    v8 = [v4 view];
    [v8 frame];
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
  v8 = ;
  v11 = [v8 view];
  [v11 frame];
  v10 = v12;

LABEL_11:
  if (_os_feature_enabled_impl())
  {
    v13 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_16:
    v19 = v13;
    [v13 preferredContentSize];
    v21 = v20;

    goto LABEL_20;
  }

  v14 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
  v15 = [v14 itemManager];
  v16 = [v15 allDisplayedItems];
  v17 = [v16 count];

  v18 = [(HUQuickControlAlarmDetailsViewController *)self isAccessoryControllable];
  if (v17 && v18)
  {
    v13 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
    goto LABEL_16;
  }

  if (v18)
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v42.receiver = self;
  v42.super_class = HUQuickControlAlarmDetailsViewController;
  v4 = a3;
  [(HUQuickControlAlarmDetailsViewController *)&v42 preferredContentSizeDidChangeForChildContentContainer:v4];
  if (_os_feature_enabled_impl())
  {
    v5 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController:v42.receiver];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
      [v7 preferredContentSize];
      v9 = v8;
      v10 = [(HUQuickControlAlarmDetailsViewController *)self heightConstraint];
      [v10 setConstant:v9];

      [(HUQuickControlAlarmDetailsViewController *)self preferredContentSize];
      v12 = v11;
      v14 = v13;
      v15 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
      [v15 preferredContentSize];
      v17 = v16;
      v19 = v18;

      if (v12 != v17 || v14 != v19)
      {
        v20 = [(HUQuickControlAlarmDetailsViewController *)self alarmTableViewController];
LABEL_16:
        v41 = v20;
        [v20 preferredContentSize];
        [(HUQuickControlAlarmDetailsViewController *)self setPreferredContentSize:?];
      }
    }
  }

  else
  {
    v21 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController:v42.receiver];
    v22 = [v4 isEqual:v21];

    if (v22)
    {
      v23 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      v24 = [v23 itemManager];
      v25 = [v24 allDisplayedItems];
      v26 = [v25 count];

      v27 = [(HUQuickControlAlarmDetailsViewController *)self isAccessoryControllable];
      if (v26 && v27)
      {
        v28 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
        [v28 preferredContentSize];
        v30 = v29;
      }

      else
      {
        v30 = v27 ? 88.0 : 196.0;
      }

      v31 = [(HUQuickControlAlarmDetailsViewController *)self heightConstraint];
      [v31 setConstant:v30];

      [(HUQuickControlAlarmDetailsViewController *)self preferredContentSize];
      v33 = v32;
      v35 = v34;
      v36 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
      [v36 preferredContentSize];
      v38 = v37;
      v40 = v39;

      if (v33 != v38 || v35 != v40)
      {
        v20 = [(HUQuickControlAlarmDetailsViewController *)self oldAlarmTableViewController];
        goto LABEL_16;
      }
    }
  }
}

@end
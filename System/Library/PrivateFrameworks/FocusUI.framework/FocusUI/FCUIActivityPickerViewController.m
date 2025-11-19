@interface FCUIActivityPickerViewController
+ (BOOL)isOnboardingComplete;
+ (BOOL)isOnboardingEncountered;
+ (void)_markOnboardingComplete;
+ (void)_markOnboardingEncountered;
+ (void)initialize;
- (BOOL)_isConfiguringEducationCard;
- (BOOL)_updateHeaderOrFooterIfNecessary;
- (CGRect)setContractedFrame:(CGRect)a3 representedActivity:(id)a4 presentationStyle:(int64_t)a5 transitionCoordinator:(id)a6;
- (CGRect)setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 presentationStyle:(int64_t)a6 transitionCoordinator:(id)a7;
- (FCUIActivityPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_activityListView;
- (void)_configureActivityListViewWithAvailableActivities:(id)a3;
- (void)_configureActivityView:(id)a3 withLifetimesDescriptionsForActivity:(id)a4;
- (void)_configureEducationCardIfNecessary;
- (void)_dismissHeader;
- (void)_openEditUI:(id)a3;
- (void)_openSetupUI:(id)a3;
- (void)_openURL:(id)a3;
- (void)_presentActivityEditUI:(id)a3;
- (void)_setConfiguringEducationCard:(BOOL)a3;
- (void)_updatePreferredContentSize;
- (void)_updateSelectedStateOfActivityControl:(id)a3 activeActivity:(id)a4 lifetimeOfActiveActivity:(id)a5;
- (void)_updateSelectedStateOfActivityViews;
- (void)activityManager:(id)a3 lifetimeDescriptionsDidChangeForActivity:(id)a4;
- (void)availableActivitiesDidChangeForManager:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetScrollForStaticPresentation;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FCUIActivityPickerViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    FCUIRegisterLogging();
  }
}

+ (BOOL)isOnboardingEncountered
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"FCUIActivityPickerViewControllerOnboardingEncountered"];

  return v3;
}

+ (BOOL)isOnboardingComplete
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"FCUIActivityPickerViewControllerOnboardingComplete"];

  return v3;
}

- (CGRect)setExpandedFrame:(CGRect)a3 initialFrame:(CGRect)a4 representedActivity:(id)a5 presentationStyle:(int64_t)a6 transitionCoordinator:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v18 = a5;
  v19 = a7;
  [(FCUIActivityPickerViewController *)self loadViewIfNeeded];
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = [(FCUIActivityPickerViewController *)self _activityListView];
    v22 = [v21 activityViews];
    v20 = [v22 lastObject];
  }

  v23 = [(FCUIActivityPickerViewController *)self _activityListView];
  [v23 setExpandedFrame:v20 initialFrame:a6 representedActivity:v19 presentationStyle:v16 transitionCoordinator:{v15, v14, v13, x, y, width, height}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)setContractedFrame:(CGRect)a3 representedActivity:(id)a4 presentationStyle:(int64_t)a5 transitionCoordinator:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a6;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [(FCUIActivityPickerViewController *)self _activityListView];
    v17 = [v16 activityViews];
    v15 = [v17 lastObject];
  }

  v18 = [(FCUIActivityPickerViewController *)self _activityListView];
  [v18 setContractedFrame:v15 representedActivity:a5 presentationStyle:v14 transitionCoordinator:{x, y, width, height}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)resetScrollForStaticPresentation
{
  v2 = [(FCUIActivityPickerViewController *)self _activityListView];
  [v2 resetScrollForStaticPresentation];
}

- (FCUIActivityPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = FCUIActivityPickerViewController;
  v4 = [(FCUIActivityPickerViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    activityManager = v4->_activityManager;
    v4->_activityManager = v5;

    [(FCActivityManager *)v4->_activityManager addObserver:v4];
    v4->_footerPinnedToBottom = 1;
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 addObserver:v4 forKeyPath:@"FCUIActivityPickerViewControllerOnboardingComplete" options:1 context:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"FCUIActivityPickerViewControllerOnboardingComplete"];

  v4.receiver = self;
  v4.super_class = FCUIActivityPickerViewController;
  [(FCUIActivityPickerViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(FCUIActivityListView);
  [(FCUIActivityPickerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = FCUIActivityPickerViewController;
  [(FCUIActivityPickerViewController *)&v11 viewDidLoad];
  v3 = [(FCUIActivityPickerViewController *)self _activityListView];
  [v3 setFooterPinnedToBottom:self->_footerPinnedToBottom];

  v4 = objc_opt_self();
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [(FCUIActivityPickerViewController *)self registerForTraitChanges:v5 withHandler:&__block_literal_global];

  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__FCUIActivityPickerViewController_viewDidLoad__block_invoke_2;
  v8[3] = &unk_27901A3A8;
  objc_copyWeak(&v9, &location);
  dispatch_async(SerialWithQoS, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__FCUIActivityPickerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = [a3 preferredContentSizeCategory];
  v5 = [v9 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(v4, v6);

  if (v7)
  {
    v8 = [v9 _activityListView];
    [v8 adjustForContentSizeCategoryChange];
  }
}

void __47__FCUIActivityPickerViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[125] availableActivities];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__FCUIActivityPickerViewController_viewDidLoad__block_invoke_3;
    v5[3] = &unk_27901A380;
    v5[4] = v2;
    v6 = v3;
    v4 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FCUIActivityPickerViewController;
  [(FCUIActivityPickerViewController *)&v4 viewWillAppear:a3];
  [(FCActivityManager *)self->_activityManager setLifetimeDescriptionsUpdatingEnabled:1];
  [(FCUIActivityPickerViewController *)self activeActivityDidChangeForManager:self->_activityManager];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = FCUIActivityPickerViewController;
  [(FCUIActivityPickerViewController *)&v3 viewDidAppear:a3];
  [objc_opt_class() _markOnboardingEncountered];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = FCUIActivityPickerViewController;
  [(FCUIActivityPickerViewController *)&v6 viewWillDisappear:?];
  [(FCActivityManager *)self->_activityManager setLifetimeDescriptionsUpdatingEnabled:0];
  [(ActivityEditViewController *)self->_editViewController dismissViewControllerAnimated:v3 completion:0];
  editViewController = self->_editViewController;
  self->_editViewController = 0;
}

- (void)availableActivitiesDidChangeForManager:(id)a3
{
  v4 = [a3 availableActivities];
  [(FCUIActivityPickerViewController *)self _configureActivityListViewWithAvailableActivities:v4];
}

- (void)activityManager:(id)a3 lifetimeDescriptionsDidChangeForActivity:(id)a4
{
  v5 = a4;
  if (([v5 isPlaceholder] & 1) == 0)
  {
    v6 = [(FCUIActivityPickerViewController *)self _activityListView];
    v7 = [v6 activityViews];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__FCUIActivityPickerViewController_activityManager_lifetimeDescriptionsDidChangeForActivity___block_invoke;
    v10[3] = &unk_27901A3D0;
    v8 = v5;
    v11 = v8;
    v9 = [v7 bs_firstObjectPassingTest:v10];

    [(FCUIActivityPickerViewController *)self _configureActivityView:v9 withLifetimesDescriptionsForActivity:v8];
  }
}

uint64_t __93__FCUIActivityPickerViewController_activityManager_lifetimeDescriptionsDidChangeForActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [*(a1 + 32) activityUniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (BSEqualStrings() && [(FCUIActivityPickerViewController *)self _updateHeaderOrFooterIfNecessary])
  {
    [(FCUIActivityPickerViewController *)self _updatePreferredContentSize];
    v7 = [(FCUIActivityPickerViewController *)self viewIfLoaded];
    [v7 setNeedsLayout];

    [(UIViewController *)self fcui_layoutViewIfNeededAndAppearingOrAppearedWithSelectionAnimation];
  }
}

+ (void)_markOnboardingEncountered
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"FCUIActivityPickerViewControllerOnboardingEncountered"];
}

+ (void)_markOnboardingComplete
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"FCUIActivityPickerViewControllerOnboardingComplete"];
}

- (id)_activityListView
{
  v2 = [(FCUIActivityPickerViewController *)self view];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)_updatePreferredContentSize
{
  if ([(FCUIActivityPickerViewController *)self isViewLoaded])
  {
    v6 = [(FCUIActivityPickerViewController *)self _activityListView];
    v3 = [(FCUIActivityPickerViewController *)self view];
    [v3 bounds];
    [v6 sizeThatFits:{v4, v5}];
    [(FCUIActivityPickerViewController *)self setPreferredContentSize:?];
  }
}

- (void)_updateSelectedStateOfActivityControl:(id)a3 activeActivity:(id)a4 lifetimeOfActiveActivity:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 activityUniqueIdentifier];
    v24 = v8;
    v11 = [v8 activityUniqueIdentifier];
    v12 = [v10 isEqual:v11];

    [v7 setSelected:v12];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v7 menuItemElements];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          if (v12)
          {
            v19 = [*(*(&v25 + 1) + 8 * i) representedObjectIdentifier];
            v20 = [v9 lifetimeIdentifier];
            [v18 setSelected:{objc_msgSend(v19, "isEqualToString:", v20)}];
          }

          else
          {
            [*(*(&v25 + 1) + 8 * i) setSelected:0];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    v8 = v24;
    if (([v7 isPlaceholder] & 1) == 0)
    {
      if (v12 & 1 | (([v7 showsPersistentDetailText] & 1) == 0))
      {
        if (!v12)
        {
          [v7 setDetailText:0];
          goto LABEL_19;
        }

        v21 = [(FCActivityManager *)self->_activityManager localizedTerminationDescriptionForActiveActivity];
      }

      else
      {
        v21 = [v7 activityDetailText];
      }

      v22 = v21;
      [v7 setDetailText:{v21, self}];
    }
  }

LABEL_19:
}

- (void)_updateSelectedStateOfActivityViews
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(FCActivityManager *)self->_activityManager activeActivity];
  v4 = [(FCActivityManager *)self->_activityManager lifetimeOfActivity:v3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(FCUIActivityPickerViewController *)self _activityListView];
  v6 = [v5 activityViews];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = v11;
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        [(FCUIActivityPickerViewController *)self _updateSelectedStateOfActivityControl:v15 activeActivity:v3 lifetimeOfActiveActivity:v4];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(UIViewController *)self fcui_layoutViewIfNeededAndAppearingOrAppearedWithSelectionAnimation];
}

- (void)_presentActivityEditUI:(id)a3
{
  v4 = a3;
  v5 = [_TtC7FocusUI26ActivityEditViewController alloc];
  v6 = [v4 activityDescription];
  v7 = [(ActivityEditViewController *)v5 initWithActivityDescription:v6];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke;
  v17[3] = &unk_27901A420;
  objc_copyWeak(&v18, &location);
  [(ActivityEditViewController *)v7 setWillDisappearBlock:v17];
  [(FCUIActivityPickerViewController *)self presentViewController:v7 animated:1 completion:0];
  v8 = [(FCUIActivityPickerViewController *)self transitionCoordinator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke_3;
  v13[3] = &unk_27901A448;
  objc_copyWeak(&v16, &location);
  v9 = v7;
  v14 = v9;
  v10 = v4;
  v15 = v10;
  [v8 animateAlongsideTransition:v13 completion:0];

  editViewController = self->_editViewController;
  self->_editViewController = v9;
  v12 = v9;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained transitionCoordinator];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke_2;
  v3[3] = &unk_27901A3F8;
  v3[4] = WeakRetained;
  [v2 animateAlongsideTransition:v3 completion:0];
}

uint64_t __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _activityListView];
  [v2 endIsolation];

  v3 = *(a1 + 32);

  return [v3 _setEditViewController:0];
}

void __59__FCUIActivityPickerViewController__presentActivityEditUI___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 containerView];

  v5 = [WeakRetained _activityListView];
  [*(a1 + 32) visibleHeight];
  [v4 convertPoint:v5 toView:{0.0, v6}];
  [v5 isolateActivityView:*(a1 + 40) withInset:{0.0, 0.0, v7, 0.0}];
}

- (void)_openURL:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FCUIActivityPickerViewController__openURL___block_invoke;
  block[3] = &unk_27901A470;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __45__FCUIActivityPickerViewController__openURL___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = *MEMORY[0x277D0AC70];
  v14[0] = *MEMORY[0x277D0AC58];
  v14[1] = v5;
  v15[0] = MEMORY[0x277CBEC38];
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D0AC28];
  v15[2] = @"FCUIAppLaunchOriginActivityPicker";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = 0;
  v7 = [v2 openSensitiveURL:v4 withOptions:v6 error:&v11];
  v8 = v11;

  v9 = FCUILogSelection;
  if (v7)
  {
    if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_24BB26000, v9, OS_LOG_TYPE_DEFAULT, "Launched URL %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_ERROR))
  {
    __45__FCUIActivityPickerViewController__openURL___block_invoke_cold_1();
  }
}

- (void)_openEditUI:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 activitySettingsURL];

  [(FCUIActivityPickerViewController *)self _openURL:v8];
}

- (void)_openSetupUI:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 activitySetupURL];
  }

  else
  {
    [MEMORY[0x277CBEBC0] dnd_defaultSetupURL];
  }
  v8 = ;
  [(FCUIActivityPickerViewController *)self _openURL:v8];
}

- (void)_dismissHeader
{
  v2 = objc_opt_class();

  [v2 _markOnboardingComplete];
}

- (BOOL)_isConfiguringEducationCard
{
  v2 = self;
  objc_sync_enter(v2);
  isConfiguringEducationCard = v2->_isConfiguringEducationCard;
  objc_sync_exit(v2);

  return isConfiguringEducationCard;
}

- (void)_setConfiguringEducationCard:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isConfiguringEducationCard = a3;
  objc_sync_exit(obj);
}

- (void)_configureEducationCardIfNecessary
{
  v3 = [(FCUIActivityPickerViewController *)self _activityListView];
  v4 = [v3 headerView];
  if (v4)
  {
  }

  else if (![(FCUIActivityPickerViewController *)self _isConfiguringEducationCard])
  {
    [(FCUIActivityPickerViewController *)self _setConfiguringEducationCard:1];
    v5 = +[FCUIActivityPickerEducationCardView defaultEducationCardViewActivityIdentifiers];
    v6 = +[FCUIActivityPickerEducationCardView defaultEducationCardViewFallbackBaubleDescriptions];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy_;
    v22[4] = __Block_byref_object_dispose_;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 bundleIdentifier];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringByAppendingFormat:@"%@.educationCardBaubleDescriptions", v10];
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke;
    block[3] = &unk_27901A508;
    objc_copyWeak(&v20, &location);
    v16 = v5;
    v17 = v6;
    v19 = v22;
    v18 = v3;
    v13 = v6;
    v14 = v5;
    dispatch_async(SerialWithQoS, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
  }
}

void __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && [*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      v5 = [WeakRetained[125] activityWithIdentifier:v4];
      if (v5)
      {
        v6 = [[FCUIActivityBaubleDescription alloc] initWithActivityDescription:v5];
      }

      else
      {
        v6 = [*(a1 + 40) objectAtIndexedSubscript:v3];
      }

      v7 = v6;
      if (v6)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
      }

      ++v3;
    }

    while (v3 < [*(a1 + 32) count]);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_2;
  block[3] = &unk_27901A4E0;
  block[4] = WeakRetained;
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_2(uint64_t a1)
{
  if (([objc_opt_class() isOnboardingComplete] & 1) == 0)
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = *(*(*(a1 + 48) + 8) + 40);
    v3 = MEMORY[0x277D750C8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_3;
    v10[3] = &unk_27901A498;
    objc_copyWeak(&v11, &location);
    v4 = [v3 actionWithHandler:v10];
    v5 = [FCUIActivityPickerEducationCardView defaultEducationCardViewWithProminentViewBaubleDescriptions:v2 dismissAction:v4];

    v6 = [MEMORY[0x277D750C8] actionWithHandler:&__block_literal_global_46];
    [v5 setDefaultAction:v6];

    [*(a1 + 40) setHeaderView:v5];
    [*(a1 + 32) _setConfiguringEducationCard:0];
    [*(a1 + 32) _updatePreferredContentSize];
    v7 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_48;
    v8[3] = &unk_27901A470;
    v9 = *(a1 + 40);
    [v7 fcui_animateWithDefaultParameters:v8 completion:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_3_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissHeader];
}

void __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __70__FCUIActivityPickerViewController__configureEducationCardIfNecessary__block_invoke_44_cold_1();
  }
}

- (BOOL)_updateHeaderOrFooterIfNecessary
{
  if (![(FCUIActivityPickerViewController *)self isViewLoaded])
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [(FCUIActivityPickerViewController *)self _activityListView];
  if (v3)
  {
    if ([objc_opt_class() isOnboardingComplete])
    {
      [v3 setHeaderView:0];
      v4 = [v3 activityViews];
      v5 = [v4 count];
      v6 = [(FCActivityManager *)self->_activityManager maximumActivityCountForUserInterface];

      v7 = [v3 footerView];
      v8 = v7;
      if (v5 < v6)
      {

        if (!v8)
        {
          objc_initWeak(&location, self);
          objc_initWeak(&from, v3);
          v9 = [FCUIAddActivityFooterView alloc];
          v10 = MEMORY[0x277D750C8];
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"ACTIVITY_NEW_FOCUS" value:&stru_285ECE868 table:0];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __68__FCUIActivityPickerViewController__updateHeaderOrFooterIfNecessary__block_invoke_2;
          v17[3] = &unk_27901A530;
          objc_copyWeak(&v18, &location);
          objc_copyWeak(&v19, &from);
          v13 = [v10 actionWithTitle:v12 image:0 identifier:@"newFocus" handler:v17];
          v14 = [(FCUIAddActivityFooterView *)v9 initWithAction:v13];
          [v3 setFooterView:v14];

          objc_destroyWeak(&v19);
          objc_destroyWeak(&v18);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
LABEL_14:
          v15 = 1;
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (![(FCActivityManager *)self->_activityManager isDefaultConfiguration])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__FCUIActivityPickerViewController__updateHeaderOrFooterIfNecessary__block_invoke;
        block[3] = &unk_27901A470;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        goto LABEL_8;
      }

      [(FCUIActivityPickerViewController *)self _configureEducationCardIfNecessary];
    }

    [v3 setFooterView:0];
    goto LABEL_14;
  }

LABEL_8:
  v15 = 0;
LABEL_9:

  return v15;
}

uint64_t __68__FCUIActivityPickerViewController__updateHeaderOrFooterIfNecessary__block_invoke()
{
  v0 = objc_opt_class();

  return [v0 _markOnboardingComplete];
}

void __68__FCUIActivityPickerViewController__updateHeaderOrFooterIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    v3 = [v2 footerView];
    [WeakRetained _openSetupUI:v3];
  }
}

- (void)_configureActivityView:(id)a3 withLifetimesDescriptionsForActivity:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (([v6 isPlaceholder] & 1) == 0)
  {
    v7 = [v5 activityUniqueIdentifier];
    v8 = [v6 activityUniqueIdentifier];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = v6;
        obj = [v6 activityLifetimeDescriptions];
        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v34;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v33 + 1) + 8 * i);
              v16 = [v15 lifetimeIdentifier];
              v17 = MEMORY[0x277D750C8];
              v18 = [v15 lifetimeName];
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v29[2] = __96__FCUIActivityPickerViewController__configureActivityView_withLifetimesDescriptionsForActivity___block_invoke;
              v29[3] = &unk_27901A558;
              v30 = v5;
              v31 = self;
              v32 = v15;
              v19 = [v17 actionWithTitle:v18 image:0 identifier:v16 handler:v29];

              if (+[FCUILockStateProvider isDeviceLocked])
              {
                [v19 setDiscoverabilityTitle:0];
              }

              else
              {
                v20 = [v15 lifetimeMetadata];
                [v19 setDiscoverabilityTitle:v20];
              }

              [v10 addObject:v19];
            }

            v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v12);
        }

        if ([v10 count])
        {
          [v5 setMenuItemActions:v10];
          v21 = [(FCActivityManager *)self->_activityManager activeActivity];
          v22 = [(FCActivityManager *)self->_activityManager lifetimeOfActivity:v21];
          [(FCUIActivityPickerViewController *)self _updateSelectedStateOfActivityControl:v5 activeActivity:v21 lifetimeOfActiveActivity:v22];

          v6 = v26;
        }

        else
        {
          v6 = v26;
          v23 = [v26 activityLifetimesAlternativeDescription];
          v24 = [v23 length];

          if (!v24)
          {
LABEL_20:
            v25 = [(FCUIActivityPickerViewController *)self view];
            [v25 setNeedsLayout];

            [(UIViewController *)self fcui_layoutViewIfNeededAndAppearingOrAppearedWithSelectionAnimation];
            goto LABEL_21;
          }

          v21 = [v26 activityLifetimesAlternativeDescription];
          [v5 setMenuAlternativeDescription:v21];
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
}

void __96__FCUIActivityPickerViewController__configureActivityView_withLifetimesDescriptionsForActivity___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __96__FCUIActivityPickerViewController__configureActivityView_withLifetimesDescriptionsForActivity___block_invoke_cold_1();
  }

  v23 = v3;
  v4 = [a1[5] _activityManager];
  v5 = [v4 activeActivity];

  v6 = [a1[5] _activityManager];
  v7 = [v6 lifetimeOfActivity:v5];

  v8 = a1[4];
  v9 = a1[6];
  v10 = [v5 activityUniqueIdentifier];
  v11 = [v8 activityUniqueIdentifier];
  v22 = v7;
  if ([v10 isEqual:v11])
  {
    v12 = [v7 lifetimeIdentifier];
    v13 = [v9 lifetimeIdentifier];
    v14 = [v12 isEqualToString:v13] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1[5] _activityManager];
  v16 = v14 & 1;
  if (v14)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = [v23 identifier];
  v20 = [v18 stringWithFormat:@"Activity control menu item tapped: %@", v19];
  [v15 setActivity:v17 active:v16 withLifetime:v9 reason:v20];

  v21 = [a1[5] view];
  [v21 setNeedsLayout];

  [a1[5] fcui_layoutViewIfNeededAndAppearingOrAppearedWithSelectionAnimation];
}

- (void)_configureActivityListViewWithAvailableActivities:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = [(FCUIActivityPickerViewController *)self _activityListView];
  [v22 setAdjustsFontForContentSizeCategory:1];
  objc_initWeak(&location, self);
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v22 activityViews];
  v27 = [v5 mutableCopy];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v6)
  {
    v24 = *v46;
    do
    {
      v26 = v6;
      for (i = 0; i != v26; ++i)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = __Block_byref_object_copy_;
        v43 = __Block_byref_object_dispose_;
        v44 = 0;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke;
        v38[3] = &unk_27901A580;
        v38[4] = v8;
        v38[5] = &v39;
        [v27 enumerateObjectsUsingBlock:v38];
        v9 = v40[5];
        if (v9)
        {
          v10 = objc_opt_class();
          v11 = v9;
          if (v10)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
        }

        else
        {
          v13 = [[FCUIActivityControl alloc] initWithActivityDescription:v8 style:1];
        }

        if (v40[5])
        {
          [(FCUIActivityControl *)v13 setActivityDescription:v8];
          [v27 removeObject:v40[5]];
        }

        objc_initWeak(&from, v13);
        v14 = MEMORY[0x277D750C8];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_2;
        v34[3] = &unk_27901A5A8;
        objc_copyWeak(&v35, &from);
        objc_copyWeak(&v36, &location);
        v34[4] = v8;
        v15 = [v14 actionWithHandler:v34];
        [(FCUIActivityControl *)v13 setDefaultAction:v15];
        if (([v8 isPlaceholder] & 1) == 0)
        {
          v16 = MEMORY[0x277D750C8];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_72;
          v31[3] = &unk_27901A530;
          objc_copyWeak(&v32, &from);
          objc_copyWeak(&v33, &location);
          v17 = [v16 actionWithHandler:v31];
          [(FCUIActivityControl *)v13 setOptionsAction:v17];
          [(FCUIActivityPickerViewController *)self _configureActivityView:v13 withLifetimesDescriptionsForActivity:v8];
          v18 = MEMORY[0x277D750C8];
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = [v19 localizedStringForKey:@"ACTIVITY_SETTINGS" value:&stru_285ECE868 table:0];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_78;
          v28[3] = &unk_27901A530;
          objc_copyWeak(&v29, &from);
          objc_copyWeak(&v30, &location);
          v21 = [v18 actionWithTitle:v20 image:0 identifier:0 handler:v28];
          [(FCUIActivityControl *)v13 setFooterAction:v21];

          objc_destroyWeak(&v30);
          objc_destroyWeak(&v29);

          objc_destroyWeak(&v33);
          objc_destroyWeak(&v32);
        }

        [v25 addObject:v13];

        objc_destroyWeak(&v36);
        objc_destroyWeak(&v35);
        objc_destroyWeak(&from);

        _Block_object_dispose(&v39, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v6);
  }

  [v22 setActivityViews:v25];
  [(FCUIActivityPickerViewController *)self _updateHeaderOrFooterIfNecessary];
  [(FCUIActivityPickerViewController *)self _updateSelectedStateOfActivityViews];
  [(FCUIActivityPickerViewController *)self _updatePreferredContentSize];

  objc_destroyWeak(&location);
}

void __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 activityUniqueIdentifier];
  v8 = [*(a1 + 32) activityUniqueIdentifier];
  v9 = BSEqualObjects();

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_2_cold_1();
    if (!WeakRetained)
    {
      goto LABEL_11;
    }
  }

  else if (!WeakRetained)
  {
    goto LABEL_11;
  }

  if (([WeakRetained isExpanded] & 1) == 0)
  {
    v3 = [WeakRetained isPlaceholder];
    v4 = objc_loadWeakRetained(a1 + 6);
    v5 = v4;
    if (v3)
    {
      [v4 _openSetupUI:WeakRetained];
    }

    else
    {
      v6 = [v4 _activityManager];
      v7 = [v6 activeActivity];

      v8 = [a1[4] activityUniqueIdentifier];
      v9 = [v7 activityUniqueIdentifier];
      v10 = [v8 isEqual:v9];

      v11 = [v5 _activityManager];
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = a1[4];
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Activity control tapped: %@", WeakRetained];
      [v11 setActivity:v12 active:v10 ^ 1u reason:v13];
    }
  }

LABEL_11:
}

void __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_72_cold_1();
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  else if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_alloc_init(_FCCCAnimator);
  v5 = objc_alloc_init(MEMORY[0x277D763A0]);
  v6 = [v3 view];
  [v5 _setContainerView:v6];

  [v5 _setAnimator:v4];
  v7 = [v5 _transitionCoordinator];
  v8 = [v3 _activityListView];
  if ([WeakRetained isExpanded])
  {
    v9 = 0;
  }

  else
  {
    v9 = WeakRetained;
  }

  [v8 setExpandedActivityView:v9 withTransitionCoordinator:v7];

  [(_FCCCAnimator *)v4 animateTransition:v5];
  [v3 _updatePreferredContentSize];

LABEL_7:
}

void __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEBUG))
  {
    __86__FCUIActivityPickerViewController__configureActivityListViewWithAvailableActivities___block_invoke_78_cold_1();
    if (!WeakRetained)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (WeakRetained)
  {
LABEL_3:
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _openEditUI:WeakRetained];
  }

LABEL_4:
}

void __45__FCUIActivityPickerViewController__openURL___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24BB26000, v0, OS_LOG_TYPE_ERROR, "Failed to launch URL %{public}@: %{public}@", v1, 0x16u);
}

void __96__FCUIActivityPickerViewController__configureActivityView_withLifetimesDescriptionsForActivity___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24BB26000, v0, OS_LOG_TYPE_DEBUG, "Activity control menu action triggered: activityView: %{public}@; menuAction: %{public}@", v1, 0x16u);
}

@end
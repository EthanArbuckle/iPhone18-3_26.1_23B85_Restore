@interface UniversalSearchFirstTimeExperienceViewController
+ (BOOL)hasShownParsecFirstTimeUserExperience;
+ (void)userDidInteractWithParsecFirstTimeUserExperience;
- (UniversalSearchFirstTimeExperienceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UniversalSearchFirstTimeExperienceViewControllerDelegate)delegate;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)loadView;
- (void)unifiedFieldDidChange;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation UniversalSearchFirstTimeExperienceViewController

+ (BOOL)hasShownParsecFirstTimeUserExperience
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"WBSParsecHasShownFirstTimeUserExperience"];

  return v3;
}

+ (void)userDidInteractWithParsecFirstTimeUserExperience
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"WBSParsecHasShownFirstTimeUserExperience"];
  [standardUserDefaults synchronize];
}

- (UniversalSearchFirstTimeExperienceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v26.receiver = self;
  v26.super_class = UniversalSearchFirstTimeExperienceViewController;
  v8 = [(UniversalSearchFirstTimeExperienceViewController *)&v26 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = +[(WBSParsecDSession *)UniversalSearchSession];
    v10 = [v9 bag];

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v11 = getSearchUIFirstTimeExperienceViewControllerClass_softClass;
    v31 = getSearchUIFirstTimeExperienceViewControllerClass_softClass;
    if (!getSearchUIFirstTimeExperienceViewControllerClass_softClass)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __getSearchUIFirstTimeExperienceViewControllerClass_block_invoke;
      v27[3] = &unk_2781D4BD8;
      v27[4] = &v28;
      __getSearchUIFirstTimeExperienceViewControllerClass_block_invoke(v27);
      v11 = v29[3];
    }

    v12 = v11;
    _Block_object_dispose(&v28, 8);
    v25 = [v11 alloc];
    enabledDomains = [v10 enabledDomains];
    v14 = [enabledDomains containsObject:*MEMORY[0x277D4A2D8]];
    if ([enabledDomains containsObject:*MEMORY[0x277D4A2D0]])
    {
      v14 |= 8uLL;
    }

    if ([enabledDomains containsObject:*MEMORY[0x277D4A2C8]])
    {
      v14 |= 0x20uLL;
    }

    if ([enabledDomains containsObject:@"itunes"])
    {
      v14 |= 2uLL;
    }

    if ([enabledDomains containsObject:@"app_store"])
    {
      v14 |= 4uLL;
    }

    if ([enabledDomains containsObject:@"restaurants"])
    {
      v15 = v14 | 0x10;
    }

    else
    {
      v15 = v14;
    }

    v16 = MEMORY[0x277CCACA8];
    firstUseDescriptionText = [v10 firstUseDescriptionText];
    v18 = [v16 stringWithFormat:@"%@ ", firstUseDescriptionText];
    firstUseLearnMoreText = [v10 firstUseLearnMoreText];
    v20 = _WBSLocalizedString();
    v21 = [v25 initWithSupportedDomains:v15 explanationText:v18 learnMoreText:firstUseLearnMoreText continueButtonTitle:v20];
    firstTimeExperienceViewController = v8->_firstTimeExperienceViewController;
    v8->_firstTimeExperienceViewController = v21;

    v23 = v8;
  }

  return v8;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setKeyboardDismissMode:2];
  v5 = self->_scrollView;

  [(UniversalSearchFirstTimeExperienceViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UniversalSearchFirstTimeExperienceViewController;
  [(UniversalSearchFirstTimeExperienceViewController *)&v6 viewDidLoad];
  [(UniversalSearchFirstTimeExperienceViewController *)self addChildViewController:self->_firstTimeExperienceViewController];
  [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController didMoveToParentViewController:self];
  [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController setDelegate:self];
  view = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [view setAutoresizingMask:0];

  view2 = [(UniversalSearchFirstTimeExperienceViewController *)self view];
  view3 = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [view2 addSubview:view3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UniversalSearchFirstTimeExperienceViewController;
  [(UniversalSearchFirstTimeExperienceViewController *)&v4 viewDidAppear:appear];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UniversalSearchFirstTimeExperienceViewController;
  [(UniversalSearchFirstTimeExperienceViewController *)&v12 viewWillLayoutSubviews];
  view = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;
  view2 = [(UniversalSearchFirstTimeExperienceViewController *)self view];
  [view2 bounds];
  v8 = v7;
  v10 = v9;

  v11 = fmax(v5, v10);
  [view setFrame:{0.0, 0.0, v8, v11}];
  [(UIScrollView *)self->_scrollView setContentSize:v8, v11];
}

- (void)unifiedFieldDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didInteractWithUniversalSearchFirstTimeExperienceViewController:self];
}

- (void)firstTimeExperienceContinueButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained firstTimeExperienceContinueButtonPressed];
}

- (UniversalSearchFirstTimeExperienceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
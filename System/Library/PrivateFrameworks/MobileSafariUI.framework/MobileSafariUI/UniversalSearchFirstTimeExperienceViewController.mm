@interface UniversalSearchFirstTimeExperienceViewController
+ (BOOL)hasShownParsecFirstTimeUserExperience;
+ (void)userDidInteractWithParsecFirstTimeUserExperience;
- (UniversalSearchFirstTimeExperienceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UniversalSearchFirstTimeExperienceViewControllerDelegate)delegate;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)loadView;
- (void)unifiedFieldDidChange;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation UniversalSearchFirstTimeExperienceViewController

+ (BOOL)hasShownParsecFirstTimeUserExperience
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"WBSParsecHasShownFirstTimeUserExperience"];

  return v3;
}

+ (void)userDidInteractWithParsecFirstTimeUserExperience
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"WBSParsecHasShownFirstTimeUserExperience"];
  [v2 synchronize];
}

- (UniversalSearchFirstTimeExperienceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = UniversalSearchFirstTimeExperienceViewController;
  v8 = [(UniversalSearchFirstTimeExperienceViewController *)&v26 initWithNibName:v6 bundle:v7];
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
    v13 = [v10 enabledDomains];
    v14 = [v13 containsObject:*MEMORY[0x277D4A2D8]];
    if ([v13 containsObject:*MEMORY[0x277D4A2D0]])
    {
      v14 |= 8uLL;
    }

    if ([v13 containsObject:*MEMORY[0x277D4A2C8]])
    {
      v14 |= 0x20uLL;
    }

    if ([v13 containsObject:@"itunes"])
    {
      v14 |= 2uLL;
    }

    if ([v13 containsObject:@"app_store"])
    {
      v14 |= 4uLL;
    }

    if ([v13 containsObject:@"restaurants"])
    {
      v15 = v14 | 0x10;
    }

    else
    {
      v15 = v14;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [v10 firstUseDescriptionText];
    v18 = [v16 stringWithFormat:@"%@ ", v17];
    v19 = [v10 firstUseLearnMoreText];
    v20 = _WBSLocalizedString();
    v21 = [v25 initWithSupportedDomains:v15 explanationText:v18 learnMoreText:v19 continueButtonTitle:v20];
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
  v3 = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [v3 setAutoresizingMask:0];

  v4 = [(UniversalSearchFirstTimeExperienceViewController *)self view];
  v5 = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [v4 addSubview:v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UniversalSearchFirstTimeExperienceViewController;
  [(UniversalSearchFirstTimeExperienceViewController *)&v4 viewDidAppear:a3];
  [(UIScrollView *)self->_scrollView flashScrollIndicators];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UniversalSearchFirstTimeExperienceViewController;
  [(UniversalSearchFirstTimeExperienceViewController *)&v12 viewWillLayoutSubviews];
  v3 = [(SearchUIFirstTimeExperienceViewController *)self->_firstTimeExperienceViewController view];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;
  v6 = [(UniversalSearchFirstTimeExperienceViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = fmax(v5, v10);
  [v3 setFrame:{0.0, 0.0, v8, v11}];
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
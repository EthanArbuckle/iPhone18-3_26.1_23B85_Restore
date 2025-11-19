@interface WDResearchStudySourcesViewController
+ (id)tableViewSectionClasses;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDResearchStudySourcesViewController

+ (id)tableViewSectionClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WDResearchStudySourcesViewController;
  [(WDSourcesViewController *)&v5 viewDidLoad];
  v3 = [(WDResearchStudySourcesViewController *)self tableView];
  v4 = HKUIJoinStringsForAutomationIdentifier();
  [v3 setAccessibilityIdentifier:v4];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __76__WDResearchStudySourcesViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796E6DB8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(WDResearchStudySourcesViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __76__WDResearchStudySourcesViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(WDResearchStudySourcesViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

@end
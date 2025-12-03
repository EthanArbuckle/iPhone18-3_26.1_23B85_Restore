@interface HKCDADocumentDetailViewController
- (HKCDADocumentDetailViewController)initWithReportData:(id)data;
- (void)_replaceLastArrangedViewWith:(id)with;
- (void)changeReportDisplayed:(id)displayed;
- (void)searchButtonAction:(id)action;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HKCDADocumentDetailViewController

- (HKCDADocumentDetailViewController)initWithReportData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = HKCDADocumentDetailViewController;
  v5 = [(HKCDADocumentDetailViewController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    stackView = v5->_stackView;
    v5->_stackView = 0;

    reportSegmentControl = v6->_reportSegmentControl;
    v6->_reportSegmentControl = 0;

    v9 = [[HKCDADocumentReportViewController alloc] initWithDocumentData:dataCopy];
    formattedReportController = v6->_formattedReportController;
    v6->_formattedReportController = v9;

    v11 = [[HKLargePlainTextViewController alloc] initWithData:dataCopy];
    plainTextReportController = v6->_plainTextReportController;
    v6->_plainTextReportController = v11;

    searchButton = v6->_searchButton;
    v6->_searchButton = 0;

    [(HKCDADocumentDetailViewController *)v6 addChildViewController:v6->_formattedReportController];
    [(HKCDADocumentDetailViewController *)v6 addChildViewController:v6->_plainTextReportController];
  }

  return v6;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = HKCDADocumentDetailViewController;
  [(HKCDADocumentDetailViewController *)&v28 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setAxis:1];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  navigationController = [(HKCDADocumentDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundColor:secondarySystemBackgroundColor];

  v9 = [[HKBarButtonItemControl alloc] initWithSystemItem:12 preferredHeight:1 collapseHeight:0.0];
  searchInSegmentControl = self->_searchInSegmentControl;
  self->_searchInSegmentControl = v9;

  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHorizontalMargin:5.0];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl setBackgroundColor:secondarySystemBackgroundColor];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl addTarget:self action:sel_searchButtonAction_ forControlEvents:64];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHidden:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12 = [[_HKReportSegmentControl alloc] initWithBackgroundColor:secondarySystemBackgroundColor dividerColor:secondaryLabelColor rightControl:self->_searchInSegmentControl];
  reportSegmentControl = self->_reportSegmentControl;
  self->_reportSegmentControl = v12;

  segmentControl = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  [segmentControl addTarget:self action:sel_changeReportDisplayed_ forControlEvents:4096];

  [(UIStackView *)self->_stackView addArrangedSubview:self->_reportSegmentControl];
  v15 = self->_stackView;
  view = [(HKCDADocumentReportViewController *)self->_formattedReportController view];
  [(UIStackView *)v15 addArrangedSubview:view];

  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
  {

    v18 = 7;
  }

  else
  {
    mEMORY[0x1E696C608]2 = [MEMORY[0x1E696C608] sharedBehavior];
    isRealityDevice = [mEMORY[0x1E696C608]2 isRealityDevice];

    if (isRealityDevice)
    {
      v18 = 7;
    }

    else
    {
      v18 = 15;
    }
  }

  v21 = [[HKVerticalMarginView alloc] initWithSubview:self->_stackView offsetOptions:v18];
  [(HKCDADocumentDetailViewController *)self setView:v21];
  navigationItem = [(HKCDADocumentDetailViewController *)self navigationItem];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:12 target:self action:sel_searchButtonAction_];
  searchButton = self->_searchButton;
  self->_searchButton = v23;

  [navigationItem setRightBarButtonItem:self->_searchButton];
  tabBarController = [(HKCDADocumentDetailViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar setHidden:1];

  view2 = [(HKCDADocumentDetailViewController *)self view];
  [view2 setNeedsLayout];

  [(_HKReportSegmentControl *)self->_reportSegmentControl setNeedsLayout];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = HKCDADocumentDetailViewController;
  [(HKCDADocumentDetailViewController *)&v7 viewWillDisappear:disappear];
  tabBarController = [(HKCDADocumentDetailViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar setHidden:0];

  navigationController = [(HKCDADocumentDetailViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];
}

- (void)_replaceLastArrangedViewWith:(id)with
{
  withCopy = with;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([arrangedSubviews count] == 2)
  {
    lastObject = [arrangedSubviews lastObject];
    [lastObject removeFromSuperview];
    [(UIStackView *)self->_stackView addArrangedSubview:withCopy];
  }
}

- (void)changeReportDisplayed:(id)displayed
{
  segmentControl = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  selectedSegmentIndex = [segmentControl selectedSegmentIndex];

  if (selectedSegmentIndex)
  {
    if (selectedSegmentIndex != 1)
    {
      goto LABEL_6;
    }

    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__plainTextReportController;
  }

  else
  {
    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__formattedReportController;
  }

  view = [*(&self->super.super.super.isa + *v6) view];
  [(HKCDADocumentDetailViewController *)self _replaceLastArrangedViewWith:view];

LABEL_6:
  view2 = [(HKCDADocumentDetailViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)searchButtonAction:(id)action
{
  segmentControl = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  selectedSegmentIndex = [segmentControl selectedSegmentIndex];

  if (selectedSegmentIndex == 1)
  {
    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__plainTextReportController;
  }

  else
  {
    if (selectedSegmentIndex)
    {
      goto LABEL_6;
    }

    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__formattedReportController;
  }

  [*(&self->super.super.super.isa + *v6) startIncrementalSearch];
LABEL_6:
  view = [(HKCDADocumentDetailViewController *)self view];
  [view setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = HKCDADocumentDetailViewController;
  [(HKCDADocumentDetailViewController *)&v10 traitCollectionDidChange:change];
  traitCollection = [(HKCDADocumentDetailViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  v6 = verticalSizeClass == 1;
  if (verticalSizeClass == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 15;
  }

  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHidden:verticalSizeClass != 1];
  navigationController = [(HKCDADocumentDetailViewController *)self navigationController];
  [navigationController setNavigationBarHidden:v6 animated:1];

  [(HKCDADocumentDetailViewController *)self setEdgesForExtendedLayout:v7];
  view = [(HKCDADocumentDetailViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = MEMORY[0x1E69DC628];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __73__HKCDADocumentDetailViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_1E81B6A10;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  navigationItem = [(HKCDADocumentDetailViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __73__HKCDADocumentDetailViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(HKCDADocumentDetailViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

@end
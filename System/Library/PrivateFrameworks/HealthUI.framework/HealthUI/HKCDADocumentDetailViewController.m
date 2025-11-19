@interface HKCDADocumentDetailViewController
- (HKCDADocumentDetailViewController)initWithReportData:(id)a3;
- (void)_replaceLastArrangedViewWith:(id)a3;
- (void)changeReportDisplayed:(id)a3;
- (void)searchButtonAction:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HKCDADocumentDetailViewController

- (HKCDADocumentDetailViewController)initWithReportData:(id)a3
{
  v4 = a3;
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

    v9 = [[HKCDADocumentReportViewController alloc] initWithDocumentData:v4];
    formattedReportController = v6->_formattedReportController;
    v6->_formattedReportController = v9;

    v11 = [[HKLargePlainTextViewController alloc] initWithData:v4];
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
  v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v7 = [(HKCDADocumentDetailViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setBackgroundColor:v6];

  v9 = [[HKBarButtonItemControl alloc] initWithSystemItem:12 preferredHeight:1 collapseHeight:0.0];
  searchInSegmentControl = self->_searchInSegmentControl;
  self->_searchInSegmentControl = v9;

  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHorizontalMargin:5.0];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl setBackgroundColor:v6];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl addTarget:self action:sel_searchButtonAction_ forControlEvents:64];
  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHidden:1];
  v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v12 = [[_HKReportSegmentControl alloc] initWithBackgroundColor:v6 dividerColor:v11 rightControl:self->_searchInSegmentControl];
  reportSegmentControl = self->_reportSegmentControl;
  self->_reportSegmentControl = v12;

  v14 = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  [v14 addTarget:self action:sel_changeReportDisplayed_ forControlEvents:4096];

  [(UIStackView *)self->_stackView addArrangedSubview:self->_reportSegmentControl];
  v15 = self->_stackView;
  v16 = [(HKCDADocumentReportViewController *)self->_formattedReportController view];
  [(UIStackView *)v15 addArrangedSubview:v16];

  v17 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v17 isiPad])
  {

    v18 = 7;
  }

  else
  {
    v19 = [MEMORY[0x1E696C608] sharedBehavior];
    v20 = [v19 isRealityDevice];

    if (v20)
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
  v22 = [(HKCDADocumentDetailViewController *)self navigationItem];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:12 target:self action:sel_searchButtonAction_];
  searchButton = self->_searchButton;
  self->_searchButton = v23;

  [v22 setRightBarButtonItem:self->_searchButton];
  v25 = [(HKCDADocumentDetailViewController *)self tabBarController];
  v26 = [v25 tabBar];
  [v26 setHidden:1];

  v27 = [(HKCDADocumentDetailViewController *)self view];
  [v27 setNeedsLayout];

  [(_HKReportSegmentControl *)self->_reportSegmentControl setNeedsLayout];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HKCDADocumentDetailViewController;
  [(HKCDADocumentDetailViewController *)&v7 viewWillDisappear:a3];
  v4 = [(HKCDADocumentDetailViewController *)self tabBarController];
  v5 = [v4 tabBar];
  [v5 setHidden:0];

  v6 = [(HKCDADocumentDetailViewController *)self navigationController];
  [v6 setNavigationBarHidden:0 animated:1];
}

- (void)_replaceLastArrangedViewWith:(id)a3
{
  v6 = a3;
  v4 = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([v4 count] == 2)
  {
    v5 = [v4 lastObject];
    [v5 removeFromSuperview];
    [(UIStackView *)self->_stackView addArrangedSubview:v6];
  }
}

- (void)changeReportDisplayed:(id)a3
{
  v4 = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  v5 = [v4 selectedSegmentIndex];

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__plainTextReportController;
  }

  else
  {
    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__formattedReportController;
  }

  v7 = [*(&self->super.super.super.isa + *v6) view];
  [(HKCDADocumentDetailViewController *)self _replaceLastArrangedViewWith:v7];

LABEL_6:
  v8 = [(HKCDADocumentDetailViewController *)self view];
  [v8 setNeedsLayout];
}

- (void)searchButtonAction:(id)a3
{
  v4 = [(_HKReportSegmentControl *)self->_reportSegmentControl segmentControl];
  v5 = [v4 selectedSegmentIndex];

  if (v5 == 1)
  {
    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__plainTextReportController;
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = &OBJC_IVAR___HKCDADocumentDetailViewController__formattedReportController;
  }

  [*(&self->super.super.super.isa + *v6) startIncrementalSearch];
LABEL_6:
  v7 = [(HKCDADocumentDetailViewController *)self view];
  [v7 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = HKCDADocumentDetailViewController;
  [(HKCDADocumentDetailViewController *)&v10 traitCollectionDidChange:a3];
  v4 = [(HKCDADocumentDetailViewController *)self traitCollection];
  v5 = [v4 verticalSizeClass];
  v6 = v5 == 1;
  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 15;
  }

  [(HKBarButtonItemControl *)self->_searchInSegmentControl setHidden:v5 != 1];
  v8 = [(HKCDADocumentDetailViewController *)self navigationController];
  [v8 setNavigationBarHidden:v6 animated:1];

  [(HKCDADocumentDetailViewController *)self setEdgesForExtendedLayout:v7];
  v9 = [(HKCDADocumentDetailViewController *)self view];
  [v9 setNeedsLayout];
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

  v7 = [(HKCDADocumentDetailViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

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
  v2 = [(HKCDADocumentDetailViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

@end
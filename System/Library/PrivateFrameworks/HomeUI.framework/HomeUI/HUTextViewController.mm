@interface HUTextViewController
- (HUTextViewController)initWithTextTitle:(id)title;
- (id)_textContentWithDefaultAttributes;
- (id)hu_preloadContent;
- (void)_fulfillProgressIndicatorState:(BOOL)state;
- (void)_shareLog:(id)log;
- (void)loadTextFromFuture:(id)future textTitle:(id)title;
- (void)setShowProgressIndicatorView:(BOOL)view animated:(BOOL)animated;
- (void)setTextContent:(id)content;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUTextViewController

- (HUTextViewController)initWithTextTitle:(id)title
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = HUTextViewController;
  v6 = [(HUTextViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_titleText, title);
    textLabel = [(HUActivityLoadingView *)v7->_loadingView textLabel];
    [textLabel setText:titleCopy];

    v7->_showProgressIndicatorView = 1;
  }

  return v7;
}

- (void)viewDidLoad
{
  v104 = *MEMORY[0x277D85DE8];
  v100.receiver = self;
  v100.super_class = HUTextViewController;
  [(HUTextViewController *)&v100 viewDidLoad];
  v3 = objc_opt_new();
  textView = self->_textView;
  self->_textView = v3;

  [(UITextView *)self->_textView setEditable:0];
  v5 = [HUActivityLoadingView alloc];
  v6 = [(HUActivityLoadingView *)v5 initWithFrame:100 activityIndicatorStyle:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  loadingView = self->_loadingView;
  self->_loadingView = v6;

  textLabel = [(HUActivityLoadingView *)self->_loadingView textLabel];
  [textLabel setLineBreakMode:4];

  v9 = objc_opt_new();
  curtainView = self->_curtainView;
  self->_curtainView = v9;

  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UIView *)self->_curtainView setBackgroundColor:systemGroupedBackgroundColor];

  [(UIView *)self->_curtainView setAlpha:0.0];
  [(UIView *)self->_curtainView setUserInteractionEnabled:0];
  [(UIView *)self->_curtainView addSubview:self->_loadingView];
  textContent = [(HUTextViewController *)self textContent];

  if (textContent)
  {
    _textContentWithDefaultAttributes = [(HUTextViewController *)self _textContentWithDefaultAttributes];
    textView = [(HUTextViewController *)self textView];
    [textView setAttributedText:_textContentWithDefaultAttributes];
  }

  titleText = [(HUTextViewController *)self titleText];

  if (titleText)
  {
    titleText2 = [(HUTextViewController *)self titleText];
    loadingView = [(HUTextViewController *)self loadingView];
    textLabel2 = [loadingView textLabel];
    [textLabel2 setText:titleText2];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  textView2 = [(HUTextViewController *)self textView];
  v102[0] = textView2;
  curtainView = [(HUTextViewController *)self curtainView];
  v102[1] = curtainView;
  loadingView2 = [(HUTextViewController *)self loadingView];
  v102[2] = loadingView2;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];

  v23 = [v22 countByEnumeratingWithState:&v96 objects:v103 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v97;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v97 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v96 + 1) + 8 * i);
        [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
        view = [(HUTextViewController *)self view];
        [view addSubview:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v96 objects:v103 count:16];
    }

    while (v24);
  }

  v29 = objc_opt_new();
  view2 = [(HUTextViewController *)self view];
  [view2 addLayoutGuide:v29];

  heightAnchor = [v29 heightAnchor];
  view3 = [(HUTextViewController *)self view];
  heightAnchor2 = [view3 heightAnchor];
  v34 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.3];
  [v34 setActive:1];

  v74 = v29;
  topAnchor = [v29 topAnchor];
  view4 = [(HUTextViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v38 setActive:1];

  textView3 = [(HUTextViewController *)self textView];
  topAnchor3 = [textView3 topAnchor];
  view5 = [(HUTextViewController *)self view];
  topAnchor4 = [view5 topAnchor];
  v91 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v101[0] = v91;
  textView4 = [(HUTextViewController *)self textView];
  bottomAnchor = [textView4 bottomAnchor];
  view6 = [(HUTextViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v86 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v101[1] = v86;
  textView5 = [(HUTextViewController *)self textView];
  leadingAnchor = [textView5 leadingAnchor];
  view7 = [(HUTextViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v101[2] = v81;
  textView6 = [(HUTextViewController *)self textView];
  trailingAnchor = [textView6 trailingAnchor];
  view8 = [(HUTextViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v101[3] = v76;
  curtainView2 = [(HUTextViewController *)self curtainView];
  topAnchor5 = [curtainView2 topAnchor];
  view9 = [(HUTextViewController *)self view];
  topAnchor6 = [view9 topAnchor];
  v70 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v101[4] = v70;
  curtainView3 = [(HUTextViewController *)self curtainView];
  bottomAnchor3 = [curtainView3 bottomAnchor];
  view10 = [(HUTextViewController *)self view];
  bottomAnchor4 = [view10 bottomAnchor];
  v65 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v101[5] = v65;
  curtainView4 = [(HUTextViewController *)self curtainView];
  leadingAnchor3 = [curtainView4 leadingAnchor];
  view11 = [(HUTextViewController *)self view];
  leadingAnchor4 = [view11 leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v101[6] = v59;
  curtainView5 = [(HUTextViewController *)self curtainView];
  trailingAnchor3 = [curtainView5 trailingAnchor];
  view12 = [(HUTextViewController *)self view];
  trailingAnchor4 = [view12 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v101[7] = v54;
  loadingView3 = [(HUTextViewController *)self loadingView];
  centerYAnchor = [loadingView3 centerYAnchor];
  bottomAnchor5 = [v29 bottomAnchor];
  v50 = [centerYAnchor constraintEqualToAnchor:bottomAnchor5];
  v101[8] = v50;
  loadingView4 = [(HUTextViewController *)self loadingView];
  centerXAnchor = [loadingView4 centerXAnchor];
  curtainView6 = [(HUTextViewController *)self curtainView];
  centerXAnchor2 = [curtainView6 centerXAnchor];
  v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v101[9] = v42;
  loadingView5 = [(HUTextViewController *)self loadingView];
  widthAnchor = [loadingView5 widthAnchor];
  view13 = [(HUTextViewController *)self view];
  layoutMarginsGuide = [view13 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  v48 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  v101[10] = v48;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:11];

  [MEMORY[0x277CCAAD0] activateConstraints:v63];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = HUTextViewController;
  [(HUTextViewController *)&v12 viewWillAppear:?];
  if ([(HUTextViewController *)self showsShareButton])
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel__shareLog_];
    shareButton = self->_shareButton;
    self->_shareButton = v5;

    shareButton = [(HUTextViewController *)self shareButton];
    navigationItem = [(HUTextViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:shareButton];
  }

  [(HUTextViewController *)self _fulfillProgressIndicatorState:appearCopy];
  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  textView = [(HUTextViewController *)self textView];
  [textView setContentOffset:{v9, v10}];
}

- (id)hu_preloadContent
{
  loadingFuture = [(HUTextViewController *)self loadingFuture];

  if (loadingFuture)
  {
    [(HUTextViewController *)self loadingFuture];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (void)setTextContent:(id)content
{
  contentCopy = content;
  if (([(NSAttributedString *)self->_textContent isEqual:?]& 1) == 0)
  {
    v4 = [contentCopy copy];
    textContent = self->_textContent;
    self->_textContent = v4;

    _textContentWithDefaultAttributes = [(HUTextViewController *)self _textContentWithDefaultAttributes];
    textView = [(HUTextViewController *)self textView];
    [textView setAttributedText:_textContentWithDefaultAttributes];
  }
}

- (void)setShowProgressIndicatorView:(BOOL)view animated:(BOOL)animated
{
  if (self->_showProgressIndicatorView != view)
  {
    animatedCopy = animated;
    self->_showProgressIndicatorView = view;
    if ([(HUTextViewController *)self isViewLoaded])
    {

      [(HUTextViewController *)self _fulfillProgressIndicatorState:animatedCopy];
    }
  }
}

- (void)loadTextFromFuture:(id)future textTitle:(id)title
{
  futureCopy = future;
  titleCopy = title;
  if (!futureCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTextViewController.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"loadFuture"}];
  }

  [(HUTextViewController *)self setTitleText:titleCopy];
  loadingView = [(HUTextViewController *)self loadingView];
  textLabel = [loadingView textLabel];
  [textLabel setText:titleCopy];

  loadingView2 = [(HUTextViewController *)self loadingView];
  [loadingView2 sizeToFit];

  view = [(HUTextViewController *)self view];
  [view setNeedsLayout];

  if (([futureCopy isFinished] & 1) == 0)
  {
    [(HUTextViewController *)self setShowProgressIndicatorView:1 animated:[(HUTextViewController *)self isViewLoaded]^ 1];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HUTextViewController_loadTextFromFuture_textTitle___block_invoke;
  v15[3] = &unk_277DB8460;
  objc_copyWeak(&v16, &location);
  v13 = [futureCopy addCompletionBlock:v15];
  [(HUTextViewController *)self setLoadingFuture:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __53__HUTextViewController_loadTextFromFuture_textTitle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HUTextViewController_loadTextFromFuture_textTitle___block_invoke_2;
  block[3] = &unk_277DB76C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __53__HUTextViewController_loadTextFromFuture_textTitle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!*(a1 + 32))
  {
    [WeakRetained setTextContent:*(a1 + 40)];
    WeakRetained = v3;
  }

  [WeakRetained setShowProgressIndicatorView:0];
}

- (id)_textContentWithDefaultAttributes
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  textContent = [(HUTextViewController *)self textContent];
  v6 = [textContent hf_attributedStringWithDefaultAttributes:v4];

  return v6;
}

- (void)_shareLog:(id)log
{
  v15[1] = *MEMORY[0x277D85DE8];
  textContent = [(HUTextViewController *)self textContent];
  v5 = objc_alloc(MEMORY[0x277D546D8]);
  v15[0] = textContent;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  [v7 setExcludedActivityCategories:1];
  v8 = *MEMORY[0x277D54740];
  v14[0] = *MEMORY[0x277D54718];
  v14[1] = v8;
  v9 = *MEMORY[0x277D54780];
  v14[2] = *MEMORY[0x277D54708];
  v14[3] = v9;
  v14[4] = *MEMORY[0x277D54778];
  v14[5] = @"com.apple.mobilenotes.SharingExtension";
  v14[6] = @"com.apple.reminders.RemindersEditorExtension";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
  [v7 setExcludedActivityTypes:v10];

  navigationItem = [(HUTextViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:rightBarButtonItem];

  [(HUTextViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_fulfillProgressIndicatorState:(BOOL)state
{
  stateCopy = state;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HUTextViewController__fulfillProgressIndicatorState___block_invoke;
  aBlock[3] = &unk_277DB8488;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (stateCopy)
  {
    v6 = objc_alloc(MEMORY[0x277D75D40]);
    if ([(HUTextViewController *)self showProgressIndicatorView])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __55__HUTextViewController__fulfillProgressIndicatorState___block_invoke_2;
    v12 = &unk_277DB84B0;
    v13 = v5;
    v8 = [v6 initWithDuration:v7 curve:&v9 animations:0.25];
    [v8 startAnimation];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v5[2](v5);
    [MEMORY[0x277CD9FF0] commit];
  }
}

void __55__HUTextViewController__fulfillProgressIndicatorState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) showProgressIndicatorView];
  v3 = [*(a1 + 32) loadingView];
  v4 = [v3 activityIndicatorView];
  v5 = v4;
  if (v2)
  {
    [v4 startAnimating];
    v6 = 1.0;
    v7 = 0.800000012;
  }

  else
  {
    [v4 stopAnimating];
    v7 = 0.0;
    v6 = 0.0;
  }

  v8 = [*(a1 + 32) curtainView];
  [v8 setAlpha:v7];

  v9 = [*(a1 + 32) loadingView];
  [v9 setAlpha:v6];

  v10 = [*(a1 + 32) shareButton];
  [v10 setEnabled:v2 ^ 1u];
}

@end
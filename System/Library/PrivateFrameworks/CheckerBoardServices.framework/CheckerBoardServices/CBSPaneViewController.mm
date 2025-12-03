@interface CBSPaneViewController
- (void)_setupPrimaryButton;
- (void)_setupSecondaryButton;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CBSPaneViewController

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2433DB000, v3, OS_LOG_TYPE_DEFAULT, "Created an alternating colored square", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBSPaneViewController;
  [(CBSTableViewController *)&v4 viewDidLoad];
  [(CBSPaneViewController *)self _setupPrimaryButton];
  [(CBSPaneViewController *)self _setupSecondaryButton];
}

- (void)_setupPrimaryButton
{
  primaryButtonText = [(CBSPaneViewController *)self primaryButtonText];
  v4 = [primaryButtonText length];

  if (v4)
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    [(CBSPaneViewController *)self setPrimaryButton:v5];

    v6 = MEMORY[0x277D74300];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v9 = 24.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 26.0;
    }

    v10 = [v6 _lightSystemFontOfSize:v9];
    primaryButton = [(CBSPaneViewController *)self primaryButton];
    titleLabel = [primaryButton titleLabel];
    [titleLabel setFont:v10];

    primaryButton2 = [(CBSPaneViewController *)self primaryButton];
    titleLabel2 = [primaryButton2 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    primaryButton3 = [(CBSPaneViewController *)self primaryButton];
    titleLabel3 = [primaryButton3 titleLabel];
    [titleLabel3 setTextAlignment:1];

    primaryButton4 = [(CBSPaneViewController *)self primaryButton];
    primaryButtonText2 = [(CBSPaneViewController *)self primaryButtonText];
    [primaryButton4 setTitle:primaryButtonText2 forState:0];

    primaryButton5 = [(CBSPaneViewController *)self primaryButton];
    [primaryButton5 setAutoresizingMask:5];

    primaryButton6 = [(CBSPaneViewController *)self primaryButton];
    [primaryButton6 sizeToFit];

    primaryButton7 = [(CBSPaneViewController *)self primaryButton];
    [primaryButton7 addTarget:self action:sel_primaryButtonTapped_ forControlEvents:64];

    tableView = [(CBSTableViewController *)self tableView];
    primaryButton8 = [(CBSPaneViewController *)self primaryButton];
    [tableView addSubview:primaryButton8];
  }
}

- (void)_setupSecondaryButton
{
  secondaryButtonText = [(CBSPaneViewController *)self secondaryButtonText];
  v4 = [secondaryButtonText length];

  if (v4)
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    [(CBSPaneViewController *)self setSecondaryButton:v5];

    v6 = MEMORY[0x277D74300];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v9 = 17.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 20.0;
    }

    v10 = [v6 systemFontOfSize:v9];
    secondaryButton = [(CBSPaneViewController *)self secondaryButton];
    titleLabel = [secondaryButton titleLabel];
    [titleLabel setFont:v10];

    secondaryButton2 = [(CBSPaneViewController *)self secondaryButton];
    titleLabel2 = [secondaryButton2 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    secondaryButton3 = [(CBSPaneViewController *)self secondaryButton];
    titleLabel3 = [secondaryButton3 titleLabel];
    [titleLabel3 setTextAlignment:1];

    secondaryButton4 = [(CBSPaneViewController *)self secondaryButton];
    secondaryButtonText2 = [(CBSPaneViewController *)self secondaryButtonText];
    [secondaryButton4 setTitle:secondaryButtonText2 forState:0];

    secondaryButton5 = [(CBSPaneViewController *)self secondaryButton];
    [secondaryButton5 setAutoresizingMask:5];

    secondaryButton6 = [(CBSPaneViewController *)self secondaryButton];
    [secondaryButton6 sizeToFit];

    secondaryButton7 = [(CBSPaneViewController *)self secondaryButton];
    [secondaryButton7 addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:64];

    tableView = [(CBSTableViewController *)self tableView];
    secondaryButton8 = [(CBSPaneViewController *)self secondaryButton];
    [tableView addSubview:secondaryButton8];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = CheckerBoardLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2433DB000, v3, OS_LOG_TYPE_DEFAULT, "View has just laid out its subview", buf, 2u);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v62.receiver = self;
  v62.super_class = CBSPaneViewController;
  [(CBSPaneViewController *)&v62 viewDidLayoutSubviews];
  tableView = [(CBSTableViewController *)self tableView];
  [tableView bounds];
  v8 = v7;
  v10 = v9;

  mEMORY[0x277D4DAA8] = [MEMORY[0x277D4DAA8] sharedStyle];
  tableView2 = [(CBSTableViewController *)self tableView];
  [mEMORY[0x277D4DAA8] edgeInsetsForTable:tableView2];
  v14 = v13;
  v16 = v15;

  mEMORY[0x277D4DAA8]2 = [MEMORY[0x277D4DAA8] sharedStyle];
  view = [(CBSPaneViewController *)self view];
  [mEMORY[0x277D4DAA8]2 horizontalMarginForView:view];
  v20 = -(v14 - v19 * 2.0) - v16;

  v21 = v8 - fmax(v20, 0.0);
  primaryButton = [(CBSPaneViewController *)self primaryButton];

  if (primaryButton)
  {
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = 184.0;
    }

    else
    {
      v23 = 112.0;
    }

    primaryButton2 = [(CBSPaneViewController *)self primaryButton];
    titleLabel = [primaryButton2 titleLabel];
    [titleLabel sizeThatFits:{v21, 1.79769313e308}];
    v27 = v26;
    v29 = v28;

    if (v21 < v27)
    {
      v27 = v21;
    }

    UIRoundToViewScale();
    v31 = v30;
    primaryButton3 = [(CBSPaneViewController *)self primaryButton];
    titleLabel2 = [primaryButton3 titleLabel];
    [titleLabel2 _firstLineBaselineOffsetFromBoundsTop];
    v35 = v10 - v34;
    tableView3 = [(CBSTableViewController *)self tableView];
    [tableView3 contentInset];
    v38 = v35 - v37 - v23;

    headerView = [(CBSTableViewController *)self headerView];
    [headerView frame];
    v40 = CGRectGetMaxY(v64) + 14.0;

    if (v38 < v40)
    {
      v38 = v40;
    }

    primaryButton4 = [(CBSPaneViewController *)self primaryButton];
    [primaryButton4 setFrame:{v31, v38, v27, v29}];
  }

  else
  {
    v31 = *MEMORY[0x277CBF3A0];
    v38 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
  }

  secondaryButton = [(CBSPaneViewController *)self secondaryButton];

  if (secondaryButton)
  {
    secondaryButton2 = [(CBSPaneViewController *)self secondaryButton];
    titleLabel3 = [secondaryButton2 titleLabel];
    [titleLabel3 sizeThatFits:{v21, 1.79769313e308}];
    v45 = v29;
    v46 = v10;
    v48 = v47;
    v61 = v49;

    if (v21 < v48)
    {
      v48 = v21;
    }

    UIRoundToViewScale();
    v51 = v50;
    secondaryButton3 = [(CBSPaneViewController *)self secondaryButton];
    titleLabel4 = [secondaryButton3 titleLabel];
    [titleLabel4 _firstLineBaselineOffsetFromBoundsTop];
    v55 = v46 - v54;
    tableView4 = [(CBSTableViewController *)self tableView];
    [tableView4 contentInset];
    v58 = v55 - v57 + -24.0;

    v65.origin.x = v31;
    v65.origin.y = v38;
    v65.size.width = v27;
    v65.size.height = v45;
    v59 = CGRectGetMaxY(v65) + 4.0;
    if (v58 < v59)
    {
      v58 = v59;
    }

    secondaryButton4 = [(CBSPaneViewController *)self secondaryButton];
    [secondaryButton4 setFrame:{v51, v58, v48, v61}];
  }
}

@end
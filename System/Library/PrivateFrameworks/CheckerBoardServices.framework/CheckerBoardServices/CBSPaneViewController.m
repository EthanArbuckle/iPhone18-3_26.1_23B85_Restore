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
  v3 = [(CBSPaneViewController *)self primaryButtonText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    [(CBSPaneViewController *)self setPrimaryButton:v5];

    v6 = MEMORY[0x277D74300];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = 24.0;
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 26.0;
    }

    v10 = [v6 _lightSystemFontOfSize:v9];
    v11 = [(CBSPaneViewController *)self primaryButton];
    v12 = [v11 titleLabel];
    [v12 setFont:v10];

    v13 = [(CBSPaneViewController *)self primaryButton];
    v14 = [v13 titleLabel];
    [v14 setAdjustsFontSizeToFitWidth:1];

    v15 = [(CBSPaneViewController *)self primaryButton];
    v16 = [v15 titleLabel];
    [v16 setTextAlignment:1];

    v17 = [(CBSPaneViewController *)self primaryButton];
    v18 = [(CBSPaneViewController *)self primaryButtonText];
    [v17 setTitle:v18 forState:0];

    v19 = [(CBSPaneViewController *)self primaryButton];
    [v19 setAutoresizingMask:5];

    v20 = [(CBSPaneViewController *)self primaryButton];
    [v20 sizeToFit];

    v21 = [(CBSPaneViewController *)self primaryButton];
    [v21 addTarget:self action:sel_primaryButtonTapped_ forControlEvents:64];

    v23 = [(CBSTableViewController *)self tableView];
    v22 = [(CBSPaneViewController *)self primaryButton];
    [v23 addSubview:v22];
  }
}

- (void)_setupSecondaryButton
{
  v3 = [(CBSPaneViewController *)self secondaryButtonText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:1];
    [(CBSPaneViewController *)self setSecondaryButton:v5];

    v6 = MEMORY[0x277D74300];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = 17.0;
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = 20.0;
    }

    v10 = [v6 systemFontOfSize:v9];
    v11 = [(CBSPaneViewController *)self secondaryButton];
    v12 = [v11 titleLabel];
    [v12 setFont:v10];

    v13 = [(CBSPaneViewController *)self secondaryButton];
    v14 = [v13 titleLabel];
    [v14 setAdjustsFontSizeToFitWidth:1];

    v15 = [(CBSPaneViewController *)self secondaryButton];
    v16 = [v15 titleLabel];
    [v16 setTextAlignment:1];

    v17 = [(CBSPaneViewController *)self secondaryButton];
    v18 = [(CBSPaneViewController *)self secondaryButtonText];
    [v17 setTitle:v18 forState:0];

    v19 = [(CBSPaneViewController *)self secondaryButton];
    [v19 setAutoresizingMask:5];

    v20 = [(CBSPaneViewController *)self secondaryButton];
    [v20 sizeToFit];

    v21 = [(CBSPaneViewController *)self secondaryButton];
    [v21 addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:64];

    v23 = [(CBSTableViewController *)self tableView];
    v22 = [(CBSPaneViewController *)self secondaryButton];
    [v23 addSubview:v22];
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

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v62.receiver = self;
  v62.super_class = CBSPaneViewController;
  [(CBSPaneViewController *)&v62 viewDidLayoutSubviews];
  v6 = [(CBSTableViewController *)self tableView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x277D4DAA8] sharedStyle];
  v12 = [(CBSTableViewController *)self tableView];
  [v11 edgeInsetsForTable:v12];
  v14 = v13;
  v16 = v15;

  v17 = [MEMORY[0x277D4DAA8] sharedStyle];
  v18 = [(CBSPaneViewController *)self view];
  [v17 horizontalMarginForView:v18];
  v20 = -(v14 - v19 * 2.0) - v16;

  v21 = v8 - fmax(v20, 0.0);
  v22 = [(CBSPaneViewController *)self primaryButton];

  if (v22)
  {
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = 184.0;
    }

    else
    {
      v23 = 112.0;
    }

    v24 = [(CBSPaneViewController *)self primaryButton];
    v25 = [v24 titleLabel];
    [v25 sizeThatFits:{v21, 1.79769313e308}];
    v27 = v26;
    v29 = v28;

    if (v21 < v27)
    {
      v27 = v21;
    }

    UIRoundToViewScale();
    v31 = v30;
    v32 = [(CBSPaneViewController *)self primaryButton];
    v33 = [v32 titleLabel];
    [v33 _firstLineBaselineOffsetFromBoundsTop];
    v35 = v10 - v34;
    v36 = [(CBSTableViewController *)self tableView];
    [v36 contentInset];
    v38 = v35 - v37 - v23;

    v39 = [(CBSTableViewController *)self headerView];
    [v39 frame];
    v40 = CGRectGetMaxY(v64) + 14.0;

    if (v38 < v40)
    {
      v38 = v40;
    }

    v41 = [(CBSPaneViewController *)self primaryButton];
    [v41 setFrame:{v31, v38, v27, v29}];
  }

  else
  {
    v31 = *MEMORY[0x277CBF3A0];
    v38 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v42 = [(CBSPaneViewController *)self secondaryButton];

  if (v42)
  {
    v43 = [(CBSPaneViewController *)self secondaryButton];
    v44 = [v43 titleLabel];
    [v44 sizeThatFits:{v21, 1.79769313e308}];
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
    v52 = [(CBSPaneViewController *)self secondaryButton];
    v53 = [v52 titleLabel];
    [v53 _firstLineBaselineOffsetFromBoundsTop];
    v55 = v46 - v54;
    v56 = [(CBSTableViewController *)self tableView];
    [v56 contentInset];
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

    v60 = [(CBSPaneViewController *)self secondaryButton];
    [v60 setFrame:{v51, v58, v48, v61}];
  }
}

@end
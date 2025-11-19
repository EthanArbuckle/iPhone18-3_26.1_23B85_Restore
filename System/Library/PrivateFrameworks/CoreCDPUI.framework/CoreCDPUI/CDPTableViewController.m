@interface CDPTableViewController
- (BFFPaneHeaderView)headerView;
- (BOOL)isIPad;
- (BOOL)isiPhone5OrSmaller;
- (CDPTableViewController)initWithTitle:(id)a3 subTitle:(id)a4;
- (NSString)deviceClass;
- (double)heightForHeaderInTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)loadView;
- (void)setHeaderSubTitle:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CDPTableViewController

- (CDPTableViewController)initWithTitle:(id)a3 subTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDPTableViewController;
  v9 = [(CDPTableViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headerTitle, a3);
    objc_storeStrong(&v10->_headerSubTitle, a4);
    v10->_tableViewStyle = 1;
  }

  return v10;
}

- (NSString)deviceClass
{
  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 deviceClass];

  return v3;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  containerView = self->_containerView;
  self->_containerView = v8;

  v10 = self->_containerView;
  v11 = [getBFFStyleClass() sharedStyle];
  -[UIView setBackgroundColor:](v10, "setBackgroundColor:", [v11 backgroundColor]);

  v12 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:self->_tableViewStyle style:{v4, v5, v6, v7}];
  [(CDPTableViewController *)self setTableView:v12];

  v13 = [(CDPTableViewController *)self tableView];
  [v13 setDelegate:self];

  v14 = [(CDPTableViewController *)self tableView];
  [v14 setDataSource:self];

  v15 = [(CDPTableViewController *)self tableView];
  v16 = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [(CDPTableViewController *)self tableView];
  [v17 setBackgroundView:0];

  v18 = [(CDPTableViewController *)self tableView];
  [v18 setAlwaysBounceVertical:0];

  v19 = self->_containerView;
  v20 = [(UITableView *)self->_tableView panGestureRecognizer];
  [(UIView *)v19 addGestureRecognizer:v20];

  [(UIView *)self->_containerView addSubview:self->_tableView];
  v21 = self->_containerView;

  [(CDPTableViewController *)self setView:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = CDPTableViewController;
  [(CDPTableViewController *)&v10 viewWillAppear:?];
  v5 = [(CDPTableViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];

  if (v6)
  {
    v7 = [(CDPTableViewController *)self tableView];
    v8 = [(CDPTableViewController *)self tableView];
    v9 = [v8 indexPathForSelectedRow];
    [v7 deselectRowAtIndexPath:v9 animated:v3];
  }
}

- (BFFPaneHeaderView)headerView
{
  if (!self->_headerView)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v3 = getBFFPaneHeaderViewClass_softClass_0;
    v29 = getBFFPaneHeaderViewClass_softClass_0;
    if (!getBFFPaneHeaderViewClass_softClass_0)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getBFFPaneHeaderViewClass_block_invoke_0;
      v25[3] = &unk_278E2BA40;
      v25[4] = &v26;
      __getBFFPaneHeaderViewClass_block_invoke_0(v25);
      v3 = v27[3];
    }

    v4 = v3;
    _Block_object_dispose(&v26, 8);
    v5 = objc_alloc_init(v3);
    headerView = self->_headerView;
    self->_headerView = v5;

    [(BFFPaneHeaderView *)self->_headerView setTitleText:self->_headerTitle];
    headerSubTitle = self->_headerSubTitle;
    v8 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
    [v8 setText:headerSubTitle];

    [(BFFPaneHeaderView *)self->_headerView setIcon:self->_icon];
    if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
    {
      v9 = MEMORY[0x277D74310];
      v10 = *MEMORY[0x277D76A20];
      v11 = [(CDPTableViewController *)self traitCollection];
      v12 = [v9 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:v11];

      v13 = [(BFFPaneHeaderView *)self->_headerView textLabel];
      [v13 setTextAlignment:4];

      v14 = MEMORY[0x277D74300];
      v15 = [v12 fontDescriptorWithSymbolicTraits:2];
      v16 = [v14 fontWithDescriptor:v15 size:0.0];
      v17 = [(BFFPaneHeaderView *)self->_headerView textLabel];
      [v17 setFont:v16];

      v18 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [v18 setTextAlignment:4];

      v19 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
      v20 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [v20 setFont:v19];

      v21 = [MEMORY[0x277D75348] secondaryLabelColor];
      v22 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [v22 setTextColor:v21];
    }
  }

  v23 = self->_headerView;

  return v23;
}

- (void)setHeaderTitle:(id)a3
{
  v4 = [a3 copy];
  headerTitle = self->_headerTitle;
  self->_headerTitle = v4;

  headerView = self->_headerView;
  v7 = self->_headerTitle;

  [(BFFPaneHeaderView *)headerView setTitleText:v7];
}

- (void)setHeaderSubTitle:(id)a3
{
  v4 = [a3 copy];
  headerSubTitle = self->_headerSubTitle;
  self->_headerSubTitle = v4;

  v6 = self->_headerSubTitle;
  v7 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [v7 setText:v6];
}

- (BOOL)isIPad
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)isiPhone5OrSmaller
{
  if ([(CDPTableViewController *)self isIPad])
  {
    return 0;
  }

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  v2 = v4 <= 568.0;

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v41.receiver = self;
  v41.super_class = CDPTableViewController;
  [(CDPTableViewController *)&v41 viewDidLayoutSubviews];
  [(UIView *)self->_containerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CDPTableViewController *)self navigationController];
  v12 = [v11 modalPresentationStyle];

  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 1 && v12 == 0)
  {
    v16 = [getBFFStyleClass() sharedStyle];
    [v16 edgeInsetsForTable:self->_tableView];
    v4 = v17;
    v19 = v18;

    v8 = v8 - (v4 + v19);
  }

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v20 = [(CDPTableViewController *)self tableView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(CDPTableViewController *)self tableView];
    v22 = [v21 topAnchor];
    v23 = [(CDPTableViewController *)self view];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(CDPTableViewController *)self tableView];
    v27 = [v26 leadingAnchor];
    v28 = [(CDPTableViewController *)self view];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:19.0];
    [v30 setActive:1];

    v31 = [(CDPTableViewController *)self tableView];
    v32 = [v31 bottomAnchor];
    v33 = [(CDPTableViewController *)self view];
    v34 = [v33 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(CDPTableViewController *)self tableView];
    v37 = [v36 trailingAnchor];
    v38 = [(CDPTableViewController *)self view];
    v39 = [v38 trailingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:-19.0];
    [v40 setActive:1];
  }

  else
  {
    [(UITableView *)self->_tableView setFrame:v4, v6, v8, v10];
  }
}

- (double)heightForHeaderInTableView:(id)a3
{
  v4 = a3;
  v5 = [(CDPTableViewController *)self headerView];
  [v4 bounds];
  [v5 heightForWidth:v4 inView:v6];
  v8 = v7;

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x277D75B48]);

  return v4;
}

@end
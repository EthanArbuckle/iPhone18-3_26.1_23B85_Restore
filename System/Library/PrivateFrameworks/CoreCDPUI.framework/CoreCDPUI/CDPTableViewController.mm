@interface CDPTableViewController
- (BFFPaneHeaderView)headerView;
- (BOOL)isIPad;
- (BOOL)isiPhone5OrSmaller;
- (CDPTableViewController)initWithTitle:(id)title subTitle:(id)subTitle;
- (NSString)deviceClass;
- (double)heightForHeaderInTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)setHeaderSubTitle:(id)title;
- (void)setHeaderTitle:(id)title;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CDPTableViewController

- (CDPTableViewController)initWithTitle:(id)title subTitle:(id)subTitle
{
  titleCopy = title;
  subTitleCopy = subTitle;
  v12.receiver = self;
  v12.super_class = CDPTableViewController;
  v9 = [(CDPTableViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_headerTitle, title);
    objc_storeStrong(&v10->_headerSubTitle, subTitle);
    v10->_tableViewStyle = 1;
  }

  return v10;
}

- (NSString)deviceClass
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];

  return deviceClass;
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
  sharedStyle = [getBFFStyleClass() sharedStyle];
  -[UIView setBackgroundColor:](v10, "setBackgroundColor:", [sharedStyle backgroundColor]);

  v12 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:self->_tableViewStyle style:{v4, v5, v6, v7}];
  [(CDPTableViewController *)self setTableView:v12];

  tableView = [(CDPTableViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(CDPTableViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(CDPTableViewController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(CDPTableViewController *)self tableView];
  [tableView4 setBackgroundView:0];

  tableView5 = [(CDPTableViewController *)self tableView];
  [tableView5 setAlwaysBounceVertical:0];

  v19 = self->_containerView;
  panGestureRecognizer = [(UITableView *)self->_tableView panGestureRecognizer];
  [(UIView *)v19 addGestureRecognizer:panGestureRecognizer];

  [(UIView *)self->_containerView addSubview:self->_tableView];
  v21 = self->_containerView;

  [(CDPTableViewController *)self setView:v21];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = CDPTableViewController;
  [(CDPTableViewController *)&v10 viewWillAppear:?];
  tableView = [(CDPTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(CDPTableViewController *)self tableView];
    tableView3 = [(CDPTableViewController *)self tableView];
    indexPathForSelectedRow2 = [tableView3 indexPathForSelectedRow];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow2 animated:appearCopy];
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
    detailTextLabel = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
    [detailTextLabel setText:headerSubTitle];

    [(BFFPaneHeaderView *)self->_headerView setIcon:self->_icon];
    if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
    {
      v9 = MEMORY[0x277D74310];
      v10 = *MEMORY[0x277D76A20];
      traitCollection = [(CDPTableViewController *)self traitCollection];
      v12 = [v9 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:traitCollection];

      textLabel = [(BFFPaneHeaderView *)self->_headerView textLabel];
      [textLabel setTextAlignment:4];

      v14 = MEMORY[0x277D74300];
      v15 = [v12 fontDescriptorWithSymbolicTraits:2];
      v16 = [v14 fontWithDescriptor:v15 size:0.0];
      textLabel2 = [(BFFPaneHeaderView *)self->_headerView textLabel];
      [textLabel2 setFont:v16];

      detailTextLabel2 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [detailTextLabel2 setTextAlignment:4];

      v19 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
      detailTextLabel3 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [detailTextLabel3 setFont:v19];

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      detailTextLabel4 = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
      [detailTextLabel4 setTextColor:secondaryLabelColor];
    }
  }

  v23 = self->_headerView;

  return v23;
}

- (void)setHeaderTitle:(id)title
{
  v4 = [title copy];
  headerTitle = self->_headerTitle;
  self->_headerTitle = v4;

  headerView = self->_headerView;
  v7 = self->_headerTitle;

  [(BFFPaneHeaderView *)headerView setTitleText:v7];
}

- (void)setHeaderSubTitle:(id)title
{
  v4 = [title copy];
  headerSubTitle = self->_headerSubTitle;
  self->_headerSubTitle = v4;

  v6 = self->_headerSubTitle;
  detailTextLabel = [(BFFPaneHeaderView *)self->_headerView detailTextLabel];
  [detailTextLabel setText:v6];
}

- (BOOL)isIPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)isiPhone5OrSmaller
{
  if ([(CDPTableViewController *)self isIPad])
  {
    return 0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
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
  navigationController = [(CDPTableViewController *)self navigationController];
  modalPresentationStyle = [navigationController modalPresentationStyle];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && modalPresentationStyle == 0)
  {
    sharedStyle = [getBFFStyleClass() sharedStyle];
    [sharedStyle edgeInsetsForTable:self->_tableView];
    v4 = v17;
    v19 = v18;

    v8 = v8 - (v4 + v19);
  }

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    tableView = [(CDPTableViewController *)self tableView];
    [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

    tableView2 = [(CDPTableViewController *)self tableView];
    topAnchor = [tableView2 topAnchor];
    view = [(CDPTableViewController *)self view];
    topAnchor2 = [view topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v25 setActive:1];

    tableView3 = [(CDPTableViewController *)self tableView];
    leadingAnchor = [tableView3 leadingAnchor];
    view2 = [(CDPTableViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:19.0];
    [v30 setActive:1];

    tableView4 = [(CDPTableViewController *)self tableView];
    bottomAnchor = [tableView4 bottomAnchor];
    view3 = [(CDPTableViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v35 setActive:1];

    tableView5 = [(CDPTableViewController *)self tableView];
    trailingAnchor = [tableView5 trailingAnchor];
    view4 = [(CDPTableViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-19.0];
    [v40 setActive:1];
  }

  else
  {
    [(UITableView *)self->_tableView setFrame:v4, v6, v8, v10];
  }
}

- (double)heightForHeaderInTableView:(id)view
{
  viewCopy = view;
  headerView = [(CDPTableViewController *)self headerView];
  [viewCopy bounds];
  [headerView heightForWidth:viewCopy inView:v6];
  v8 = v7;

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = objc_alloc_init(MEMORY[0x277D75B48]);

  return v4;
}

@end
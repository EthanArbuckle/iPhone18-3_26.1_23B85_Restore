@interface SUUIReportAConcernReasonViewController
- (SUUIReportAConcernReasonViewController)initWithCoder:(id)coder;
- (SUUIReportAConcernReasonViewController)initWithConfiguration:(id)configuration;
- (SUUIReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIReportAConcernReasonViewController

- (SUUIReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v6 = [(SUUIReportAConcernReasonViewController *)self initWithConfiguration:v5];

  return v6;
}

- (SUUIReportAConcernReasonViewController)initWithCoder:(id)coder
{
  v4 = objc_alloc_init(SUUIReportAConcernConfiguration);
  v5 = [(SUUIReportAConcernReasonViewController *)self initWithConfiguration:v4];

  return v5;
}

- (SUUIReportAConcernReasonViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SUUIReportAConcernReasonViewController;
  v6 = [(SUUIReportAConcernReasonViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = SUUIReportAConcernReasonViewController;
  [(SUUIReportAConcernReasonViewController *)&v25 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPORT_A_CONCERN" value:&stru_286AECDE0 table:0];
  [(SUUIReportAConcernReasonViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_286AECDE0 table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:0 action:0];
  navigationItem = [(SUUIReportAConcernReasonViewController *)self navigationItem];
  [navigationItem setBackBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:sel_cancelPressed_];
  navigationItem2 = [(SUUIReportAConcernReasonViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v13];

  v15 = objc_alloc(MEMORY[0x277D75B40]);
  v16 = [v15 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v16 setDelegate:self];
  v17 = [[SUUIReportAConcernReasonDataSource alloc] initWithTableView:v16];
  configuration = [(SUUIReportAConcernReasonViewController *)self configuration];
  reasons = [configuration reasons];
  [(SUUIReportAConcernReasonDataSource *)v17 setReasons:reasons];

  configuration2 = [(SUUIReportAConcernReasonViewController *)self configuration];
  selectReasonTitle = [configuration2 selectReasonTitle];
  [(SUUIReportAConcernReasonDataSource *)v17 setSelectReasonTitle:selectReasonTitle];

  configuration3 = [(SUUIReportAConcernReasonViewController *)self configuration];
  selectReasonSubtitle = [configuration3 selectReasonSubtitle];
  [(SUUIReportAConcernReasonDataSource *)v17 setSelectReasonSubtitle:selectReasonSubtitle];

  [v16 setDataSource:v17];
  [(SUUIReportAConcernReasonViewController *)self setDataSource:v17];
  view = [(SUUIReportAConcernReasonViewController *)self view];
  [view addSubview:v16];

  [(SUUIReportAConcernReasonViewController *)self setTableView:v16];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUUIReportAConcernReasonViewController;
  [(SUUIReportAConcernReasonViewController *)&v13 viewWillLayoutSubviews];
  view = [(SUUIReportAConcernReasonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(SUUIReportAConcernReasonViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  configuration = [(SUUIReportAConcernReasonViewController *)self configuration];
  reasons = [configuration reasons];
  v9 = [pathCopy row];

  v17 = [reasons objectAtIndexedSubscript:v9];

  configuration2 = [(SUUIReportAConcernReasonViewController *)self configuration];
  v11 = [configuration2 copy];

  v12 = [[SUUIReportAConcernDetailsViewController alloc] initWithConfiguration:v11];
  v13 = objc_alloc_init(SUUIReportAConcernMetadata);
  [(SUUIReportAConcernMetadata *)v13 setSelectedReason:v17];
  -[SUUIReportAConcernMetadata setItemIdentifier:](v13, "setItemIdentifier:", [v11 itemIdentifier]);
  reportConcernURL = [v11 reportConcernURL];
  [(SUUIReportAConcernMetadata *)v13 setReportConcernURL:reportConcernURL];

  [(SUUIReportAConcernDetailsViewController *)v12 setMetadata:v13];
  completion = [(SUUIReportAConcernReasonViewController *)self completion];
  [(SUUIReportAConcernDetailsViewController *)v12 setCompletion:completion];

  navigationController = [(SUUIReportAConcernReasonViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
}

@end